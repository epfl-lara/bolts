; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756642 () Bool)

(assert start!756642)

(declare-fun b!8032844 () Bool)

(declare-fun e!4732164 () Bool)

(declare-fun tp!2404454 () Bool)

(assert (=> b!8032844 (= e!4732164 tp!2404454)))

(declare-fun res!3176512 () Bool)

(declare-fun e!4732165 () Bool)

(assert (=> start!756642 (=> (not res!3176512) (not e!4732165))))

(declare-datatypes ((C!43770 0))(
  ( (C!43771 (val!32661 Int)) )
))
(declare-datatypes ((Regex!21716 0))(
  ( (ElementMatch!21716 (c!1473619 C!43770)) (Concat!30719 (regOne!43944 Regex!21716) (regTwo!43944 Regex!21716)) (EmptyExpr!21716) (Star!21716 (reg!22045 Regex!21716)) (EmptyLang!21716) (Union!21716 (regOne!43945 Regex!21716) (regTwo!43945 Regex!21716)) )
))
(declare-fun r!13107 () Regex!21716)

(declare-fun validRegex!12012 (Regex!21716) Bool)

(assert (=> start!756642 (= res!3176512 (validRegex!12012 r!13107))))

(assert (=> start!756642 e!4732165))

(assert (=> start!756642 e!4732164))

(declare-fun b!8032845 () Bool)

(declare-fun res!3176513 () Bool)

(assert (=> b!8032845 (=> (not res!3176513) (not e!4732165))))

(assert (=> b!8032845 (= res!3176513 (and (not (is-EmptyExpr!21716 r!13107)) (not (is-EmptyLang!21716 r!13107)) (not (is-ElementMatch!21716 r!13107)) (not (is-Union!21716 r!13107)) (is-Star!21716 r!13107)))))

(declare-fun b!8032846 () Bool)

(declare-fun tp_is_empty!54427 () Bool)

(assert (=> b!8032846 (= e!4732164 tp_is_empty!54427)))

(declare-fun b!8032847 () Bool)

(declare-fun tp!2404457 () Bool)

(declare-fun tp!2404458 () Bool)

(assert (=> b!8032847 (= e!4732164 (and tp!2404457 tp!2404458))))

(declare-fun b!8032848 () Bool)

(assert (=> b!8032848 (= e!4732165 (not (validRegex!12012 (reg!22045 r!13107))))))

(declare-fun b!8032849 () Bool)

(declare-fun tp!2404456 () Bool)

(declare-fun tp!2404455 () Bool)

(assert (=> b!8032849 (= e!4732164 (and tp!2404456 tp!2404455))))

(assert (= (and start!756642 res!3176512) b!8032845))

(assert (= (and b!8032845 res!3176513) b!8032848))

(assert (= (and start!756642 (is-ElementMatch!21716 r!13107)) b!8032846))

(assert (= (and start!756642 (is-Concat!30719 r!13107)) b!8032847))

(assert (= (and start!756642 (is-Star!21716 r!13107)) b!8032844))

(assert (= (and start!756642 (is-Union!21716 r!13107)) b!8032849))

(declare-fun m!8392594 () Bool)

(assert (=> start!756642 m!8392594))

(declare-fun m!8392596 () Bool)

(assert (=> b!8032848 m!8392596))

(push 1)

(assert (not b!8032844))

(assert (not b!8032847))

(assert (not b!8032849))

(assert (not b!8032848))

(assert (not start!756642))

(assert tp_is_empty!54427)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394787 () Bool)

(declare-fun res!3176542 () Bool)

(declare-fun e!4732200 () Bool)

(assert (=> d!2394787 (=> res!3176542 e!4732200)))

(assert (=> d!2394787 (= res!3176542 (is-ElementMatch!21716 (reg!22045 r!13107)))))

(assert (=> d!2394787 (= (validRegex!12012 (reg!22045 r!13107)) e!4732200)))

(declare-fun b!8032904 () Bool)

(declare-fun e!4732205 () Bool)

(declare-fun e!4732203 () Bool)

(assert (=> b!8032904 (= e!4732205 e!4732203)))

