; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733252 () Bool)

(assert start!733252)

(declare-fun b!7607805 () Bool)

(declare-fun e!4525117 () Bool)

(declare-fun tp!2219215 () Bool)

(declare-fun tp!2219218 () Bool)

(assert (=> b!7607805 (= e!4525117 (and tp!2219215 tp!2219218))))

(declare-fun b!7607806 () Bool)

(declare-fun tp_is_empty!50765 () Bool)

(assert (=> b!7607806 (= e!4525117 tp_is_empty!50765)))

(declare-fun b!7607807 () Bool)

(declare-fun res!3046162 () Bool)

(declare-fun e!4525116 () Bool)

(assert (=> b!7607807 (=> (not res!3046162) (not e!4525116))))

(declare-datatypes ((C!40736 0))(
  ( (C!40737 (val!30808 Int)) )
))
(declare-datatypes ((Regex!20205 0))(
  ( (ElementMatch!20205 (c!1402948 C!40736)) (Concat!29050 (regOne!40922 Regex!20205) (regTwo!40922 Regex!20205)) (EmptyExpr!20205) (Star!20205 (reg!20534 Regex!20205)) (EmptyLang!20205) (Union!20205 (regOne!40923 Regex!20205) (regTwo!40923 Regex!20205)) )
))
(declare-fun r!19218 () Regex!20205)

(declare-fun nullable!8826 (Regex!20205) Bool)

(assert (=> b!7607807 (= res!3046162 (nullable!8826 r!19218))))

(declare-fun b!7607808 () Bool)

(declare-fun lostCause!1893 (Regex!20205) Bool)

(assert (=> b!7607808 (= e!4525116 (lostCause!1893 r!19218))))

(declare-fun b!7607809 () Bool)

(declare-fun tp!2219217 () Bool)

(assert (=> b!7607809 (= e!4525117 tp!2219217)))

(declare-fun b!7607810 () Bool)

(declare-fun tp!2219216 () Bool)

(declare-fun tp!2219219 () Bool)

(assert (=> b!7607810 (= e!4525117 (and tp!2219216 tp!2219219))))

(declare-fun b!7607811 () Bool)

(declare-fun res!3046161 () Bool)

(assert (=> b!7607811 (=> (not res!3046161) (not e!4525116))))

(get-info :version)

(assert (=> b!7607811 (= res!3046161 (and (not ((_ is ElementMatch!20205) r!19218)) ((_ is Star!20205) r!19218)))))

(declare-fun res!3046160 () Bool)

(assert (=> start!733252 (=> (not res!3046160) (not e!4525116))))

(declare-fun validRegex!10627 (Regex!20205) Bool)

(assert (=> start!733252 (= res!3046160 (validRegex!10627 r!19218))))

(assert (=> start!733252 e!4525116))

(assert (=> start!733252 e!4525117))

(assert (= (and start!733252 res!3046160) b!7607807))

(assert (= (and b!7607807 res!3046162) b!7607811))

(assert (= (and b!7607811 res!3046161) b!7607808))

(assert (= (and start!733252 ((_ is ElementMatch!20205) r!19218)) b!7607806))

(assert (= (and start!733252 ((_ is Concat!29050) r!19218)) b!7607805))

(assert (= (and start!733252 ((_ is Star!20205) r!19218)) b!7607809))

(assert (= (and start!733252 ((_ is Union!20205) r!19218)) b!7607810))

(declare-fun m!8147264 () Bool)

(assert (=> b!7607807 m!8147264))

(declare-fun m!8147266 () Bool)

(assert (=> b!7607808 m!8147266))

(declare-fun m!8147268 () Bool)

(assert (=> start!733252 m!8147268))

(check-sat (not b!7607805) (not b!7607809) tp_is_empty!50765 (not b!7607808) (not b!7607807) (not b!7607810) (not start!733252))
(check-sat)
(get-model)

(declare-fun d!2321966 () Bool)

(declare-fun nullableFct!3509 (Regex!20205) Bool)

(assert (=> d!2321966 (= (nullable!8826 r!19218) (nullableFct!3509 r!19218))))

(declare-fun bs!1942779 () Bool)

(assert (= bs!1942779 d!2321966))

(declare-fun m!8147270 () Bool)

(assert (=> bs!1942779 m!8147270))

(assert (=> b!7607807 d!2321966))

(declare-fun bm!698529 () Bool)

(declare-fun call!698535 () Bool)

(declare-fun call!698534 () Bool)

(assert (=> bm!698529 (= call!698535 call!698534)))

(declare-fun bm!698530 () Bool)

(declare-fun call!698536 () Bool)

(declare-fun c!1402959 () Bool)

(assert (=> bm!698530 (= call!698536 (validRegex!10627 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))

(declare-fun b!7607857 () Bool)

(declare-fun e!4525153 () Bool)

(assert (=> b!7607857 (= e!4525153 call!698536)))

(declare-fun b!7607858 () Bool)

(declare-fun res!3046189 () Bool)

(declare-fun e!4525158 () Bool)

(assert (=> b!7607858 (=> res!3046189 e!4525158)))

(assert (=> b!7607858 (= res!3046189 (not ((_ is Concat!29050) r!19218)))))

(declare-fun e!4525159 () Bool)

(assert (=> b!7607858 (= e!4525159 e!4525158)))

(declare-fun c!1402960 () Bool)

(declare-fun bm!698531 () Bool)

(assert (=> bm!698531 (= call!698534 (validRegex!10627 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))))))

(declare-fun b!7607859 () Bool)

(declare-fun e!4525154 () Bool)

(assert (=> b!7607859 (= e!4525154 e!4525159)))

(assert (=> b!7607859 (= c!1402959 ((_ is Union!20205) r!19218))))

(declare-fun b!7607860 () Bool)

(declare-fun res!3046190 () Bool)

(declare-fun e!4525157 () Bool)

(assert (=> b!7607860 (=> (not res!3046190) (not e!4525157))))

(assert (=> b!7607860 (= res!3046190 call!698535)))

(assert (=> b!7607860 (= e!4525159 e!4525157)))

(declare-fun d!2321970 () Bool)

(declare-fun res!3046191 () Bool)

(declare-fun e!4525156 () Bool)

(assert (=> d!2321970 (=> res!3046191 e!4525156)))

(assert (=> d!2321970 (= res!3046191 ((_ is ElementMatch!20205) r!19218))))

(assert (=> d!2321970 (= (validRegex!10627 r!19218) e!4525156)))

(declare-fun b!7607861 () Bool)

(assert (=> b!7607861 (= e!4525156 e!4525154)))

(assert (=> b!7607861 (= c!1402960 ((_ is Star!20205) r!19218))))

(declare-fun b!7607862 () Bool)

(declare-fun e!4525155 () Bool)

(assert (=> b!7607862 (= e!4525154 e!4525155)))

(declare-fun res!3046188 () Bool)

(assert (=> b!7607862 (= res!3046188 (not (nullable!8826 (reg!20534 r!19218))))))

(assert (=> b!7607862 (=> (not res!3046188) (not e!4525155))))

(declare-fun b!7607863 () Bool)

(assert (=> b!7607863 (= e!4525155 call!698534)))

(declare-fun b!7607864 () Bool)

(assert (=> b!7607864 (= e!4525158 e!4525153)))

(declare-fun res!3046192 () Bool)

(assert (=> b!7607864 (=> (not res!3046192) (not e!4525153))))

(assert (=> b!7607864 (= res!3046192 call!698535)))

(declare-fun b!7607865 () Bool)

(assert (=> b!7607865 (= e!4525157 call!698536)))

(assert (= (and d!2321970 (not res!3046191)) b!7607861))

(assert (= (and b!7607861 c!1402960) b!7607862))

(assert (= (and b!7607861 (not c!1402960)) b!7607859))

(assert (= (and b!7607862 res!3046188) b!7607863))

(assert (= (and b!7607859 c!1402959) b!7607860))

(assert (= (and b!7607859 (not c!1402959)) b!7607858))

(assert (= (and b!7607860 res!3046190) b!7607865))

(assert (= (and b!7607858 (not res!3046189)) b!7607864))

(assert (= (and b!7607864 res!3046192) b!7607857))

(assert (= (or b!7607860 b!7607864) bm!698529))

(assert (= (or b!7607865 b!7607857) bm!698530))

(assert (= (or b!7607863 bm!698529) bm!698531))

(declare-fun m!8147278 () Bool)

(assert (=> bm!698530 m!8147278))

(declare-fun m!8147280 () Bool)

(assert (=> bm!698531 m!8147280))

(declare-fun m!8147282 () Bool)

(assert (=> b!7607862 m!8147282))

(assert (=> start!733252 d!2321970))

(declare-fun d!2321974 () Bool)

(declare-fun lostCauseFct!539 (Regex!20205) Bool)

(assert (=> d!2321974 (= (lostCause!1893 r!19218) (lostCauseFct!539 r!19218))))

(declare-fun bs!1942781 () Bool)

(assert (= bs!1942781 d!2321974))

