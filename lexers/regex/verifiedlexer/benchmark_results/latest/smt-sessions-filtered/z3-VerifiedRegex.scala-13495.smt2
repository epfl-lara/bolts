; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728112 () Bool)

(assert start!728112)

(declare-fun b!7521901 () Bool)

(declare-fun e!4483913 () Bool)

(declare-fun tp!2185039 () Bool)

(declare-fun tp!2185036 () Bool)

(assert (=> b!7521901 (= e!4483913 (and tp!2185039 tp!2185036))))

(declare-fun res!3015116 () Bool)

(declare-fun e!4483914 () Bool)

(assert (=> start!728112 (=> (not res!3015116) (not e!4483914))))

(declare-datatypes ((C!39896 0))(
  ( (C!39897 (val!30388 Int)) )
))
(declare-datatypes ((Regex!19785 0))(
  ( (ElementMatch!19785 (c!1389662 C!39896)) (Concat!28630 (regOne!40082 Regex!19785) (regTwo!40082 Regex!19785)) (EmptyExpr!19785) (Star!19785 (reg!20114 Regex!19785)) (EmptyLang!19785) (Union!19785 (regOne!40083 Regex!19785) (regTwo!40083 Regex!19785)) )
))
(declare-fun expr!41 () Regex!19785)

(declare-fun validRegex!10213 (Regex!19785) Bool)

(assert (=> start!728112 (= res!3015116 (validRegex!10213 expr!41))))

(assert (=> start!728112 e!4483914))

(assert (=> start!728112 e!4483913))

(declare-fun tp_is_empty!49925 () Bool)

(assert (=> start!728112 tp_is_empty!49925))

(declare-fun b!7521902 () Bool)

(assert (=> b!7521902 (= e!4483913 tp_is_empty!49925)))

(declare-fun b!7521903 () Bool)

(declare-fun tp!2185038 () Bool)

(declare-fun tp!2185037 () Bool)

(assert (=> b!7521903 (= e!4483913 (and tp!2185038 tp!2185037))))

(declare-fun b!7521904 () Bool)

(assert (=> b!7521904 (= e!4483914 (not (validRegex!10213 (reg!20114 expr!41))))))

(declare-fun b!7521905 () Bool)

(declare-fun e!4483915 () Bool)

(declare-fun nullable!8619 (Regex!19785) Bool)

(assert (=> b!7521905 (= e!4483915 (not (nullable!8619 (regOne!40082 expr!41))))))

(declare-fun b!7521906 () Bool)

(declare-fun res!3015117 () Bool)

(assert (=> b!7521906 (=> (not res!3015117) (not e!4483914))))

(get-info :version)

(assert (=> b!7521906 (= res!3015117 (and (not ((_ is Concat!28630) expr!41)) ((_ is Star!19785) expr!41)))))

(declare-fun b!7521907 () Bool)

(declare-fun tp!2185035 () Bool)

(assert (=> b!7521907 (= e!4483913 tp!2185035)))

(declare-fun b!7521908 () Bool)

(declare-fun res!3015118 () Bool)

(assert (=> b!7521908 (=> (not res!3015118) (not e!4483914))))

(declare-fun a!1106 () C!39896)

(assert (=> b!7521908 (= res!3015118 (and (or (not ((_ is ElementMatch!19785) expr!41)) (not (= (c!1389662 expr!41) a!1106))) (not ((_ is Union!19785) expr!41))))))

(declare-fun b!7521909 () Bool)

(declare-fun res!3015115 () Bool)

(assert (=> b!7521909 (=> (not res!3015115) (not e!4483914))))

(assert (=> b!7521909 (= res!3015115 e!4483915)))

(declare-fun res!3015114 () Bool)

(assert (=> b!7521909 (=> res!3015114 e!4483915)))

(assert (=> b!7521909 (= res!3015114 (not ((_ is Concat!28630) expr!41)))))

(assert (= (and start!728112 res!3015116) b!7521908))

(assert (= (and b!7521908 res!3015118) b!7521909))

(assert (= (and b!7521909 (not res!3015114)) b!7521905))

(assert (= (and b!7521909 res!3015115) b!7521906))

(assert (= (and b!7521906 res!3015117) b!7521904))

(assert (= (and start!728112 ((_ is ElementMatch!19785) expr!41)) b!7521902))

(assert (= (and start!728112 ((_ is Concat!28630) expr!41)) b!7521903))

(assert (= (and start!728112 ((_ is Star!19785) expr!41)) b!7521907))

