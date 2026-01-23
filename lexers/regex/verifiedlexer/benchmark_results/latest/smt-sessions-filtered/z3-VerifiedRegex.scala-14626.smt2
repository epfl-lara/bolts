; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756500 () Bool)

(assert start!756500)

(declare-fun b!8030843 () Bool)

(declare-fun e!4731205 () Bool)

(declare-fun tp!2403566 () Bool)

(declare-fun tp!2403562 () Bool)

(assert (=> b!8030843 (= e!4731205 (and tp!2403566 tp!2403562))))

(declare-fun b!8030844 () Bool)

(declare-fun e!4731207 () Bool)

(declare-fun tp_is_empty!54405 () Bool)

(declare-fun tp!2403563 () Bool)

(assert (=> b!8030844 (= e!4731207 (and tp_is_empty!54405 tp!2403563))))

(declare-fun b!8030845 () Bool)

(assert (=> b!8030845 (= e!4731205 tp_is_empty!54405)))

(declare-fun b!8030846 () Bool)

(declare-fun tp!2403565 () Bool)

(assert (=> b!8030846 (= e!4731205 tp!2403565)))

(declare-fun b!8030847 () Bool)

(declare-fun tp!2403564 () Bool)

(declare-fun tp!2403567 () Bool)

(assert (=> b!8030847 (= e!4731205 (and tp!2403564 tp!2403567))))

(declare-fun res!3175916 () Bool)

(declare-fun e!4731206 () Bool)

(assert (=> start!756500 (=> (not res!3175916) (not e!4731206))))

(declare-datatypes ((C!43748 0))(
  ( (C!43749 (val!32650 Int)) )
))
(declare-datatypes ((Regex!21705 0))(
  ( (ElementMatch!21705 (c!1473290 C!43748)) (Concat!30708 (regOne!43922 Regex!21705) (regTwo!43922 Regex!21705)) (EmptyExpr!21705) (Star!21705 (reg!22034 Regex!21705)) (EmptyLang!21705) (Union!21705 (regOne!43923 Regex!21705) (regTwo!43923 Regex!21705)) )
))
(declare-fun r!13230 () Regex!21705)

(declare-fun validRegex!12001 (Regex!21705) Bool)

(assert (=> start!756500 (= res!3175916 (validRegex!12001 r!13230))))

(assert (=> start!756500 e!4731206))

(assert (=> start!756500 e!4731205))

(assert (=> start!756500 e!4731207))

(declare-fun b!8030848 () Bool)

(declare-fun e!4731204 () Bool)

(declare-datatypes ((List!75170 0))(
  ( (Nil!75044) (Cons!75044 (h!81492 C!43748) (t!390940 List!75170)) )
))
(declare-fun input!5983 () List!75170)

(assert (=> b!8030848 (= e!4731204 (= input!5983 Nil!75044))))

(declare-fun b!8030849 () Bool)

(declare-fun res!3175918 () Bool)

(assert (=> b!8030849 (=> (not res!3175918) (not e!4731204))))

(declare-fun lt!2721872 () List!75170)

(declare-fun isEmpty!43023 (List!75170) Bool)

(assert (=> b!8030849 (= res!3175918 (isEmpty!43023 lt!2721872))))

(declare-fun b!8030850 () Bool)

(assert (=> b!8030850 (= e!4731206 e!4731204)))

(declare-fun res!3175919 () Bool)

(assert (=> b!8030850 (=> (not res!3175919) (not e!4731204))))

(declare-fun lt!2721871 () Bool)

(get-info :version)

(assert (=> b!8030850 (= res!3175919 (and (not ((_ is EmptyExpr!21705) r!13230)) (not ((_ is EmptyLang!21705) r!13230)) ((_ is ElementMatch!21705) r!13230) lt!2721871))))

(declare-fun matchR!10778 (Regex!21705 List!75170) Bool)

(declare-fun derivativeStep!6648 (Regex!21705 C!43748) Regex!21705)

(declare-fun head!16511 (List!75170) C!43748)

(assert (=> b!8030850 (= lt!2721871 (matchR!10778 (derivativeStep!6648 r!13230 (head!16511 input!5983)) lt!2721872))))