(declare-fun res!3176543 () Bool)

(assert (=> b!8032904 (=> (not res!3176543) (not e!4732203))))

(declare-fun call!745216 () Bool)

(assert (=> b!8032904 (= res!3176543 call!745216)))

(declare-fun b!8032905 () Bool)

(declare-fun e!4732201 () Bool)

(declare-fun call!745217 () Bool)

(assert (=> b!8032905 (= e!4732201 call!745217)))

(declare-fun b!8032906 () Bool)

(declare-fun e!4732202 () Bool)

(assert (=> b!8032906 (= e!4732200 e!4732202)))

(declare-fun c!1473629 () Bool)

(assert (=> b!8032906 (= c!1473629 (is-Star!21716 (reg!22045 r!13107)))))

(declare-fun b!8032907 () Bool)

(assert (=> b!8032907 (= e!4732203 call!745217)))

(declare-fun bm!745210 () Bool)

(declare-fun call!745215 () Bool)

(assert (=> bm!745210 (= call!745217 call!745215)))

(declare-fun b!8032908 () Bool)

(declare-fun res!3176544 () Bool)

(assert (=> b!8032908 (=> res!3176544 e!4732205)))

(assert (=> b!8032908 (= res!3176544 (not (is-Concat!30719 (reg!22045 r!13107))))))

(declare-fun e!4732206 () Bool)

(assert (=> b!8032908 (= e!4732206 e!4732205)))

(declare-fun b!8032909 () Bool)

(declare-fun res!3176540 () Bool)

(assert (=> b!8032909 (=> (not res!3176540) (not e!4732201))))

(assert (=> b!8032909 (= res!3176540 call!745216)))

(assert (=> b!8032909 (= e!4732206 e!4732201)))

(declare-fun b!8032910 () Bool)

(declare-fun e!4732204 () Bool)

(assert (=> b!8032910 (= e!4732204 call!745215)))

(declare-fun bm!745211 () Bool)

(declare-fun c!1473630 () Bool)

(assert (=> bm!745211 (= call!745215 (validRegex!12012 (ite c!1473629 (reg!22045 (reg!22045 r!13107)) (ite c!1473630 (regTwo!43945 (reg!22045 r!13107)) (regTwo!43944 (reg!22045 r!13107))))))))

(declare-fun b!8032911 () Bool)

(assert (=> b!8032911 (= e!4732202 e!4732206)))

(assert (=> b!8032911 (= c!1473630 (is-Union!21716 (reg!22045 r!13107)))))

(declare-fun bm!745212 () Bool)

(assert (=> bm!745212 (= call!745216 (validRegex!12012 (ite c!1473630 (regOne!43945 (reg!22045 r!13107)) (regOne!43944 (reg!22045 r!13107)))))))

(declare-fun b!8032912 () Bool)

(assert (=> b!8032912 (= e!4732202 e!4732204)))

(declare-fun res!3176541 () Bool)

(declare-fun nullable!9749 (Regex!21716) Bool)

(assert (=> b!8032912 (= res!3176541 (not (nullable!9749 (reg!22045 (reg!22045 r!13107)))))))

(assert (=> b!8032912 (=> (not res!3176541) (not e!4732204))))

(assert (= (and d!2394787 (not res!3176542)) b!8032906))

(assert (= (and b!8032906 c!1473629) b!8032912))

(assert (= (and b!8032906 (not c!1473629)) b!8032911))

(assert (= (and b!8032912 res!3176541) b!8032910))

(assert (= (and b!8032911 c!1473630) b!8032909))

(assert (= (and b!8032911 (not c!1473630)) b!8032908))

(assert (= (and b!8032909 res!3176540) b!8032905))

(assert (= (and b!8032908 (not res!3176544)) b!8032904))

(assert (= (and b!8032904 res!3176543) b!8032907))

(assert (= (or b!8032905 b!8032907) bm!745210))

(assert (= (or b!8032909 b!8032904) bm!745212))

(assert (= (or b!8032910 bm!745210) bm!745211))

(declare-fun m!8392602 () Bool)

(assert (=> bm!745211 m!8392602))