(assert (= (and start!728112 ((_ is Union!19785) expr!41)) b!7521901))

(declare-fun m!8100468 () Bool)

(assert (=> start!728112 m!8100468))

(declare-fun m!8100470 () Bool)

(assert (=> b!7521904 m!8100470))

(declare-fun m!8100472 () Bool)

(assert (=> b!7521905 m!8100472))

(check-sat (not b!7521905) (not b!7521907) (not b!7521904) (not b!7521901) (not b!7521903) tp_is_empty!49925 (not start!728112))
(check-sat)
(get-model)

(declare-fun bm!689776 () Bool)

(declare-fun call!689782 () Bool)

(declare-fun c!1389672 () Bool)

(assert (=> bm!689776 (= call!689782 (validRegex!10213 (ite c!1389672 (regTwo!40083 expr!41) (regOne!40082 expr!41))))))

(declare-fun b!7521946 () Bool)

(declare-fun e!4483950 () Bool)

(declare-fun e!4483945 () Bool)

(assert (=> b!7521946 (= e!4483950 e!4483945)))

(declare-fun c!1389671 () Bool)

(assert (=> b!7521946 (= c!1389671 ((_ is Star!19785) expr!41))))

(declare-fun b!7521947 () Bool)

(declare-fun e!4483948 () Bool)

(assert (=> b!7521947 (= e!4483945 e!4483948)))

(declare-fun res!3015141 () Bool)

(assert (=> b!7521947 (= res!3015141 (not (nullable!8619 (reg!20114 expr!41))))))

(assert (=> b!7521947 (=> (not res!3015141) (not e!4483948))))

(declare-fun b!7521948 () Bool)

(declare-fun e!4483946 () Bool)

(declare-fun call!689783 () Bool)

(assert (=> b!7521948 (= e!4483946 call!689783)))

(declare-fun call!689781 () Bool)

(declare-fun bm!689777 () Bool)

(assert (=> bm!689777 (= call!689781 (validRegex!10213 (ite c!1389671 (reg!20114 expr!41) (ite c!1389672 (regOne!40083 expr!41) (regTwo!40082 expr!41)))))))

(declare-fun bm!689778 () Bool)

(assert (=> bm!689778 (= call!689783 call!689781)))

(declare-fun b!7521949 () Bool)

(declare-fun e!4483944 () Bool)

(assert (=> b!7521949 (= e!4483944 e!4483946)))

(declare-fun res!3015140 () Bool)

(assert (=> b!7521949 (=> (not res!3015140) (not e!4483946))))

(assert (=> b!7521949 (= res!3015140 call!689782)))

(declare-fun b!7521950 () Bool)

(declare-fun res!3015143 () Bool)

(declare-fun e!4483947 () Bool)

(assert (=> b!7521950 (=> (not res!3015143) (not e!4483947))))

(assert (=> b!7521950 (= res!3015143 call!689783)))

(declare-fun e!4483949 () Bool)

(assert (=> b!7521950 (= e!4483949 e!4483947)))

(declare-fun d!2309076 () Bool)

(declare-fun res!3015142 () Bool)

(assert (=> d!2309076 (=> res!3015142 e!4483950)))

(assert (=> d!2309076 (= res!3015142 ((_ is ElementMatch!19785) expr!41))))

(assert (=> d!2309076 (= (validRegex!10213 expr!41) e!4483950)))

(declare-fun b!7521951 () Bool)

(assert (=> b!7521951 (= e!4483948 call!689781)))

(declare-fun b!7521952 () Bool)

(assert (=> b!7521952 (= e!4483947 call!689782)))

(declare-fun b!7521953 () Bool)

(assert (=> b!7521953 (= e!4483945 e!4483949)))

(assert (=> b!7521953 (= c!1389672 ((_ is Union!19785) expr!41))))

(declare-fun b!7521954 () Bool)

(declare-fun res!3015139 () Bool)

(assert (=> b!7521954 (=> res!3015139 e!4483944)))

(assert (=> b!7521954 (= res!3015139 (not ((_ is Concat!28630) expr!41)))))

(assert (=> b!7521954 (= e!4483949 e!4483944)))

(assert (= (and d!2309076 (not res!3015142)) b!7521946))

(assert (= (and b!7521946 c!1389671) b!7521947))

(assert (= (and b!7521946 (not c!1389671)) b!7521953))

(assert (= (and b!7521947 res!3015141) b!7521951))

(assert (= (and b!7521953 c!1389672) b!7521950))

