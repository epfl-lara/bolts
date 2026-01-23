; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548924 () Bool)

(assert start!548924)

(declare-fun b!5182829 () Bool)

(declare-fun e!3229107 () Bool)

(declare-datatypes ((C!29630 0))(
  ( (C!29631 (val!24517 Int)) )
))
(declare-datatypes ((Regex!14680 0))(
  ( (ElementMatch!14680 (c!893327 C!29630)) (Concat!23525 (regOne!29872 Regex!14680) (regTwo!29872 Regex!14680)) (EmptyExpr!14680) (Star!14680 (reg!15009 Regex!14680)) (EmptyLang!14680) (Union!14680 (regOne!29873 Regex!14680) (regTwo!29873 Regex!14680)) )
))
(declare-datatypes ((List!60339 0))(
  ( (Nil!60215) (Cons!60215 (h!66663 Regex!14680) (t!373492 List!60339)) )
))
(declare-datatypes ((Context!8128 0))(
  ( (Context!8129 (exprs!4564 List!60339)) )
))
(declare-datatypes ((List!60340 0))(
  ( (Nil!60216) (Cons!60216 (h!66664 Context!8128) (t!373493 List!60340)) )
))
(declare-fun zl!343 () List!60340)

(declare-fun lambda!259134 () Int)

(declare-fun forall!14191 (List!60339 Int) Bool)

(assert (=> b!5182829 (= e!3229107 (forall!14191 (exprs!4564 (h!66664 zl!343)) lambda!259134))))

(declare-fun e!3229108 () Bool)

(declare-fun e!3229104 () Bool)

(declare-fun b!5182830 () Bool)

(declare-fun tp!1453780 () Bool)

(declare-fun inv!79948 (Context!8128) Bool)

(assert (=> b!5182830 (= e!3229104 (and (inv!79948 (h!66664 zl!343)) e!3229108 tp!1453780))))

(declare-fun b!5182831 () Bool)

(declare-fun res!2201559 () Bool)

(assert (=> b!5182831 (=> res!2201559 e!3229107)))

(declare-fun isEmpty!32226 (List!60340) Bool)

(assert (=> b!5182831 (= res!2201559 (not (isEmpty!32226 (t!373493 zl!343))))))

(declare-fun b!5182832 () Bool)

(declare-fun e!3229109 () Bool)

(declare-fun tp!1453782 () Bool)

(declare-fun tp!1453777 () Bool)

(assert (=> b!5182832 (= e!3229109 (and tp!1453782 tp!1453777))))

(declare-fun b!5182833 () Bool)

(declare-fun e!3229105 () Bool)

(declare-fun tp_is_empty!38613 () Bool)

(declare-fun tp!1453774 () Bool)

(assert (=> b!5182833 (= e!3229105 (and tp_is_empty!38613 tp!1453774))))

(declare-fun b!5182834 () Bool)

(declare-fun res!2201561 () Bool)

(declare-fun e!3229110 () Bool)

(assert (=> b!5182834 (=> (not res!2201561) (not e!3229110))))

(declare-fun z!1189 () (Set Context!8128))

(declare-fun toList!8464 ((Set Context!8128)) List!60340)

(assert (=> b!5182834 (= res!2201561 (= (toList!8464 z!1189) zl!343))))

(declare-fun b!5182835 () Bool)

(assert (=> b!5182835 (= e!3229110 (not e!3229107))))

(declare-fun res!2201558 () Bool)

(assert (=> b!5182835 (=> res!2201558 e!3229107)))

(assert (=> b!5182835 (= res!2201558 (not (is-Cons!60216 zl!343)))))

(declare-fun r!7292 () Regex!14680)

(declare-datatypes ((List!60341 0))(
  ( (Nil!60217) (Cons!60217 (h!66665 C!29630) (t!373494 List!60341)) )
))
(declare-fun s!2326 () List!60341)

(declare-fun matchR!6865 (Regex!14680 List!60341) Bool)

(declare-fun matchRSpec!1783 (Regex!14680 List!60341) Bool)

(assert (=> b!5182835 (= (matchR!6865 r!7292 s!2326) (matchRSpec!1783 r!7292 s!2326))))

(declare-datatypes ((Unit!152194 0))(
  ( (Unit!152195) )
))
(declare-fun lt!2136106 () Unit!152194)

(declare-fun mainMatchTheorem!1783 (Regex!14680 List!60341) Unit!152194)

(assert (=> b!5182835 (= lt!2136106 (mainMatchTheorem!1783 r!7292 s!2326))))

(declare-fun b!5182836 () Bool)

(declare-fun tp!1453776 () Bool)

(declare-fun tp!1453781 () Bool)

(assert (=> b!5182836 (= e!3229109 (and tp!1453776 tp!1453781))))

(declare-fun b!5182828 () Bool)

(declare-fun tp!1453778 () Bool)

(assert (=> b!5182828 (= e!3229109 tp!1453778)))

(declare-fun res!2201557 () Bool)

(assert (=> start!548924 (=> (not res!2201557) (not e!3229110))))

(declare-fun validRegex!6416 (Regex!14680) Bool)

(assert (=> start!548924 (= res!2201557 (validRegex!6416 r!7292))))

(assert (=> start!548924 e!3229110))

(assert (=> start!548924 e!3229109))

(declare-fun condSetEmpty!32575 () Bool)

(assert (=> start!548924 (= condSetEmpty!32575 (= z!1189 (as set.empty (Set Context!8128))))))

(declare-fun setRes!32575 () Bool)

(assert (=> start!548924 setRes!32575))

(assert (=> start!548924 e!3229104))

(assert (=> start!548924 e!3229105))

(declare-fun b!5182837 () Bool)

(assert (=> b!5182837 (= e!3229109 tp_is_empty!38613)))