(declare-fun tail!16052 (List!75170) List!75170)

(assert (=> b!8030850 (= lt!2721872 (tail!16052 input!5983))))

(declare-fun b!8030851 () Bool)

(declare-fun res!3175917 () Bool)

(assert (=> b!8030851 (=> (not res!3175917) (not e!4731206))))

(assert (=> b!8030851 (= res!3175917 (not (isEmpty!43023 input!5983)))))

(assert (= (and start!756500 res!3175916) b!8030851))

(assert (= (and b!8030851 res!3175917) b!8030850))

(assert (= (and b!8030850 res!3175919) b!8030849))

(assert (= (and b!8030849 res!3175918) b!8030848))

(assert (= (and start!756500 ((_ is ElementMatch!21705) r!13230)) b!8030845))

(assert (= (and start!756500 ((_ is Concat!30708) r!13230)) b!8030847))

(assert (= (and start!756500 ((_ is Star!21705) r!13230)) b!8030846))

(assert (= (and start!756500 ((_ is Union!21705) r!13230)) b!8030843))

(assert (= (and start!756500 ((_ is Cons!75044) input!5983)) b!8030844))

(declare-fun m!8392152 () Bool)

(assert (=> start!756500 m!8392152))

(declare-fun m!8392154 () Bool)

(assert (=> b!8030849 m!8392154))

(declare-fun m!8392156 () Bool)

(assert (=> b!8030850 m!8392156))

(assert (=> b!8030850 m!8392156))

(declare-fun m!8392158 () Bool)

(assert (=> b!8030850 m!8392158))

(assert (=> b!8030850 m!8392158))

(declare-fun m!8392160 () Bool)

(assert (=> b!8030850 m!8392160))

(declare-fun m!8392162 () Bool)

(assert (=> b!8030850 m!8392162))

(declare-fun m!8392164 () Bool)

(assert (=> b!8030851 m!8392164))

(check-sat tp_is_empty!54405 (not b!8030847) (not b!8030850) (not b!8030844) (not b!8030843) (not start!756500) (not b!8030849) (not b!8030846) (not b!8030851))
(check-sat)
(get-model)

(declare-fun b!8030870 () Bool)

(declare-fun e!4731224 () Bool)

(declare-fun e!4731225 () Bool)

(assert (=> b!8030870 (= e!4731224 e!4731225)))

(declare-fun res!3175934 () Bool)

(declare-fun nullable!9737 (Regex!21705) Bool)

(assert (=> b!8030870 (= res!3175934 (not (nullable!9737 (reg!22034 r!13230))))))

(assert (=> b!8030870 (=> (not res!3175934) (not e!4731225))))

(declare-fun b!8030871 () Bool)

(declare-fun res!3175931 () Bool)

(declare-fun e!4731223 () Bool)

(assert (=> b!8030871 (=> res!3175931 e!4731223)))

(assert (=> b!8030871 (= res!3175931 (not ((_ is Concat!30708) r!13230)))))

(declare-fun e!4731227 () Bool)

(assert (=> b!8030871 (= e!4731227 e!4731223)))

(declare-fun b!8030872 () Bool)

(declare-fun call!744929 () Bool)

(assert (=> b!8030872 (= e!4731225 call!744929)))

(declare-fun b!8030873 () Bool)

(declare-fun e!4731228 () Bool)

(assert (=> b!8030873 (= e!4731228 e!4731224)))

(declare-fun c!1473295 () Bool)

(assert (=> b!8030873 (= c!1473295 ((_ is Star!21705) r!13230))))

(declare-fun bm!744922 () Bool)

(declare-fun call!744927 () Bool)

(declare-fun c!1473296 () Bool)

(assert (=> bm!744922 (= call!744927 (validRegex!12001 (ite c!1473296 (regTwo!43923 r!13230) (regTwo!43922 r!13230))))))

(declare-fun d!2394629 () Bool)

(declare-fun res!3175932 () Bool)

(assert (=> d!2394629 (=> res!3175932 e!4731228)))

(assert (=> d!2394629 (= res!3175932 ((_ is ElementMatch!21705) r!13230))))