(assert (= (and b!7521953 (not c!1389672)) b!7521954))

(assert (= (and b!7521950 res!3015143) b!7521952))

(assert (= (and b!7521954 (not res!3015139)) b!7521949))

(assert (= (and b!7521949 res!3015140) b!7521948))

(assert (= (or b!7521952 b!7521949) bm!689776))

(assert (= (or b!7521950 b!7521948) bm!689778))

(assert (= (or b!7521951 bm!689778) bm!689777))

(declare-fun m!8100474 () Bool)

(assert (=> bm!689776 m!8100474))

(declare-fun m!8100476 () Bool)

(assert (=> b!7521947 m!8100476))

(declare-fun m!8100478 () Bool)

(assert (=> bm!689777 m!8100478))

(assert (=> start!728112 d!2309076))

(declare-fun bm!689779 () Bool)

(declare-fun call!689785 () Bool)

(declare-fun c!1389674 () Bool)

(assert (=> bm!689779 (= call!689785 (validRegex!10213 (ite c!1389674 (regTwo!40083 (reg!20114 expr!41)) (regOne!40082 (reg!20114 expr!41)))))))

(declare-fun b!7521955 () Bool)

(declare-fun e!4483957 () Bool)

(declare-fun e!4483952 () Bool)

(assert (=> b!7521955 (= e!4483957 e!4483952)))

(declare-fun c!1389673 () Bool)

(assert (=> b!7521955 (= c!1389673 ((_ is Star!19785) (reg!20114 expr!41)))))

(declare-fun b!7521956 () Bool)

(declare-fun e!4483955 () Bool)

(assert (=> b!7521956 (= e!4483952 e!4483955)))

(declare-fun res!3015146 () Bool)

(assert (=> b!7521956 (= res!3015146 (not (nullable!8619 (reg!20114 (reg!20114 expr!41)))))))

(assert (=> b!7521956 (=> (not res!3015146) (not e!4483955))))

(declare-fun b!7521957 () Bool)

(declare-fun e!4483953 () Bool)

(declare-fun call!689786 () Bool)

(assert (=> b!7521957 (= e!4483953 call!689786)))

(declare-fun bm!689780 () Bool)

(declare-fun call!689784 () Bool)

(assert (=> bm!689780 (= call!689784 (validRegex!10213 (ite c!1389673 (reg!20114 (reg!20114 expr!41)) (ite c!1389674 (regOne!40083 (reg!20114 expr!41)) (regTwo!40082 (reg!20114 expr!41))))))))

(declare-fun bm!689781 () Bool)

(assert (=> bm!689781 (= call!689786 call!689784)))

(declare-fun b!7521958 () Bool)

(declare-fun e!4483951 () Bool)

(assert (=> b!7521958 (= e!4483951 e!4483953)))

(declare-fun res!3015145 () Bool)

(assert (=> b!7521958 (=> (not res!3015145) (not e!4483953))))

(assert (=> b!7521958 (= res!3015145 call!689785)))

(declare-fun b!7521959 () Bool)

(declare-fun res!3015148 () Bool)

(declare-fun e!4483954 () Bool)

(assert (=> b!7521959 (=> (not res!3015148) (not e!4483954))))

(assert (=> b!7521959 (= res!3015148 call!689786)))

(declare-fun e!4483956 () Bool)

(assert (=> b!7521959 (= e!4483956 e!4483954)))

(declare-fun d!2309080 () Bool)

(declare-fun res!3015147 () Bool)

(assert (=> d!2309080 (=> res!3015147 e!4483957)))

(assert (=> d!2309080 (= res!3015147 ((_ is ElementMatch!19785) (reg!20114 expr!41)))))

(assert (=> d!2309080 (= (validRegex!10213 (reg!20114 expr!41)) e!4483957)))

(declare-fun b!7521960 () Bool)

(assert (=> b!7521960 (= e!4483955 call!689784)))

(declare-fun b!7521961 () Bool)

(assert (=> b!7521961 (= e!4483954 call!689785)))

(declare-fun b!7521962 () Bool)

(assert (=> b!7521962 (= e!4483952 e!4483956)))

(assert (=> b!7521962 (= c!1389674 ((_ is Union!19785) (reg!20114 expr!41)))))

(declare-fun b!7521963 () Bool)

(declare-fun res!3015144 () Bool)

(assert (=> b!7521963 (=> res!3015144 e!4483951)))

(assert (=> b!7521963 (= res!3015144 (not ((_ is Concat!28630) (reg!20114 expr!41))))))