(declare-fun m!8392604 () Bool)

(assert (=> bm!745212 m!8392604))

(declare-fun m!8392606 () Bool)

(assert (=> b!8032912 m!8392606))

(assert (=> b!8032848 d!2394787))

(declare-fun d!2394791 () Bool)

(declare-fun res!3176547 () Bool)

(declare-fun e!4732207 () Bool)

(assert (=> d!2394791 (=> res!3176547 e!4732207)))

(assert (=> d!2394791 (= res!3176547 (is-ElementMatch!21716 r!13107))))

(assert (=> d!2394791 (= (validRegex!12012 r!13107) e!4732207)))

(declare-fun b!8032913 () Bool)

(declare-fun e!4732212 () Bool)

(declare-fun e!4732210 () Bool)

(assert (=> b!8032913 (= e!4732212 e!4732210)))

(declare-fun res!3176548 () Bool)

(assert (=> b!8032913 (=> (not res!3176548) (not e!4732210))))

(declare-fun call!745219 () Bool)

(assert (=> b!8032913 (= res!3176548 call!745219)))

(declare-fun b!8032914 () Bool)

(declare-fun e!4732208 () Bool)

(declare-fun call!745220 () Bool)

(assert (=> b!8032914 (= e!4732208 call!745220)))

(declare-fun b!8032915 () Bool)

(declare-fun e!4732209 () Bool)

(assert (=> b!8032915 (= e!4732207 e!4732209)))

(declare-fun c!1473631 () Bool)

(assert (=> b!8032915 (= c!1473631 (is-Star!21716 r!13107))))

(declare-fun b!8032916 () Bool)

(assert (=> b!8032916 (= e!4732210 call!745220)))

(declare-fun bm!745213 () Bool)

(declare-fun call!745218 () Bool)

(assert (=> bm!745213 (= call!745220 call!745218)))

(declare-fun b!8032917 () Bool)

(declare-fun res!3176549 () Bool)

(assert (=> b!8032917 (=> res!3176549 e!4732212)))

(assert (=> b!8032917 (= res!3176549 (not (is-Concat!30719 r!13107)))))

(declare-fun e!4732213 () Bool)

(assert (=> b!8032917 (= e!4732213 e!4732212)))

(declare-fun b!8032918 () Bool)

(declare-fun res!3176545 () Bool)

(assert (=> b!8032918 (=> (not res!3176545) (not e!4732208))))

(assert (=> b!8032918 (= res!3176545 call!745219)))

(assert (=> b!8032918 (= e!4732213 e!4732208)))

(declare-fun b!8032919 () Bool)

(declare-fun e!4732211 () Bool)

(assert (=> b!8032919 (= e!4732211 call!745218)))

(declare-fun c!1473632 () Bool)

(declare-fun bm!745214 () Bool)

(assert (=> bm!745214 (= call!745218 (validRegex!12012 (ite c!1473631 (reg!22045 r!13107) (ite c!1473632 (regTwo!43945 r!13107) (regTwo!43944 r!13107)))))))

(declare-fun b!8032920 () Bool)

(assert (=> b!8032920 (= e!4732209 e!4732213)))

(assert (=> b!8032920 (= c!1473632 (is-Union!21716 r!13107))))

(declare-fun bm!745215 () Bool)

(assert (=> bm!745215 (= call!745219 (validRegex!12012 (ite c!1473632 (regOne!43945 r!13107) (regOne!43944 r!13107))))))

(declare-fun b!8032921 () Bool)

(assert (=> b!8032921 (= e!4732209 e!4732211)))

(declare-fun res!3176546 () Bool)

(assert (=> b!8032921 (= res!3176546 (not (nullable!9749 (reg!22045 r!13107))))))

(assert (=> b!8032921 (=> (not res!3176546) (not e!4732211))))

(assert (= (and d!2394791 (not res!3176547)) b!8032915))

(assert (= (and b!8032915 c!1473631) b!8032921))

(assert (= (and b!8032915 (not c!1473631)) b!8032920))

(assert (= (and b!8032921 res!3176546) b!8032919))