(declare-fun b!5182838 () Bool)

(declare-fun e!3229106 () Bool)

(declare-fun tp!1453775 () Bool)

(assert (=> b!5182838 (= e!3229106 tp!1453775)))

(declare-fun setIsEmpty!32575 () Bool)

(assert (=> setIsEmpty!32575 setRes!32575))

(declare-fun setNonEmpty!32575 () Bool)

(declare-fun tp!1453783 () Bool)

(declare-fun setElem!32575 () Context!8128)

(assert (=> setNonEmpty!32575 (= setRes!32575 (and tp!1453783 (inv!79948 setElem!32575) e!3229106))))

(declare-fun setRest!32575 () (Set Context!8128))

(assert (=> setNonEmpty!32575 (= z!1189 (set.union (set.insert setElem!32575 (as set.empty (Set Context!8128))) setRest!32575))))

(declare-fun b!5182839 () Bool)

(declare-fun tp!1453779 () Bool)

(assert (=> b!5182839 (= e!3229108 tp!1453779)))

(declare-fun b!5182840 () Bool)

(declare-fun res!2201560 () Bool)

(assert (=> b!5182840 (=> (not res!2201560) (not e!3229110))))

(declare-fun unfocusZipper!422 (List!60340) Regex!14680)

(assert (=> b!5182840 (= res!2201560 (= r!7292 (unfocusZipper!422 zl!343)))))

(assert (= (and start!548924 res!2201557) b!5182834))

(assert (= (and b!5182834 res!2201561) b!5182840))

(assert (= (and b!5182840 res!2201560) b!5182835))

(assert (= (and b!5182835 (not res!2201558)) b!5182831))

(assert (= (and b!5182831 (not res!2201559)) b!5182829))

(assert (= (and start!548924 (is-ElementMatch!14680 r!7292)) b!5182837))

(assert (= (and start!548924 (is-Concat!23525 r!7292)) b!5182832))

(assert (= (and start!548924 (is-Star!14680 r!7292)) b!5182828))

(assert (= (and start!548924 (is-Union!14680 r!7292)) b!5182836))

(assert (= (and start!548924 condSetEmpty!32575) setIsEmpty!32575))

(assert (= (and start!548924 (not condSetEmpty!32575)) setNonEmpty!32575))

(assert (= setNonEmpty!32575 b!5182838))

(assert (= b!5182830 b!5182839))

(assert (= (and start!548924 (is-Cons!60216 zl!343)) b!5182830))

(assert (= (and start!548924 (is-Cons!60217 s!2326)) b!5182833))

(declare-fun m!6242930 () Bool)

(assert (=> b!5182834 m!6242930))

(declare-fun m!6242932 () Bool)

(assert (=> start!548924 m!6242932))

(declare-fun m!6242934 () Bool)

(assert (=> b!5182829 m!6242934))

(declare-fun m!6242936 () Bool)

(assert (=> b!5182840 m!6242936))

(declare-fun m!6242938 () Bool)

(assert (=> b!5182830 m!6242938))

(declare-fun m!6242940 () Bool)

(assert (=> setNonEmpty!32575 m!6242940))

(declare-fun m!6242942 () Bool)

(assert (=> b!5182835 m!6242942))

(declare-fun m!6242944 () Bool)

(assert (=> b!5182835 m!6242944))

(declare-fun m!6242946 () Bool)

(assert (=> b!5182835 m!6242946))

(declare-fun m!6242948 () Bool)

(assert (=> b!5182831 m!6242948))

(push 1)

(assert (not setNonEmpty!32575))

(assert (not b!5182834))

(assert (not b!5182828))

(assert tp_is_empty!38613)

(assert (not b!5182829))

(assert (not b!5182840))

(assert (not start!548924))

(assert (not b!5182835))

(assert (not b!5182839))

(assert (not b!5182831))

(assert (not b!5182832))

(assert (not b!5182830))

(assert (not b!5182833))

(assert (not b!5182838))