(declare-fun m!8147286 () Bool)

(assert (=> bs!1942781 m!8147286))

(assert (=> b!7607808 d!2321974))

(declare-fun b!7607886 () Bool)

(declare-fun e!4525164 () Bool)

(assert (=> b!7607886 (= e!4525164 tp_is_empty!50765)))

(declare-fun b!7607888 () Bool)

(declare-fun tp!2219244 () Bool)

(assert (=> b!7607888 (= e!4525164 tp!2219244)))

(declare-fun b!7607889 () Bool)

(declare-fun tp!2219243 () Bool)

(declare-fun tp!2219242 () Bool)

(assert (=> b!7607889 (= e!4525164 (and tp!2219243 tp!2219242))))

(declare-fun b!7607887 () Bool)

(declare-fun tp!2219241 () Bool)

(declare-fun tp!2219240 () Bool)

(assert (=> b!7607887 (= e!4525164 (and tp!2219241 tp!2219240))))

(assert (=> b!7607810 (= tp!2219216 e!4525164)))

(assert (= (and b!7607810 ((_ is ElementMatch!20205) (regOne!40923 r!19218))) b!7607886))

(assert (= (and b!7607810 ((_ is Concat!29050) (regOne!40923 r!19218))) b!7607887))

(assert (= (and b!7607810 ((_ is Star!20205) (regOne!40923 r!19218))) b!7607888))

(assert (= (and b!7607810 ((_ is Union!20205) (regOne!40923 r!19218))) b!7607889))

(declare-fun b!7607894 () Bool)

(declare-fun e!4525166 () Bool)

(assert (=> b!7607894 (= e!4525166 tp_is_empty!50765)))

(declare-fun b!7607896 () Bool)

(declare-fun tp!2219254 () Bool)

(assert (=> b!7607896 (= e!4525166 tp!2219254)))

(declare-fun b!7607897 () Bool)

(declare-fun tp!2219253 () Bool)

(declare-fun tp!2219252 () Bool)

(assert (=> b!7607897 (= e!4525166 (and tp!2219253 tp!2219252))))

(declare-fun b!7607895 () Bool)

(declare-fun tp!2219251 () Bool)

(declare-fun tp!2219250 () Bool)

(assert (=> b!7607895 (= e!4525166 (and tp!2219251 tp!2219250))))

(assert (=> b!7607810 (= tp!2219219 e!4525166)))

(assert (= (and b!7607810 ((_ is ElementMatch!20205) (regTwo!40923 r!19218))) b!7607894))

(assert (= (and b!7607810 ((_ is Concat!29050) (regTwo!40923 r!19218))) b!7607895))

(assert (= (and b!7607810 ((_ is Star!20205) (regTwo!40923 r!19218))) b!7607896))

(assert (= (and b!7607810 ((_ is Union!20205) (regTwo!40923 r!19218))) b!7607897))

(declare-fun b!7607898 () Bool)

(declare-fun e!4525168 () Bool)

(assert (=> b!7607898 (= e!4525168 tp_is_empty!50765)))

(declare-fun b!7607902 () Bool)

(declare-fun tp!2219262 () Bool)

(assert (=> b!7607902 (= e!4525168 tp!2219262)))

(declare-fun b!7607904 () Bool)

(declare-fun tp!2219260 () Bool)

(declare-fun tp!2219258 () Bool)

(assert (=> b!7607904 (= e!4525168 (and tp!2219260 tp!2219258))))

(declare-fun b!7607900 () Bool)

(declare-fun tp!2219256 () Bool)

(declare-fun tp!2219255 () Bool)

(assert (=> b!7607900 (= e!4525168 (and tp!2219256 tp!2219255))))

(assert (=> b!7607805 (= tp!2219215 e!4525168)))

(assert (= (and b!7607805 ((_ is ElementMatch!20205) (regOne!40922 r!19218))) b!7607898))

(assert (= (and b!7607805 ((_ is Concat!29050) (regOne!40922 r!19218))) b!7607900))

(assert (= (and b!7607805 ((_ is Star!20205) (regOne!40922 r!19218))) b!7607902))

(assert (= (and b!7607805 ((_ is Union!20205) (regOne!40922 r!19218))) b!7607904))

(declare-fun b!7607906 () Bool)

(declare-fun e!4525169 () Bool)

(assert (=> b!7607906 (= e!4525169 tp_is_empty!50765)))

(declare-fun b!7607908 () Bool)

(declare-fun tp!2219269 () Bool)

(assert (=> b!7607908 (= e!4525169 tp!2219269)))

(declare-fun b!7607909 () Bool)

(declare-fun tp!2219268 () Bool)

(declare-fun tp!2219267 () Bool)

(assert (=> b!7607909 (= e!4525169 (and tp!2219268 tp!2219267))))

(declare-fun b!7607907 () Bool)

(declare-fun tp!2219266 () Bool)

(declare-fun tp!2219265 () Bool)

(assert (=> b!7607907 (= e!4525169 (and tp!2219266 tp!2219265))))

(assert (=> b!7607805 (= tp!2219218 e!4525169)))

(assert (= (and b!7607805 ((_ is ElementMatch!20205) (regTwo!40922 r!19218))) b!7607906))

(assert (= (and b!7607805 ((_ is Concat!29050) (regTwo!40922 r!19218))) b!7607907))

(assert (= (and b!7607805 ((_ is Star!20205) (regTwo!40922 r!19218))) b!7607908))

(assert (= (and b!7607805 ((_ is Union!20205) (regTwo!40922 r!19218))) b!7607909))

(declare-fun b!7607914 () Bool)

(declare-fun e!4525171 () Bool)

(assert (=> b!7607914 (= e!4525171 tp_is_empty!50765)))

(declare-fun b!7607916 () Bool)

(declare-fun tp!2219279 () Bool)

(assert (=> b!7607916 (= e!4525171 tp!2219279)))

(declare-fun b!7607917 () Bool)

(declare-fun tp!2219278 () Bool)

(declare-fun tp!2219277 () Bool)

(assert (=> b!7607917 (= e!4525171 (and tp!2219278 tp!2219277))))

(declare-fun b!7607915 () Bool)

(declare-fun tp!2219276 () Bool)

(declare-fun tp!2219275 () Bool)

(assert (=> b!7607915 (= e!4525171 (and tp!2219276 tp!2219275))))

(assert (=> b!7607809 (= tp!2219217 e!4525171)))

(assert (= (and b!7607809 ((_ is ElementMatch!20205) (reg!20534 r!19218))) b!7607914))

(assert (= (and b!7607809 ((_ is Concat!29050) (reg!20534 r!19218))) b!7607915))

(assert (= (and b!7607809 ((_ is Star!20205) (reg!20534 r!19218))) b!7607916))

(assert (= (and b!7607809 ((_ is Union!20205) (reg!20534 r!19218))) b!7607917))

(check-sat (not b!7607904) (not b!7607909) (not b!7607889) (not b!7607896) (not b!7607907) (not b!7607888) (not b!7607902) (not b!7607897) (not b!7607915) (not b!7607887) (not b!7607900) (not d!2321966) (not bm!698530) (not bm!698531) (not b!7607917) (not b!7607916) (not b!7607908) tp_is_empty!50765 (not b!7607862) (not b!7607895) (not d!2321974))
(check-sat)
(get-model)

(declare-fun bm!698532 () Bool)

(declare-fun call!698538 () Bool)

(declare-fun call!698537 () Bool)

(assert (=> bm!698532 (= call!698538 call!698537)))

(declare-fun call!698539 () Bool)

(declare-fun c!1402961 () Bool)

(declare-fun bm!698533 () Bool)

(assert (=> bm!698533 (= call!698539 (validRegex!10627 (ite c!1402961 (regTwo!40923 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))) (regTwo!40922 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))))

(declare-fun b!7607926 () Bool)

(declare-fun e!4525174 () Bool)

(assert (=> b!7607926 (= e!4525174 call!698539)))

(declare-fun b!7607927 () Bool)

(declare-fun res!3046194 () Bool)

(declare-fun e!4525179 () Bool)

(assert (=> b!7607927 (=> res!3046194 e!4525179)))

(assert (=> b!7607927 (= res!3046194 (not ((_ is Concat!29050) (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218)))))))

(declare-fun e!4525180 () Bool)

(assert (=> b!7607927 (= e!4525180 e!4525179)))

(declare-fun c!1402962 () Bool)

(declare-fun bm!698534 () Bool)

(assert (=> bm!698534 (= call!698537 (validRegex!10627 (ite c!1402962 (reg!20534 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))) (ite c!1402961 (regOne!40923 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))) (regOne!40922 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218)))))))))

(declare-fun b!7607928 () Bool)

(declare-fun e!4525175 () Bool)

(assert (=> b!7607928 (= e!4525175 e!4525180)))