(assert (= (and b!8032920 c!1473632) b!8032918))

(assert (= (and b!8032920 (not c!1473632)) b!8032917))

(assert (= (and b!8032918 res!3176545) b!8032914))

(assert (= (and b!8032917 (not res!3176549)) b!8032913))

(assert (= (and b!8032913 res!3176548) b!8032916))

(assert (= (or b!8032914 b!8032916) bm!745213))

(assert (= (or b!8032918 b!8032913) bm!745215))

(assert (= (or b!8032919 bm!745213) bm!745214))

(declare-fun m!8392608 () Bool)

(assert (=> bm!745214 m!8392608))

(declare-fun m!8392610 () Bool)

(assert (=> bm!745215 m!8392610))

(declare-fun m!8392612 () Bool)

(assert (=> b!8032921 m!8392612))

(assert (=> start!756642 d!2394791))

(declare-fun b!8032934 () Bool)

(declare-fun e!4732216 () Bool)

(declare-fun tp!2404486 () Bool)

(assert (=> b!8032934 (= e!4732216 tp!2404486)))

(assert (=> b!8032849 (= tp!2404456 e!4732216)))

(declare-fun b!8032933 () Bool)

(declare-fun tp!2404488 () Bool)

(declare-fun tp!2404484 () Bool)

(assert (=> b!8032933 (= e!4732216 (and tp!2404488 tp!2404484))))

(declare-fun b!8032935 () Bool)

(declare-fun tp!2404485 () Bool)

(declare-fun tp!2404487 () Bool)

(assert (=> b!8032935 (= e!4732216 (and tp!2404485 tp!2404487))))

(declare-fun b!8032932 () Bool)

(assert (=> b!8032932 (= e!4732216 tp_is_empty!54427)))

(assert (= (and b!8032849 (is-ElementMatch!21716 (regOne!43945 r!13107))) b!8032932))

(assert (= (and b!8032849 (is-Concat!30719 (regOne!43945 r!13107))) b!8032933))

(assert (= (and b!8032849 (is-Star!21716 (regOne!43945 r!13107))) b!8032934))

(assert (= (and b!8032849 (is-Union!21716 (regOne!43945 r!13107))) b!8032935))

(declare-fun b!8032938 () Bool)

(declare-fun e!4732217 () Bool)

(declare-fun tp!2404491 () Bool)

(assert (=> b!8032938 (= e!4732217 tp!2404491)))

(assert (=> b!8032849 (= tp!2404455 e!4732217)))

(declare-fun b!8032937 () Bool)

(declare-fun tp!2404493 () Bool)

(declare-fun tp!2404489 () Bool)

(assert (=> b!8032937 (= e!4732217 (and tp!2404493 tp!2404489))))

(declare-fun b!8032939 () Bool)

(declare-fun tp!2404490 () Bool)

(declare-fun tp!2404492 () Bool)

(assert (=> b!8032939 (= e!4732217 (and tp!2404490 tp!2404492))))

(declare-fun b!8032936 () Bool)

(assert (=> b!8032936 (= e!4732217 tp_is_empty!54427)))

(assert (= (and b!8032849 (is-ElementMatch!21716 (regTwo!43945 r!13107))) b!8032936))

(assert (= (and b!8032849 (is-Concat!30719 (regTwo!43945 r!13107))) b!8032937))

(assert (= (and b!8032849 (is-Star!21716 (regTwo!43945 r!13107))) b!8032938))

(assert (= (and b!8032849 (is-Union!21716 (regTwo!43945 r!13107))) b!8032939))

(declare-fun b!8032942 () Bool)

(declare-fun e!4732218 () Bool)

(declare-fun tp!2404496 () Bool)

(assert (=> b!8032942 (= e!4732218 tp!2404496)))

(assert (=> b!8032844 (= tp!2404454 e!4732218)))

(declare-fun b!8032941 () Bool)

(declare-fun tp!2404498 () Bool)

(declare-fun tp!2404494 () Bool)

(assert (=> b!8032941 (= e!4732218 (and tp!2404498 tp!2404494))))

(declare-fun b!8032943 () Bool)