(assert (=> d!2394629 (= (validRegex!12001 r!13230) e!4731228)))

(declare-fun b!8030874 () Bool)

(declare-fun res!3175933 () Bool)

(declare-fun e!4731222 () Bool)

(assert (=> b!8030874 (=> (not res!3175933) (not e!4731222))))

(declare-fun call!744928 () Bool)

(assert (=> b!8030874 (= res!3175933 call!744928)))

(assert (=> b!8030874 (= e!4731227 e!4731222)))

(declare-fun bm!744923 () Bool)

(assert (=> bm!744923 (= call!744929 (validRegex!12001 (ite c!1473295 (reg!22034 r!13230) (ite c!1473296 (regOne!43923 r!13230) (regOne!43922 r!13230)))))))

(declare-fun b!8030875 () Bool)

(declare-fun e!4731226 () Bool)

(assert (=> b!8030875 (= e!4731223 e!4731226)))

(declare-fun res!3175930 () Bool)

(assert (=> b!8030875 (=> (not res!3175930) (not e!4731226))))

(assert (=> b!8030875 (= res!3175930 call!744928)))

(declare-fun b!8030876 () Bool)

(assert (=> b!8030876 (= e!4731226 call!744927)))

(declare-fun b!8030877 () Bool)

(assert (=> b!8030877 (= e!4731222 call!744927)))

(declare-fun bm!744924 () Bool)

(assert (=> bm!744924 (= call!744928 call!744929)))

(declare-fun b!8030878 () Bool)

(assert (=> b!8030878 (= e!4731224 e!4731227)))

(assert (=> b!8030878 (= c!1473296 ((_ is Union!21705) r!13230))))

(assert (= (and d!2394629 (not res!3175932)) b!8030873))

(assert (= (and b!8030873 c!1473295) b!8030870))

(assert (= (and b!8030873 (not c!1473295)) b!8030878))

(assert (= (and b!8030870 res!3175934) b!8030872))

(assert (= (and b!8030878 c!1473296) b!8030874))

(assert (= (and b!8030878 (not c!1473296)) b!8030871))

(assert (= (and b!8030874 res!3175933) b!8030877))

(assert (= (and b!8030871 (not res!3175931)) b!8030875))

(assert (= (and b!8030875 res!3175930) b!8030876))

(assert (= (or b!8030874 b!8030875) bm!744924))

(assert (= (or b!8030877 b!8030876) bm!744922))

(assert (= (or b!8030872 bm!744924) bm!744923))

(declare-fun m!8392166 () Bool)

(assert (=> b!8030870 m!8392166))

(declare-fun m!8392168 () Bool)

(assert (=> bm!744922 m!8392168))

(declare-fun m!8392170 () Bool)

(assert (=> bm!744923 m!8392170))

(assert (=> start!756500 d!2394629))

(declare-fun d!2394633 () Bool)

(assert (=> d!2394633 (= (isEmpty!43023 input!5983) ((_ is Nil!75044) input!5983))))

(assert (=> b!8030851 d!2394633))

(declare-fun b!8030949 () Bool)

(declare-fun res!3175979 () Bool)

(declare-fun e!4731264 () Bool)

(assert (=> b!8030949 (=> res!3175979 e!4731264)))

(declare-fun e!4731267 () Bool)

(assert (=> b!8030949 (= res!3175979 e!4731267)))

(declare-fun res!3175982 () Bool)

(assert (=> b!8030949 (=> (not res!3175982) (not e!4731267))))

(declare-fun lt!2721878 () Bool)

(assert (=> b!8030949 (= res!3175982 lt!2721878)))

(declare-fun b!8030950 () Bool)

(declare-fun res!3175980 () Bool)

(assert (=> b!8030950 (=> (not res!3175980) (not e!4731267))))

(assert (=> b!8030950 (= res!3175980 (isEmpty!43023 (tail!16052 lt!2721872)))))

(declare-fun b!8030951 () Bool)

(declare-fun res!3175975 () Bool)

(declare-fun e!4731266 () Bool)

(assert (=> b!8030951 (=> res!3175975 e!4731266)))