(assert (=> b!7607928 (= c!1402961 ((_ is Union!20205) (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))

(declare-fun b!7607929 () Bool)

(declare-fun res!3046195 () Bool)

(declare-fun e!4525178 () Bool)

(assert (=> b!7607929 (=> (not res!3046195) (not e!4525178))))

(assert (=> b!7607929 (= res!3046195 call!698538)))

(assert (=> b!7607929 (= e!4525180 e!4525178)))

(declare-fun d!2321978 () Bool)

(declare-fun res!3046196 () Bool)

(declare-fun e!4525177 () Bool)

(assert (=> d!2321978 (=> res!3046196 e!4525177)))

(assert (=> d!2321978 (= res!3046196 ((_ is ElementMatch!20205) (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))

(assert (=> d!2321978 (= (validRegex!10627 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))) e!4525177)))

(declare-fun b!7607930 () Bool)

(assert (=> b!7607930 (= e!4525177 e!4525175)))

(assert (=> b!7607930 (= c!1402962 ((_ is Star!20205) (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))

(declare-fun b!7607931 () Bool)

(declare-fun e!4525176 () Bool)

(assert (=> b!7607931 (= e!4525175 e!4525176)))

(declare-fun res!3046193 () Bool)

(assert (=> b!7607931 (= res!3046193 (not (nullable!8826 (reg!20534 (ite c!1402959 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))))

(assert (=> b!7607931 (=> (not res!3046193) (not e!4525176))))

(declare-fun b!7607932 () Bool)

(assert (=> b!7607932 (= e!4525176 call!698537)))

(declare-fun b!7607933 () Bool)

(assert (=> b!7607933 (= e!4525179 e!4525174)))

(declare-fun res!3046197 () Bool)

(assert (=> b!7607933 (=> (not res!3046197) (not e!4525174))))

(assert (=> b!7607933 (= res!3046197 call!698538)))

(declare-fun b!7607934 () Bool)

(assert (=> b!7607934 (= e!4525178 call!698539)))

(assert (= (and d!2321978 (not res!3046196)) b!7607930))

(assert (= (and b!7607930 c!1402962) b!7607931))

(assert (= (and b!7607930 (not c!1402962)) b!7607928))

(assert (= (and b!7607931 res!3046193) b!7607932))

(assert (= (and b!7607928 c!1402961) b!7607929))

(assert (= (and b!7607928 (not c!1402961)) b!7607927))

(assert (= (and b!7607929 res!3046195) b!7607934))

(assert (= (and b!7607927 (not res!3046194)) b!7607933))

(assert (= (and b!7607933 res!3046197) b!7607926))

(assert (= (or b!7607929 b!7607933) bm!698532))

(assert (= (or b!7607934 b!7607926) bm!698533))

(assert (= (or b!7607932 bm!698532) bm!698534))

(declare-fun m!8147290 () Bool)

(assert (=> bm!698533 m!8147290))

(declare-fun m!8147292 () Bool)

(assert (=> bm!698534 m!8147292))

(declare-fun m!8147294 () Bool)

(assert (=> b!7607931 m!8147294))

(assert (=> bm!698530 d!2321978))

(declare-fun d!2321980 () Bool)

(assert (=> d!2321980 (= (nullable!8826 (reg!20534 r!19218)) (nullableFct!3509 (reg!20534 r!19218)))))

(declare-fun bs!1942783 () Bool)

(assert (= bs!1942783 d!2321980))

(declare-fun m!8147296 () Bool)

(assert (=> bs!1942783 m!8147296))

(assert (=> b!7607862 d!2321980))

(declare-fun b!7607949 () Bool)

(declare-fun e!4525197 () Bool)

(declare-fun e!4525198 () Bool)

(assert (=> b!7607949 (= e!4525197 e!4525198)))

(declare-fun res!3046209 () Bool)

(assert (=> b!7607949 (=> (not res!3046209) (not e!4525198))))

(assert (=> b!7607949 (= res!3046209 (and (not ((_ is EmptyLang!20205) r!19218)) (not ((_ is ElementMatch!20205) r!19218))))))

(declare-fun b!7607950 () Bool)

(declare-fun e!4525194 () Bool)

(assert (=> b!7607950 (= e!4525198 e!4525194)))

(declare-fun res!3046210 () Bool)

(assert (=> b!7607950 (=> res!3046210 e!4525194)))

(assert (=> b!7607950 (= res!3046210 ((_ is Star!20205) r!19218))))

(declare-fun b!7607951 () Bool)

(declare-fun e!4525196 () Bool)

(declare-fun e!4525193 () Bool)

(assert (=> b!7607951 (= e!4525196 e!4525193)))

(declare-fun res!3046212 () Bool)

(declare-fun call!698544 () Bool)

(assert (=> b!7607951 (= res!3046212 call!698544)))

(assert (=> b!7607951 (=> (not res!3046212) (not e!4525193))))

(declare-fun b!7607952 () Bool)

(declare-fun e!4525195 () Bool)

(assert (=> b!7607952 (= e!4525195 call!698544)))

(declare-fun d!2321982 () Bool)

(declare-fun res!3046211 () Bool)

(assert (=> d!2321982 (=> res!3046211 e!4525197)))

(assert (=> d!2321982 (= res!3046211 ((_ is EmptyExpr!20205) r!19218))))

(assert (=> d!2321982 (= (nullableFct!3509 r!19218) e!4525197)))

(declare-fun b!7607953 () Bool)

(assert (=> b!7607953 (= e!4525194 e!4525196)))

(declare-fun c!1402965 () Bool)

(assert (=> b!7607953 (= c!1402965 ((_ is Union!20205) r!19218))))

(declare-fun bm!698539 () Bool)

(declare-fun call!698545 () Bool)

(assert (=> bm!698539 (= call!698545 (nullable!8826 (ite c!1402965 (regOne!40923 r!19218) (regTwo!40922 r!19218))))))

(declare-fun bm!698540 () Bool)

(assert (=> bm!698540 (= call!698544 (nullable!8826 (ite c!1402965 (regTwo!40923 r!19218) (regOne!40922 r!19218))))))

(declare-fun b!7607954 () Bool)

(assert (=> b!7607954 (= e!4525193 call!698545)))

(declare-fun b!7607955 () Bool)

(assert (=> b!7607955 (= e!4525196 e!4525195)))

(declare-fun res!3046208 () Bool)

(assert (=> b!7607955 (= res!3046208 call!698545)))

(assert (=> b!7607955 (=> res!3046208 e!4525195)))

(assert (= (and d!2321982 (not res!3046211)) b!7607949))

(assert (= (and b!7607949 res!3046209) b!7607950))

(assert (= (and b!7607950 (not res!3046210)) b!7607953))

(assert (= (and b!7607953 c!1402965) b!7607955))

(assert (= (and b!7607953 (not c!1402965)) b!7607951))

(assert (= (and b!7607955 (not res!3046208)) b!7607952))

(assert (= (and b!7607951 res!3046212) b!7607954))

(assert (= (or b!7607952 b!7607951) bm!698540))

(assert (= (or b!7607955 b!7607954) bm!698539))

(declare-fun m!8147298 () Bool)

(assert (=> bm!698539 m!8147298))

(declare-fun m!8147300 () Bool)

(assert (=> bm!698540 m!8147300))

(assert (=> d!2321966 d!2321982))

(declare-fun bm!698541 () Bool)

(declare-fun call!698547 () Bool)

(declare-fun call!698546 () Bool)

(assert (=> bm!698541 (= call!698547 call!698546)))

(declare-fun bm!698542 () Bool)

(declare-fun call!698548 () Bool)

(declare-fun c!1402966 () Bool)

(assert (=> bm!698542 (= call!698548 (validRegex!10627 (ite c!1402966 (regTwo!40923 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))) (regTwo!40922 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))))))))

(declare-fun b!7607956 () Bool)

(declare-fun e!4525199 () Bool)

(assert (=> b!7607956 (= e!4525199 call!698548)))

(declare-fun b!7607957 () Bool)

(declare-fun res!3046214 () Bool)

(declare-fun e!4525204 () Bool)

(assert (=> b!7607957 (=> res!3046214 e!4525204)))

(assert (=> b!7607957 (= res!3046214 (not ((_ is Concat!29050) (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218))))))))

(declare-fun e!4525205 () Bool)

(assert (=> b!7607957 (= e!4525205 e!4525204)))

(declare-fun c!1402967 () Bool)

(declare-fun bm!698543 () Bool)

(assert (=> bm!698543 (= call!698546 (validRegex!10627 (ite c!1402967 (reg!20534 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))) (ite c!1402966 (regOne!40923 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))) (regOne!40922 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218))))))))))

(declare-fun b!7607958 () Bool)

(declare-fun e!4525200 () Bool)

(assert (=> b!7607958 (= e!4525200 e!4525205)))

(assert (=> b!7607958 (= c!1402966 ((_ is Union!20205) (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))))))

(declare-fun b!7607959 () Bool)

(declare-fun res!3046215 () Bool)

(declare-fun e!4525203 () Bool)

(assert (=> b!7607959 (=> (not res!3046215) (not e!4525203))))

(assert (=> b!7607959 (= res!3046215 call!698547)))