(assert (=> b!7521963 (= e!4483956 e!4483951)))

(assert (= (and d!2309080 (not res!3015147)) b!7521955))

(assert (= (and b!7521955 c!1389673) b!7521956))

(assert (= (and b!7521955 (not c!1389673)) b!7521962))

(assert (= (and b!7521956 res!3015146) b!7521960))

(assert (= (and b!7521962 c!1389674) b!7521959))

(assert (= (and b!7521962 (not c!1389674)) b!7521963))

(assert (= (and b!7521959 res!3015148) b!7521961))

(assert (= (and b!7521963 (not res!3015144)) b!7521958))

(assert (= (and b!7521958 res!3015145) b!7521957))

(assert (= (or b!7521961 b!7521958) bm!689779))

(assert (= (or b!7521959 b!7521957) bm!689781))

(assert (= (or b!7521960 bm!689781) bm!689780))

(declare-fun m!8100480 () Bool)

(assert (=> bm!689779 m!8100480))

(declare-fun m!8100482 () Bool)

(assert (=> b!7521956 m!8100482))

(declare-fun m!8100484 () Bool)

(assert (=> bm!689780 m!8100484))

(assert (=> b!7521904 d!2309080))

(declare-fun d!2309082 () Bool)

(declare-fun nullableFct!3449 (Regex!19785) Bool)

(assert (=> d!2309082 (= (nullable!8619 (regOne!40082 expr!41)) (nullableFct!3449 (regOne!40082 expr!41)))))

(declare-fun bs!1939677 () Bool)

(assert (= bs!1939677 d!2309082))

(declare-fun m!8100492 () Bool)

(assert (=> bs!1939677 m!8100492))

(assert (=> b!7521905 d!2309082))

(declare-fun b!7521999 () Bool)

(declare-fun e!4483976 () Bool)

(declare-fun tp!2185050 () Bool)

(declare-fun tp!2185051 () Bool)

(assert (=> b!7521999 (= e!4483976 (and tp!2185050 tp!2185051))))

(assert (=> b!7521907 (= tp!2185035 e!4483976)))

(declare-fun b!7521998 () Bool)

(assert (=> b!7521998 (= e!4483976 tp_is_empty!49925)))

(declare-fun b!7522001 () Bool)

(declare-fun tp!2185055 () Bool)

(declare-fun tp!2185052 () Bool)

(assert (=> b!7522001 (= e!4483976 (and tp!2185055 tp!2185052))))

(declare-fun b!7522000 () Bool)

(declare-fun tp!2185056 () Bool)

(assert (=> b!7522000 (= e!4483976 tp!2185056)))

(assert (= (and b!7521907 ((_ is ElementMatch!19785) (reg!20114 expr!41))) b!7521998))

(assert (= (and b!7521907 ((_ is Concat!28630) (reg!20114 expr!41))) b!7521999))

(assert (= (and b!7521907 ((_ is Star!19785) (reg!20114 expr!41))) b!7522000))

(assert (= (and b!7521907 ((_ is Union!19785) (reg!20114 expr!41))) b!7522001))

(declare-fun b!7522007 () Bool)

(declare-fun e!4483977 () Bool)

(declare-fun tp!2185063 () Bool)

(declare-fun tp!2185064 () Bool)

(assert (=> b!7522007 (= e!4483977 (and tp!2185063 tp!2185064))))

(assert (=> b!7521901 (= tp!2185039 e!4483977)))

(declare-fun b!7522006 () Bool)

(assert (=> b!7522006 (= e!4483977 tp_is_empty!49925)))

(declare-fun b!7522009 () Bool)

(declare-fun tp!2185066 () Bool)

(declare-fun tp!2185065 () Bool)

(assert (=> b!7522009 (= e!4483977 (and tp!2185066 tp!2185065))))

(declare-fun b!7522008 () Bool)

(declare-fun tp!2185067 () Bool)

(assert (=> b!7522008 (= e!4483977 tp!2185067)))

(assert (= (and b!7521901 ((_ is ElementMatch!19785) (regOne!40083 expr!41))) b!7522006))

(assert (= (and b!7521901 ((_ is Concat!28630) (regOne!40083 expr!41))) b!7522007))

(assert (= (and b!7521901 ((_ is Star!19785) (regOne!40083 expr!41))) b!7522008))

(assert (= (and b!7521901 ((_ is Union!19785) (regOne!40083 expr!41))) b!7522009))

(declare-fun b!7522011 () Bool)

(declare-fun e!4483978 () Bool)