(assert (=> b!8030951 (= res!3175975 (not (isEmpty!43023 (tail!16052 lt!2721872))))))

(declare-fun b!8030952 () Bool)

(declare-fun res!3175981 () Bool)

(assert (=> b!8030952 (=> res!3175981 e!4731264)))

(assert (=> b!8030952 (= res!3175981 (not ((_ is ElementMatch!21705) (derivativeStep!6648 r!13230 (head!16511 input!5983)))))))

(declare-fun e!4731269 () Bool)

(assert (=> b!8030952 (= e!4731269 e!4731264)))

(declare-fun b!8030953 () Bool)

(assert (=> b!8030953 (= e!4731267 (= (head!16511 lt!2721872) (c!1473290 (derivativeStep!6648 r!13230 (head!16511 input!5983)))))))

(declare-fun b!8030954 () Bool)

(assert (=> b!8030954 (= e!4731269 (not lt!2721878))))

(declare-fun b!8030956 () Bool)

(declare-fun e!4731265 () Bool)

(declare-fun call!744935 () Bool)

(assert (=> b!8030956 (= e!4731265 (= lt!2721878 call!744935))))

(declare-fun b!8030957 () Bool)

(declare-fun e!4731270 () Bool)

(assert (=> b!8030957 (= e!4731270 e!4731266)))

(declare-fun res!3175976 () Bool)

(assert (=> b!8030957 (=> res!3175976 e!4731266)))

(assert (=> b!8030957 (= res!3175976 call!744935)))

(declare-fun b!8030958 () Bool)

(assert (=> b!8030958 (= e!4731265 e!4731269)))

(declare-fun c!1473314 () Bool)

(assert (=> b!8030958 (= c!1473314 ((_ is EmptyLang!21705) (derivativeStep!6648 r!13230 (head!16511 input!5983))))))

(declare-fun b!8030959 () Bool)

(declare-fun res!3175977 () Bool)

(assert (=> b!8030959 (=> (not res!3175977) (not e!4731267))))

(assert (=> b!8030959 (= res!3175977 (not call!744935))))

(declare-fun b!8030960 () Bool)

(declare-fun e!4731268 () Bool)

(assert (=> b!8030960 (= e!4731268 (matchR!10778 (derivativeStep!6648 (derivativeStep!6648 r!13230 (head!16511 input!5983)) (head!16511 lt!2721872)) (tail!16052 lt!2721872)))))

(declare-fun b!8030961 () Bool)

(assert (=> b!8030961 (= e!4731266 (not (= (head!16511 lt!2721872) (c!1473290 (derivativeStep!6648 r!13230 (head!16511 input!5983))))))))

(declare-fun bm!744930 () Bool)

(assert (=> bm!744930 (= call!744935 (isEmpty!43023 lt!2721872))))

(declare-fun b!8030962 () Bool)

(assert (=> b!8030962 (= e!4731268 (nullable!9737 (derivativeStep!6648 r!13230 (head!16511 input!5983))))))

(declare-fun b!8030955 () Bool)

(assert (=> b!8030955 (= e!4731264 e!4731270)))

(declare-fun res!3175978 () Bool)

(assert (=> b!8030955 (=> (not res!3175978) (not e!4731270))))

(assert (=> b!8030955 (= res!3175978 (not lt!2721878))))

(declare-fun d!2394635 () Bool)

(assert (=> d!2394635 e!4731265))

(declare-fun c!1473313 () Bool)

(assert (=> d!2394635 (= c!1473313 ((_ is EmptyExpr!21705) (derivativeStep!6648 r!13230 (head!16511 input!5983))))))

(assert (=> d!2394635 (= lt!2721878 e!4731268)))

(declare-fun c!1473312 () Bool)

(assert (=> d!2394635 (= c!1473312 (isEmpty!43023 lt!2721872))))

(assert (=> d!2394635 (validRegex!12001 (derivativeStep!6648 r!13230 (head!16511 input!5983)))))

(assert (=> d!2394635 (= (matchR!10778 (derivativeStep!6648 r!13230 (head!16511 input!5983)) lt!2721872) lt!2721878)))