(assert (=> b!7607959 (= e!4525205 e!4525203)))

(declare-fun d!2321984 () Bool)

(declare-fun res!3046216 () Bool)

(declare-fun e!4525202 () Bool)

(assert (=> d!2321984 (=> res!3046216 e!4525202)))

(assert (=> d!2321984 (= res!3046216 ((_ is ElementMatch!20205) (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))))))

(assert (=> d!2321984 (= (validRegex!10627 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))) e!4525202)))

(declare-fun b!7607960 () Bool)

(assert (=> b!7607960 (= e!4525202 e!4525200)))

(assert (=> b!7607960 (= c!1402967 ((_ is Star!20205) (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))))))

(declare-fun b!7607961 () Bool)

(declare-fun e!4525201 () Bool)

(assert (=> b!7607961 (= e!4525200 e!4525201)))

(declare-fun res!3046213 () Bool)

(assert (=> b!7607961 (= res!3046213 (not (nullable!8826 (reg!20534 (ite c!1402960 (reg!20534 r!19218) (ite c!1402959 (regOne!40923 r!19218) (regOne!40922 r!19218)))))))))

(assert (=> b!7607961 (=> (not res!3046213) (not e!4525201))))

(declare-fun b!7607962 () Bool)

(assert (=> b!7607962 (= e!4525201 call!698546)))

(declare-fun b!7607963 () Bool)

(assert (=> b!7607963 (= e!4525204 e!4525199)))

(declare-fun res!3046217 () Bool)

(assert (=> b!7607963 (=> (not res!3046217) (not e!4525199))))

(assert (=> b!7607963 (= res!3046217 call!698547)))

(declare-fun b!7607964 () Bool)

(assert (=> b!7607964 (= e!4525203 call!698548)))

(assert (= (and d!2321984 (not res!3046216)) b!7607960))

(assert (= (and b!7607960 c!1402967) b!7607961))

(assert (= (and b!7607960 (not c!1402967)) b!7607958))

(assert (= (and b!7607961 res!3046213) b!7607962))

(assert (= (and b!7607958 c!1402966) b!7607959))

(assert (= (and b!7607958 (not c!1402966)) b!7607957))

(assert (= (and b!7607959 res!3046215) b!7607964))

(assert (= (and b!7607957 (not res!3046214)) b!7607963))

(assert (= (and b!7607963 res!3046217) b!7607956))

(assert (= (or b!7607959 b!7607963) bm!698541))

(assert (= (or b!7607964 b!7607956) bm!698542))

(assert (= (or b!7607962 bm!698541) bm!698543))

(declare-fun m!8147302 () Bool)

(assert (=> bm!698542 m!8147302))

(declare-fun m!8147304 () Bool)

(assert (=> bm!698543 m!8147304))

(declare-fun m!8147306 () Bool)

(assert (=> b!7607961 m!8147306))

(assert (=> bm!698531 d!2321984))

(declare-fun d!2321986 () Bool)

(declare-fun lt!2654943 () Bool)

(declare-datatypes ((List!73077 0))(
  ( (Nil!72953) (Cons!72953 (h!79401 C!40736) (t!387812 List!73077)) )
))
(declare-datatypes ((Option!17325 0))(
  ( (None!17324) (Some!17324 (v!54459 List!73077)) )
))
(declare-fun isEmpty!41582 (Option!17325) Bool)

(declare-fun getLanguageWitness!1130 (Regex!20205) Option!17325)

(assert (=> d!2321986 (= lt!2654943 (isEmpty!41582 (getLanguageWitness!1130 r!19218)))))

(declare-fun e!4525221 () Bool)

(assert (=> d!2321986 (= lt!2654943 e!4525221)))

(declare-fun res!3046232 () Bool)

(assert (=> d!2321986 (=> (not res!3046232) (not e!4525221))))

(assert (=> d!2321986 (= res!3046232 (not ((_ is EmptyExpr!20205) r!19218)))))

(assert (=> d!2321986 (= (lostCauseFct!539 r!19218) lt!2654943)))

(declare-fun bm!698548 () Bool)

(declare-fun call!698554 () Bool)

(declare-fun c!1402970 () Bool)

(assert (=> bm!698548 (= call!698554 (lostCause!1893 (ite c!1402970 (regTwo!40923 r!19218) (regTwo!40922 r!19218))))))

(declare-fun b!7607979 () Bool)

(declare-fun e!4525220 () Bool)

(declare-fun e!4525223 () Bool)

(assert (=> b!7607979 (= e!4525220 e!4525223)))

(declare-fun res!3046228 () Bool)

(assert (=> b!7607979 (=> (not res!3046228) (not e!4525223))))

(assert (=> b!7607979 (= res!3046228 (and (not ((_ is ElementMatch!20205) r!19218)) (not ((_ is Star!20205) r!19218))))))

(declare-fun b!7607980 () Bool)

(declare-fun e!4525219 () Bool)

(declare-fun e!4525218 () Bool)

(assert (=> b!7607980 (= e!4525219 e!4525218)))

(declare-fun res!3046229 () Bool)

(declare-fun call!698553 () Bool)

(assert (=> b!7607980 (= res!3046229 call!698553)))

(assert (=> b!7607980 (=> (not res!3046229) (not e!4525218))))

(declare-fun b!7607981 () Bool)

(declare-fun e!4525222 () Bool)

(assert (=> b!7607981 (= e!4525219 e!4525222)))

(declare-fun res!3046230 () Bool)

(assert (=> b!7607981 (= res!3046230 call!698553)))

(assert (=> b!7607981 (=> res!3046230 e!4525222)))

(declare-fun b!7607982 () Bool)

(assert (=> b!7607982 (= e!4525218 call!698554)))

(declare-fun b!7607983 () Bool)

(assert (=> b!7607983 (= e!4525223 e!4525219)))

(assert (=> b!7607983 (= c!1402970 ((_ is Union!20205) r!19218))))

(declare-fun bm!698549 () Bool)

(assert (=> bm!698549 (= call!698553 (lostCause!1893 (ite c!1402970 (regOne!40923 r!19218) (regOne!40922 r!19218))))))

(declare-fun b!7607984 () Bool)

(assert (=> b!7607984 (= e!4525221 e!4525220)))

(declare-fun res!3046231 () Bool)

(assert (=> b!7607984 (=> res!3046231 e!4525220)))

(assert (=> b!7607984 (= res!3046231 ((_ is EmptyLang!20205) r!19218))))

(declare-fun b!7607985 () Bool)

(assert (=> b!7607985 (= e!4525222 call!698554)))

(assert (= (and d!2321986 res!3046232) b!7607984))

(assert (= (and b!7607984 (not res!3046231)) b!7607979))

(assert (= (and b!7607979 res!3046228) b!7607983))

(assert (= (and b!7607983 c!1402970) b!7607980))

(assert (= (and b!7607983 (not c!1402970)) b!7607981))

(assert (= (and b!7607980 res!3046229) b!7607982))

(assert (= (and b!7607981 (not res!3046230)) b!7607985))

(assert (= (or b!7607980 b!7607981) bm!698549))

(assert (= (or b!7607982 b!7607985) bm!698548))

(declare-fun m!8147308 () Bool)

(assert (=> d!2321986 m!8147308))

(assert (=> d!2321986 m!8147308))

(declare-fun m!8147310 () Bool)

(assert (=> d!2321986 m!8147310))

(declare-fun m!8147312 () Bool)

(assert (=> bm!698548 m!8147312))

(declare-fun m!8147314 () Bool)

(assert (=> bm!698549 m!8147314))

(assert (=> d!2321974 d!2321986))

(declare-fun b!7607986 () Bool)

(declare-fun e!4525224 () Bool)

(assert (=> b!7607986 (= e!4525224 tp_is_empty!50765)))

(declare-fun b!7607988 () Bool)

(declare-fun tp!2219294 () Bool)

(assert (=> b!7607988 (= e!4525224 tp!2219294)))

(declare-fun b!7607989 () Bool)

(declare-fun tp!2219293 () Bool)

(declare-fun tp!2219292 () Bool)

(assert (=> b!7607989 (= e!4525224 (and tp!2219293 tp!2219292))))

(declare-fun b!7607987 () Bool)

(declare-fun tp!2219291 () Bool)

(declare-fun tp!2219290 () Bool)

(assert (=> b!7607987 (= e!4525224 (and tp!2219291 tp!2219290))))

(assert (=> b!7607888 (= tp!2219244 e!4525224)))

(assert (= (and b!7607888 ((_ is ElementMatch!20205) (reg!20534 (regOne!40923 r!19218)))) b!7607986))

(assert (= (and b!7607888 ((_ is Concat!29050) (reg!20534 (regOne!40923 r!19218)))) b!7607987))

(assert (= (and b!7607888 ((_ is Star!20205) (reg!20534 (regOne!40923 r!19218)))) b!7607988))

(assert (= (and b!7607888 ((_ is Union!20205) (reg!20534 (regOne!40923 r!19218)))) b!7607989))