(declare-fun tp!2185070 () Bool)

(declare-fun tp!2185071 () Bool)

(assert (=> b!7522011 (= e!4483978 (and tp!2185070 tp!2185071))))

(assert (=> b!7521901 (= tp!2185036 e!4483978)))

(declare-fun b!7522010 () Bool)

(assert (=> b!7522010 (= e!4483978 tp_is_empty!49925)))

(declare-fun b!7522013 () Bool)

(declare-fun tp!2185073 () Bool)

(declare-fun tp!2185072 () Bool)

(assert (=> b!7522013 (= e!4483978 (and tp!2185073 tp!2185072))))

(declare-fun b!7522012 () Bool)

(declare-fun tp!2185074 () Bool)

(assert (=> b!7522012 (= e!4483978 tp!2185074)))

(assert (= (and b!7521901 ((_ is ElementMatch!19785) (regTwo!40083 expr!41))) b!7522010))

(assert (= (and b!7521901 ((_ is Concat!28630) (regTwo!40083 expr!41))) b!7522011))

(assert (= (and b!7521901 ((_ is Star!19785) (regTwo!40083 expr!41))) b!7522012))

(assert (= (and b!7521901 ((_ is Union!19785) (regTwo!40083 expr!41))) b!7522013))

(declare-fun b!7522015 () Bool)

(declare-fun e!4483979 () Bool)

(declare-fun tp!2185075 () Bool)

(declare-fun tp!2185076 () Bool)

(assert (=> b!7522015 (= e!4483979 (and tp!2185075 tp!2185076))))

(assert (=> b!7521903 (= tp!2185038 e!4483979)))

(declare-fun b!7522014 () Bool)

(assert (=> b!7522014 (= e!4483979 tp_is_empty!49925)))

(declare-fun b!7522017 () Bool)

(declare-fun tp!2185078 () Bool)

(declare-fun tp!2185077 () Bool)

(assert (=> b!7522017 (= e!4483979 (and tp!2185078 tp!2185077))))

(declare-fun b!7522016 () Bool)

(declare-fun tp!2185079 () Bool)

(assert (=> b!7522016 (= e!4483979 tp!2185079)))

(assert (= (and b!7521903 ((_ is ElementMatch!19785) (regOne!40082 expr!41))) b!7522014))

(assert (= (and b!7521903 ((_ is Concat!28630) (regOne!40082 expr!41))) b!7522015))

(assert (= (and b!7521903 ((_ is Star!19785) (regOne!40082 expr!41))) b!7522016))

(assert (= (and b!7521903 ((_ is Union!19785) (regOne!40082 expr!41))) b!7522017))

(declare-fun b!7522019 () Bool)

(declare-fun e!4483980 () Bool)

(declare-fun tp!2185080 () Bool)

(declare-fun tp!2185081 () Bool)

(assert (=> b!7522019 (= e!4483980 (and tp!2185080 tp!2185081))))

(assert (=> b!7521903 (= tp!2185037 e!4483980)))

(declare-fun b!7522018 () Bool)

(assert (=> b!7522018 (= e!4483980 tp_is_empty!49925)))

(declare-fun b!7522021 () Bool)

(declare-fun tp!2185083 () Bool)

(declare-fun tp!2185082 () Bool)

(assert (=> b!7522021 (= e!4483980 (and tp!2185083 tp!2185082))))

(declare-fun b!7522020 () Bool)

(declare-fun tp!2185084 () Bool)

(assert (=> b!7522020 (= e!4483980 tp!2185084)))

(assert (= (and b!7521903 ((_ is ElementMatch!19785) (regTwo!40082 expr!41))) b!7522018))

(assert (= (and b!7521903 ((_ is Concat!28630) (regTwo!40082 expr!41))) b!7522019))

(assert (= (and b!7521903 ((_ is Star!19785) (regTwo!40082 expr!41))) b!7522020))

(assert (= (and b!7521903 ((_ is Union!19785) (regTwo!40082 expr!41))) b!7522021))

(check-sat (not b!7522012) (not b!7522017) (not b!7522011) (not b!7522001) (not b!7522000) (not b!7521956) (not b!7522013) (not b!7522015) (not b!7522009) (not b!7521947) (not b!7522020) (not b!7522008) (not bm!689776) (not b!7522007) (not bm!689779) (not b!7522019) (not d!2309082) (not b!7522016) (not b!7522021) tp_is_empty!49925 (not bm!689777) (not b!7521999) (not bm!689780))
(check-sat)