(assert (= (and d!2394635 c!1473312) b!8030962))

(assert (= (and d!2394635 (not c!1473312)) b!8030960))

(assert (= (and d!2394635 c!1473313) b!8030956))

(assert (= (and d!2394635 (not c!1473313)) b!8030958))

(assert (= (and b!8030958 c!1473314) b!8030954))

(assert (= (and b!8030958 (not c!1473314)) b!8030952))

(assert (= (and b!8030952 (not res!3175981)) b!8030949))

(assert (= (and b!8030949 res!3175982) b!8030959))

(assert (= (and b!8030959 res!3175977) b!8030950))

(assert (= (and b!8030950 res!3175980) b!8030953))

(assert (= (and b!8030949 (not res!3175979)) b!8030955))

(assert (= (and b!8030955 res!3175978) b!8030957))

(assert (= (and b!8030957 (not res!3175976)) b!8030951))

(assert (= (and b!8030951 (not res!3175975)) b!8030961))

(assert (= (or b!8030956 b!8030957 b!8030959) bm!744930))

(assert (=> d!2394635 m!8392154))

(assert (=> d!2394635 m!8392158))

(declare-fun m!8392186 () Bool)

(assert (=> d!2394635 m!8392186))

(declare-fun m!8392188 () Bool)

(assert (=> b!8030950 m!8392188))

(assert (=> b!8030950 m!8392188))

(declare-fun m!8392190 () Bool)

(assert (=> b!8030950 m!8392190))

(declare-fun m!8392192 () Bool)

(assert (=> b!8030953 m!8392192))

(assert (=> b!8030962 m!8392158))

(declare-fun m!8392194 () Bool)

(assert (=> b!8030962 m!8392194))

(assert (=> b!8030960 m!8392192))

(assert (=> b!8030960 m!8392158))

(assert (=> b!8030960 m!8392192))

(declare-fun m!8392196 () Bool)

(assert (=> b!8030960 m!8392196))

(assert (=> b!8030960 m!8392188))

(assert (=> b!8030960 m!8392196))

(assert (=> b!8030960 m!8392188))

(declare-fun m!8392198 () Bool)

(assert (=> b!8030960 m!8392198))

(assert (=> b!8030961 m!8392192))

(assert (=> bm!744930 m!8392154))

(assert (=> b!8030951 m!8392188))

(assert (=> b!8030951 m!8392188))

(assert (=> b!8030951 m!8392190))

(assert (=> b!8030850 d!2394635))

(declare-fun b!8031031 () Bool)

(declare-fun c!1473348 () Bool)

(assert (=> b!8031031 (= c!1473348 ((_ is Union!21705) r!13230))))

(declare-fun e!4731311 () Regex!21705)

(declare-fun e!4731312 () Regex!21705)

(assert (=> b!8031031 (= e!4731311 e!4731312)))

(declare-fun bm!744955 () Bool)

(declare-fun call!744963 () Regex!21705)

(assert (=> bm!744955 (= call!744963 (derivativeStep!6648 (ite c!1473348 (regTwo!43923 r!13230) (regTwo!43922 r!13230)) (head!16511 input!5983)))))

(declare-fun bm!744956 () Bool)

(declare-fun call!744960 () Regex!21705)

(declare-fun call!744962 () Regex!21705)

(assert (=> bm!744956 (= call!744960 call!744962)))

(declare-fun b!8031032 () Bool)

(declare-fun c!1473347 () Bool)

(assert (=> b!8031032 (= c!1473347 (nullable!9737 (regOne!43922 r!13230)))))

(declare-fun e!4731310 () Regex!21705)

(declare-fun e!4731313 () Regex!21705)

(assert (=> b!8031032 (= e!4731310 e!4731313)))

(declare-fun d!2394639 () Bool)

(declare-fun lt!2721884 () Regex!21705)

(assert (=> d!2394639 (validRegex!12001 lt!2721884)))

(declare-fun e!4731314 () Regex!21705)

(assert (=> d!2394639 (= lt!2721884 e!4731314)))

(declare-fun c!1473345 () Bool)