(declare-fun tp!2404495 () Bool)

(declare-fun tp!2404497 () Bool)

(assert (=> b!8032943 (= e!4732218 (and tp!2404495 tp!2404497))))

(declare-fun b!8032940 () Bool)

(assert (=> b!8032940 (= e!4732218 tp_is_empty!54427)))

(assert (= (and b!8032844 (is-ElementMatch!21716 (reg!22045 r!13107))) b!8032940))

(assert (= (and b!8032844 (is-Concat!30719 (reg!22045 r!13107))) b!8032941))

(assert (= (and b!8032844 (is-Star!21716 (reg!22045 r!13107))) b!8032942))

(assert (= (and b!8032844 (is-Union!21716 (reg!22045 r!13107))) b!8032943))

(declare-fun b!8032946 () Bool)

(declare-fun e!4732219 () Bool)

(declare-fun tp!2404501 () Bool)

(assert (=> b!8032946 (= e!4732219 tp!2404501)))

(assert (=> b!8032847 (= tp!2404457 e!4732219)))

(declare-fun b!8032945 () Bool)

(declare-fun tp!2404503 () Bool)

(declare-fun tp!2404499 () Bool)

(assert (=> b!8032945 (= e!4732219 (and tp!2404503 tp!2404499))))

(declare-fun b!8032947 () Bool)

(declare-fun tp!2404500 () Bool)

(declare-fun tp!2404502 () Bool)

(assert (=> b!8032947 (= e!4732219 (and tp!2404500 tp!2404502))))

(declare-fun b!8032944 () Bool)

(assert (=> b!8032944 (= e!4732219 tp_is_empty!54427)))

(assert (= (and b!8032847 (is-ElementMatch!21716 (regOne!43944 r!13107))) b!8032944))

(assert (= (and b!8032847 (is-Concat!30719 (regOne!43944 r!13107))) b!8032945))

(assert (= (and b!8032847 (is-Star!21716 (regOne!43944 r!13107))) b!8032946))

(assert (= (and b!8032847 (is-Union!21716 (regOne!43944 r!13107))) b!8032947))

(declare-fun b!8032950 () Bool)

(declare-fun e!4732220 () Bool)

(declare-fun tp!2404506 () Bool)

(assert (=> b!8032950 (= e!4732220 tp!2404506)))

(assert (=> b!8032847 (= tp!2404458 e!4732220)))

(declare-fun b!8032949 () Bool)

(declare-fun tp!2404508 () Bool)

(declare-fun tp!2404504 () Bool)

(assert (=> b!8032949 (= e!4732220 (and tp!2404508 tp!2404504))))

(declare-fun b!8032951 () Bool)

(declare-fun tp!2404505 () Bool)

(declare-fun tp!2404507 () Bool)

(assert (=> b!8032951 (= e!4732220 (and tp!2404505 tp!2404507))))

(declare-fun b!8032948 () Bool)

(assert (=> b!8032948 (= e!4732220 tp_is_empty!54427)))

(assert (= (and b!8032847 (is-ElementMatch!21716 (regTwo!43944 r!13107))) b!8032948))

(assert (= (and b!8032847 (is-Concat!30719 (regTwo!43944 r!13107))) b!8032949))

(assert (= (and b!8032847 (is-Star!21716 (regTwo!43944 r!13107))) b!8032950))

(assert (= (and b!8032847 (is-Union!21716 (regTwo!43944 r!13107))) b!8032951))

(push 1)

(assert (not b!8032912))

(assert (not b!8032941))

(assert (not bm!745215))

(assert (not b!8032939))

(assert (not b!8032921))

(assert tp_is_empty!54427)

(assert (not b!8032949))

(assert (not b!8032933))

(assert (not b!8032945))

(assert (not bm!745212))

(assert (not b!8032951))

(assert (not b!8032946))

(assert (not b!8032937))

(assert (not b!8032950))

(assert (not b!8032938))

(assert (not b!8032942))

(assert (not b!8032947))

(assert (not b!8032935))

(assert (not bm!745214))

(assert (not b!8032943))

(assert (not b!8032934))

(assert (not bm!745211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