(declare-fun b!7607990 () Bool)

(declare-fun e!4525225 () Bool)

(assert (=> b!7607990 (= e!4525225 tp_is_empty!50765)))

(declare-fun b!7607992 () Bool)

(declare-fun tp!2219299 () Bool)

(assert (=> b!7607992 (= e!4525225 tp!2219299)))

(declare-fun b!7607993 () Bool)

(declare-fun tp!2219298 () Bool)

(declare-fun tp!2219297 () Bool)

(assert (=> b!7607993 (= e!4525225 (and tp!2219298 tp!2219297))))

(declare-fun b!7607991 () Bool)

(declare-fun tp!2219296 () Bool)

(declare-fun tp!2219295 () Bool)

(assert (=> b!7607991 (= e!4525225 (and tp!2219296 tp!2219295))))

(assert (=> b!7607897 (= tp!2219253 e!4525225)))

(assert (= (and b!7607897 ((_ is ElementMatch!20205) (regOne!40923 (regTwo!40923 r!19218)))) b!7607990))

(assert (= (and b!7607897 ((_ is Concat!29050) (regOne!40923 (regTwo!40923 r!19218)))) b!7607991))

(assert (= (and b!7607897 ((_ is Star!20205) (regOne!40923 (regTwo!40923 r!19218)))) b!7607992))

(assert (= (and b!7607897 ((_ is Union!20205) (regOne!40923 (regTwo!40923 r!19218)))) b!7607993))

(declare-fun b!7607994 () Bool)

(declare-fun e!4525226 () Bool)

(assert (=> b!7607994 (= e!4525226 tp_is_empty!50765)))

(declare-fun b!7607996 () Bool)

(declare-fun tp!2219304 () Bool)

(assert (=> b!7607996 (= e!4525226 tp!2219304)))

(declare-fun b!7607997 () Bool)

(declare-fun tp!2219303 () Bool)

(declare-fun tp!2219302 () Bool)

(assert (=> b!7607997 (= e!4525226 (and tp!2219303 tp!2219302))))

(declare-fun b!7607995 () Bool)

(declare-fun tp!2219301 () Bool)

(declare-fun tp!2219300 () Bool)

(assert (=> b!7607995 (= e!4525226 (and tp!2219301 tp!2219300))))

(assert (=> b!7607897 (= tp!2219252 e!4525226)))

(assert (= (and b!7607897 ((_ is ElementMatch!20205) (regTwo!40923 (regTwo!40923 r!19218)))) b!7607994))

(assert (= (and b!7607897 ((_ is Concat!29050) (regTwo!40923 (regTwo!40923 r!19218)))) b!7607995))

(assert (= (and b!7607897 ((_ is Star!20205) (regTwo!40923 (regTwo!40923 r!19218)))) b!7607996))

(assert (= (and b!7607897 ((_ is Union!20205) (regTwo!40923 (regTwo!40923 r!19218)))) b!7607997))

(declare-fun b!7607998 () Bool)

(declare-fun e!4525227 () Bool)

(assert (=> b!7607998 (= e!4525227 tp_is_empty!50765)))

(declare-fun b!7608000 () Bool)

(declare-fun tp!2219309 () Bool)

(assert (=> b!7608000 (= e!4525227 tp!2219309)))

(declare-fun b!7608001 () Bool)

(declare-fun tp!2219308 () Bool)

(declare-fun tp!2219307 () Bool)

(assert (=> b!7608001 (= e!4525227 (and tp!2219308 tp!2219307))))

(declare-fun b!7607999 () Bool)

(declare-fun tp!2219306 () Bool)

(declare-fun tp!2219305 () Bool)

(assert (=> b!7607999 (= e!4525227 (and tp!2219306 tp!2219305))))

(assert (=> b!7607909 (= tp!2219268 e!4525227)))

(assert (= (and b!7607909 ((_ is ElementMatch!20205) (regOne!40923 (regTwo!40922 r!19218)))) b!7607998))

(assert (= (and b!7607909 ((_ is Concat!29050) (regOne!40923 (regTwo!40922 r!19218)))) b!7607999))

(assert (= (and b!7607909 ((_ is Star!20205) (regOne!40923 (regTwo!40922 r!19218)))) b!7608000))

(assert (= (and b!7607909 ((_ is Union!20205) (regOne!40923 (regTwo!40922 r!19218)))) b!7608001))

(declare-fun b!7608002 () Bool)

(declare-fun e!4525228 () Bool)

(assert (=> b!7608002 (= e!4525228 tp_is_empty!50765)))

(declare-fun b!7608004 () Bool)

(declare-fun tp!2219314 () Bool)

(assert (=> b!7608004 (= e!4525228 tp!2219314)))

(declare-fun b!7608005 () Bool)

(declare-fun tp!2219313 () Bool)

(declare-fun tp!2219312 () Bool)

(assert (=> b!7608005 (= e!4525228 (and tp!2219313 tp!2219312))))

(declare-fun b!7608003 () Bool)

(declare-fun tp!2219311 () Bool)

(declare-fun tp!2219310 () Bool)

(assert (=> b!7608003 (= e!4525228 (and tp!2219311 tp!2219310))))

(assert (=> b!7607909 (= tp!2219267 e!4525228)))

(assert (= (and b!7607909 ((_ is ElementMatch!20205) (regTwo!40923 (regTwo!40922 r!19218)))) b!7608002))

(assert (= (and b!7607909 ((_ is Concat!29050) (regTwo!40923 (regTwo!40922 r!19218)))) b!7608003))

(assert (= (and b!7607909 ((_ is Star!20205) (regTwo!40923 (regTwo!40922 r!19218)))) b!7608004))

(assert (= (and b!7607909 ((_ is Union!20205) (regTwo!40923 (regTwo!40922 r!19218)))) b!7608005))

(declare-fun b!7608006 () Bool)

(declare-fun e!4525229 () Bool)

(assert (=> b!7608006 (= e!4525229 tp_is_empty!50765)))

(declare-fun b!7608008 () Bool)

(declare-fun tp!2219319 () Bool)

(assert (=> b!7608008 (= e!4525229 tp!2219319)))

(declare-fun b!7608009 () Bool)

(declare-fun tp!2219318 () Bool)

(declare-fun tp!2219317 () Bool)

(assert (=> b!7608009 (= e!4525229 (and tp!2219318 tp!2219317))))

(declare-fun b!7608007 () Bool)

(declare-fun tp!2219316 () Bool)

(declare-fun tp!2219315 () Bool)

(assert (=> b!7608007 (= e!4525229 (and tp!2219316 tp!2219315))))

(assert (=> b!7607889 (= tp!2219243 e!4525229)))

(assert (= (and b!7607889 ((_ is ElementMatch!20205) (regOne!40923 (regOne!40923 r!19218)))) b!7608006))

(assert (= (and b!7607889 ((_ is Concat!29050) (regOne!40923 (regOne!40923 r!19218)))) b!7608007))

(assert (= (and b!7607889 ((_ is Star!20205) (regOne!40923 (regOne!40923 r!19218)))) b!7608008))

(assert (= (and b!7607889 ((_ is Union!20205) (regOne!40923 (regOne!40923 r!19218)))) b!7608009))

(declare-fun b!7608010 () Bool)

(declare-fun e!4525230 () Bool)

(assert (=> b!7608010 (= e!4525230 tp_is_empty!50765)))

(declare-fun b!7608012 () Bool)

(declare-fun tp!2219324 () Bool)

(assert (=> b!7608012 (= e!4525230 tp!2219324)))

(declare-fun b!7608013 () Bool)

(declare-fun tp!2219323 () Bool)

(declare-fun tp!2219322 () Bool)

(assert (=> b!7608013 (= e!4525230 (and tp!2219323 tp!2219322))))

(declare-fun b!7608011 () Bool)

(declare-fun tp!2219321 () Bool)

(declare-fun tp!2219320 () Bool)

(assert (=> b!7608011 (= e!4525230 (and tp!2219321 tp!2219320))))

(assert (=> b!7607889 (= tp!2219242 e!4525230)))

(assert (= (and b!7607889 ((_ is ElementMatch!20205) (regTwo!40923 (regOne!40923 r!19218)))) b!7608010))

(assert (= (and b!7607889 ((_ is Concat!29050) (regTwo!40923 (regOne!40923 r!19218)))) b!7608011))

(assert (= (and b!7607889 ((_ is Star!20205) (regTwo!40923 (regOne!40923 r!19218)))) b!7608012))

(assert (= (and b!7607889 ((_ is Union!20205) (regTwo!40923 (regOne!40923 r!19218)))) b!7608013))

(declare-fun b!7608014 () Bool)

(declare-fun e!4525231 () Bool)

(assert (=> b!7608014 (= e!4525231 tp_is_empty!50765)))

(declare-fun b!7608016 () Bool)

(declare-fun tp!2219329 () Bool)

(assert (=> b!7608016 (= e!4525231 tp!2219329)))

(declare-fun b!7608017 () Bool)

(declare-fun tp!2219328 () Bool)