(assert (not b!5182836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675968 () Bool)

(declare-fun e!3229134 () Bool)

(assert (=> d!1675968 e!3229134))

(declare-fun res!2201579 () Bool)

(assert (=> d!1675968 (=> (not res!2201579) (not e!3229134))))

(declare-fun lt!2136112 () List!60340)

(declare-fun noDuplicate!1141 (List!60340) Bool)

(assert (=> d!1675968 (= res!2201579 (noDuplicate!1141 lt!2136112))))

(declare-fun choose!38522 ((Set Context!8128)) List!60340)

(assert (=> d!1675968 (= lt!2136112 (choose!38522 z!1189))))

(assert (=> d!1675968 (= (toList!8464 z!1189) lt!2136112)))

(declare-fun b!5182882 () Bool)

(declare-fun content!10677 (List!60340) (Set Context!8128))

(assert (=> b!5182882 (= e!3229134 (= (content!10677 lt!2136112) z!1189))))

(assert (= (and d!1675968 res!2201579) b!5182882))

(declare-fun m!6242970 () Bool)

(assert (=> d!1675968 m!6242970))

(declare-fun m!6242972 () Bool)

(assert (=> d!1675968 m!6242972))

(declare-fun m!6242974 () Bool)

(assert (=> b!5182882 m!6242974))

(assert (=> b!5182834 d!1675968))

(declare-fun b!5182901 () Bool)

(declare-fun e!3229154 () Bool)

(declare-fun e!3229152 () Bool)

(assert (=> b!5182901 (= e!3229154 e!3229152)))

(declare-fun res!2201590 () Bool)

(declare-fun nullable!4899 (Regex!14680) Bool)

(assert (=> b!5182901 (= res!2201590 (not (nullable!4899 (reg!15009 r!7292))))))

(assert (=> b!5182901 (=> (not res!2201590) (not e!3229152))))

(declare-fun b!5182902 () Bool)

(declare-fun call!364242 () Bool)

(assert (=> b!5182902 (= e!3229152 call!364242)))

(declare-fun b!5182903 () Bool)

(declare-fun e!3229153 () Bool)

(declare-fun e!3229151 () Bool)

(assert (=> b!5182903 (= e!3229153 e!3229151)))

(declare-fun res!2201594 () Bool)

(assert (=> b!5182903 (=> (not res!2201594) (not e!3229151))))

(declare-fun call!364244 () Bool)

(assert (=> b!5182903 (= res!2201594 call!364244)))

(declare-fun b!5182904 () Bool)

(declare-fun e!3229155 () Bool)

(assert (=> b!5182904 (= e!3229154 e!3229155)))

(declare-fun c!893333 () Bool)

(assert (=> b!5182904 (= c!893333 (is-Union!14680 r!7292))))

(declare-fun bm!364237 () Bool)

(declare-fun call!364243 () Bool)

(assert (=> bm!364237 (= call!364243 (validRegex!6416 (ite c!893333 (regTwo!29873 r!7292) (regTwo!29872 r!7292))))))

(declare-fun d!1675970 () Bool)

(declare-fun res!2201591 () Bool)

(declare-fun e!3229150 () Bool)

(assert (=> d!1675970 (=> res!2201591 e!3229150)))

(assert (=> d!1675970 (= res!2201591 (is-ElementMatch!14680 r!7292))))

(assert (=> d!1675970 (= (validRegex!6416 r!7292) e!3229150)))

(declare-fun b!5182905 () Bool)

(assert (=> b!5182905 (= e!3229150 e!3229154)))

(declare-fun c!893334 () Bool)

(assert (=> b!5182905 (= c!893334 (is-Star!14680 r!7292))))

(declare-fun bm!364238 () Bool)

(assert (=> bm!364238 (= call!364242 (validRegex!6416 (ite c!893334 (reg!15009 r!7292) (ite c!893333 (regOne!29873 r!7292) (regOne!29872 r!7292)))))))

(declare-fun bm!364239 () Bool)

(assert (=> bm!364239 (= call!364244 call!364242)))

(declare-fun b!5182906 () Bool)

(declare-fun res!2201593 () Bool)

(declare-fun e!3229149 () Bool)

(assert (=> b!5182906 (=> (not res!2201593) (not e!3229149))))

(assert (=> b!5182906 (= res!2201593 call!364244)))

(assert (=> b!5182906 (= e!3229155 e!3229149)))

(declare-fun b!5182907 () Bool)

(declare-fun res!2201592 () Bool)

(assert (=> b!5182907 (=> res!2201592 e!3229153)))

(assert (=> b!5182907 (= res!2201592 (not (is-Concat!23525 r!7292)))))

(assert (=> b!5182907 (= e!3229155 e!3229153)))

(declare-fun b!5182908 () Bool)

(assert (=> b!5182908 (= e!3229151 call!364243)))

(declare-fun b!5182909 () Bool)

(assert (=> b!5182909 (= e!3229149 call!364243)))

(assert (= (and d!1675970 (not res!2201591)) b!5182905))

(assert (= (and b!5182905 c!893334) b!5182901))

(assert (= (and b!5182905 (not c!893334)) b!5182904))

(assert (= (and b!5182901 res!2201590) b!5182902))

(assert (= (and b!5182904 c!893333) b!5182906))

(assert (= (and b!5182904 (not c!893333)) b!5182907))

(assert (= (and b!5182906 res!2201593) b!5182909))

(assert (= (and b!5182907 (not res!2201592)) b!5182903))

(assert (= (and b!5182903 res!2201594) b!5182908))

(assert (= (or b!5182909 b!5182908) bm!364237))

(assert (= (or b!5182906 b!5182903) bm!364239))

(assert (= (or b!5182902 bm!364239) bm!364238))

(declare-fun m!6242976 () Bool)

(assert (=> b!5182901 m!6242976))

(declare-fun m!6242978 () Bool)

(assert (=> bm!364237 m!6242978))

(declare-fun m!6242980 () Bool)

(assert (=> bm!364238 m!6242980))

(assert (=> start!548924 d!1675970))

(declare-fun d!1675972 () Bool)

(assert (=> d!1675972 (= (isEmpty!32226 (t!373493 zl!343)) (is-Nil!60216 (t!373493 zl!343)))))

(assert (=> b!5182831 d!1675972))

(declare-fun d!1675974 () Bool)

(declare-fun lt!2136115 () Regex!14680)

(assert (=> d!1675974 (validRegex!6416 lt!2136115)))

(declare-fun generalisedUnion!610 (List!60339) Regex!14680)

(declare-fun unfocusZipperList!123 (List!60340) List!60339)

(assert (=> d!1675974 (= lt!2136115 (generalisedUnion!610 (unfocusZipperList!123 zl!343)))))

(assert (=> d!1675974 (= (unfocusZipper!422 zl!343) lt!2136115)))

(declare-fun bs!1208078 () Bool)

(assert (= bs!1208078 d!1675974))

(declare-fun m!6242982 () Bool)

(assert (=> bs!1208078 m!6242982))

(declare-fun m!6242984 () Bool)

(assert (=> bs!1208078 m!6242984))

(assert (=> bs!1208078 m!6242984))

(declare-fun m!6242986 () Bool)

(assert (=> bs!1208078 m!6242986))

(assert (=> b!5182840 d!1675974))

(declare-fun d!1675978 () Bool)

(declare-fun e!3229181 () Bool)

(assert (=> d!1675978 e!3229181))

(declare-fun c!893342 () Bool)

(assert (=> d!1675978 (= c!893342 (is-EmptyExpr!14680 r!7292))))

(declare-fun lt!2136118 () Bool)

(declare-fun e!3229182 () Bool)

(assert (=> d!1675978 (= lt!2136118 e!3229182)))

(declare-fun c!893341 () Bool)

(declare-fun isEmpty!32228 (List!60341) Bool)

(assert (=> d!1675978 (= c!893341 (isEmpty!32228 s!2326))))

(assert (=> d!1675978 (validRegex!6416 r!7292)))

(assert (=> d!1675978 (= (matchR!6865 r!7292 s!2326) lt!2136118)))

(declare-fun b!5182944 () Bool)

(declare-fun e!3229178 () Bool)

(declare-fun e!3229177 () Bool)

(assert (=> b!5182944 (= e!3229178 e!3229177)))

(declare-fun res!2201622 () Bool)

(assert (=> b!5182944 (=> (not res!2201622) (not e!3229177))))

(assert (=> b!5182944 (= res!2201622 (not lt!2136118))))

(declare-fun b!5182945 () Bool)

(declare-fun e!3229176 () Bool)

(declare-fun head!11084 (List!60341) C!29630)

(assert (=> b!5182945 (= e!3229176 (= (head!11084 s!2326) (c!893327 r!7292)))))

(declare-fun b!5182946 () Bool)

(declare-fun res!2201620 () Bool)

(assert (=> b!5182946 (=> (not res!2201620) (not e!3229176))))

(declare-fun tail!10183 (List!60341) List!60341)

(assert (=> b!5182946 (= res!2201620 (isEmpty!32228 (tail!10183 s!2326)))))

(declare-fun bm!364242 () Bool)

(declare-fun call!364247 () Bool)

(assert (=> bm!364242 (= call!364247 (isEmpty!32228 s!2326))))

(declare-fun b!5182947 () Bool)

(declare-fun e!3229180 () Bool)

(assert (=> b!5182947 (= e!3229180 (not lt!2136118))))

(declare-fun b!5182948 () Bool)

(declare-fun res!2201621 () Bool)

(assert (=> b!5182948 (=> res!2201621 e!3229178)))

(assert (=> b!5182948 (= res!2201621 e!3229176)))

(declare-fun res!2201624 () Bool)

(assert (=> b!5182948 (=> (not res!2201624) (not e!3229176))))

(assert (=> b!5182948 (= res!2201624 lt!2136118)))

(declare-fun b!5182949 () Bool)

(declare-fun res!2201619 () Bool)

(assert (=> b!5182949 (=> (not res!2201619) (not e!3229176))))

(assert (=> b!5182949 (= res!2201619 (not call!364247))))

(declare-fun b!5182950 () Bool)

(assert (=> b!5182950 (= e!3229181 e!3229180)))

(declare-fun c!893343 () Bool)

(assert (=> b!5182950 (= c!893343 (is-EmptyLang!14680 r!7292))))

(declare-fun b!5182951 () Bool)

(declare-fun res!2201618 () Bool)

(assert (=> b!5182951 (=> res!2201618 e!3229178)))

(assert (=> b!5182951 (= res!2201618 (not (is-ElementMatch!14680 r!7292)))))

(assert (=> b!5182951 (= e!3229180 e!3229178)))

(declare-fun b!5182952 () Bool)

(declare-fun e!3229179 () Bool)

(assert (=> b!5182952 (= e!3229177 e!3229179)))

(declare-fun res!2201617 () Bool)

(assert (=> b!5182952 (=> res!2201617 e!3229179)))

(assert (=> b!5182952 (= res!2201617 call!364247)))

(declare-fun b!5182953 () Bool)

(declare-fun derivativeStep!4006 (Regex!14680 C!29630) Regex!14680)

(assert (=> b!5182953 (= e!3229182 (matchR!6865 (derivativeStep!4006 r!7292 (head!11084 s!2326)) (tail!10183 s!2326)))))

(declare-fun b!5182954 () Bool)

(assert (=> b!5182954 (= e!3229182 (nullable!4899 r!7292))))

(declare-fun b!5182955 () Bool)

(assert (=> b!5182955 (= e!3229179 (not (= (head!11084 s!2326) (c!893327 r!7292))))))

(declare-fun b!5182956 () Bool)

(declare-fun res!2201623 () Bool)

(assert (=> b!5182956 (=> res!2201623 e!3229179)))

(assert (=> b!5182956 (= res!2201623 (not (isEmpty!32228 (tail!10183 s!2326))))))

(declare-fun b!5182957 () Bool)

(assert (=> b!5182957 (= e!3229181 (= lt!2136118 call!364247))))

(assert (= (and d!1675978 c!893341) b!5182954))

(assert (= (and d!1675978 (not c!893341)) b!5182953))

(assert (= (and d!1675978 c!893342) b!5182957))

(assert (= (and d!1675978 (not c!893342)) b!5182950))

(assert (= (and b!5182950 c!893343) b!5182947))

(assert (= (and b!5182950 (not c!893343)) b!5182951))

(assert (= (and b!5182951 (not res!2201618)) b!5182948))

(assert (= (and b!5182948 res!2201624) b!5182949))

(assert (= (and b!5182949 res!2201619) b!5182946))

(assert (= (and b!5182946 res!2201620) b!5182945))

(assert (= (and b!5182948 (not res!2201621)) b!5182944))

(assert (= (and b!5182944 res!2201622) b!5182952))

(assert (= (and b!5182952 (not res!2201617)) b!5182956))

(assert (= (and b!5182956 (not res!2201623)) b!5182955))

(assert (= (or b!5182957 b!5182949 b!5182952) bm!364242))

(declare-fun m!6242994 () Bool)

(assert (=> b!5182956 m!6242994))

(assert (=> b!5182956 m!6242994))

(declare-fun m!6242996 () Bool)

(assert (=> b!5182956 m!6242996))

(declare-fun m!6242998 () Bool)

(assert (=> bm!364242 m!6242998))

(assert (=> d!1675978 m!6242998))

(assert (=> d!1675978 m!6242932))

(declare-fun m!6243000 () Bool)

(assert (=> b!5182955 m!6243000))

(assert (=> b!5182946 m!6242994))

(assert (=> b!5182946 m!6242994))

(assert (=> b!5182946 m!6242996))

(declare-fun m!6243002 () Bool)

(assert (=> b!5182954 m!6243002))

(assert (=> b!5182945 m!6243000))

(assert (=> b!5182953 m!6243000))

(assert (=> b!5182953 m!6243000))

(declare-fun m!6243004 () Bool)

(assert (=> b!5182953 m!6243004))

(assert (=> b!5182953 m!6242994))

(assert (=> b!5182953 m!6243004))

(assert (=> b!5182953 m!6242994))

(declare-fun m!6243006 () Bool)

(assert (=> b!5182953 m!6243006))

(assert (=> b!5182835 d!1675978))

(declare-fun b!5183001 () Bool)

(assert (=> b!5183001 true))

(assert (=> b!5183001 true))

(declare-fun bs!1208081 () Bool)

(declare-fun b!5183002 () Bool)

(assert (= bs!1208081 (and b!5183002 b!5183001)))

(declare-fun lambda!259146 () Int)

(declare-fun lambda!259145 () Int)

(assert (=> bs!1208081 (not (= lambda!259146 lambda!259145))))

(assert (=> b!5183002 true))

(assert (=> b!5183002 true))

(declare-fun bm!364247 () Bool)

(declare-fun call!364252 () Bool)

(assert (=> bm!364247 (= call!364252 (isEmpty!32228 s!2326))))

(declare-fun b!5182993 () Bool)

(declare-fun c!893352 () Bool)

(assert (=> b!5182993 (= c!893352 (is-Union!14680 r!7292))))

(declare-fun e!3229205 () Bool)

(declare-fun e!3229208 () Bool)

(assert (=> b!5182993 (= e!3229205 e!3229208)))

(declare-fun c!893353 () Bool)

(declare-fun bm!364248 () Bool)

(declare-fun call!364253 () Bool)

(declare-fun Exists!1900 (Int) Bool)

(assert (=> bm!364248 (= call!364253 (Exists!1900 (ite c!893353 lambda!259145 lambda!259146)))))

(declare-fun b!5182994 () Bool)

(declare-fun e!3229204 () Bool)

(assert (=> b!5182994 (= e!3229204 (matchRSpec!1783 (regTwo!29873 r!7292) s!2326))))

(declare-fun d!1675986 () Bool)

(declare-fun c!893354 () Bool)

(assert (=> d!1675986 (= c!893354 (is-EmptyExpr!14680 r!7292))))

(declare-fun e!3229207 () Bool)

(assert (=> d!1675986 (= (matchRSpec!1783 r!7292 s!2326) e!3229207)))

(declare-fun b!5182995 () Bool)

(declare-fun e!3229206 () Bool)

(assert (=> b!5182995 (= e!3229207 e!3229206)))

(declare-fun res!2201644 () Bool)

(assert (=> b!5182995 (= res!2201644 (not (is-EmptyLang!14680 r!7292)))))

(assert (=> b!5182995 (=> (not res!2201644) (not e!3229206))))

(declare-fun b!5182996 () Bool)

(assert (=> b!5182996 (= e!3229205 (= s!2326 (Cons!60217 (c!893327 r!7292) Nil!60217)))))

(declare-fun b!5182997 () Bool)

(assert (=> b!5182997 (= e!3229207 call!364252)))

(declare-fun b!5182998 () Bool)

(declare-fun c!893355 () Bool)

(assert (=> b!5182998 (= c!893355 (is-ElementMatch!14680 r!7292))))

(assert (=> b!5182998 (= e!3229206 e!3229205)))

(declare-fun b!5182999 () Bool)

(declare-fun e!3229210 () Bool)

(assert (=> b!5182999 (= e!3229208 e!3229210)))

(assert (=> b!5182999 (= c!893353 (is-Star!14680 r!7292))))

(declare-fun b!5183000 () Bool)

(assert (=> b!5183000 (= e!3229208 e!3229204)))

(declare-fun res!2201645 () Bool)

(assert (=> b!5183000 (= res!2201645 (matchRSpec!1783 (regOne!29873 r!7292) s!2326))))

(assert (=> b!5183000 (=> res!2201645 e!3229204)))

(declare-fun e!3229209 () Bool)

(assert (=> b!5183001 (= e!3229209 call!364253)))

(assert (=> b!5183002 (= e!3229210 call!364253)))

(declare-fun b!5183003 () Bool)

(declare-fun res!2201646 () Bool)

(assert (=> b!5183003 (=> res!2201646 e!3229209)))

(assert (=> b!5183003 (= res!2201646 call!364252)))

(assert (=> b!5183003 (= e!3229210 e!3229209)))

(assert (= (and d!1675986 c!893354) b!5182997))

(assert (= (and d!1675986 (not c!893354)) b!5182995))

(assert (= (and b!5182995 res!2201644) b!5182998))

(assert (= (and b!5182998 c!893355) b!5182996))

(assert (= (and b!5182998 (not c!893355)) b!5182993))

(assert (= (and b!5182993 c!893352) b!5183000))

(assert (= (and b!5182993 (not c!893352)) b!5182999))

(assert (= (and b!5183000 (not res!2201645)) b!5182994))

(assert (= (and b!5182999 c!893353) b!5183003))

(assert (= (and b!5182999 (not c!893353)) b!5183002))

(assert (= (and b!5183003 (not res!2201646)) b!5183001))

(assert (= (or b!5183001 b!5183002) bm!364248))

(assert (= (or b!5182997 b!5183003) bm!364247))

(assert (=> bm!364247 m!6242998))

(declare-fun m!6243014 () Bool)

(assert (=> bm!364248 m!6243014))

(declare-fun m!6243016 () Bool)

(assert (=> b!5182994 m!6243016))

(declare-fun m!6243018 () Bool)

(assert (=> b!5183000 m!6243018))

(assert (=> b!5182835 d!1675986))

(declare-fun d!1675990 () Bool)

(assert (=> d!1675990 (= (matchR!6865 r!7292 s!2326) (matchRSpec!1783 r!7292 s!2326))))

(declare-fun lt!2136126 () Unit!152194)

(declare-fun choose!38523 (Regex!14680 List!60341) Unit!152194)

(assert (=> d!1675990 (= lt!2136126 (choose!38523 r!7292 s!2326))))

(assert (=> d!1675990 (validRegex!6416 r!7292)))

(assert (=> d!1675990 (= (mainMatchTheorem!1783 r!7292 s!2326) lt!2136126)))

(declare-fun bs!1208082 () Bool)

(assert (= bs!1208082 d!1675990))

(assert (=> bs!1208082 m!6242942))

(assert (=> bs!1208082 m!6242944))

(declare-fun m!6243020 () Bool)

(assert (=> bs!1208082 m!6243020))

(assert (=> bs!1208082 m!6242932))

(assert (=> b!5182835 d!1675990))

(declare-fun bs!1208083 () Bool)

(declare-fun d!1675992 () Bool)

(assert (= bs!1208083 (and d!1675992 b!5182829)))

(declare-fun lambda!259149 () Int)

(assert (=> bs!1208083 (= lambda!259149 lambda!259134)))

(assert (=> d!1675992 (= (inv!79948 (h!66664 zl!343)) (forall!14191 (exprs!4564 (h!66664 zl!343)) lambda!259149))))

(declare-fun bs!1208084 () Bool)

(assert (= bs!1208084 d!1675992))

(declare-fun m!6243022 () Bool)

(assert (=> bs!1208084 m!6243022))

(assert (=> b!5182830 d!1675992))

(declare-fun d!1675994 () Bool)

(declare-fun res!2201667 () Bool)

(declare-fun e!3229229 () Bool)

(assert (=> d!1675994 (=> res!2201667 e!3229229)))

(assert (=> d!1675994 (= res!2201667 (is-Nil!60215 (exprs!4564 (h!66664 zl!343))))))

(assert (=> d!1675994 (= (forall!14191 (exprs!4564 (h!66664 zl!343)) lambda!259134) e!3229229)))

(declare-fun b!5183040 () Bool)

(declare-fun e!3229230 () Bool)

(assert (=> b!5183040 (= e!3229229 e!3229230)))

(declare-fun res!2201668 () Bool)

(assert (=> b!5183040 (=> (not res!2201668) (not e!3229230))))

(declare-fun dynLambda!23895 (Int Regex!14680) Bool)

(assert (=> b!5183040 (= res!2201668 (dynLambda!23895 lambda!259134 (h!66663 (exprs!4564 (h!66664 zl!343)))))))

(declare-fun b!5183041 () Bool)

(assert (=> b!5183041 (= e!3229230 (forall!14191 (t!373492 (exprs!4564 (h!66664 zl!343))) lambda!259134))))

(assert (= (and d!1675994 (not res!2201667)) b!5183040))

(assert (= (and b!5183040 res!2201668) b!5183041))

(declare-fun b_lambda!201143 () Bool)

(assert (=> (not b_lambda!201143) (not b!5183040)))

(declare-fun m!6243024 () Bool)

(assert (=> b!5183040 m!6243024))

(declare-fun m!6243026 () Bool)

(assert (=> b!5183041 m!6243026))

(assert (=> b!5182829 d!1675994))

(declare-fun bs!1208085 () Bool)

(declare-fun d!1675996 () Bool)

(assert (= bs!1208085 (and d!1675996 b!5182829)))

(declare-fun lambda!259150 () Int)

(assert (=> bs!1208085 (= lambda!259150 lambda!259134)))

(declare-fun bs!1208086 () Bool)

(assert (= bs!1208086 (and d!1675996 d!1675992)))

(assert (=> bs!1208086 (= lambda!259150 lambda!259149)))

(assert (=> d!1675996 (= (inv!79948 setElem!32575) (forall!14191 (exprs!4564 setElem!32575) lambda!259150))))

(declare-fun bs!1208087 () Bool)

(assert (= bs!1208087 d!1675996))

(declare-fun m!6243028 () Bool)

(assert (=> bs!1208087 m!6243028))

(assert (=> setNonEmpty!32575 d!1675996))

(declare-fun b!5183046 () Bool)

(declare-fun e!3229233 () Bool)

(declare-fun tp!1453816 () Bool)

(assert (=> b!5183046 (= e!3229233 (and tp_is_empty!38613 tp!1453816))))

(assert (=> b!5182833 (= tp!1453774 e!3229233)))

(assert (= (and b!5182833 (is-Cons!60217 (t!373494 s!2326))) b!5183046))

(declare-fun b!5183060 () Bool)

(declare-fun e!3229236 () Bool)

(declare-fun tp!1453829 () Bool)

(declare-fun tp!1453830 () Bool)

(assert (=> b!5183060 (= e!3229236 (and tp!1453829 tp!1453830))))

(declare-fun b!5183058 () Bool)

(declare-fun tp!1453827 () Bool)

(declare-fun tp!1453831 () Bool)

(assert (=> b!5183058 (= e!3229236 (and tp!1453827 tp!1453831))))

(declare-fun b!5183059 () Bool)

(declare-fun tp!1453828 () Bool)

(assert (=> b!5183059 (= e!3229236 tp!1453828)))

(declare-fun b!5183057 () Bool)

(assert (=> b!5183057 (= e!3229236 tp_is_empty!38613)))

(assert (=> b!5182828 (= tp!1453778 e!3229236)))

(assert (= (and b!5182828 (is-ElementMatch!14680 (reg!15009 r!7292))) b!5183057))

(assert (= (and b!5182828 (is-Concat!23525 (reg!15009 r!7292))) b!5183058))

(assert (= (and b!5182828 (is-Star!14680 (reg!15009 r!7292))) b!5183059))

(assert (= (and b!5182828 (is-Union!14680 (reg!15009 r!7292))) b!5183060))

(declare-fun b!5183065 () Bool)

(declare-fun e!3229239 () Bool)

(declare-fun tp!1453836 () Bool)

(declare-fun tp!1453837 () Bool)

(assert (=> b!5183065 (= e!3229239 (and tp!1453836 tp!1453837))))

(assert (=> b!5182838 (= tp!1453775 e!3229239)))

(assert (= (and b!5182838 (is-Cons!60215 (exprs!4564 setElem!32575))) b!5183065))

(declare-fun b!5183069 () Bool)

(declare-fun e!3229240 () Bool)

(declare-fun tp!1453840 () Bool)

(declare-fun tp!1453841 () Bool)

(assert (=> b!5183069 (= e!3229240 (and tp!1453840 tp!1453841))))

(declare-fun b!5183067 () Bool)

(declare-fun tp!1453838 () Bool)

(declare-fun tp!1453842 () Bool)

(assert (=> b!5183067 (= e!3229240 (and tp!1453838 tp!1453842))))

(declare-fun b!5183068 () Bool)

(declare-fun tp!1453839 () Bool)

(assert (=> b!5183068 (= e!3229240 tp!1453839)))

(declare-fun b!5183066 () Bool)

(assert (=> b!5183066 (= e!3229240 tp_is_empty!38613)))

(assert (=> b!5182832 (= tp!1453782 e!3229240)))

(assert (= (and b!5182832 (is-ElementMatch!14680 (regOne!29872 r!7292))) b!5183066))

(assert (= (and b!5182832 (is-Concat!23525 (regOne!29872 r!7292))) b!5183067))

(assert (= (and b!5182832 (is-Star!14680 (regOne!29872 r!7292))) b!5183068))

(assert (= (and b!5182832 (is-Union!14680 (regOne!29872 r!7292))) b!5183069))

(declare-fun b!5183073 () Bool)

(declare-fun e!3229241 () Bool)

(declare-fun tp!1453845 () Bool)

(declare-fun tp!1453846 () Bool)

(assert (=> b!5183073 (= e!3229241 (and tp!1453845 tp!1453846))))

(declare-fun b!5183071 () Bool)

(declare-fun tp!1453843 () Bool)

(declare-fun tp!1453847 () Bool)

(assert (=> b!5183071 (= e!3229241 (and tp!1453843 tp!1453847))))

(declare-fun b!5183072 () Bool)

(declare-fun tp!1453844 () Bool)

(assert (=> b!5183072 (= e!3229241 tp!1453844)))

(declare-fun b!5183070 () Bool)

(assert (=> b!5183070 (= e!3229241 tp_is_empty!38613)))

(assert (=> b!5182832 (= tp!1453777 e!3229241)))

(assert (= (and b!5182832 (is-ElementMatch!14680 (regTwo!29872 r!7292))) b!5183070))

(assert (= (and b!5182832 (is-Concat!23525 (regTwo!29872 r!7292))) b!5183071))

(assert (= (and b!5182832 (is-Star!14680 (regTwo!29872 r!7292))) b!5183072))

(assert (= (and b!5182832 (is-Union!14680 (regTwo!29872 r!7292))) b!5183073))

(declare-fun b!5183074 () Bool)

(declare-fun e!3229242 () Bool)

(declare-fun tp!1453848 () Bool)

(declare-fun tp!1453849 () Bool)

(assert (=> b!5183074 (= e!3229242 (and tp!1453848 tp!1453849))))

(assert (=> b!5182839 (= tp!1453779 e!3229242)))

(assert (= (and b!5182839 (is-Cons!60215 (exprs!4564 (h!66664 zl!343)))) b!5183074))

(declare-fun b!5183078 () Bool)

(declare-fun e!3229243 () Bool)

(declare-fun tp!1453852 () Bool)

(declare-fun tp!1453853 () Bool)

(assert (=> b!5183078 (= e!3229243 (and tp!1453852 tp!1453853))))

(declare-fun b!5183076 () Bool)

(declare-fun tp!1453850 () Bool)

(declare-fun tp!1453854 () Bool)

(assert (=> b!5183076 (= e!3229243 (and tp!1453850 tp!1453854))))

(declare-fun b!5183077 () Bool)

(declare-fun tp!1453851 () Bool)

(assert (=> b!5183077 (= e!3229243 tp!1453851)))

(declare-fun b!5183075 () Bool)

(assert (=> b!5183075 (= e!3229243 tp_is_empty!38613)))

(assert (=> b!5182836 (= tp!1453776 e!3229243)))

(assert (= (and b!5182836 (is-ElementMatch!14680 (regOne!29873 r!7292))) b!5183075))

(assert (= (and b!5182836 (is-Concat!23525 (regOne!29873 r!7292))) b!5183076))

(assert (= (and b!5182836 (is-Star!14680 (regOne!29873 r!7292))) b!5183077))

(assert (= (and b!5182836 (is-Union!14680 (regOne!29873 r!7292))) b!5183078))

(declare-fun b!5183082 () Bool)

(declare-fun e!3229244 () Bool)

(declare-fun tp!1453857 () Bool)

(declare-fun tp!1453858 () Bool)

(assert (=> b!5183082 (= e!3229244 (and tp!1453857 tp!1453858))))

(declare-fun b!5183080 () Bool)

(declare-fun tp!1453855 () Bool)

(declare-fun tp!1453859 () Bool)

(assert (=> b!5183080 (= e!3229244 (and tp!1453855 tp!1453859))))

(declare-fun b!5183081 () Bool)

(declare-fun tp!1453856 () Bool)

(assert (=> b!5183081 (= e!3229244 tp!1453856)))

(declare-fun b!5183079 () Bool)

(assert (=> b!5183079 (= e!3229244 tp_is_empty!38613)))

(assert (=> b!5182836 (= tp!1453781 e!3229244)))

(assert (= (and b!5182836 (is-ElementMatch!14680 (regTwo!29873 r!7292))) b!5183079))

(assert (= (and b!5182836 (is-Concat!23525 (regTwo!29873 r!7292))) b!5183080))

(assert (= (and b!5182836 (is-Star!14680 (regTwo!29873 r!7292))) b!5183081))

(assert (= (and b!5182836 (is-Union!14680 (regTwo!29873 r!7292))) b!5183082))

(declare-fun b!5183090 () Bool)

(declare-fun e!3229250 () Bool)

(declare-fun tp!1453864 () Bool)

(assert (=> b!5183090 (= e!3229250 tp!1453864)))

(declare-fun b!5183089 () Bool)

(declare-fun e!3229249 () Bool)

(declare-fun tp!1453865 () Bool)

(assert (=> b!5183089 (= e!3229249 (and (inv!79948 (h!66664 (t!373493 zl!343))) e!3229250 tp!1453865))))

(assert (=> b!5182830 (= tp!1453780 e!3229249)))

(assert (= b!5183089 b!5183090))

(assert (= (and b!5182830 (is-Cons!60216 (t!373493 zl!343))) b!5183089))

(declare-fun m!6243030 () Bool)

(assert (=> b!5183089 m!6243030))

(declare-fun condSetEmpty!32581 () Bool)

(assert (=> setNonEmpty!32575 (= condSetEmpty!32581 (= setRest!32575 (as set.empty (Set Context!8128))))))

(declare-fun setRes!32581 () Bool)

(assert (=> setNonEmpty!32575 (= tp!1453783 setRes!32581)))

(declare-fun setIsEmpty!32581 () Bool)

(assert (=> setIsEmpty!32581 setRes!32581))

(declare-fun setElem!32581 () Context!8128)

(declare-fun setNonEmpty!32581 () Bool)

(declare-fun tp!1453870 () Bool)

(declare-fun e!3229260 () Bool)

(assert (=> setNonEmpty!32581 (= setRes!32581 (and tp!1453870 (inv!79948 setElem!32581) e!3229260))))

(declare-fun setRest!32581 () (Set Context!8128))

(assert (=> setNonEmpty!32581 (= setRest!32575 (set.union (set.insert setElem!32581 (as set.empty (Set Context!8128))) setRest!32581))))

(declare-fun b!5183109 () Bool)

(declare-fun tp!1453871 () Bool)

(assert (=> b!5183109 (= e!3229260 tp!1453871)))

(assert (= (and setNonEmpty!32575 condSetEmpty!32581) setIsEmpty!32581))

(assert (= (and setNonEmpty!32575 (not condSetEmpty!32581)) setNonEmpty!32581))

(assert (= setNonEmpty!32581 b!5183109))

(declare-fun m!6243032 () Bool)

(assert (=> setNonEmpty!32581 m!6243032))

(declare-fun b_lambda!201145 () Bool)

(assert (= b_lambda!201143 (or b!5182829 b_lambda!201145)))

(declare-fun bs!1208088 () Bool)

(declare-fun d!1675998 () Bool)

(assert (= bs!1208088 (and d!1675998 b!5182829)))

(assert (=> bs!1208088 (= (dynLambda!23895 lambda!259134 (h!66663 (exprs!4564 (h!66664 zl!343)))) (validRegex!6416 (h!66663 (exprs!4564 (h!66664 zl!343)))))))

(declare-fun m!6243034 () Bool)

(assert (=> bs!1208088 m!6243034))

(assert (=> b!5183040 d!1675998))

(push 1)

(assert (not bm!364238))

(assert (not d!1675990))

(assert (not bs!1208088))

(assert tp_is_empty!38613)

(assert (not b!5183090))

(assert (not b!5182901))

(assert (not b!5182946))

(assert (not b!5183073))

(assert (not setNonEmpty!32581))

(assert (not bm!364247))

(assert (not bm!364237))

(assert (not b!5183089))

(assert (not b!5183041))

(assert (not b!5183077))

(assert (not b!5183060))

(assert (not d!1675992))

(assert (not b!5183059))

(assert (not b!5182882))

(assert (not b!5183046))

(assert (not b!5183000))

(assert (not b!5183074))

(assert (not bm!364242))

(assert (not b!5183065))

(assert (not d!1675996))

(assert (not b!5183082))

(assert (not b!5183069))

(assert (not b!5183058))

(assert (not d!1675968))

(assert (not d!1675974))

(assert (not bm!364248))

(assert (not b!5182955))

(assert (not b!5182954))

(assert (not b!5183076))

(assert (not b!5182956))

(assert (not b!5183067))

(assert (not b!5183068))

(assert (not b!5183081))

(assert (not b!5183072))

(assert (not b!5183071))

(assert (not b!5182945))

(assert (not b!5182994))

(assert (not b!5183109))

(assert (not b!5182953))

(assert (not b_lambda!201145))

(assert (not b!5183078))

(assert (not b!5183080))

(assert (not d!1675978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