(assert (=> d!2394639 (= c!1473345 (or ((_ is EmptyExpr!21705) r!13230) ((_ is EmptyLang!21705) r!13230)))))

(assert (=> d!2394639 (validRegex!12001 r!13230)))

(assert (=> d!2394639 (= (derivativeStep!6648 r!13230 (head!16511 input!5983)) lt!2721884)))

(declare-fun b!8031033 () Bool)

(assert (=> b!8031033 (= e!4731314 EmptyLang!21705)))

(declare-fun b!8031034 () Bool)

(assert (=> b!8031034 (= e!4731312 e!4731310)))

(declare-fun c!1473344 () Bool)

(assert (=> b!8031034 (= c!1473344 ((_ is Star!21705) r!13230))))

(declare-fun b!8031035 () Bool)

(assert (=> b!8031035 (= e!4731313 (Union!21705 (Concat!30708 call!744960 (regTwo!43922 r!13230)) call!744963))))

(declare-fun bm!744957 () Bool)

(declare-fun call!744961 () Regex!21705)

(assert (=> bm!744957 (= call!744962 call!744961)))

(declare-fun b!8031036 () Bool)

(assert (=> b!8031036 (= e!4731311 (ite (= (head!16511 input!5983) (c!1473290 r!13230)) EmptyExpr!21705 EmptyLang!21705))))

(declare-fun b!8031037 () Bool)

(assert (=> b!8031037 (= e!4731310 (Concat!30708 call!744962 r!13230))))

(declare-fun bm!744958 () Bool)

(assert (=> bm!744958 (= call!744961 (derivativeStep!6648 (ite c!1473348 (regOne!43923 r!13230) (ite c!1473344 (reg!22034 r!13230) (regOne!43922 r!13230))) (head!16511 input!5983)))))

(declare-fun b!8031038 () Bool)

(assert (=> b!8031038 (= e!4731314 e!4731311)))

(declare-fun c!1473346 () Bool)

(assert (=> b!8031038 (= c!1473346 ((_ is ElementMatch!21705) r!13230))))

(declare-fun b!8031039 () Bool)

(assert (=> b!8031039 (= e!4731313 (Union!21705 (Concat!30708 call!744960 (regTwo!43922 r!13230)) EmptyLang!21705))))

(declare-fun b!8031040 () Bool)

(assert (=> b!8031040 (= e!4731312 (Union!21705 call!744961 call!744963))))

(assert (= (and d!2394639 c!1473345) b!8031033))

(assert (= (and d!2394639 (not c!1473345)) b!8031038))

(assert (= (and b!8031038 c!1473346) b!8031036))

(assert (= (and b!8031038 (not c!1473346)) b!8031031))

(assert (= (and b!8031031 c!1473348) b!8031040))

(assert (= (and b!8031031 (not c!1473348)) b!8031034))

(assert (= (and b!8031034 c!1473344) b!8031037))

(assert (= (and b!8031034 (not c!1473344)) b!8031032))

(assert (= (and b!8031032 c!1473347) b!8031035))

(assert (= (and b!8031032 (not c!1473347)) b!8031039))

(assert (= (or b!8031035 b!8031039) bm!744956))

(assert (= (or b!8031037 bm!744956) bm!744957))

(assert (= (or b!8031040 b!8031035) bm!744955))

(assert (= (or b!8031040 bm!744957) bm!744958))

(assert (=> bm!744955 m!8392156))

(declare-fun m!8392208 () Bool)

(assert (=> bm!744955 m!8392208))

(declare-fun m!8392210 () Bool)

(assert (=> b!8031032 m!8392210))

(declare-fun m!8392212 () Bool)

(assert (=> d!2394639 m!8392212))

(assert (=> d!2394639 m!8392152))

(assert (=> bm!744958 m!8392156))

(declare-fun m!8392214 () Bool)

(assert (=> bm!744958 m!8392214))

(assert (=> b!8030850 d!2394639))

(declare-fun d!2394649 () Bool)

(assert (=> d!2394649 (= (head!16511 input!5983) (h!81492 input!5983))))

(assert (=> b!8030850 d!2394649))

(declare-fun d!2394651 () Bool)