(declare-fun tp!2219327 () Bool)

(assert (=> b!7608017 (= e!4525231 (and tp!2219328 tp!2219327))))

(declare-fun b!7608015 () Bool)

(declare-fun tp!2219326 () Bool)

(declare-fun tp!2219325 () Bool)

(assert (=> b!7608015 (= e!4525231 (and tp!2219326 tp!2219325))))

(assert (=> b!7607900 (= tp!2219256 e!4525231)))

(assert (= (and b!7607900 ((_ is ElementMatch!20205) (regOne!40922 (regOne!40922 r!19218)))) b!7608014))

(assert (= (and b!7607900 ((_ is Concat!29050) (regOne!40922 (regOne!40922 r!19218)))) b!7608015))

(assert (= (and b!7607900 ((_ is Star!20205) (regOne!40922 (regOne!40922 r!19218)))) b!7608016))

(assert (= (and b!7607900 ((_ is Union!20205) (regOne!40922 (regOne!40922 r!19218)))) b!7608017))

(declare-fun b!7608018 () Bool)

(declare-fun e!4525232 () Bool)

(assert (=> b!7608018 (= e!4525232 tp_is_empty!50765)))

(declare-fun b!7608020 () Bool)

(declare-fun tp!2219334 () Bool)

(assert (=> b!7608020 (= e!4525232 tp!2219334)))

(declare-fun b!7608021 () Bool)

(declare-fun tp!2219333 () Bool)

(declare-fun tp!2219332 () Bool)

(assert (=> b!7608021 (= e!4525232 (and tp!2219333 tp!2219332))))

(declare-fun b!7608019 () Bool)

(declare-fun tp!2219331 () Bool)

(declare-fun tp!2219330 () Bool)

(assert (=> b!7608019 (= e!4525232 (and tp!2219331 tp!2219330))))

(assert (=> b!7607900 (= tp!2219255 e!4525232)))

(assert (= (and b!7607900 ((_ is ElementMatch!20205) (regTwo!40922 (regOne!40922 r!19218)))) b!7608018))

(assert (= (and b!7607900 ((_ is Concat!29050) (regTwo!40922 (regOne!40922 r!19218)))) b!7608019))

(assert (= (and b!7607900 ((_ is Star!20205) (regTwo!40922 (regOne!40922 r!19218)))) b!7608020))

(assert (= (and b!7607900 ((_ is Union!20205) (regTwo!40922 (regOne!40922 r!19218)))) b!7608021))

(declare-fun b!7608022 () Bool)

(declare-fun e!4525233 () Bool)

(assert (=> b!7608022 (= e!4525233 tp_is_empty!50765)))

(declare-fun b!7608024 () Bool)

(declare-fun tp!2219339 () Bool)

(assert (=> b!7608024 (= e!4525233 tp!2219339)))

(declare-fun b!7608025 () Bool)

(declare-fun tp!2219338 () Bool)

(declare-fun tp!2219337 () Bool)

(assert (=> b!7608025 (= e!4525233 (and tp!2219338 tp!2219337))))

(declare-fun b!7608023 () Bool)

(declare-fun tp!2219336 () Bool)

(declare-fun tp!2219335 () Bool)

(assert (=> b!7608023 (= e!4525233 (and tp!2219336 tp!2219335))))

(assert (=> b!7607902 (= tp!2219262 e!4525233)))

(assert (= (and b!7607902 ((_ is ElementMatch!20205) (reg!20534 (regOne!40922 r!19218)))) b!7608022))

(assert (= (and b!7607902 ((_ is Concat!29050) (reg!20534 (regOne!40922 r!19218)))) b!7608023))

(assert (= (and b!7607902 ((_ is Star!20205) (reg!20534 (regOne!40922 r!19218)))) b!7608024))

(assert (= (and b!7607902 ((_ is Union!20205) (reg!20534 (regOne!40922 r!19218)))) b!7608025))

(declare-fun b!7608026 () Bool)

(declare-fun e!4525234 () Bool)

(assert (=> b!7608026 (= e!4525234 tp_is_empty!50765)))

(declare-fun b!7608028 () Bool)

(declare-fun tp!2219344 () Bool)

(assert (=> b!7608028 (= e!4525234 tp!2219344)))

(declare-fun b!7608029 () Bool)

(declare-fun tp!2219343 () Bool)

(declare-fun tp!2219342 () Bool)

(assert (=> b!7608029 (= e!4525234 (and tp!2219343 tp!2219342))))

(declare-fun b!7608027 () Bool)

(declare-fun tp!2219341 () Bool)

(declare-fun tp!2219340 () Bool)

(assert (=> b!7608027 (= e!4525234 (and tp!2219341 tp!2219340))))

(assert (=> b!7607915 (= tp!2219276 e!4525234)))

(assert (= (and b!7607915 ((_ is ElementMatch!20205) (regOne!40922 (reg!20534 r!19218)))) b!7608026))

(assert (= (and b!7607915 ((_ is Concat!29050) (regOne!40922 (reg!20534 r!19218)))) b!7608027))

(assert (= (and b!7607915 ((_ is Star!20205) (regOne!40922 (reg!20534 r!19218)))) b!7608028))

(assert (= (and b!7607915 ((_ is Union!20205) (regOne!40922 (reg!20534 r!19218)))) b!7608029))

(declare-fun b!7608030 () Bool)

(declare-fun e!4525235 () Bool)

(assert (=> b!7608030 (= e!4525235 tp_is_empty!50765)))

(declare-fun b!7608032 () Bool)

(declare-fun tp!2219349 () Bool)

(assert (=> b!7608032 (= e!4525235 tp!2219349)))

(declare-fun b!7608033 () Bool)

(declare-fun tp!2219348 () Bool)

(declare-fun tp!2219347 () Bool)

(assert (=> b!7608033 (= e!4525235 (and tp!2219348 tp!2219347))))

(declare-fun b!7608031 () Bool)

(declare-fun tp!2219346 () Bool)

(declare-fun tp!2219345 () Bool)

(assert (=> b!7608031 (= e!4525235 (and tp!2219346 tp!2219345))))

(assert (=> b!7607915 (= tp!2219275 e!4525235)))

(assert (= (and b!7607915 ((_ is ElementMatch!20205) (regTwo!40922 (reg!20534 r!19218)))) b!7608030))

(assert (= (and b!7607915 ((_ is Concat!29050) (regTwo!40922 (reg!20534 r!19218)))) b!7608031))

(assert (= (and b!7607915 ((_ is Star!20205) (regTwo!40922 (reg!20534 r!19218)))) b!7608032))

(assert (= (and b!7607915 ((_ is Union!20205) (regTwo!40922 (reg!20534 r!19218)))) b!7608033))

(declare-fun b!7608034 () Bool)

(declare-fun e!4525236 () Bool)

(assert (=> b!7608034 (= e!4525236 tp_is_empty!50765)))

(declare-fun b!7608036 () Bool)

(declare-fun tp!2219354 () Bool)

(assert (=> b!7608036 (= e!4525236 tp!2219354)))

(declare-fun b!7608037 () Bool)

(declare-fun tp!2219353 () Bool)

(declare-fun tp!2219352 () Bool)

(assert (=> b!7608037 (= e!4525236 (and tp!2219353 tp!2219352))))

(declare-fun b!7608035 () Bool)

(declare-fun tp!2219351 () Bool)

(declare-fun tp!2219350 () Bool)

(assert (=> b!7608035 (= e!4525236 (and tp!2219351 tp!2219350))))

(assert (=> b!7607907 (= tp!2219266 e!4525236)))

(assert (= (and b!7607907 ((_ is ElementMatch!20205) (regOne!40922 (regTwo!40922 r!19218)))) b!7608034))

(assert (= (and b!7607907 ((_ is Concat!29050) (regOne!40922 (regTwo!40922 r!19218)))) b!7608035))

(assert (= (and b!7607907 ((_ is Star!20205) (regOne!40922 (regTwo!40922 r!19218)))) b!7608036))

(assert (= (and b!7607907 ((_ is Union!20205) (regOne!40922 (regTwo!40922 r!19218)))) b!7608037))

(declare-fun b!7608038 () Bool)

(declare-fun e!4525237 () Bool)

(assert (=> b!7608038 (= e!4525237 tp_is_empty!50765)))

(declare-fun b!7608040 () Bool)

(declare-fun tp!2219359 () Bool)

(assert (=> b!7608040 (= e!4525237 tp!2219359)))

(declare-fun b!7608041 () Bool)

(declare-fun tp!2219358 () Bool)

(declare-fun tp!2219357 () Bool)

(assert (=> b!7608041 (= e!4525237 (and tp!2219358 tp!2219357))))

(declare-fun b!7608039 () Bool)

(declare-fun tp!2219356 () Bool)

(declare-fun tp!2219355 () Bool)

(assert (=> b!7608039 (= e!4525237 (and tp!2219356 tp!2219355))))

(assert (=> b!7607907 (= tp!2219265 e!4525237)))

