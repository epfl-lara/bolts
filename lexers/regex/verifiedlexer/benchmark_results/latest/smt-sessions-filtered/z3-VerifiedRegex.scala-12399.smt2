; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693496 () Bool)

(assert start!693496)

(declare-fun b_free!133701 () Bool)

(declare-fun b_next!134491 () Bool)

(assert (=> start!693496 (= b_free!133701 (not b_next!134491))))

(declare-fun tp!1961109 () Bool)

(declare-fun b_and!350797 () Bool)

(assert (=> start!693496 (= tp!1961109 b_and!350797)))

(declare-fun b!7122004 () Bool)

(declare-fun res!2905604 () Bool)

(declare-fun e!4279482 () Bool)

(assert (=> b!7122004 (=> (not res!2905604) (not e!4279482))))

(declare-datatypes ((B!3265 0))(
  ( (B!3266 (val!27933 Int)) )
))
(declare-datatypes ((List!69002 0))(
  ( (Nil!68878) (Cons!68878 (h!75326 B!3265) (t!382909 List!69002)) )
))
(declare-fun l1!756 () List!69002)

(get-info :version)

(assert (=> b!7122004 (= res!2905604 ((_ is Cons!68878) l1!756))))

(declare-fun res!2905603 () Bool)

(declare-fun e!4279479 () Bool)

(assert (=> start!693496 (=> (not res!2905603) (not e!4279479))))

(declare-fun lt!2562018 () List!69002)

(declare-fun subseq!741 (List!69002 List!69002) Bool)