(assert (=> d!2394651 (= (tail!16052 input!5983) (t!390940 input!5983))))

(assert (=> b!8030850 d!2394651))

(declare-fun d!2394653 () Bool)

(assert (=> d!2394653 (= (isEmpty!43023 lt!2721872) ((_ is Nil!75044) lt!2721872))))

(assert (=> b!8030849 d!2394653))

(declare-fun b!8031052 () Bool)

(declare-fun e!4731317 () Bool)

(declare-fun tp!2403579 () Bool)

(declare-fun tp!2403581 () Bool)

(assert (=> b!8031052 (= e!4731317 (and tp!2403579 tp!2403581))))

(declare-fun b!8031054 () Bool)

(declare-fun tp!2403580 () Bool)

(declare-fun tp!2403582 () Bool)

(assert (=> b!8031054 (= e!4731317 (and tp!2403580 tp!2403582))))

(declare-fun b!8031051 () Bool)

(assert (=> b!8031051 (= e!4731317 tp_is_empty!54405)))

(declare-fun b!8031053 () Bool)

(declare-fun tp!2403578 () Bool)

(assert (=> b!8031053 (= e!4731317 tp!2403578)))

(assert (=> b!8030843 (= tp!2403566 e!4731317)))

(assert (= (and b!8030843 ((_ is ElementMatch!21705) (regOne!43923 r!13230))) b!8031051))

(assert (= (and b!8030843 ((_ is Concat!30708) (regOne!43923 r!13230))) b!8031052))

(assert (= (and b!8030843 ((_ is Star!21705) (regOne!43923 r!13230))) b!8031053))

(assert (= (and b!8030843 ((_ is Union!21705) (regOne!43923 r!13230))) b!8031054))

(declare-fun b!8031065 () Bool)

(declare-fun e!4731325 () Bool)

(declare-fun tp!2403584 () Bool)

(declare-fun tp!2403586 () Bool)

(assert (=> b!8031065 (= e!4731325 (and tp!2403584 tp!2403586))))

(declare-fun b!8031067 () Bool)

(declare-fun tp!2403585 () Bool)

(declare-fun tp!2403587 () Bool)

(assert (=> b!8031067 (= e!4731325 (and tp!2403585 tp!2403587))))

(declare-fun b!8031064 () Bool)

(assert (=> b!8031064 (= e!4731325 tp_is_empty!54405)))

(declare-fun b!8031066 () Bool)

(declare-fun tp!2403583 () Bool)

(assert (=> b!8031066 (= e!4731325 tp!2403583)))

(assert (=> b!8030843 (= tp!2403562 e!4731325)))

(assert (= (and b!8030843 ((_ is ElementMatch!21705) (regTwo!43923 r!13230))) b!8031064))

(assert (= (and b!8030843 ((_ is Concat!30708) (regTwo!43923 r!13230))) b!8031065))

(assert (= (and b!8030843 ((_ is Star!21705) (regTwo!43923 r!13230))) b!8031066))

(assert (= (and b!8030843 ((_ is Union!21705) (regTwo!43923 r!13230))) b!8031067))

(declare-fun b!8031069 () Bool)

(declare-fun e!4731326 () Bool)

(declare-fun tp!2403589 () Bool)

(declare-fun tp!2403591 () Bool)

(assert (=> b!8031069 (= e!4731326 (and tp!2403589 tp!2403591))))

(declare-fun b!8031071 () Bool)

(declare-fun tp!2403590 () Bool)

(declare-fun tp!2403592 () Bool)

(assert (=> b!8031071 (= e!4731326 (and tp!2403590 tp!2403592))))

(declare-fun b!8031068 () Bool)

(assert (=> b!8031068 (= e!4731326 tp_is_empty!54405)))

(declare-fun b!8031070 () Bool)

(declare-fun tp!2403588 () Bool)

(assert (=> b!8031070 (= e!4731326 tp!2403588)))

(assert (=> b!8030847 (= tp!2403564 e!4731326)))

(assert (= (and b!8030847 ((_ is ElementMatch!21705) (regOne!43922 r!13230))) b!8031068))