(assert (= (and b!7607907 ((_ is ElementMatch!20205) (regTwo!40922 (regTwo!40922 r!19218)))) b!7608038))

(assert (= (and b!7607907 ((_ is Concat!29050) (regTwo!40922 (regTwo!40922 r!19218)))) b!7608039))

(assert (= (and b!7607907 ((_ is Star!20205) (regTwo!40922 (regTwo!40922 r!19218)))) b!7608040))

(assert (= (and b!7607907 ((_ is Union!20205) (regTwo!40922 (regTwo!40922 r!19218)))) b!7608041))

(declare-fun b!7608046 () Bool)

(declare-fun e!4525242 () Bool)

(assert (=> b!7608046 (= e!4525242 tp_is_empty!50765)))

(declare-fun b!7608048 () Bool)

(declare-fun tp!2219364 () Bool)

(assert (=> b!7608048 (= e!4525242 tp!2219364)))

(declare-fun b!7608049 () Bool)

(declare-fun tp!2219363 () Bool)

(declare-fun tp!2219362 () Bool)

(assert (=> b!7608049 (= e!4525242 (and tp!2219363 tp!2219362))))

(declare-fun b!7608047 () Bool)

(declare-fun tp!2219361 () Bool)

(declare-fun tp!2219360 () Bool)

(assert (=> b!7608047 (= e!4525242 (and tp!2219361 tp!2219360))))

(assert (=> b!7607904 (= tp!2219260 e!4525242)))

(assert (= (and b!7607904 ((_ is ElementMatch!20205) (regOne!40923 (regOne!40922 r!19218)))) b!7608046))

(assert (= (and b!7607904 ((_ is Concat!29050) (regOne!40923 (regOne!40922 r!19218)))) b!7608047))

(assert (= (and b!7607904 ((_ is Star!20205) (regOne!40923 (regOne!40922 r!19218)))) b!7608048))

(assert (= (and b!7607904 ((_ is Union!20205) (regOne!40923 (regOne!40922 r!19218)))) b!7608049))

(declare-fun b!7608058 () Bool)

(declare-fun e!4525249 () Bool)

(assert (=> b!7608058 (= e!4525249 tp_is_empty!50765)))

(declare-fun b!7608060 () Bool)

(declare-fun tp!2219369 () Bool)

(assert (=> b!7608060 (= e!4525249 tp!2219369)))

(declare-fun b!7608061 () Bool)

(declare-fun tp!2219368 () Bool)

(declare-fun tp!2219367 () Bool)

(assert (=> b!7608061 (= e!4525249 (and tp!2219368 tp!2219367))))

(declare-fun b!7608059 () Bool)

(declare-fun tp!2219366 () Bool)

(declare-fun tp!2219365 () Bool)

(assert (=> b!7608059 (= e!4525249 (and tp!2219366 tp!2219365))))

(assert (=> b!7607904 (= tp!2219258 e!4525249)))

(assert (= (and b!7607904 ((_ is ElementMatch!20205) (regTwo!40923 (regOne!40922 r!19218)))) b!7608058))

(assert (= (and b!7607904 ((_ is Concat!29050) (regTwo!40923 (regOne!40922 r!19218)))) b!7608059))

(assert (= (and b!7607904 ((_ is Star!20205) (regTwo!40923 (regOne!40922 r!19218)))) b!7608060))

(assert (= (and b!7607904 ((_ is Union!20205) (regTwo!40923 (regOne!40922 r!19218)))) b!7608061))

(declare-fun b!7608064 () Bool)

(declare-fun e!4525252 () Bool)

(assert (=> b!7608064 (= e!4525252 tp_is_empty!50765)))

(declare-fun b!7608066 () Bool)

(declare-fun tp!2219374 () Bool)

(assert (=> b!7608066 (= e!4525252 tp!2219374)))

(declare-fun b!7608067 () Bool)

(declare-fun tp!2219373 () Bool)

(declare-fun tp!2219372 () Bool)

(assert (=> b!7608067 (= e!4525252 (and tp!2219373 tp!2219372))))

(declare-fun b!7608065 () Bool)

(declare-fun tp!2219371 () Bool)

(declare-fun tp!2219370 () Bool)

(assert (=> b!7608065 (= e!4525252 (and tp!2219371 tp!2219370))))

(assert (=> b!7607916 (= tp!2219279 e!4525252)))

(assert (= (and b!7607916 ((_ is ElementMatch!20205) (reg!20534 (reg!20534 r!19218)))) b!7608064))

(assert (= (and b!7607916 ((_ is Concat!29050) (reg!20534 (reg!20534 r!19218)))) b!7608065))

(assert (= (and b!7607916 ((_ is Star!20205) (reg!20534 (reg!20534 r!19218)))) b!7608066))

(assert (= (and b!7607916 ((_ is Union!20205) (reg!20534 (reg!20534 r!19218)))) b!7608067))

(declare-fun b!7608068 () Bool)

(declare-fun e!4525253 () Bool)

(assert (=> b!7608068 (= e!4525253 tp_is_empty!50765)))

(declare-fun b!7608070 () Bool)

(declare-fun tp!2219379 () Bool)

(assert (=> b!7608070 (= e!4525253 tp!2219379)))

(declare-fun b!7608071 () Bool)

(declare-fun tp!2219378 () Bool)

(declare-fun tp!2219377 () Bool)

(assert (=> b!7608071 (= e!4525253 (and tp!2219378 tp!2219377))))

(declare-fun b!7608069 () Bool)

(declare-fun tp!2219376 () Bool)

(declare-fun tp!2219375 () Bool)

(assert (=> b!7608069 (= e!4525253 (and tp!2219376 tp!2219375))))

(assert (=> b!7607895 (= tp!2219251 e!4525253)))

(assert (= (and b!7607895 ((_ is ElementMatch!20205) (regOne!40922 (regTwo!40923 r!19218)))) b!7608068))

(assert (= (and b!7607895 ((_ is Concat!29050) (regOne!40922 (regTwo!40923 r!19218)))) b!7608069))

(assert (= (and b!7607895 ((_ is Star!20205) (regOne!40922 (regTwo!40923 r!19218)))) b!7608070))

(assert (= (and b!7607895 ((_ is Union!20205) (regOne!40922 (regTwo!40923 r!19218)))) b!7608071))

(declare-fun b!7608072 () Bool)

(declare-fun e!4525254 () Bool)

(assert (=> b!7608072 (= e!4525254 tp_is_empty!50765)))

(declare-fun b!7608074 () Bool)

(declare-fun tp!2219384 () Bool)

(assert (=> b!7608074 (= e!4525254 tp!2219384)))

(declare-fun b!7608075 () Bool)

(declare-fun tp!2219383 () Bool)

(declare-fun tp!2219382 () Bool)

(assert (=> b!7608075 (= e!4525254 (and tp!2219383 tp!2219382))))

(declare-fun b!7608073 () Bool)

(declare-fun tp!2219381 () Bool)

(declare-fun tp!2219380 () Bool)

(assert (=> b!7608073 (= e!4525254 (and tp!2219381 tp!2219380))))

(assert (=> b!7607895 (= tp!2219250 e!4525254)))

(assert (= (and b!7607895 ((_ is ElementMatch!20205) (regTwo!40922 (regTwo!40923 r!19218)))) b!7608072))

(assert (= (and b!7607895 ((_ is Concat!29050) (regTwo!40922 (regTwo!40923 r!19218)))) b!7608073))

(assert (= (and b!7607895 ((_ is Star!20205) (regTwo!40922 (regTwo!40923 r!19218)))) b!7608074))

(assert (= (and b!7607895 ((_ is Union!20205) (regTwo!40922 (regTwo!40923 r!19218)))) b!7608075))

(declare-fun b!7608076 () Bool)

(declare-fun e!4525255 () Bool)

(assert (=> b!7608076 (= e!4525255 tp_is_empty!50765)))

(declare-fun b!7608078 () Bool)

(declare-fun tp!2219389 () Bool)

(assert (=> b!7608078 (= e!4525255 tp!2219389)))

(declare-fun b!7608079 () Bool)

(declare-fun tp!2219388 () Bool)

(declare-fun tp!2219387 () Bool)

(assert (=> b!7608079 (= e!4525255 (and tp!2219388 tp!2219387))))

(declare-fun b!7608077 () Bool)

(declare-fun tp!2219386 () Bool)

(declare-fun tp!2219385 () Bool)

(assert (=> b!7608077 (= e!4525255 (and tp!2219386 tp!2219385))))

(assert (=> b!7607908 (= tp!2219269 e!4525255)))

(assert (= (and b!7607908 ((_ is ElementMatch!20205) (reg!20534 (regTwo!40922 r!19218)))) b!7608076))

(assert (= (and b!7607908 ((_ is Concat!29050) (reg!20534 (regTwo!40922 r!19218)))) b!7608077))

(assert (= (and b!7607908 ((_ is Star!20205) (reg!20534 (regTwo!40922 r!19218)))) b!7608078))