(assert (=> start!693496 (= res!2905603 (subseq!741 l1!756 lt!2562018))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2562017 () (InoxSet B!3265))

(declare-fun toList!11105 ((InoxSet B!3265)) List!69002)

(assert (=> start!693496 (= lt!2562018 (toList!11105 lt!2562017))))

(declare-datatypes ((A!607 0))(
  ( (A!608 (val!27934 Int)) )
))
(declare-fun s1!414 () (InoxSet A!607))

(declare-fun s2!385 () (InoxSet A!607))

(declare-fun f!567 () Int)

(declare-fun map!16401 ((InoxSet A!607) Int) (InoxSet B!3265))

(assert (=> start!693496 (= lt!2562017 ((_ map or) (map!16401 s1!414 f!567) (map!16401 s2!385 f!567)))))

(assert (=> start!693496 e!4279479))

(declare-fun e!4279480 () Bool)

(assert (=> start!693496 e!4279480))

(declare-fun condSetEmpty!51029 () Bool)

(assert (=> start!693496 (= condSetEmpty!51029 (= s1!414 ((as const (Array A!607 Bool)) false)))))

(declare-fun setRes!51028 () Bool)

(assert (=> start!693496 setRes!51028))

(declare-fun condSetEmpty!51028 () Bool)

(assert (=> start!693496 (= condSetEmpty!51028 (= s2!385 ((as const (Array A!607 Bool)) false)))))

(declare-fun setRes!51029 () Bool)

(assert (=> start!693496 setRes!51029))

(declare-fun e!4279481 () Bool)

(assert (=> start!693496 e!4279481))

(assert (=> start!693496 tp!1961109))

(declare-fun setIsEmpty!51028 () Bool)

(assert (=> setIsEmpty!51028 setRes!51029))

(declare-fun setIsEmpty!51029 () Bool)

(assert (=> setIsEmpty!51029 setRes!51028))

(declare-fun b!7122005 () Bool)

(declare-fun tp_is_empty!45365 () Bool)

(declare-fun tp!1961108 () Bool)

(assert (=> b!7122005 (= e!4279481 (and tp_is_empty!45365 tp!1961108))))

(declare-fun b!7122006 () Bool)

(declare-fun tp!1961112 () Bool)

(assert (=> b!7122006 (= e!4279480 (and tp_is_empty!45365 tp!1961112))))

(declare-fun setNonEmpty!51028 () Bool)

(declare-fun tp!1961111 () Bool)

(declare-fun tp_is_empty!45367 () Bool)

(assert (=> setNonEmpty!51028 (= setRes!51028 (and tp!1961111 tp_is_empty!45367))))

(declare-fun setElem!51029 () A!607)

(declare-fun setRest!51028 () (InoxSet A!607))

(assert (=> setNonEmpty!51028 (= s1!414 ((_ map or) (store ((as const (Array A!607 Bool)) false) setElem!51029 true) setRest!51028))))

(declare-fun b!7122007 () Bool)

(assert (=> b!7122007 (= e!4279482 (not (subseq!741 (t!382909 l1!756) lt!2562018)))))

(declare-datatypes ((Unit!162705 0))(
  ( (Unit!162706) )
))
(declare-fun lt!2562016 () Unit!162705)

(declare-fun subseqTail!22 (List!69002 List!69002) Unit!162705)

(assert (=> b!7122007 (= lt!2562016 (subseqTail!22 l1!756 lt!2562018))))

(declare-fun lt!2562015 () (InoxSet B!3265))

(assert (=> b!7122007 (= (select lt!2562017 (h!75326 l1!756)) (select lt!2562015 (h!75326 l1!756)))))

(declare-fun lt!2562014 () Unit!162705)

(declare-fun lemmaMapAssociativeElem!8 ((InoxSet A!607) (InoxSet A!607) Int B!3265) Unit!162705)

(assert (=> b!7122007 (= lt!2562014 (lemmaMapAssociativeElem!8 s1!414 s2!385 f!567 (h!75326 l1!756)))))

(declare-fun b!7122008 () Bool)

(assert (=> b!7122008 (= e!4279479 e!4279482)))

(declare-fun res!2905602 () Bool)

(assert (=> b!7122008 (=> (not res!2905602) (not e!4279482))))

(declare-fun l2!745 () List!69002)

(assert (=> b!7122008 (= res!2905602 (= l2!745 (toList!11105 lt!2562015)))))

(assert (=> b!7122008 (= lt!2562015 (map!16401 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun setNonEmpty!51029 () Bool)

(declare-fun tp!1961110 () Bool)

(assert (=> setNonEmpty!51029 (= setRes!51029 (and tp!1961110 tp_is_empty!45367))))

(declare-fun setElem!51028 () A!607)

(declare-fun setRest!51029 () (InoxSet A!607))

(assert (=> setNonEmpty!51029 (= s2!385 ((_ map or) (store ((as const (Array A!607 Bool)) false) setElem!51028 true) setRest!51029))))

(assert (= (and start!693496 res!2905603) b!7122008))

(assert (= (and b!7122008 res!2905602) b!7122004))

(assert (= (and b!7122004 res!2905604) b!7122007))

(assert (= (and start!693496 ((_ is Cons!68878) l1!756)) b!7122006))

(assert (= (and start!693496 condSetEmpty!51029) setIsEmpty!51029))

(assert (= (and start!693496 (not condSetEmpty!51029)) setNonEmpty!51028))

(assert (= (and start!693496 condSetEmpty!51028) setIsEmpty!51028))

(assert (= (and start!693496 (not condSetEmpty!51028)) setNonEmpty!51029))

(assert (= (and start!693496 ((_ is Cons!68878) l2!745)) b!7122005))

(declare-fun m!7839254 () Bool)

(assert (=> start!693496 m!7839254))

(declare-fun m!7839256 () Bool)

(assert (=> start!693496 m!7839256))

(declare-fun m!7839258 () Bool)

(assert (=> start!693496 m!7839258))

(declare-fun m!7839260 () Bool)

(assert (=> start!693496 m!7839260))

(declare-fun m!7839262 () Bool)

(assert (=> b!7122007 m!7839262))

(declare-fun m!7839264 () Bool)

(assert (=> b!7122007 m!7839264))

(declare-fun m!7839266 () Bool)

(assert (=> b!7122007 m!7839266))

(declare-fun m!7839268 () Bool)

(assert (=> b!7122007 m!7839268))

(declare-fun m!7839270 () Bool)

(assert (=> b!7122007 m!7839270))

(declare-fun m!7839272 () Bool)

(assert (=> b!7122008 m!7839272))

(declare-fun m!7839274 () Bool)

(assert (=> b!7122008 m!7839274))

(check-sat b_and!350797 (not setNonEmpty!51028) (not start!693496) (not setNonEmpty!51029) (not b_next!134491) (not b!7122007) (not b!7122006) (not b!7122008) tp_is_empty!45365 (not b!7122005) tp_is_empty!45367)
(check-sat b_and!350797 (not b_next!134491))
(get-model)

(declare-fun b!7122018 () Bool)

(declare-fun e!4279493 () Bool)

(declare-fun e!4279492 () Bool)

(assert (=> b!7122018 (= e!4279493 e!4279492)))

(declare-fun res!2905616 () Bool)

(assert (=> b!7122018 (=> res!2905616 e!4279492)))

(declare-fun e!4279494 () Bool)

(assert (=> b!7122018 (= res!2905616 e!4279494)))

(declare-fun res!2905614 () Bool)

(assert (=> b!7122018 (=> (not res!2905614) (not e!4279494))))

(assert (=> b!7122018 (= res!2905614 (= (h!75326 l1!756) (h!75326 lt!2562018)))))

(declare-fun b!7122017 () Bool)

(declare-fun e!4279491 () Bool)

(assert (=> b!7122017 (= e!4279491 e!4279493)))

(declare-fun res!2905613 () Bool)

(assert (=> b!7122017 (=> (not res!2905613) (not e!4279493))))

(assert (=> b!7122017 (= res!2905613 ((_ is Cons!68878) lt!2562018))))

(declare-fun b!7122019 () Bool)

(assert (=> b!7122019 (= e!4279494 (subseq!741 (t!382909 l1!756) (t!382909 lt!2562018)))))

(declare-fun d!2222406 () Bool)

(declare-fun res!2905615 () Bool)

(assert (=> d!2222406 (=> res!2905615 e!4279491)))

(assert (=> d!2222406 (= res!2905615 ((_ is Nil!68878) l1!756))))

(assert (=> d!2222406 (= (subseq!741 l1!756 lt!2562018) e!4279491)))

(declare-fun b!7122020 () Bool)

(assert (=> b!7122020 (= e!4279492 (subseq!741 l1!756 (t!382909 lt!2562018)))))

(assert (= (and d!2222406 (not res!2905615)) b!7122017))

(assert (= (and b!7122017 res!2905613) b!7122018))

(assert (= (and b!7122018 res!2905614) b!7122019))

(assert (= (and b!7122018 (not res!2905616)) b!7122020))

(declare-fun m!7839276 () Bool)

(assert (=> b!7122019 m!7839276))

(declare-fun m!7839278 () Bool)

(assert (=> b!7122020 m!7839278))

(assert (=> start!693496 d!2222406))

(declare-fun d!2222408 () Bool)

(declare-fun e!4279497 () Bool)

(assert (=> d!2222408 e!4279497))

(declare-fun res!2905619 () Bool)

(assert (=> d!2222408 (=> (not res!2905619) (not e!4279497))))

(declare-fun lt!2562021 () List!69002)

(declare-fun noDuplicate!2785 (List!69002) Bool)

(assert (=> d!2222408 (= res!2905619 (noDuplicate!2785 lt!2562021))))

(declare-fun choose!54992 ((InoxSet B!3265)) List!69002)

(assert (=> d!2222408 (= lt!2562021 (choose!54992 lt!2562017))))

(assert (=> d!2222408 (= (toList!11105 lt!2562017) lt!2562021)))

(declare-fun b!7122023 () Bool)

(declare-fun content!14084 (List!69002) (InoxSet B!3265))

(assert (=> b!7122023 (= e!4279497 (= (content!14084 lt!2562021) lt!2562017))))

(assert (= (and d!2222408 res!2905619) b!7122023))

(declare-fun m!7839280 () Bool)

(assert (=> d!2222408 m!7839280))

(declare-fun m!7839282 () Bool)

(assert (=> d!2222408 m!7839282))

(declare-fun m!7839284 () Bool)

(assert (=> b!7122023 m!7839284))

(assert (=> start!693496 d!2222408))

(declare-fun d!2222410 () Bool)

(declare-fun choose!54993 ((InoxSet A!607) Int) (InoxSet B!3265))

(assert (=> d!2222410 (= (map!16401 s1!414 f!567) (choose!54993 s1!414 f!567))))

(declare-fun bs!1886031 () Bool)

(assert (= bs!1886031 d!2222410))

(declare-fun m!7839286 () Bool)

(assert (=> bs!1886031 m!7839286))

(assert (=> start!693496 d!2222410))

(declare-fun d!2222412 () Bool)

(assert (=> d!2222412 (= (map!16401 s2!385 f!567) (choose!54993 s2!385 f!567))))

(declare-fun bs!1886032 () Bool)

(assert (= bs!1886032 d!2222412))

(declare-fun m!7839288 () Bool)

(assert (=> bs!1886032 m!7839288))

(assert (=> start!693496 d!2222412))

(declare-fun b!7122025 () Bool)

(declare-fun e!4279500 () Bool)

(declare-fun e!4279499 () Bool)

(assert (=> b!7122025 (= e!4279500 e!4279499)))

(declare-fun res!2905623 () Bool)

(assert (=> b!7122025 (=> res!2905623 e!4279499)))

(declare-fun e!4279501 () Bool)

(assert (=> b!7122025 (= res!2905623 e!4279501)))

(declare-fun res!2905621 () Bool)

(assert (=> b!7122025 (=> (not res!2905621) (not e!4279501))))

(assert (=> b!7122025 (= res!2905621 (= (h!75326 (t!382909 l1!756)) (h!75326 lt!2562018)))))

(declare-fun b!7122024 () Bool)

(declare-fun e!4279498 () Bool)

(assert (=> b!7122024 (= e!4279498 e!4279500)))

(declare-fun res!2905620 () Bool)

(assert (=> b!7122024 (=> (not res!2905620) (not e!4279500))))

(assert (=> b!7122024 (= res!2905620 ((_ is Cons!68878) lt!2562018))))

(declare-fun b!7122026 () Bool)

(assert (=> b!7122026 (= e!4279501 (subseq!741 (t!382909 (t!382909 l1!756)) (t!382909 lt!2562018)))))

(declare-fun d!2222414 () Bool)

(declare-fun res!2905622 () Bool)

(assert (=> d!2222414 (=> res!2905622 e!4279498)))

(assert (=> d!2222414 (= res!2905622 ((_ is Nil!68878) (t!382909 l1!756)))))

(assert (=> d!2222414 (= (subseq!741 (t!382909 l1!756) lt!2562018) e!4279498)))

(declare-fun b!7122027 () Bool)

(assert (=> b!7122027 (= e!4279499 (subseq!741 (t!382909 l1!756) (t!382909 lt!2562018)))))

(assert (= (and d!2222414 (not res!2905622)) b!7122024))

(assert (= (and b!7122024 res!2905620) b!7122025))

(assert (= (and b!7122025 res!2905621) b!7122026))

(assert (= (and b!7122025 (not res!2905623)) b!7122027))

(declare-fun m!7839290 () Bool)

(assert (=> b!7122026 m!7839290))

(assert (=> b!7122027 m!7839276))

(assert (=> b!7122007 d!2222414))

(declare-fun b!7122042 () Bool)

(declare-fun e!4279513 () Unit!162705)

(declare-fun Unit!162707 () Unit!162705)

(assert (=> b!7122042 (= e!4279513 Unit!162707)))

(declare-fun b!7122043 () Bool)

(declare-fun call!650738 () Unit!162705)

(assert (=> b!7122043 (= e!4279513 call!650738)))

(declare-fun b!7122044 () Bool)

(declare-fun e!4279512 () Unit!162705)

(assert (=> b!7122044 (= e!4279512 call!650738)))

(declare-fun b!7122045 () Bool)

(declare-fun e!4279511 () Unit!162705)

(declare-fun Unit!162708 () Unit!162705)

(assert (=> b!7122045 (= e!4279511 Unit!162708)))

(declare-fun b!7122046 () Bool)

(assert (=> b!7122046 (= e!4279511 e!4279512)))

(declare-fun c!1328988 () Bool)

(assert (=> b!7122046 (= c!1328988 (subseq!741 l1!756 (t!382909 lt!2562018)))))

(declare-fun b!7122047 () Bool)

(declare-fun e!4279510 () Bool)

(assert (=> b!7122047 (= e!4279510 (subseq!741 l1!756 lt!2562018))))

(declare-fun b!7122048 () Bool)

(declare-fun c!1328987 () Bool)

(declare-fun isEmpty!40000 (List!69002) Bool)

(assert (=> b!7122048 (= c!1328987 (not (isEmpty!40000 (t!382909 l1!756))))))

(assert (=> b!7122048 (= e!4279512 e!4279513)))

(declare-fun bm!650733 () Bool)

(assert (=> bm!650733 (= call!650738 (subseqTail!22 (ite c!1328988 l1!756 (t!382909 l1!756)) (t!382909 lt!2562018)))))

(declare-fun d!2222416 () Bool)

(declare-fun tail!13918 (List!69002) List!69002)

(assert (=> d!2222416 (subseq!741 (tail!13918 l1!756) lt!2562018)))

(declare-fun lt!2562024 () Unit!162705)

(assert (=> d!2222416 (= lt!2562024 e!4279511)))

(declare-fun c!1328989 () Bool)

(assert (=> d!2222416 (= c!1328989 (and ((_ is Cons!68878) l1!756) ((_ is Cons!68878) lt!2562018)))))

(assert (=> d!2222416 e!4279510))

(declare-fun res!2905626 () Bool)

(assert (=> d!2222416 (=> (not res!2905626) (not e!4279510))))

(assert (=> d!2222416 (= res!2905626 (not (isEmpty!40000 l1!756)))))

(assert (=> d!2222416 (= (subseqTail!22 l1!756 lt!2562018) lt!2562024)))

(assert (= (and d!2222416 res!2905626) b!7122047))

(assert (= (and d!2222416 c!1328989) b!7122046))

(assert (= (and d!2222416 (not c!1328989)) b!7122045))

(assert (= (and b!7122046 c!1328988) b!7122044))

(assert (= (and b!7122046 (not c!1328988)) b!7122048))

(assert (= (and b!7122048 c!1328987) b!7122043))

(assert (= (and b!7122048 (not c!1328987)) b!7122042))

(assert (= (or b!7122044 b!7122043) bm!650733))

(declare-fun m!7839292 () Bool)

(assert (=> b!7122048 m!7839292))

(declare-fun m!7839294 () Bool)

(assert (=> d!2222416 m!7839294))

(assert (=> d!2222416 m!7839294))

(declare-fun m!7839296 () Bool)

(assert (=> d!2222416 m!7839296))

(declare-fun m!7839298 () Bool)

(assert (=> d!2222416 m!7839298))

(assert (=> b!7122046 m!7839278))

(assert (=> b!7122047 m!7839254))

(declare-fun m!7839300 () Bool)

(assert (=> bm!650733 m!7839300))

(assert (=> b!7122007 d!2222416))

(declare-fun d!2222420 () Bool)

(assert (=> d!2222420 (= (select ((_ map or) (map!16401 s1!414 f!567) (map!16401 s2!385 f!567)) (h!75326 l1!756)) (select (map!16401 ((_ map or) s1!414 s2!385) f!567) (h!75326 l1!756)))))

(declare-fun lt!2562027 () Unit!162705)

(declare-fun choose!54994 ((InoxSet A!607) (InoxSet A!607) Int B!3265) Unit!162705)

(assert (=> d!2222420 (= lt!2562027 (choose!54994 s1!414 s2!385 f!567 (h!75326 l1!756)))))

(assert (=> d!2222420 (= (lemmaMapAssociativeElem!8 s1!414 s2!385 f!567 (h!75326 l1!756)) lt!2562027)))

(declare-fun bs!1886033 () Bool)

(assert (= bs!1886033 d!2222420))

(declare-fun m!7839302 () Bool)

(assert (=> bs!1886033 m!7839302))

(declare-fun m!7839304 () Bool)

(assert (=> bs!1886033 m!7839304))

(assert (=> bs!1886033 m!7839260))

(declare-fun m!7839306 () Bool)

(assert (=> bs!1886033 m!7839306))

(assert (=> bs!1886033 m!7839258))

(assert (=> bs!1886033 m!7839274))

(assert (=> b!7122007 d!2222420))

(declare-fun d!2222422 () Bool)

(declare-fun e!4279514 () Bool)

(assert (=> d!2222422 e!4279514))

(declare-fun res!2905627 () Bool)

(assert (=> d!2222422 (=> (not res!2905627) (not e!4279514))))

(declare-fun lt!2562028 () List!69002)

(assert (=> d!2222422 (= res!2905627 (noDuplicate!2785 lt!2562028))))

(assert (=> d!2222422 (= lt!2562028 (choose!54992 lt!2562015))))

(assert (=> d!2222422 (= (toList!11105 lt!2562015) lt!2562028)))

(declare-fun b!7122050 () Bool)

(assert (=> b!7122050 (= e!4279514 (= (content!14084 lt!2562028) lt!2562015))))

(assert (= (and d!2222422 res!2905627) b!7122050))

(declare-fun m!7839308 () Bool)

(assert (=> d!2222422 m!7839308))

(declare-fun m!7839310 () Bool)

(assert (=> d!2222422 m!7839310))

(declare-fun m!7839312 () Bool)

(assert (=> b!7122050 m!7839312))

(assert (=> b!7122008 d!2222422))

(declare-fun d!2222424 () Bool)

(assert (=> d!2222424 (= (map!16401 ((_ map or) s1!414 s2!385) f!567) (choose!54993 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun bs!1886034 () Bool)

(assert (= bs!1886034 d!2222424))

(declare-fun m!7839314 () Bool)

(assert (=> bs!1886034 m!7839314))

(assert (=> b!7122008 d!2222424))

(declare-fun b!7122059 () Bool)

(declare-fun e!4279525 () Bool)

(declare-fun tp!1961115 () Bool)

(assert (=> b!7122059 (= e!4279525 (and tp_is_empty!45365 tp!1961115))))

(assert (=> b!7122006 (= tp!1961112 e!4279525)))

(assert (= (and b!7122006 ((_ is Cons!68878) (t!382909 l1!756))) b!7122059))

(declare-fun condSetEmpty!51032 () Bool)

(assert (=> setNonEmpty!51028 (= condSetEmpty!51032 (= setRest!51028 ((as const (Array A!607 Bool)) false)))))

(declare-fun setRes!51032 () Bool)

(assert (=> setNonEmpty!51028 (= tp!1961111 setRes!51032)))

(declare-fun setIsEmpty!51032 () Bool)

(assert (=> setIsEmpty!51032 setRes!51032))

(declare-fun setNonEmpty!51032 () Bool)

(declare-fun tp!1961118 () Bool)

(assert (=> setNonEmpty!51032 (= setRes!51032 (and tp!1961118 tp_is_empty!45367))))

(declare-fun setElem!51032 () A!607)

(declare-fun setRest!51032 () (InoxSet A!607))

(assert (=> setNonEmpty!51032 (= setRest!51028 ((_ map or) (store ((as const (Array A!607 Bool)) false) setElem!51032 true) setRest!51032))))

(assert (= (and setNonEmpty!51028 condSetEmpty!51032) setIsEmpty!51032))

(assert (= (and setNonEmpty!51028 (not condSetEmpty!51032)) setNonEmpty!51032))

(declare-fun condSetEmpty!51033 () Bool)

(assert (=> setNonEmpty!51029 (= condSetEmpty!51033 (= setRest!51029 ((as const (Array A!607 Bool)) false)))))

(declare-fun setRes!51033 () Bool)

(assert (=> setNonEmpty!51029 (= tp!1961110 setRes!51033)))

(declare-fun setIsEmpty!51033 () Bool)

(assert (=> setIsEmpty!51033 setRes!51033))

(declare-fun setNonEmpty!51033 () Bool)

(declare-fun tp!1961119 () Bool)

(assert (=> setNonEmpty!51033 (= setRes!51033 (and tp!1961119 tp_is_empty!45367))))

(declare-fun setElem!51033 () A!607)

(declare-fun setRest!51033 () (InoxSet A!607))

(assert (=> setNonEmpty!51033 (= setRest!51029 ((_ map or) (store ((as const (Array A!607 Bool)) false) setElem!51033 true) setRest!51033))))

(assert (= (and setNonEmpty!51029 condSetEmpty!51033) setIsEmpty!51033))

(assert (= (and setNonEmpty!51029 (not condSetEmpty!51033)) setNonEmpty!51033))

(declare-fun b!7122066 () Bool)

(declare-fun e!4279526 () Bool)

(declare-fun tp!1961120 () Bool)

(assert (=> b!7122066 (= e!4279526 (and tp_is_empty!45365 tp!1961120))))

(assert (=> b!7122005 (= tp!1961108 e!4279526)))

(assert (= (and b!7122005 ((_ is Cons!68878) (t!382909 l2!745))) b!7122066))

(check-sat b_and!350797 (not b!7122026) (not b!7122020) (not setNonEmpty!51032) (not d!2222420) tp_is_empty!45365 (not b!7122019) (not b!7122048) (not d!2222410) (not b!7122059) (not d!2222408) (not d!2222424) (not b!7122066) (not d!2222412) (not b!7122027) (not d!2222416) (not b!7122023) (not b!7122046) (not b!7122050) (not b_next!134491) (not bm!650733) (not b!7122047) (not setNonEmpty!51033) tp_is_empty!45367 (not d!2222422))
(check-sat b_and!350797 (not b_next!134491))
(get-model)

(declare-fun b!7122110 () Bool)

(declare-fun e!4279557 () Bool)

(declare-fun e!4279556 () Bool)

(assert (=> b!7122110 (= e!4279557 e!4279556)))

(declare-fun res!2905654 () Bool)

(assert (=> b!7122110 (=> res!2905654 e!4279556)))

(declare-fun e!4279558 () Bool)

(assert (=> b!7122110 (= res!2905654 e!4279558)))

(declare-fun res!2905652 () Bool)

(assert (=> b!7122110 (=> (not res!2905652) (not e!4279558))))

(assert (=> b!7122110 (= res!2905652 (= (h!75326 l1!756) (h!75326 (t!382909 lt!2562018))))))

(declare-fun b!7122109 () Bool)

(declare-fun e!4279555 () Bool)

(assert (=> b!7122109 (= e!4279555 e!4279557)))

(declare-fun res!2905651 () Bool)

(assert (=> b!7122109 (=> (not res!2905651) (not e!4279557))))

(assert (=> b!7122109 (= res!2905651 ((_ is Cons!68878) (t!382909 lt!2562018)))))

(declare-fun b!7122111 () Bool)

(assert (=> b!7122111 (= e!4279558 (subseq!741 (t!382909 l1!756) (t!382909 (t!382909 lt!2562018))))))

(declare-fun d!2222442 () Bool)

(declare-fun res!2905653 () Bool)

(assert (=> d!2222442 (=> res!2905653 e!4279555)))

(assert (=> d!2222442 (= res!2905653 ((_ is Nil!68878) l1!756))))

(assert (=> d!2222442 (= (subseq!741 l1!756 (t!382909 lt!2562018)) e!4279555)))

(declare-fun b!7122112 () Bool)

(assert (=> b!7122112 (= e!4279556 (subseq!741 l1!756 (t!382909 (t!382909 lt!2562018))))))

(assert (= (and d!2222442 (not res!2905653)) b!7122109))

(assert (= (and b!7122109 res!2905651) b!7122110))

(assert (= (and b!7122110 res!2905652) b!7122111))

(assert (= (and b!7122110 (not res!2905654)) b!7122112))

(declare-fun m!7839356 () Bool)

(assert (=> b!7122111 m!7839356))

(declare-fun m!7839358 () Bool)

(assert (=> b!7122112 m!7839358))

(assert (=> b!7122020 d!2222442))

(declare-fun d!2222444 () Bool)

(declare-fun c!1329001 () Bool)

(assert (=> d!2222444 (= c!1329001 ((_ is Nil!68878) lt!2562021))))

(declare-fun e!4279561 () (InoxSet B!3265))

(assert (=> d!2222444 (= (content!14084 lt!2562021) e!4279561)))

(declare-fun b!7122117 () Bool)

(assert (=> b!7122117 (= e!4279561 ((as const (Array B!3265 Bool)) false))))

(declare-fun b!7122118 () Bool)

(assert (=> b!7122118 (= e!4279561 ((_ map or) (store ((as const (Array B!3265 Bool)) false) (h!75326 lt!2562021) true) (content!14084 (t!382909 lt!2562021))))))

(assert (= (and d!2222444 c!1329001) b!7122117))

(assert (= (and d!2222444 (not c!1329001)) b!7122118))

(declare-fun m!7839360 () Bool)

(assert (=> b!7122118 m!7839360))

(declare-fun m!7839362 () Bool)

(assert (=> b!7122118 m!7839362))

(assert (=> b!7122023 d!2222444))

(declare-fun b!7122119 () Bool)

(declare-fun e!4279565 () Unit!162705)

(declare-fun Unit!162711 () Unit!162705)

(assert (=> b!7122119 (= e!4279565 Unit!162711)))

(declare-fun b!7122120 () Bool)

(declare-fun call!650742 () Unit!162705)

(assert (=> b!7122120 (= e!4279565 call!650742)))

(declare-fun b!7122121 () Bool)

(declare-fun e!4279564 () Unit!162705)

(assert (=> b!7122121 (= e!4279564 call!650742)))

(declare-fun b!7122122 () Bool)

(declare-fun e!4279563 () Unit!162705)

(declare-fun Unit!162712 () Unit!162705)

(assert (=> b!7122122 (= e!4279563 Unit!162712)))

(declare-fun b!7122123 () Bool)

(assert (=> b!7122123 (= e!4279563 e!4279564)))

(declare-fun c!1329003 () Bool)

(assert (=> b!7122123 (= c!1329003 (subseq!741 (ite c!1328988 l1!756 (t!382909 l1!756)) (t!382909 (t!382909 lt!2562018))))))

(declare-fun e!4279562 () Bool)

(declare-fun b!7122124 () Bool)

(assert (=> b!7122124 (= e!4279562 (subseq!741 (ite c!1328988 l1!756 (t!382909 l1!756)) (t!382909 lt!2562018)))))

(declare-fun b!7122125 () Bool)

(declare-fun c!1329002 () Bool)

(assert (=> b!7122125 (= c!1329002 (not (isEmpty!40000 (t!382909 (ite c!1328988 l1!756 (t!382909 l1!756))))))))

(assert (=> b!7122125 (= e!4279564 e!4279565)))

(declare-fun bm!650737 () Bool)

(assert (=> bm!650737 (= call!650742 (subseqTail!22 (ite c!1329003 (ite c!1328988 l1!756 (t!382909 l1!756)) (t!382909 (ite c!1328988 l1!756 (t!382909 l1!756)))) (t!382909 (t!382909 lt!2562018))))))

(declare-fun d!2222446 () Bool)

(assert (=> d!2222446 (subseq!741 (tail!13918 (ite c!1328988 l1!756 (t!382909 l1!756))) (t!382909 lt!2562018))))

(declare-fun lt!2562039 () Unit!162705)

(assert (=> d!2222446 (= lt!2562039 e!4279563)))

(declare-fun c!1329004 () Bool)

(assert (=> d!2222446 (= c!1329004 (and ((_ is Cons!68878) (ite c!1328988 l1!756 (t!382909 l1!756))) ((_ is Cons!68878) (t!382909 lt!2562018))))))

(assert (=> d!2222446 e!4279562))

(declare-fun res!2905655 () Bool)

(assert (=> d!2222446 (=> (not res!2905655) (not e!4279562))))

(assert (=> d!2222446 (= res!2905655 (not (isEmpty!40000 (ite c!1328988 l1!756 (t!382909 l1!756)))))))

(assert (=> d!2222446 (= (subseqTail!22 (ite c!1328988 l1!756 (t!382909 l1!756)) (t!382909 lt!2562018)) lt!2562039)))

(assert (= (and d!2222446 res!2905655) b!7122124))

(assert (= (and d!2222446 c!1329004) b!7122123))

(assert (= (and d!2222446 (not c!1329004)) b!7122122))

(assert (= (and b!7122123 c!1329003) b!7122121))

(assert (= (and b!7122123 (not c!1329003)) b!7122125))

(assert (= (and b!7122125 c!1329002) b!7122120))

(assert (= (and b!7122125 (not c!1329002)) b!7122119))

(assert (= (or b!7122121 b!7122120) bm!650737))

(declare-fun m!7839364 () Bool)

(assert (=> b!7122125 m!7839364))

(declare-fun m!7839366 () Bool)

(assert (=> d!2222446 m!7839366))

(assert (=> d!2222446 m!7839366))

(declare-fun m!7839368 () Bool)

(assert (=> d!2222446 m!7839368))

(declare-fun m!7839370 () Bool)

(assert (=> d!2222446 m!7839370))

(declare-fun m!7839372 () Bool)

(assert (=> b!7122123 m!7839372))

(declare-fun m!7839374 () Bool)

(assert (=> b!7122124 m!7839374))

(declare-fun m!7839376 () Bool)

(assert (=> bm!650737 m!7839376))

(assert (=> bm!650733 d!2222446))

(declare-fun b!7122127 () Bool)

(declare-fun e!4279568 () Bool)

(declare-fun e!4279567 () Bool)

(assert (=> b!7122127 (= e!4279568 e!4279567)))

(declare-fun res!2905659 () Bool)

(assert (=> b!7122127 (=> res!2905659 e!4279567)))

(declare-fun e!4279569 () Bool)

(assert (=> b!7122127 (= res!2905659 e!4279569)))

(declare-fun res!2905657 () Bool)

(assert (=> b!7122127 (=> (not res!2905657) (not e!4279569))))

(assert (=> b!7122127 (= res!2905657 (= (h!75326 (t!382909 l1!756)) (h!75326 (t!382909 lt!2562018))))))

(declare-fun b!7122126 () Bool)

(declare-fun e!4279566 () Bool)

(assert (=> b!7122126 (= e!4279566 e!4279568)))

(declare-fun res!2905656 () Bool)

(assert (=> b!7122126 (=> (not res!2905656) (not e!4279568))))

(assert (=> b!7122126 (= res!2905656 ((_ is Cons!68878) (t!382909 lt!2562018)))))

(declare-fun b!7122128 () Bool)

(assert (=> b!7122128 (= e!4279569 (subseq!741 (t!382909 (t!382909 l1!756)) (t!382909 (t!382909 lt!2562018))))))

(declare-fun d!2222448 () Bool)

(declare-fun res!2905658 () Bool)

(assert (=> d!2222448 (=> res!2905658 e!4279566)))

(assert (=> d!2222448 (= res!2905658 ((_ is Nil!68878) (t!382909 l1!756)))))

(assert (=> d!2222448 (= (subseq!741 (t!382909 l1!756) (t!382909 lt!2562018)) e!4279566)))

(declare-fun b!7122129 () Bool)

(assert (=> b!7122129 (= e!4279567 (subseq!741 (t!382909 l1!756) (t!382909 (t!382909 lt!2562018))))))

(assert (= (and d!2222448 (not res!2905658)) b!7122126))

(assert (= (and b!7122126 res!2905656) b!7122127))

(assert (= (and b!7122127 res!2905657) b!7122128))

(assert (= (and b!7122127 (not res!2905659)) b!7122129))

(declare-fun m!7839378 () Bool)

(assert (=> b!7122128 m!7839378))

(assert (=> b!7122129 m!7839356))

(assert (=> b!7122019 d!2222448))

(declare-fun d!2222450 () Bool)

(assert (=> d!2222450 true))

(declare-fun setRes!51040 () Bool)

(assert (=> d!2222450 setRes!51040))

(declare-fun condSetEmpty!51040 () Bool)

(declare-fun res!2905662 () (InoxSet B!3265))

(assert (=> d!2222450 (= condSetEmpty!51040 (= res!2905662 ((as const (Array B!3265 Bool)) false)))))

(assert (=> d!2222450 (= (choose!54993 s1!414 f!567) res!2905662)))

(declare-fun setIsEmpty!51040 () Bool)

(assert (=> setIsEmpty!51040 setRes!51040))

(declare-fun setNonEmpty!51040 () Bool)

(declare-fun tp!1961131 () Bool)

(assert (=> setNonEmpty!51040 (= setRes!51040 (and tp!1961131 tp_is_empty!45365))))

(declare-fun setElem!51040 () B!3265)

(declare-fun setRest!51040 () (InoxSet B!3265))

(assert (=> setNonEmpty!51040 (= res!2905662 ((_ map or) (store ((as const (Array B!3265 Bool)) false) setElem!51040 true) setRest!51040))))

(assert (= (and d!2222450 condSetEmpty!51040) setIsEmpty!51040))

(assert (= (and d!2222450 (not condSetEmpty!51040)) setNonEmpty!51040))

(assert (=> d!2222410 d!2222450))

(declare-fun d!2222452 () Bool)

(declare-fun c!1329005 () Bool)

(assert (=> d!2222452 (= c!1329005 ((_ is Nil!68878) lt!2562028))))

(declare-fun e!4279570 () (InoxSet B!3265))

(assert (=> d!2222452 (= (content!14084 lt!2562028) e!4279570)))

(declare-fun b!7122130 () Bool)

(assert (=> b!7122130 (= e!4279570 ((as const (Array B!3265 Bool)) false))))

(declare-fun b!7122131 () Bool)

(assert (=> b!7122131 (= e!4279570 ((_ map or) (store ((as const (Array B!3265 Bool)) false) (h!75326 lt!2562028) true) (content!14084 (t!382909 lt!2562028))))))

(assert (= (and d!2222452 c!1329005) b!7122130))

(assert (= (and d!2222452 (not c!1329005)) b!7122131))

(declare-fun m!7839380 () Bool)

(assert (=> b!7122131 m!7839380))

(declare-fun m!7839382 () Bool)

(assert (=> b!7122131 m!7839382))

(assert (=> b!7122050 d!2222452))

(assert (=> d!2222420 d!2222410))

(assert (=> d!2222420 d!2222412))

(assert (=> d!2222420 d!2222424))

(declare-fun d!2222454 () Bool)

(assert (=> d!2222454 (= (select ((_ map or) (map!16401 s1!414 f!567) (map!16401 s2!385 f!567)) (h!75326 l1!756)) (select (map!16401 ((_ map or) s1!414 s2!385) f!567) (h!75326 l1!756)))))

(assert (=> d!2222454 true))

(declare-fun _$5!287 () Unit!162705)

(assert (=> d!2222454 (= (choose!54994 s1!414 s2!385 f!567 (h!75326 l1!756)) _$5!287)))

(declare-fun bs!1886039 () Bool)

(assert (= bs!1886039 d!2222454))

(assert (=> bs!1886039 m!7839260))

(assert (=> bs!1886039 m!7839258))

(assert (=> bs!1886039 m!7839306))

(assert (=> bs!1886039 m!7839274))

(assert (=> bs!1886039 m!7839304))

(assert (=> d!2222420 d!2222454))

(declare-fun d!2222456 () Bool)

(assert (=> d!2222456 true))

(declare-fun setRes!51041 () Bool)

(assert (=> d!2222456 setRes!51041))

(declare-fun condSetEmpty!51041 () Bool)

(declare-fun res!2905663 () (InoxSet B!3265))

(assert (=> d!2222456 (= condSetEmpty!51041 (= res!2905663 ((as const (Array B!3265 Bool)) false)))))

(assert (=> d!2222456 (= (choose!54993 s2!385 f!567) res!2905663)))

(declare-fun setIsEmpty!51041 () Bool)

(assert (=> setIsEmpty!51041 setRes!51041))

(declare-fun setNonEmpty!51041 () Bool)

(declare-fun tp!1961132 () Bool)

(assert (=> setNonEmpty!51041 (= setRes!51041 (and tp!1961132 tp_is_empty!45365))))

(declare-fun setElem!51041 () B!3265)

(declare-fun setRest!51041 () (InoxSet B!3265))

(assert (=> setNonEmpty!51041 (= res!2905663 ((_ map or) (store ((as const (Array B!3265 Bool)) false) setElem!51041 true) setRest!51041))))

(assert (= (and d!2222456 condSetEmpty!51041) setIsEmpty!51041))

(assert (= (and d!2222456 (not condSetEmpty!51041)) setNonEmpty!51041))

(assert (=> d!2222412 d!2222456))

(declare-fun d!2222458 () Bool)

(declare-fun res!2905668 () Bool)

(declare-fun e!4279575 () Bool)

(assert (=> d!2222458 (=> res!2905668 e!4279575)))

(assert (=> d!2222458 (= res!2905668 ((_ is Nil!68878) lt!2562021))))

(assert (=> d!2222458 (= (noDuplicate!2785 lt!2562021) e!4279575)))

(declare-fun b!7122137 () Bool)

(declare-fun e!4279576 () Bool)

(assert (=> b!7122137 (= e!4279575 e!4279576)))

(declare-fun res!2905669 () Bool)

(assert (=> b!7122137 (=> (not res!2905669) (not e!4279576))))

(declare-fun contains!20521 (List!69002 B!3265) Bool)

(assert (=> b!7122137 (= res!2905669 (not (contains!20521 (t!382909 lt!2562021) (h!75326 lt!2562021))))))

(declare-fun b!7122138 () Bool)

(assert (=> b!7122138 (= e!4279576 (noDuplicate!2785 (t!382909 lt!2562021)))))

(assert (= (and d!2222458 (not res!2905668)) b!7122137))

(assert (= (and b!7122137 res!2905669) b!7122138))

(declare-fun m!7839384 () Bool)

(assert (=> b!7122137 m!7839384))

(declare-fun m!7839386 () Bool)

(assert (=> b!7122138 m!7839386))

(assert (=> d!2222408 d!2222458))

(declare-fun d!2222460 () Bool)

(declare-fun e!4279581 () Bool)

(assert (=> d!2222460 e!4279581))

(declare-fun res!2905675 () Bool)

(assert (=> d!2222460 (=> (not res!2905675) (not e!4279581))))

(declare-fun res!2905674 () List!69002)

(assert (=> d!2222460 (= res!2905675 (noDuplicate!2785 res!2905674))))

(declare-fun e!4279582 () Bool)

(assert (=> d!2222460 e!4279582))

(assert (=> d!2222460 (= (choose!54992 lt!2562017) res!2905674)))

(declare-fun b!7122143 () Bool)

(declare-fun tp!1961135 () Bool)

(assert (=> b!7122143 (= e!4279582 (and tp_is_empty!45365 tp!1961135))))

(declare-fun b!7122144 () Bool)

(assert (=> b!7122144 (= e!4279581 (= (content!14084 res!2905674) lt!2562017))))

(assert (= (and d!2222460 ((_ is Cons!68878) res!2905674)) b!7122143))

(assert (= (and d!2222460 res!2905675) b!7122144))

(declare-fun m!7839388 () Bool)

(assert (=> d!2222460 m!7839388))

(declare-fun m!7839390 () Bool)

(assert (=> b!7122144 m!7839390))

(assert (=> d!2222408 d!2222460))

(declare-fun b!7122146 () Bool)

(declare-fun e!4279585 () Bool)

(declare-fun e!4279584 () Bool)

(assert (=> b!7122146 (= e!4279585 e!4279584)))

(declare-fun res!2905679 () Bool)

(assert (=> b!7122146 (=> res!2905679 e!4279584)))

(declare-fun e!4279586 () Bool)

(assert (=> b!7122146 (= res!2905679 e!4279586)))

(declare-fun res!2905677 () Bool)

(assert (=> b!7122146 (=> (not res!2905677) (not e!4279586))))

(assert (=> b!7122146 (= res!2905677 (= (h!75326 (tail!13918 l1!756)) (h!75326 lt!2562018)))))

(declare-fun b!7122145 () Bool)

(declare-fun e!4279583 () Bool)

(assert (=> b!7122145 (= e!4279583 e!4279585)))

(declare-fun res!2905676 () Bool)

(assert (=> b!7122145 (=> (not res!2905676) (not e!4279585))))

(assert (=> b!7122145 (= res!2905676 ((_ is Cons!68878) lt!2562018))))

(declare-fun b!7122147 () Bool)

(assert (=> b!7122147 (= e!4279586 (subseq!741 (t!382909 (tail!13918 l1!756)) (t!382909 lt!2562018)))))

(declare-fun d!2222462 () Bool)

(declare-fun res!2905678 () Bool)

(assert (=> d!2222462 (=> res!2905678 e!4279583)))

(assert (=> d!2222462 (= res!2905678 ((_ is Nil!68878) (tail!13918 l1!756)))))

(assert (=> d!2222462 (= (subseq!741 (tail!13918 l1!756) lt!2562018) e!4279583)))

(declare-fun b!7122148 () Bool)

(assert (=> b!7122148 (= e!4279584 (subseq!741 (tail!13918 l1!756) (t!382909 lt!2562018)))))

(assert (= (and d!2222462 (not res!2905678)) b!7122145))

(assert (= (and b!7122145 res!2905676) b!7122146))

(assert (= (and b!7122146 res!2905677) b!7122147))

(assert (= (and b!7122146 (not res!2905679)) b!7122148))

(declare-fun m!7839392 () Bool)

(assert (=> b!7122147 m!7839392))

(assert (=> b!7122148 m!7839294))

(declare-fun m!7839394 () Bool)

(assert (=> b!7122148 m!7839394))

(assert (=> d!2222416 d!2222462))

(declare-fun d!2222464 () Bool)

(assert (=> d!2222464 (= (tail!13918 l1!756) (t!382909 l1!756))))

(assert (=> d!2222416 d!2222464))

(declare-fun d!2222466 () Bool)

(assert (=> d!2222466 (= (isEmpty!40000 l1!756) ((_ is Nil!68878) l1!756))))

(assert (=> d!2222416 d!2222466))

(declare-fun d!2222468 () Bool)

(assert (=> d!2222468 (= (isEmpty!40000 (t!382909 l1!756)) ((_ is Nil!68878) (t!382909 l1!756)))))

(assert (=> b!7122048 d!2222468))

(declare-fun d!2222470 () Bool)

(assert (=> d!2222470 true))

(declare-fun setRes!51042 () Bool)

(assert (=> d!2222470 setRes!51042))

(declare-fun condSetEmpty!51042 () Bool)

(declare-fun res!2905680 () (InoxSet B!3265))

(assert (=> d!2222470 (= condSetEmpty!51042 (= res!2905680 ((as const (Array B!3265 Bool)) false)))))

(assert (=> d!2222470 (= (choose!54993 ((_ map or) s1!414 s2!385) f!567) res!2905680)))

(declare-fun setIsEmpty!51042 () Bool)

(assert (=> setIsEmpty!51042 setRes!51042))

(declare-fun setNonEmpty!51042 () Bool)

(declare-fun tp!1961136 () Bool)

(assert (=> setNonEmpty!51042 (= setRes!51042 (and tp!1961136 tp_is_empty!45365))))

(declare-fun setElem!51042 () B!3265)

(declare-fun setRest!51042 () (InoxSet B!3265))

(assert (=> setNonEmpty!51042 (= res!2905680 ((_ map or) (store ((as const (Array B!3265 Bool)) false) setElem!51042 true) setRest!51042))))

(assert (= (and d!2222470 condSetEmpty!51042) setIsEmpty!51042))

(assert (= (and d!2222470 (not condSetEmpty!51042)) setNonEmpty!51042))

(assert (=> d!2222424 d!2222470))

(assert (=> b!7122047 d!2222406))

(assert (=> b!7122046 d!2222442))

(declare-fun d!2222472 () Bool)

(declare-fun res!2905681 () Bool)

(declare-fun e!4279587 () Bool)

(assert (=> d!2222472 (=> res!2905681 e!4279587)))

(assert (=> d!2222472 (= res!2905681 ((_ is Nil!68878) lt!2562028))))

(assert (=> d!2222472 (= (noDuplicate!2785 lt!2562028) e!4279587)))

(declare-fun b!7122149 () Bool)

(declare-fun e!4279588 () Bool)

(assert (=> b!7122149 (= e!4279587 e!4279588)))

(declare-fun res!2905682 () Bool)

(assert (=> b!7122149 (=> (not res!2905682) (not e!4279588))))

(assert (=> b!7122149 (= res!2905682 (not (contains!20521 (t!382909 lt!2562028) (h!75326 lt!2562028))))))

(declare-fun b!7122150 () Bool)

(assert (=> b!7122150 (= e!4279588 (noDuplicate!2785 (t!382909 lt!2562028)))))

(assert (= (and d!2222472 (not res!2905681)) b!7122149))

(assert (= (and b!7122149 res!2905682) b!7122150))

(declare-fun m!7839396 () Bool)

(assert (=> b!7122149 m!7839396))

(declare-fun m!7839398 () Bool)

(assert (=> b!7122150 m!7839398))

(assert (=> d!2222422 d!2222472))

(declare-fun d!2222474 () Bool)

(declare-fun e!4279589 () Bool)

(assert (=> d!2222474 e!4279589))

(declare-fun res!2905684 () Bool)

(assert (=> d!2222474 (=> (not res!2905684) (not e!4279589))))

(declare-fun res!2905683 () List!69002)

(assert (=> d!2222474 (= res!2905684 (noDuplicate!2785 res!2905683))))

(declare-fun e!4279590 () Bool)

(assert (=> d!2222474 e!4279590))

(assert (=> d!2222474 (= (choose!54992 lt!2562015) res!2905683)))

(declare-fun b!7122151 () Bool)

(declare-fun tp!1961137 () Bool)

(assert (=> b!7122151 (= e!4279590 (and tp_is_empty!45365 tp!1961137))))

(declare-fun b!7122152 () Bool)

(assert (=> b!7122152 (= e!4279589 (= (content!14084 res!2905683) lt!2562015))))

(assert (= (and d!2222474 ((_ is Cons!68878) res!2905683)) b!7122151))

(assert (= (and d!2222474 res!2905684) b!7122152))

(declare-fun m!7839400 () Bool)

(assert (=> d!2222474 m!7839400))

(declare-fun m!7839402 () Bool)

(assert (=> b!7122152 m!7839402))

(assert (=> d!2222422 d!2222474))

(assert (=> b!7122027 d!2222448))

(declare-fun b!7122154 () Bool)

(declare-fun e!4279593 () Bool)

(declare-fun e!4279592 () Bool)

(assert (=> b!7122154 (= e!4279593 e!4279592)))

(declare-fun res!2905688 () Bool)

(assert (=> b!7122154 (=> res!2905688 e!4279592)))

(declare-fun e!4279594 () Bool)

(assert (=> b!7122154 (= res!2905688 e!4279594)))

(declare-fun res!2905686 () Bool)

(assert (=> b!7122154 (=> (not res!2905686) (not e!4279594))))

(assert (=> b!7122154 (= res!2905686 (= (h!75326 (t!382909 (t!382909 l1!756))) (h!75326 (t!382909 lt!2562018))))))

(declare-fun b!7122153 () Bool)

(declare-fun e!4279591 () Bool)

(assert (=> b!7122153 (= e!4279591 e!4279593)))

(declare-fun res!2905685 () Bool)

(assert (=> b!7122153 (=> (not res!2905685) (not e!4279593))))

(assert (=> b!7122153 (= res!2905685 ((_ is Cons!68878) (t!382909 lt!2562018)))))

(declare-fun b!7122155 () Bool)

(assert (=> b!7122155 (= e!4279594 (subseq!741 (t!382909 (t!382909 (t!382909 l1!756))) (t!382909 (t!382909 lt!2562018))))))

(declare-fun d!2222476 () Bool)

(declare-fun res!2905687 () Bool)

(assert (=> d!2222476 (=> res!2905687 e!4279591)))

(assert (=> d!2222476 (= res!2905687 ((_ is Nil!68878) (t!382909 (t!382909 l1!756))))))

(assert (=> d!2222476 (= (subseq!741 (t!382909 (t!382909 l1!756)) (t!382909 lt!2562018)) e!4279591)))

(declare-fun b!7122156 () Bool)

(assert (=> b!7122156 (= e!4279592 (subseq!741 (t!382909 (t!382909 l1!756)) (t!382909 (t!382909 lt!2562018))))))

(assert (= (and d!2222476 (not res!2905687)) b!7122153))

(assert (= (and b!7122153 res!2905685) b!7122154))

(assert (= (and b!7122154 res!2905686) b!7122155))

(assert (= (and b!7122154 (not res!2905688)) b!7122156))

(declare-fun m!7839404 () Bool)

(assert (=> b!7122155 m!7839404))

(assert (=> b!7122156 m!7839378))

(assert (=> b!7122026 d!2222476))

(declare-fun condSetEmpty!51043 () Bool)

(assert (=> setNonEmpty!51033 (= condSetEmpty!51043 (= setRest!51033 ((as const (Array A!607 Bool)) false)))))

(declare-fun setRes!51043 () Bool)

(assert (=> setNonEmpty!51033 (= tp!1961119 setRes!51043)))

(declare-fun setIsEmpty!51043 () Bool)

(assert (=> setIsEmpty!51043 setRes!51043))

(declare-fun setNonEmpty!51043 () Bool)

(declare-fun tp!1961138 () Bool)

(assert (=> setNonEmpty!51043 (= setRes!51043 (and tp!1961138 tp_is_empty!45367))))

(declare-fun setElem!51043 () A!607)

(declare-fun setRest!51043 () (InoxSet A!607))

(assert (=> setNonEmpty!51043 (= setRest!51033 ((_ map or) (store ((as const (Array A!607 Bool)) false) setElem!51043 true) setRest!51043))))

(assert (= (and setNonEmpty!51033 condSetEmpty!51043) setIsEmpty!51043))

(assert (= (and setNonEmpty!51033 (not condSetEmpty!51043)) setNonEmpty!51043))

(declare-fun b!7122157 () Bool)

(declare-fun e!4279595 () Bool)

(declare-fun tp!1961139 () Bool)

(assert (=> b!7122157 (= e!4279595 (and tp_is_empty!45365 tp!1961139))))

(assert (=> b!7122059 (= tp!1961115 e!4279595)))

(assert (= (and b!7122059 ((_ is Cons!68878) (t!382909 (t!382909 l1!756)))) b!7122157))

(declare-fun condSetEmpty!51044 () Bool)

(assert (=> setNonEmpty!51032 (= condSetEmpty!51044 (= setRest!51032 ((as const (Array A!607 Bool)) false)))))

(declare-fun setRes!51044 () Bool)

(assert (=> setNonEmpty!51032 (= tp!1961118 setRes!51044)))

(declare-fun setIsEmpty!51044 () Bool)

(assert (=> setIsEmpty!51044 setRes!51044))

(declare-fun setNonEmpty!51044 () Bool)

(declare-fun tp!1961140 () Bool)

(assert (=> setNonEmpty!51044 (= setRes!51044 (and tp!1961140 tp_is_empty!45367))))

(declare-fun setElem!51044 () A!607)

(declare-fun setRest!51044 () (InoxSet A!607))

(assert (=> setNonEmpty!51044 (= setRest!51032 ((_ map or) (store ((as const (Array A!607 Bool)) false) setElem!51044 true) setRest!51044))))

(assert (= (and setNonEmpty!51032 condSetEmpty!51044) setIsEmpty!51044))

(assert (= (and setNonEmpty!51032 (not condSetEmpty!51044)) setNonEmpty!51044))

(declare-fun b!7122158 () Bool)

(declare-fun e!4279596 () Bool)

(declare-fun tp!1961141 () Bool)

(assert (=> b!7122158 (= e!4279596 (and tp_is_empty!45365 tp!1961141))))

(assert (=> b!7122066 (= tp!1961120 e!4279596)))

(assert (= (and b!7122066 ((_ is Cons!68878) (t!382909 (t!382909 l2!745)))) b!7122158))

(check-sat (not b!7122144) (not b!7122138) (not b!7122112) (not b!7122129) (not b!7122124) (not b!7122137) (not b!7122118) (not b_next!134491) (not b!7122151) (not setNonEmpty!51042) (not b!7122111) tp_is_empty!45365 (not d!2222446) (not b!7122152) (not d!2222474) (not b!7122150) (not d!2222460) tp_is_empty!45367 (not b!7122155) (not b!7122143) b_and!350797 (not b!7122131) (not d!2222454) (not bm!650737) (not b!7122149) (not b!7122156) (not b!7122158) (not b!7122147) (not b!7122123) (not b!7122125) (not b!7122157) (not b!7122148) (not setNonEmpty!51040) (not setNonEmpty!51044) (not setNonEmpty!51043) (not setNonEmpty!51041) (not b!7122128))
(check-sat b_and!350797 (not b_next!134491))