(assert (= (and b!8030847 ((_ is Concat!30708) (regOne!43922 r!13230))) b!8031069))

(assert (= (and b!8030847 ((_ is Star!21705) (regOne!43922 r!13230))) b!8031070))

(assert (= (and b!8030847 ((_ is Union!21705) (regOne!43922 r!13230))) b!8031071))

(declare-fun b!8031073 () Bool)

(declare-fun e!4731327 () Bool)

(declare-fun tp!2403594 () Bool)

(declare-fun tp!2403596 () Bool)

(assert (=> b!8031073 (= e!4731327 (and tp!2403594 tp!2403596))))

(declare-fun b!8031075 () Bool)

(declare-fun tp!2403595 () Bool)

(declare-fun tp!2403597 () Bool)

(assert (=> b!8031075 (= e!4731327 (and tp!2403595 tp!2403597))))

(declare-fun b!8031072 () Bool)

(assert (=> b!8031072 (= e!4731327 tp_is_empty!54405)))

(declare-fun b!8031074 () Bool)

(declare-fun tp!2403593 () Bool)

(assert (=> b!8031074 (= e!4731327 tp!2403593)))

(assert (=> b!8030847 (= tp!2403567 e!4731327)))

(assert (= (and b!8030847 ((_ is ElementMatch!21705) (regTwo!43922 r!13230))) b!8031072))

(assert (= (and b!8030847 ((_ is Concat!30708) (regTwo!43922 r!13230))) b!8031073))

(assert (= (and b!8030847 ((_ is Star!21705) (regTwo!43922 r!13230))) b!8031074))

(assert (= (and b!8030847 ((_ is Union!21705) (regTwo!43922 r!13230))) b!8031075))

(declare-fun b!8031077 () Bool)

(declare-fun e!4731328 () Bool)

(declare-fun tp!2403599 () Bool)

(declare-fun tp!2403601 () Bool)

(assert (=> b!8031077 (= e!4731328 (and tp!2403599 tp!2403601))))

(declare-fun b!8031079 () Bool)

(declare-fun tp!2403600 () Bool)

(declare-fun tp!2403602 () Bool)

(assert (=> b!8031079 (= e!4731328 (and tp!2403600 tp!2403602))))

(declare-fun b!8031076 () Bool)

(assert (=> b!8031076 (= e!4731328 tp_is_empty!54405)))

(declare-fun b!8031078 () Bool)

(declare-fun tp!2403598 () Bool)

(assert (=> b!8031078 (= e!4731328 tp!2403598)))

(assert (=> b!8030846 (= tp!2403565 e!4731328)))

(assert (= (and b!8030846 ((_ is ElementMatch!21705) (reg!22034 r!13230))) b!8031076))

(assert (= (and b!8030846 ((_ is Concat!30708) (reg!22034 r!13230))) b!8031077))

(assert (= (and b!8030846 ((_ is Star!21705) (reg!22034 r!13230))) b!8031078))

(assert (= (and b!8030846 ((_ is Union!21705) (reg!22034 r!13230))) b!8031079))

(declare-fun b!8031088 () Bool)

(declare-fun e!4731333 () Bool)

(declare-fun tp!2403607 () Bool)

(assert (=> b!8031088 (= e!4731333 (and tp_is_empty!54405 tp!2403607))))

(assert (=> b!8030844 (= tp!2403563 e!4731333)))

(assert (= (and b!8030844 ((_ is Cons!75044) (t!390940 input!5983))) b!8031088))

(check-sat (not bm!744923) (not b!8031075) (not b!8031032) (not d!2394639) (not b!8031071) (not b!8030960) (not bm!744930) (not b!8031069) (not b!8030962) (not b!8031065) (not b!8030950) (not b!8031079) (not b!8030953) tp_is_empty!54405 (not b!8031054) (not d!2394635) (not b!8030951) (not b!8031067) (not b!8031078) (not bm!744958) (not b!8030961) (not b!8031077) (not b!8031070) (not bm!744955) (not b!8031074) (not b!8031088) (not b!8031073) (not bm!744922) (not b!8031053) (not b!8030870) (not b!8031052) (not b!8031066))
(check-sat)