(assert (= (and b!7607908 ((_ is Union!20205) (reg!20534 (regTwo!40922 r!19218)))) b!7608079))

(declare-fun b!7608080 () Bool)

(declare-fun e!4525256 () Bool)

(assert (=> b!7608080 (= e!4525256 tp_is_empty!50765)))

(declare-fun b!7608082 () Bool)

(declare-fun tp!2219394 () Bool)

(assert (=> b!7608082 (= e!4525256 tp!2219394)))

(declare-fun b!7608083 () Bool)

(declare-fun tp!2219393 () Bool)

(declare-fun tp!2219392 () Bool)

(assert (=> b!7608083 (= e!4525256 (and tp!2219393 tp!2219392))))

(declare-fun b!7608081 () Bool)

(declare-fun tp!2219391 () Bool)

(declare-fun tp!2219390 () Bool)

(assert (=> b!7608081 (= e!4525256 (and tp!2219391 tp!2219390))))

(assert (=> b!7607896 (= tp!2219254 e!4525256)))

(assert (= (and b!7607896 ((_ is ElementMatch!20205) (reg!20534 (regTwo!40923 r!19218)))) b!7608080))

(assert (= (and b!7607896 ((_ is Concat!29050) (reg!20534 (regTwo!40923 r!19218)))) b!7608081))

(assert (= (and b!7607896 ((_ is Star!20205) (reg!20534 (regTwo!40923 r!19218)))) b!7608082))

(assert (= (and b!7607896 ((_ is Union!20205) (reg!20534 (regTwo!40923 r!19218)))) b!7608083))

(declare-fun b!7608084 () Bool)

(declare-fun e!4525257 () Bool)

(assert (=> b!7608084 (= e!4525257 tp_is_empty!50765)))

(declare-fun b!7608086 () Bool)

(declare-fun tp!2219399 () Bool)

(assert (=> b!7608086 (= e!4525257 tp!2219399)))

(declare-fun b!7608087 () Bool)

(declare-fun tp!2219398 () Bool)

(declare-fun tp!2219397 () Bool)

(assert (=> b!7608087 (= e!4525257 (and tp!2219398 tp!2219397))))

(declare-fun b!7608085 () Bool)

(declare-fun tp!2219396 () Bool)

(declare-fun tp!2219395 () Bool)

(assert (=> b!7608085 (= e!4525257 (and tp!2219396 tp!2219395))))

(assert (=> b!7607917 (= tp!2219278 e!4525257)))

(assert (= (and b!7607917 ((_ is ElementMatch!20205) (regOne!40923 (reg!20534 r!19218)))) b!7608084))

(assert (= (and b!7607917 ((_ is Concat!29050) (regOne!40923 (reg!20534 r!19218)))) b!7608085))

(assert (= (and b!7607917 ((_ is Star!20205) (regOne!40923 (reg!20534 r!19218)))) b!7608086))

(assert (= (and b!7607917 ((_ is Union!20205) (regOne!40923 (reg!20534 r!19218)))) b!7608087))

(declare-fun b!7608088 () Bool)

(declare-fun e!4525258 () Bool)

(assert (=> b!7608088 (= e!4525258 tp_is_empty!50765)))

(declare-fun b!7608090 () Bool)

(declare-fun tp!2219404 () Bool)

(assert (=> b!7608090 (= e!4525258 tp!2219404)))

(declare-fun b!7608091 () Bool)

(declare-fun tp!2219403 () Bool)

(declare-fun tp!2219402 () Bool)

(assert (=> b!7608091 (= e!4525258 (and tp!2219403 tp!2219402))))

(declare-fun b!7608089 () Bool)

(declare-fun tp!2219401 () Bool)

(declare-fun tp!2219400 () Bool)

(assert (=> b!7608089 (= e!4525258 (and tp!2219401 tp!2219400))))

(assert (=> b!7607917 (= tp!2219277 e!4525258)))

(assert (= (and b!7607917 ((_ is ElementMatch!20205) (regTwo!40923 (reg!20534 r!19218)))) b!7608088))

(assert (= (and b!7607917 ((_ is Concat!29050) (regTwo!40923 (reg!20534 r!19218)))) b!7608089))

(assert (= (and b!7607917 ((_ is Star!20205) (regTwo!40923 (reg!20534 r!19218)))) b!7608090))

(assert (= (and b!7607917 ((_ is Union!20205) (regTwo!40923 (reg!20534 r!19218)))) b!7608091))

(declare-fun b!7608092 () Bool)

(declare-fun e!4525259 () Bool)

(assert (=> b!7608092 (= e!4525259 tp_is_empty!50765)))

(declare-fun b!7608094 () Bool)

(declare-fun tp!2219409 () Bool)

(assert (=> b!7608094 (= e!4525259 tp!2219409)))

(declare-fun b!7608095 () Bool)

(declare-fun tp!2219408 () Bool)

(declare-fun tp!2219407 () Bool)

(assert (=> b!7608095 (= e!4525259 (and tp!2219408 tp!2219407))))

(declare-fun b!7608093 () Bool)

(declare-fun tp!2219406 () Bool)

(declare-fun tp!2219405 () Bool)

(assert (=> b!7608093 (= e!4525259 (and tp!2219406 tp!2219405))))

(assert (=> b!7607887 (= tp!2219241 e!4525259)))

(assert (= (and b!7607887 ((_ is ElementMatch!20205) (regOne!40922 (regOne!40923 r!19218)))) b!7608092))

(assert (= (and b!7607887 ((_ is Concat!29050) (regOne!40922 (regOne!40923 r!19218)))) b!7608093))

(assert (= (and b!7607887 ((_ is Star!20205) (regOne!40922 (regOne!40923 r!19218)))) b!7608094))

(assert (= (and b!7607887 ((_ is Union!20205) (regOne!40922 (regOne!40923 r!19218)))) b!7608095))

(declare-fun b!7608096 () Bool)

(declare-fun e!4525260 () Bool)

(assert (=> b!7608096 (= e!4525260 tp_is_empty!50765)))

(declare-fun b!7608098 () Bool)

(declare-fun tp!2219414 () Bool)

(assert (=> b!7608098 (= e!4525260 tp!2219414)))

(declare-fun b!7608099 () Bool)

(declare-fun tp!2219413 () Bool)

(declare-fun tp!2219412 () Bool)

(assert (=> b!7608099 (= e!4525260 (and tp!2219413 tp!2219412))))

(declare-fun b!7608097 () Bool)

(declare-fun tp!2219411 () Bool)

(declare-fun tp!2219410 () Bool)

(assert (=> b!7608097 (= e!4525260 (and tp!2219411 tp!2219410))))

(assert (=> b!7607887 (= tp!2219240 e!4525260)))

(assert (= (and b!7607887 ((_ is ElementMatch!20205) (regTwo!40922 (regOne!40923 r!19218)))) b!7608096))

(assert (= (and b!7607887 ((_ is Concat!29050) (regTwo!40922 (regOne!40923 r!19218)))) b!7608097))

(assert (= (and b!7607887 ((_ is Star!20205) (regTwo!40922 (regOne!40923 r!19218)))) b!7608098))

(assert (= (and b!7607887 ((_ is Union!20205) (regTwo!40922 (regOne!40923 r!19218)))) b!7608099))

(check-sat (not b!7608032) (not b!7608090) (not b!7608048) (not b!7608037) (not b!7608059) (not b!7608069) (not b!7608003) (not b!7608082) (not b!7608008) (not b!7608015) (not b!7608021) (not b!7607987) (not b!7608007) (not b!7608005) (not b!7608066) (not b!7608028) (not b!7607961) (not b!7608041) (not b!7608098) (not b!7608024) (not b!7608013) (not b!7608019) (not b!7608061) (not b!7608071) (not b!7608093) (not b!7608074) (not b!7608060) (not b!7607995) (not bm!698548) (not b!7608049) (not b!7608016) (not b!7608097) (not bm!698542) (not b!7608001) (not b!7608094) (not b!7608085) (not b!7608020) (not bm!698534) (not bm!698539) (not bm!698540) (not b!7608023) (not b!7608077) (not b!7608035) (not b!7608047) (not b!7608070) (not bm!698533) tp_is_empty!50765 (not b!7608011) (not b!7608079) (not b!7607997) (not b!7608029) (not b!7608040) (not b!7608004) (not d!2321980) (not b!7608095) (not b!7608000) (not b!7608089) (not b!7608081) (not b!7608017) (not b!7608031) (not b!7608027) (not bm!698543) (not b!7608025) (not b!7607996) (not b!7608091) (not d!2321986) (not b!7608083) (not b!7608036) (not b!7607988) (not b!7608067) (not b!7608078) (not b!7608033) (not b!7607991) (not b!7608086) (not b!7608073) (not b!7607992) (not b!7608087) (not b!7608075) (not b!7608065) (not b!7607989) (not b!7607931) (not b!7608009) (not b!7608099) (not b!7608012) (not b!7607999) (not bm!698549) (not b!7607993) (not b!7608039))
(check-sat)
