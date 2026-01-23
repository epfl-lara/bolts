; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282638 () Bool)

(assert start!282638)

(declare-fun b!2903890 () Bool)

(declare-fun res!1199628 () Bool)

(declare-fun e!1833433 () Bool)

(assert (=> b!2903890 (=> (not res!1199628) (not e!1833433))))

(declare-datatypes ((C!17952 0))(
  ( (C!17953 (val!11010 Int)) )
))
(declare-datatypes ((Regex!8885 0))(
  ( (ElementMatch!8885 (c!473186 C!17952)) (Concat!14206 (regOne!18282 Regex!8885) (regTwo!18282 Regex!8885)) (EmptyExpr!8885) (Star!8885 (reg!9214 Regex!8885)) (EmptyLang!8885) (Union!8885 (regOne!18283 Regex!8885) (regTwo!18283 Regex!8885)) )
))
(declare-fun r!19097 () Regex!8885)

(declare-datatypes ((List!34686 0))(
  ( (Nil!34562) (Cons!34562 (h!39982 C!17952) (t!233729 List!34686)) )
))
(declare-fun prefix!1456 () List!34686)

(declare-fun validRegex!3658 (Regex!8885) Bool)

(declare-fun derivativeStep!2392 (Regex!8885 C!17952) Regex!8885)

(assert (=> b!2903890 (= res!1199628 (validRegex!3658 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))

(declare-fun b!2903891 () Bool)

(declare-fun res!1199629 () Bool)

(assert (=> b!2903891 (=> (not res!1199629) (not e!1833433))))

(declare-fun s!13418 () List!34686)

(declare-fun isPrefix!2722 (List!34686 List!34686) Bool)

(assert (=> b!2903891 (= res!1199629 (isPrefix!2722 prefix!1456 s!13418))))

(declare-fun b!2903892 () Bool)

(declare-fun e!1833430 () Bool)

(declare-fun tp!932334 () Bool)

(declare-fun tp!932335 () Bool)

(assert (=> b!2903892 (= e!1833430 (and tp!932334 tp!932335))))

(declare-fun b!2903893 () Bool)

(declare-fun e!1833431 () Bool)

(declare-fun tp_is_empty!15357 () Bool)

(declare-fun tp!932333 () Bool)

(assert (=> b!2903893 (= e!1833431 (and tp_is_empty!15357 tp!932333))))

(declare-fun b!2903894 () Bool)

(declare-fun res!1199625 () Bool)

(assert (=> b!2903894 (=> (not res!1199625) (not e!1833433))))

(get-info :version)

(assert (=> b!2903894 (= res!1199625 (not ((_ is Nil!34562) prefix!1456)))))

(declare-fun b!2903895 () Bool)

(declare-fun res!1199626 () Bool)

(assert (=> b!2903895 (=> (not res!1199626) (not e!1833433))))

(declare-fun prefixMatch!943 (Regex!8885 List!34686) Bool)

(assert (=> b!2903895 (= res!1199626 (not (prefixMatch!943 r!19097 prefix!1456)))))

(declare-fun b!2903896 () Bool)

(declare-fun tp!932330 () Bool)

(assert (=> b!2903896 (= e!1833430 tp!932330)))

(declare-fun b!2903897 () Bool)

(assert (=> b!2903897 (= e!1833430 tp_is_empty!15357)))

(declare-fun res!1199627 () Bool)

(assert (=> start!282638 (=> (not res!1199627) (not e!1833433))))

(assert (=> start!282638 (= res!1199627 (validRegex!3658 r!19097))))

(assert (=> start!282638 e!1833433))

(assert (=> start!282638 e!1833430))

(declare-fun e!1833432 () Bool)

(assert (=> start!282638 e!1833432))

(assert (=> start!282638 e!1833431))

(declare-fun b!2903898 () Bool)

(declare-fun tp!932332 () Bool)

(declare-fun tp!932331 () Bool)

(assert (=> b!2903898 (= e!1833430 (and tp!932332 tp!932331))))

(declare-fun b!2903899 () Bool)

(declare-fun tail!4646 (List!34686) List!34686)

(assert (=> b!2903899 (= e!1833433 (not (isPrefix!2722 (t!233729 prefix!1456) (tail!4646 s!13418))))))

(declare-fun b!2903900 () Bool)

(declare-fun tp!932329 () Bool)

(assert (=> b!2903900 (= e!1833432 (and tp_is_empty!15357 tp!932329))))

(assert (= (and start!282638 res!1199627) b!2903891))

(assert (= (and b!2903891 res!1199629) b!2903895))

(assert (= (and b!2903895 res!1199626) b!2903894))

(assert (= (and b!2903894 res!1199625) b!2903890))

(assert (= (and b!2903890 res!1199628) b!2903899))

(assert (= (and start!282638 ((_ is ElementMatch!8885) r!19097)) b!2903897))

(assert (= (and start!282638 ((_ is Concat!14206) r!19097)) b!2903892))

(assert (= (and start!282638 ((_ is Star!8885) r!19097)) b!2903896))

(assert (= (and start!282638 ((_ is Union!8885) r!19097)) b!2903898))

(assert (= (and start!282638 ((_ is Cons!34562) prefix!1456)) b!2903900))

(assert (= (and start!282638 ((_ is Cons!34562) s!13418)) b!2903893))

(declare-fun m!3307125 () Bool)

(assert (=> b!2903891 m!3307125))

(declare-fun m!3307127 () Bool)

(assert (=> b!2903890 m!3307127))

(assert (=> b!2903890 m!3307127))

(declare-fun m!3307129 () Bool)

(assert (=> b!2903890 m!3307129))

(declare-fun m!3307131 () Bool)

(assert (=> b!2903899 m!3307131))

(assert (=> b!2903899 m!3307131))

(declare-fun m!3307133 () Bool)

(assert (=> b!2903899 m!3307133))

(declare-fun m!3307135 () Bool)

(assert (=> b!2903895 m!3307135))

(declare-fun m!3307137 () Bool)

(assert (=> start!282638 m!3307137))

(check-sat (not b!2903896) tp_is_empty!15357 (not b!2903895) (not b!2903899) (not b!2903892) (not b!2903890) (not b!2903900) (not b!2903893) (not b!2903891) (not start!282638) (not b!2903898))
(check-sat)
(get-model)

(declare-fun b!2903937 () Bool)

(declare-fun res!1199651 () Bool)

(declare-fun e!1833464 () Bool)

(assert (=> b!2903937 (=> res!1199651 e!1833464)))

(assert (=> b!2903937 (= res!1199651 (not ((_ is Concat!14206) (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))

(declare-fun e!1833466 () Bool)

(assert (=> b!2903937 (= e!1833466 e!1833464)))

(declare-fun c!473196 () Bool)

(declare-fun call!189325 () Bool)

(declare-fun bm!189320 () Bool)

(declare-fun c!473195 () Bool)

(assert (=> bm!189320 (= call!189325 (validRegex!3658 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))

(declare-fun bm!189321 () Bool)

(declare-fun call!189327 () Bool)

(assert (=> bm!189321 (= call!189327 call!189325)))

(declare-fun b!2903938 () Bool)

(declare-fun e!1833462 () Bool)

(assert (=> b!2903938 (= e!1833462 e!1833466)))

(assert (=> b!2903938 (= c!473195 ((_ is Union!8885) (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))

(declare-fun d!835698 () Bool)

(declare-fun res!1199650 () Bool)

(declare-fun e!1833467 () Bool)

(assert (=> d!835698 (=> res!1199650 e!1833467)))

(assert (=> d!835698 (= res!1199650 ((_ is ElementMatch!8885) (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))

(assert (=> d!835698 (= (validRegex!3658 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) e!1833467)))

(declare-fun b!2903939 () Bool)

(assert (=> b!2903939 (= e!1833467 e!1833462)))

(assert (=> b!2903939 (= c!473196 ((_ is Star!8885) (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))

(declare-fun b!2903940 () Bool)

(declare-fun e!1833463 () Bool)

(assert (=> b!2903940 (= e!1833464 e!1833463)))

(declare-fun res!1199653 () Bool)

(assert (=> b!2903940 (=> (not res!1199653) (not e!1833463))))

(declare-fun call!189326 () Bool)

(assert (=> b!2903940 (= res!1199653 call!189326)))

(declare-fun b!2903941 () Bool)

(declare-fun e!1833465 () Bool)

(assert (=> b!2903941 (= e!1833465 call!189327)))

(declare-fun b!2903942 () Bool)

(declare-fun res!1199654 () Bool)

(assert (=> b!2903942 (=> (not res!1199654) (not e!1833465))))

(assert (=> b!2903942 (= res!1199654 call!189326)))

(assert (=> b!2903942 (= e!1833466 e!1833465)))

(declare-fun b!2903943 () Bool)

(assert (=> b!2903943 (= e!1833463 call!189327)))

(declare-fun bm!189322 () Bool)

(assert (=> bm!189322 (= call!189326 (validRegex!3658 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))

(declare-fun b!2903944 () Bool)

(declare-fun e!1833468 () Bool)

(assert (=> b!2903944 (= e!1833462 e!1833468)))

(declare-fun res!1199652 () Bool)

(declare-fun nullable!2775 (Regex!8885) Bool)

(assert (=> b!2903944 (= res!1199652 (not (nullable!2775 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))

(assert (=> b!2903944 (=> (not res!1199652) (not e!1833468))))

(declare-fun b!2903945 () Bool)

(assert (=> b!2903945 (= e!1833468 call!189325)))

(assert (= (and d!835698 (not res!1199650)) b!2903939))

(assert (= (and b!2903939 c!473196) b!2903944))

(assert (= (and b!2903939 (not c!473196)) b!2903938))

(assert (= (and b!2903944 res!1199652) b!2903945))

(assert (= (and b!2903938 c!473195) b!2903942))

(assert (= (and b!2903938 (not c!473195)) b!2903937))

(assert (= (and b!2903942 res!1199654) b!2903941))

(assert (= (and b!2903937 (not res!1199651)) b!2903940))

(assert (= (and b!2903940 res!1199653) b!2903943))

(assert (= (or b!2903942 b!2903940) bm!189322))

(assert (= (or b!2903941 b!2903943) bm!189321))

(assert (= (or b!2903945 bm!189321) bm!189320))

(declare-fun m!3307139 () Bool)

(assert (=> bm!189320 m!3307139))

(declare-fun m!3307141 () Bool)

(assert (=> bm!189322 m!3307141))

(declare-fun m!3307143 () Bool)

(assert (=> b!2903944 m!3307143))

(assert (=> b!2903890 d!835698))

(declare-fun b!2904002 () Bool)

(declare-fun c!473216 () Bool)

(assert (=> b!2904002 (= c!473216 (nullable!2775 (regOne!18282 r!19097)))))

(declare-fun e!1833505 () Regex!8885)

(declare-fun e!1833507 () Regex!8885)

(assert (=> b!2904002 (= e!1833505 e!1833507)))

(declare-fun bm!189337 () Bool)

(declare-fun call!189344 () Regex!8885)

(declare-fun call!189345 () Regex!8885)

(assert (=> bm!189337 (= call!189344 call!189345)))

(declare-fun d!835702 () Bool)

(declare-fun lt!1022402 () Regex!8885)

(assert (=> d!835702 (validRegex!3658 lt!1022402)))

(declare-fun e!1833506 () Regex!8885)

(assert (=> d!835702 (= lt!1022402 e!1833506)))

(declare-fun c!473215 () Bool)

(assert (=> d!835702 (= c!473215 (or ((_ is EmptyExpr!8885) r!19097) ((_ is EmptyLang!8885) r!19097)))))

(assert (=> d!835702 (validRegex!3658 r!19097)))

(assert (=> d!835702 (= (derivativeStep!2392 r!19097 (h!39982 prefix!1456)) lt!1022402)))

(declare-fun b!2904003 () Bool)

(declare-fun c!473218 () Bool)

(assert (=> b!2904003 (= c!473218 ((_ is Union!8885) r!19097))))

(declare-fun e!1833509 () Regex!8885)

(declare-fun e!1833508 () Regex!8885)

(assert (=> b!2904003 (= e!1833509 e!1833508)))

(declare-fun bm!189338 () Bool)

(declare-fun call!189342 () Regex!8885)

(assert (=> bm!189338 (= call!189345 call!189342)))

(declare-fun b!2904004 () Bool)

(assert (=> b!2904004 (= e!1833506 EmptyLang!8885)))

(declare-fun b!2904005 () Bool)

(declare-fun call!189343 () Regex!8885)

(assert (=> b!2904005 (= e!1833507 (Union!8885 (Concat!14206 call!189344 (regTwo!18282 r!19097)) call!189343))))

(declare-fun b!2904006 () Bool)

(assert (=> b!2904006 (= e!1833508 e!1833505)))

(declare-fun c!473214 () Bool)

(assert (=> b!2904006 (= c!473214 ((_ is Star!8885) r!19097))))

(declare-fun b!2904007 () Bool)

(assert (=> b!2904007 (= e!1833505 (Concat!14206 call!189345 r!19097))))

(declare-fun b!2904008 () Bool)

(assert (=> b!2904008 (= e!1833507 (Union!8885 (Concat!14206 call!189344 (regTwo!18282 r!19097)) EmptyLang!8885))))

(declare-fun bm!189339 () Bool)

(assert (=> bm!189339 (= call!189343 (derivativeStep!2392 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)) (h!39982 prefix!1456)))))

(declare-fun bm!189340 () Bool)

(assert (=> bm!189340 (= call!189342 (derivativeStep!2392 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))) (h!39982 prefix!1456)))))

(declare-fun b!2904009 () Bool)

(assert (=> b!2904009 (= e!1833506 e!1833509)))

(declare-fun c!473217 () Bool)

(assert (=> b!2904009 (= c!473217 ((_ is ElementMatch!8885) r!19097))))

(declare-fun b!2904010 () Bool)

(assert (=> b!2904010 (= e!1833508 (Union!8885 call!189342 call!189343))))

(declare-fun b!2904011 () Bool)

(assert (=> b!2904011 (= e!1833509 (ite (= (h!39982 prefix!1456) (c!473186 r!19097)) EmptyExpr!8885 EmptyLang!8885))))

(assert (= (and d!835702 c!473215) b!2904004))

(assert (= (and d!835702 (not c!473215)) b!2904009))

(assert (= (and b!2904009 c!473217) b!2904011))

(assert (= (and b!2904009 (not c!473217)) b!2904003))

(assert (= (and b!2904003 c!473218) b!2904010))

(assert (= (and b!2904003 (not c!473218)) b!2904006))

(assert (= (and b!2904006 c!473214) b!2904007))

(assert (= (and b!2904006 (not c!473214)) b!2904002))

(assert (= (and b!2904002 c!473216) b!2904005))

(assert (= (and b!2904002 (not c!473216)) b!2904008))

(assert (= (or b!2904005 b!2904008) bm!189337))

(assert (= (or b!2904007 bm!189337) bm!189338))

(assert (= (or b!2904010 bm!189338) bm!189340))

(assert (= (or b!2904010 b!2904005) bm!189339))

(declare-fun m!3307177 () Bool)

(assert (=> b!2904002 m!3307177))

(declare-fun m!3307179 () Bool)

(assert (=> d!835702 m!3307179))

(assert (=> d!835702 m!3307137))

(declare-fun m!3307181 () Bool)

(assert (=> bm!189339 m!3307181))

(declare-fun m!3307183 () Bool)

(assert (=> bm!189340 m!3307183))

(assert (=> b!2903890 d!835702))

(declare-fun d!835712 () Bool)

(declare-fun c!473221 () Bool)

(declare-fun isEmpty!18874 (List!34686) Bool)

(assert (=> d!835712 (= c!473221 (isEmpty!18874 prefix!1456))))

(declare-fun e!1833512 () Bool)

(assert (=> d!835712 (= (prefixMatch!943 r!19097 prefix!1456) e!1833512)))

(declare-fun b!2904016 () Bool)

(declare-fun lostCause!864 (Regex!8885) Bool)

(assert (=> b!2904016 (= e!1833512 (not (lostCause!864 r!19097)))))

(declare-fun b!2904017 () Bool)

(declare-fun head!6417 (List!34686) C!17952)

(assert (=> b!2904017 (= e!1833512 (prefixMatch!943 (derivativeStep!2392 r!19097 (head!6417 prefix!1456)) (tail!4646 prefix!1456)))))

(assert (= (and d!835712 c!473221) b!2904016))

(assert (= (and d!835712 (not c!473221)) b!2904017))

(declare-fun m!3307185 () Bool)

(assert (=> d!835712 m!3307185))

(declare-fun m!3307187 () Bool)

(assert (=> b!2904016 m!3307187))

(declare-fun m!3307189 () Bool)

(assert (=> b!2904017 m!3307189))

(assert (=> b!2904017 m!3307189))

(declare-fun m!3307191 () Bool)

(assert (=> b!2904017 m!3307191))

(declare-fun m!3307193 () Bool)

(assert (=> b!2904017 m!3307193))

(assert (=> b!2904017 m!3307191))

(assert (=> b!2904017 m!3307193))

(declare-fun m!3307195 () Bool)

(assert (=> b!2904017 m!3307195))

(assert (=> b!2903895 d!835712))

(declare-fun b!2904020 () Bool)

(declare-fun res!1199678 () Bool)

(declare-fun e!1833515 () Bool)

(assert (=> b!2904020 (=> res!1199678 e!1833515)))

(assert (=> b!2904020 (= res!1199678 (not ((_ is Concat!14206) r!19097)))))

(declare-fun e!1833517 () Bool)

(assert (=> b!2904020 (= e!1833517 e!1833515)))

(declare-fun c!473222 () Bool)

(declare-fun call!189346 () Bool)

(declare-fun bm!189341 () Bool)

(declare-fun c!473223 () Bool)

(assert (=> bm!189341 (= call!189346 (validRegex!3658 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))

(declare-fun bm!189342 () Bool)

(declare-fun call!189348 () Bool)

(assert (=> bm!189342 (= call!189348 call!189346)))

(declare-fun b!2904021 () Bool)

(declare-fun e!1833513 () Bool)

(assert (=> b!2904021 (= e!1833513 e!1833517)))

(assert (=> b!2904021 (= c!473222 ((_ is Union!8885) r!19097))))

(declare-fun d!835714 () Bool)

(declare-fun res!1199677 () Bool)

(declare-fun e!1833518 () Bool)

(assert (=> d!835714 (=> res!1199677 e!1833518)))

(assert (=> d!835714 (= res!1199677 ((_ is ElementMatch!8885) r!19097))))

(assert (=> d!835714 (= (validRegex!3658 r!19097) e!1833518)))

(declare-fun b!2904022 () Bool)

(assert (=> b!2904022 (= e!1833518 e!1833513)))

(assert (=> b!2904022 (= c!473223 ((_ is Star!8885) r!19097))))

(declare-fun b!2904023 () Bool)

(declare-fun e!1833514 () Bool)

(assert (=> b!2904023 (= e!1833515 e!1833514)))

(declare-fun res!1199680 () Bool)

(assert (=> b!2904023 (=> (not res!1199680) (not e!1833514))))

(declare-fun call!189347 () Bool)

(assert (=> b!2904023 (= res!1199680 call!189347)))

(declare-fun b!2904024 () Bool)

(declare-fun e!1833516 () Bool)

(assert (=> b!2904024 (= e!1833516 call!189348)))

(declare-fun b!2904025 () Bool)

(declare-fun res!1199681 () Bool)

(assert (=> b!2904025 (=> (not res!1199681) (not e!1833516))))

(assert (=> b!2904025 (= res!1199681 call!189347)))

(assert (=> b!2904025 (= e!1833517 e!1833516)))

(declare-fun b!2904026 () Bool)

(assert (=> b!2904026 (= e!1833514 call!189348)))

(declare-fun bm!189343 () Bool)

(assert (=> bm!189343 (= call!189347 (validRegex!3658 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))))))

(declare-fun b!2904027 () Bool)

(declare-fun e!1833519 () Bool)

(assert (=> b!2904027 (= e!1833513 e!1833519)))

(declare-fun res!1199679 () Bool)

(assert (=> b!2904027 (= res!1199679 (not (nullable!2775 (reg!9214 r!19097))))))

(assert (=> b!2904027 (=> (not res!1199679) (not e!1833519))))

(declare-fun b!2904028 () Bool)

(assert (=> b!2904028 (= e!1833519 call!189346)))

(assert (= (and d!835714 (not res!1199677)) b!2904022))

(assert (= (and b!2904022 c!473223) b!2904027))

(assert (= (and b!2904022 (not c!473223)) b!2904021))

(assert (= (and b!2904027 res!1199679) b!2904028))

(assert (= (and b!2904021 c!473222) b!2904025))

(assert (= (and b!2904021 (not c!473222)) b!2904020))

(assert (= (and b!2904025 res!1199681) b!2904024))

(assert (= (and b!2904020 (not res!1199678)) b!2904023))

(assert (= (and b!2904023 res!1199680) b!2904026))

(assert (= (or b!2904025 b!2904023) bm!189343))

(assert (= (or b!2904024 b!2904026) bm!189342))

(assert (= (or b!2904028 bm!189342) bm!189341))

(declare-fun m!3307197 () Bool)

(assert (=> bm!189341 m!3307197))

(declare-fun m!3307199 () Bool)

(assert (=> bm!189343 m!3307199))

(declare-fun m!3307201 () Bool)

(assert (=> b!2904027 m!3307201))

(assert (=> start!282638 d!835714))

(declare-fun b!2904058 () Bool)

(declare-fun e!1833538 () Bool)

(declare-fun size!26366 (List!34686) Int)

(assert (=> b!2904058 (= e!1833538 (>= (size!26366 s!13418) (size!26366 prefix!1456)))))

(declare-fun b!2904057 () Bool)

(declare-fun e!1833536 () Bool)

(assert (=> b!2904057 (= e!1833536 (isPrefix!2722 (tail!4646 prefix!1456) (tail!4646 s!13418)))))

(declare-fun d!835716 () Bool)

(assert (=> d!835716 e!1833538))

(declare-fun res!1199691 () Bool)

(assert (=> d!835716 (=> res!1199691 e!1833538)))

(declare-fun lt!1022407 () Bool)

(assert (=> d!835716 (= res!1199691 (not lt!1022407))))

(declare-fun e!1833537 () Bool)

(assert (=> d!835716 (= lt!1022407 e!1833537)))

(declare-fun res!1199692 () Bool)

(assert (=> d!835716 (=> res!1199692 e!1833537)))

(assert (=> d!835716 (= res!1199692 ((_ is Nil!34562) prefix!1456))))

(assert (=> d!835716 (= (isPrefix!2722 prefix!1456 s!13418) lt!1022407)))

(declare-fun b!2904055 () Bool)

(assert (=> b!2904055 (= e!1833537 e!1833536)))

(declare-fun res!1199690 () Bool)

(assert (=> b!2904055 (=> (not res!1199690) (not e!1833536))))

(assert (=> b!2904055 (= res!1199690 (not ((_ is Nil!34562) s!13418)))))

(declare-fun b!2904056 () Bool)

(declare-fun res!1199693 () Bool)

(assert (=> b!2904056 (=> (not res!1199693) (not e!1833536))))

(assert (=> b!2904056 (= res!1199693 (= (head!6417 prefix!1456) (head!6417 s!13418)))))

(assert (= (and d!835716 (not res!1199692)) b!2904055))

(assert (= (and b!2904055 res!1199690) b!2904056))

(assert (= (and b!2904056 res!1199693) b!2904057))

(assert (= (and d!835716 (not res!1199691)) b!2904058))

(declare-fun m!3307203 () Bool)

(assert (=> b!2904058 m!3307203))

(declare-fun m!3307205 () Bool)

(assert (=> b!2904058 m!3307205))

(assert (=> b!2904057 m!3307193))

(assert (=> b!2904057 m!3307131))

(assert (=> b!2904057 m!3307193))

(assert (=> b!2904057 m!3307131))

(declare-fun m!3307207 () Bool)

(assert (=> b!2904057 m!3307207))

(assert (=> b!2904056 m!3307189))

(declare-fun m!3307209 () Bool)

(assert (=> b!2904056 m!3307209))

(assert (=> b!2903891 d!835716))

(declare-fun b!2904062 () Bool)

(declare-fun e!1833541 () Bool)

(assert (=> b!2904062 (= e!1833541 (>= (size!26366 (tail!4646 s!13418)) (size!26366 (t!233729 prefix!1456))))))

(declare-fun b!2904061 () Bool)

(declare-fun e!1833539 () Bool)

(assert (=> b!2904061 (= e!1833539 (isPrefix!2722 (tail!4646 (t!233729 prefix!1456)) (tail!4646 (tail!4646 s!13418))))))

(declare-fun d!835718 () Bool)

(assert (=> d!835718 e!1833541))

(declare-fun res!1199695 () Bool)

(assert (=> d!835718 (=> res!1199695 e!1833541)))

(declare-fun lt!1022408 () Bool)

(assert (=> d!835718 (= res!1199695 (not lt!1022408))))

(declare-fun e!1833540 () Bool)

(assert (=> d!835718 (= lt!1022408 e!1833540)))

(declare-fun res!1199696 () Bool)

(assert (=> d!835718 (=> res!1199696 e!1833540)))

(assert (=> d!835718 (= res!1199696 ((_ is Nil!34562) (t!233729 prefix!1456)))))

(assert (=> d!835718 (= (isPrefix!2722 (t!233729 prefix!1456) (tail!4646 s!13418)) lt!1022408)))

(declare-fun b!2904059 () Bool)

(assert (=> b!2904059 (= e!1833540 e!1833539)))

(declare-fun res!1199694 () Bool)

(assert (=> b!2904059 (=> (not res!1199694) (not e!1833539))))

(assert (=> b!2904059 (= res!1199694 (not ((_ is Nil!34562) (tail!4646 s!13418))))))

(declare-fun b!2904060 () Bool)

(declare-fun res!1199697 () Bool)

(assert (=> b!2904060 (=> (not res!1199697) (not e!1833539))))

(assert (=> b!2904060 (= res!1199697 (= (head!6417 (t!233729 prefix!1456)) (head!6417 (tail!4646 s!13418))))))

(assert (= (and d!835718 (not res!1199696)) b!2904059))

(assert (= (and b!2904059 res!1199694) b!2904060))

(assert (= (and b!2904060 res!1199697) b!2904061))

(assert (= (and d!835718 (not res!1199695)) b!2904062))

(assert (=> b!2904062 m!3307131))

(declare-fun m!3307211 () Bool)

(assert (=> b!2904062 m!3307211))

(declare-fun m!3307213 () Bool)

(assert (=> b!2904062 m!3307213))

(declare-fun m!3307215 () Bool)

(assert (=> b!2904061 m!3307215))

(assert (=> b!2904061 m!3307131))

(declare-fun m!3307217 () Bool)

(assert (=> b!2904061 m!3307217))

(assert (=> b!2904061 m!3307215))

(assert (=> b!2904061 m!3307217))

(declare-fun m!3307219 () Bool)

(assert (=> b!2904061 m!3307219))

(declare-fun m!3307221 () Bool)

(assert (=> b!2904060 m!3307221))

(assert (=> b!2904060 m!3307131))

(declare-fun m!3307223 () Bool)

(assert (=> b!2904060 m!3307223))

(assert (=> b!2903899 d!835718))

(declare-fun d!835720 () Bool)

(assert (=> d!835720 (= (tail!4646 s!13418) (t!233729 s!13418))))

(assert (=> b!2903899 d!835720))

(declare-fun b!2904077 () Bool)

(declare-fun e!1833549 () Bool)

(declare-fun tp!932338 () Bool)

(assert (=> b!2904077 (= e!1833549 (and tp_is_empty!15357 tp!932338))))

(assert (=> b!2903900 (= tp!932329 e!1833549)))

(assert (= (and b!2903900 ((_ is Cons!34562) (t!233729 prefix!1456))) b!2904077))

(declare-fun b!2904095 () Bool)

(declare-fun e!1833555 () Bool)

(declare-fun tp!932351 () Bool)

(declare-fun tp!932352 () Bool)

(assert (=> b!2904095 (= e!1833555 (and tp!932351 tp!932352))))

(declare-fun b!2904094 () Bool)

(declare-fun tp!932353 () Bool)

(assert (=> b!2904094 (= e!1833555 tp!932353)))

(assert (=> b!2903896 (= tp!932330 e!1833555)))

(declare-fun b!2904093 () Bool)

(declare-fun tp!932350 () Bool)

(declare-fun tp!932349 () Bool)

(assert (=> b!2904093 (= e!1833555 (and tp!932350 tp!932349))))

(declare-fun b!2904092 () Bool)

(assert (=> b!2904092 (= e!1833555 tp_is_empty!15357)))

(assert (= (and b!2903896 ((_ is ElementMatch!8885) (reg!9214 r!19097))) b!2904092))

(assert (= (and b!2903896 ((_ is Concat!14206) (reg!9214 r!19097))) b!2904093))

(assert (= (and b!2903896 ((_ is Star!8885) (reg!9214 r!19097))) b!2904094))

(assert (= (and b!2903896 ((_ is Union!8885) (reg!9214 r!19097))) b!2904095))

(declare-fun b!2904103 () Bool)

(declare-fun e!1833558 () Bool)

(declare-fun tp!932358 () Bool)

(declare-fun tp!932359 () Bool)

(assert (=> b!2904103 (= e!1833558 (and tp!932358 tp!932359))))

(declare-fun b!2904102 () Bool)

(declare-fun tp!932360 () Bool)

(assert (=> b!2904102 (= e!1833558 tp!932360)))

(assert (=> b!2903898 (= tp!932332 e!1833558)))

(declare-fun b!2904101 () Bool)

(declare-fun tp!932357 () Bool)

(declare-fun tp!932356 () Bool)

(assert (=> b!2904101 (= e!1833558 (and tp!932357 tp!932356))))

(declare-fun b!2904100 () Bool)

(assert (=> b!2904100 (= e!1833558 tp_is_empty!15357)))

(assert (= (and b!2903898 ((_ is ElementMatch!8885) (regOne!18283 r!19097))) b!2904100))

(assert (= (and b!2903898 ((_ is Concat!14206) (regOne!18283 r!19097))) b!2904101))

(assert (= (and b!2903898 ((_ is Star!8885) (regOne!18283 r!19097))) b!2904102))

(assert (= (and b!2903898 ((_ is Union!8885) (regOne!18283 r!19097))) b!2904103))

(declare-fun b!2904108 () Bool)

(declare-fun e!1833560 () Bool)

(declare-fun tp!932364 () Bool)

(declare-fun tp!932365 () Bool)

(assert (=> b!2904108 (= e!1833560 (and tp!932364 tp!932365))))

(declare-fun b!2904107 () Bool)

(declare-fun tp!932366 () Bool)

(assert (=> b!2904107 (= e!1833560 tp!932366)))

(assert (=> b!2903898 (= tp!932331 e!1833560)))

(declare-fun b!2904106 () Bool)

(declare-fun tp!932363 () Bool)

(declare-fun tp!932362 () Bool)

(assert (=> b!2904106 (= e!1833560 (and tp!932363 tp!932362))))

(declare-fun b!2904105 () Bool)

(assert (=> b!2904105 (= e!1833560 tp_is_empty!15357)))

(assert (= (and b!2903898 ((_ is ElementMatch!8885) (regTwo!18283 r!19097))) b!2904105))

(assert (= (and b!2903898 ((_ is Concat!14206) (regTwo!18283 r!19097))) b!2904106))

(assert (= (and b!2903898 ((_ is Star!8885) (regTwo!18283 r!19097))) b!2904107))

(assert (= (and b!2903898 ((_ is Union!8885) (regTwo!18283 r!19097))) b!2904108))

(declare-fun b!2904115 () Bool)

(declare-fun e!1833563 () Bool)

(declare-fun tp!932369 () Bool)

(assert (=> b!2904115 (= e!1833563 (and tp_is_empty!15357 tp!932369))))

(assert (=> b!2903893 (= tp!932333 e!1833563)))

(assert (= (and b!2903893 ((_ is Cons!34562) (t!233729 s!13418))) b!2904115))

(declare-fun b!2904121 () Bool)

(declare-fun e!1833564 () Bool)

(declare-fun tp!932374 () Bool)

(declare-fun tp!932375 () Bool)

(assert (=> b!2904121 (= e!1833564 (and tp!932374 tp!932375))))

(declare-fun b!2904120 () Bool)

(declare-fun tp!932376 () Bool)

(assert (=> b!2904120 (= e!1833564 tp!932376)))

(assert (=> b!2903892 (= tp!932334 e!1833564)))

(declare-fun b!2904119 () Bool)

(declare-fun tp!932373 () Bool)

(declare-fun tp!932372 () Bool)

(assert (=> b!2904119 (= e!1833564 (and tp!932373 tp!932372))))

(declare-fun b!2904118 () Bool)

(assert (=> b!2904118 (= e!1833564 tp_is_empty!15357)))

(assert (= (and b!2903892 ((_ is ElementMatch!8885) (regOne!18282 r!19097))) b!2904118))

(assert (= (and b!2903892 ((_ is Concat!14206) (regOne!18282 r!19097))) b!2904119))

(assert (= (and b!2903892 ((_ is Star!8885) (regOne!18282 r!19097))) b!2904120))

(assert (= (and b!2903892 ((_ is Union!8885) (regOne!18282 r!19097))) b!2904121))

(declare-fun b!2904127 () Bool)

(declare-fun e!1833565 () Bool)

(declare-fun tp!932385 () Bool)

(declare-fun tp!932386 () Bool)

(assert (=> b!2904127 (= e!1833565 (and tp!932385 tp!932386))))

(declare-fun b!2904126 () Bool)

(declare-fun tp!932387 () Bool)

(assert (=> b!2904126 (= e!1833565 tp!932387)))

(assert (=> b!2903892 (= tp!932335 e!1833565)))

(declare-fun b!2904125 () Bool)

(declare-fun tp!932384 () Bool)

(declare-fun tp!932383 () Bool)

(assert (=> b!2904125 (= e!1833565 (and tp!932384 tp!932383))))

(declare-fun b!2904124 () Bool)

(assert (=> b!2904124 (= e!1833565 tp_is_empty!15357)))

(assert (= (and b!2903892 ((_ is ElementMatch!8885) (regTwo!18282 r!19097))) b!2904124))

(assert (= (and b!2903892 ((_ is Concat!14206) (regTwo!18282 r!19097))) b!2904125))

(assert (= (and b!2903892 ((_ is Star!8885) (regTwo!18282 r!19097))) b!2904126))

(assert (= (and b!2903892 ((_ is Union!8885) (regTwo!18282 r!19097))) b!2904127))

(check-sat (not b!2904062) (not b!2904107) (not b!2904017) (not b!2904119) (not b!2904126) (not b!2904095) (not b!2904057) (not bm!189340) (not b!2904127) (not b!2904102) (not b!2904002) tp_is_empty!15357 (not b!2903944) (not b!2904077) (not b!2904060) (not b!2904058) (not bm!189322) (not b!2904108) (not d!835702) (not b!2904103) (not bm!189339) (not bm!189341) (not b!2904120) (not b!2904061) (not b!2904093) (not b!2904016) (not b!2904094) (not b!2904056) (not b!2904027) (not d!835712) (not b!2904121) (not b!2904115) (not b!2904106) (not bm!189320) (not bm!189343) (not b!2904101) (not b!2904125))
(check-sat)
(get-model)

(declare-fun d!835726 () Bool)

(declare-fun nullableFct!847 (Regex!8885) Bool)

(assert (=> d!835726 (= (nullable!2775 (regOne!18282 r!19097)) (nullableFct!847 (regOne!18282 r!19097)))))

(declare-fun bs!524045 () Bool)

(assert (= bs!524045 d!835726))

(declare-fun m!3307247 () Bool)

(assert (=> bs!524045 m!3307247))

(assert (=> b!2904002 d!835726))

(declare-fun b!2904149 () Bool)

(declare-fun res!1199703 () Bool)

(declare-fun e!1833574 () Bool)

(assert (=> b!2904149 (=> res!1199703 e!1833574)))

(assert (=> b!2904149 (= res!1199703 (not ((_ is Concat!14206) lt!1022402)))))

(declare-fun e!1833576 () Bool)

(assert (=> b!2904149 (= e!1833576 e!1833574)))

(declare-fun c!473239 () Bool)

(declare-fun c!473240 () Bool)

(declare-fun call!189361 () Bool)

(declare-fun bm!189356 () Bool)

(assert (=> bm!189356 (= call!189361 (validRegex!3658 (ite c!473240 (reg!9214 lt!1022402) (ite c!473239 (regTwo!18283 lt!1022402) (regTwo!18282 lt!1022402)))))))

(declare-fun bm!189357 () Bool)

(declare-fun call!189363 () Bool)

(assert (=> bm!189357 (= call!189363 call!189361)))

(declare-fun b!2904150 () Bool)

(declare-fun e!1833572 () Bool)

(assert (=> b!2904150 (= e!1833572 e!1833576)))

(assert (=> b!2904150 (= c!473239 ((_ is Union!8885) lt!1022402))))

(declare-fun d!835728 () Bool)

(declare-fun res!1199702 () Bool)

(declare-fun e!1833577 () Bool)

(assert (=> d!835728 (=> res!1199702 e!1833577)))

(assert (=> d!835728 (= res!1199702 ((_ is ElementMatch!8885) lt!1022402))))

(assert (=> d!835728 (= (validRegex!3658 lt!1022402) e!1833577)))

(declare-fun b!2904151 () Bool)

(assert (=> b!2904151 (= e!1833577 e!1833572)))

(assert (=> b!2904151 (= c!473240 ((_ is Star!8885) lt!1022402))))

(declare-fun b!2904152 () Bool)

(declare-fun e!1833573 () Bool)

(assert (=> b!2904152 (= e!1833574 e!1833573)))

(declare-fun res!1199705 () Bool)

(assert (=> b!2904152 (=> (not res!1199705) (not e!1833573))))

(declare-fun call!189362 () Bool)

(assert (=> b!2904152 (= res!1199705 call!189362)))

(declare-fun b!2904153 () Bool)

(declare-fun e!1833575 () Bool)

(assert (=> b!2904153 (= e!1833575 call!189363)))

(declare-fun b!2904154 () Bool)

(declare-fun res!1199706 () Bool)

(assert (=> b!2904154 (=> (not res!1199706) (not e!1833575))))

(assert (=> b!2904154 (= res!1199706 call!189362)))

(assert (=> b!2904154 (= e!1833576 e!1833575)))

(declare-fun b!2904155 () Bool)

(assert (=> b!2904155 (= e!1833573 call!189363)))

(declare-fun bm!189358 () Bool)

(assert (=> bm!189358 (= call!189362 (validRegex!3658 (ite c!473239 (regOne!18283 lt!1022402) (regOne!18282 lt!1022402))))))

(declare-fun b!2904156 () Bool)

(declare-fun e!1833578 () Bool)

(assert (=> b!2904156 (= e!1833572 e!1833578)))

(declare-fun res!1199704 () Bool)

(assert (=> b!2904156 (= res!1199704 (not (nullable!2775 (reg!9214 lt!1022402))))))

(assert (=> b!2904156 (=> (not res!1199704) (not e!1833578))))

(declare-fun b!2904157 () Bool)

(assert (=> b!2904157 (= e!1833578 call!189361)))

(assert (= (and d!835728 (not res!1199702)) b!2904151))

(assert (= (and b!2904151 c!473240) b!2904156))

(assert (= (and b!2904151 (not c!473240)) b!2904150))

(assert (= (and b!2904156 res!1199704) b!2904157))

(assert (= (and b!2904150 c!473239) b!2904154))

(assert (= (and b!2904150 (not c!473239)) b!2904149))

(assert (= (and b!2904154 res!1199706) b!2904153))

(assert (= (and b!2904149 (not res!1199703)) b!2904152))

(assert (= (and b!2904152 res!1199705) b!2904155))

(assert (= (or b!2904154 b!2904152) bm!189358))

(assert (= (or b!2904153 b!2904155) bm!189357))

(assert (= (or b!2904157 bm!189357) bm!189356))

(declare-fun m!3307249 () Bool)

(assert (=> bm!189356 m!3307249))

(declare-fun m!3307251 () Bool)

(assert (=> bm!189358 m!3307251))

(declare-fun m!3307253 () Bool)

(assert (=> b!2904156 m!3307253))

(assert (=> d!835702 d!835728))

(assert (=> d!835702 d!835714))

(declare-fun b!2904158 () Bool)

(declare-fun res!1199708 () Bool)

(declare-fun e!1833581 () Bool)

(assert (=> b!2904158 (=> res!1199708 e!1833581)))

(assert (=> b!2904158 (= res!1199708 (not ((_ is Concat!14206) (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097)))))))

(declare-fun e!1833583 () Bool)

(assert (=> b!2904158 (= e!1833583 e!1833581)))

(declare-fun bm!189359 () Bool)

(declare-fun call!189364 () Bool)

(declare-fun c!473242 () Bool)

(declare-fun c!473241 () Bool)

(assert (=> bm!189359 (= call!189364 (validRegex!3658 (ite c!473242 (reg!9214 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))) (ite c!473241 (regTwo!18283 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))) (regTwo!18282 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097)))))))))

(declare-fun bm!189360 () Bool)

(declare-fun call!189366 () Bool)

(assert (=> bm!189360 (= call!189366 call!189364)))

(declare-fun b!2904159 () Bool)

(declare-fun e!1833579 () Bool)

(assert (=> b!2904159 (= e!1833579 e!1833583)))

(assert (=> b!2904159 (= c!473241 ((_ is Union!8885) (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))))))

(declare-fun d!835730 () Bool)

(declare-fun res!1199707 () Bool)

(declare-fun e!1833584 () Bool)

(assert (=> d!835730 (=> res!1199707 e!1833584)))

(assert (=> d!835730 (= res!1199707 ((_ is ElementMatch!8885) (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))))))

(assert (=> d!835730 (= (validRegex!3658 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))) e!1833584)))

(declare-fun b!2904160 () Bool)

(assert (=> b!2904160 (= e!1833584 e!1833579)))

(assert (=> b!2904160 (= c!473242 ((_ is Star!8885) (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))))))

(declare-fun b!2904161 () Bool)

(declare-fun e!1833580 () Bool)

(assert (=> b!2904161 (= e!1833581 e!1833580)))

(declare-fun res!1199710 () Bool)

(assert (=> b!2904161 (=> (not res!1199710) (not e!1833580))))

(declare-fun call!189365 () Bool)

(assert (=> b!2904161 (= res!1199710 call!189365)))

(declare-fun b!2904162 () Bool)

(declare-fun e!1833582 () Bool)

(assert (=> b!2904162 (= e!1833582 call!189366)))

(declare-fun b!2904163 () Bool)

(declare-fun res!1199711 () Bool)

(assert (=> b!2904163 (=> (not res!1199711) (not e!1833582))))

(assert (=> b!2904163 (= res!1199711 call!189365)))

(assert (=> b!2904163 (= e!1833583 e!1833582)))

(declare-fun b!2904164 () Bool)

(assert (=> b!2904164 (= e!1833580 call!189366)))

(declare-fun bm!189361 () Bool)

(assert (=> bm!189361 (= call!189365 (validRegex!3658 (ite c!473241 (regOne!18283 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))) (regOne!18282 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))))))))

(declare-fun b!2904165 () Bool)

(declare-fun e!1833585 () Bool)

(assert (=> b!2904165 (= e!1833579 e!1833585)))

(declare-fun res!1199709 () Bool)

(assert (=> b!2904165 (= res!1199709 (not (nullable!2775 (reg!9214 (ite c!473222 (regOne!18283 r!19097) (regOne!18282 r!19097))))))))

(assert (=> b!2904165 (=> (not res!1199709) (not e!1833585))))

(declare-fun b!2904166 () Bool)

(assert (=> b!2904166 (= e!1833585 call!189364)))

(assert (= (and d!835730 (not res!1199707)) b!2904160))

(assert (= (and b!2904160 c!473242) b!2904165))

(assert (= (and b!2904160 (not c!473242)) b!2904159))

(assert (= (and b!2904165 res!1199709) b!2904166))

(assert (= (and b!2904159 c!473241) b!2904163))

(assert (= (and b!2904159 (not c!473241)) b!2904158))

(assert (= (and b!2904163 res!1199711) b!2904162))

(assert (= (and b!2904158 (not res!1199708)) b!2904161))

(assert (= (and b!2904161 res!1199710) b!2904164))

(assert (= (or b!2904163 b!2904161) bm!189361))

(assert (= (or b!2904162 b!2904164) bm!189360))

(assert (= (or b!2904166 bm!189360) bm!189359))

(declare-fun m!3307255 () Bool)

(assert (=> bm!189359 m!3307255))

(declare-fun m!3307257 () Bool)

(assert (=> bm!189361 m!3307257))

(declare-fun m!3307259 () Bool)

(assert (=> b!2904165 m!3307259))

(assert (=> bm!189343 d!835730))

(declare-fun b!2904167 () Bool)

(declare-fun res!1199713 () Bool)

(declare-fun e!1833588 () Bool)

(assert (=> b!2904167 (=> res!1199713 e!1833588)))

(assert (=> b!2904167 (= res!1199713 (not ((_ is Concat!14206) (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))

(declare-fun e!1833590 () Bool)

(assert (=> b!2904167 (= e!1833590 e!1833588)))

(declare-fun c!473244 () Bool)

(declare-fun c!473243 () Bool)

(declare-fun bm!189362 () Bool)

(declare-fun call!189367 () Bool)

(assert (=> bm!189362 (= call!189367 (validRegex!3658 (ite c!473244 (reg!9214 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))) (ite c!473243 (regTwo!18283 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))) (regTwo!18282 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))))

(declare-fun bm!189363 () Bool)

(declare-fun call!189369 () Bool)

(assert (=> bm!189363 (= call!189369 call!189367)))

(declare-fun b!2904168 () Bool)

(declare-fun e!1833586 () Bool)

(assert (=> b!2904168 (= e!1833586 e!1833590)))

(assert (=> b!2904168 (= c!473243 ((_ is Union!8885) (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))

(declare-fun d!835732 () Bool)

(declare-fun res!1199712 () Bool)

(declare-fun e!1833591 () Bool)

(assert (=> d!835732 (=> res!1199712 e!1833591)))

(assert (=> d!835732 (= res!1199712 ((_ is ElementMatch!8885) (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))

(assert (=> d!835732 (= (validRegex!3658 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))) e!1833591)))

(declare-fun b!2904169 () Bool)

(assert (=> b!2904169 (= e!1833591 e!1833586)))

(assert (=> b!2904169 (= c!473244 ((_ is Star!8885) (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))

(declare-fun b!2904170 () Bool)

(declare-fun e!1833587 () Bool)

(assert (=> b!2904170 (= e!1833588 e!1833587)))

(declare-fun res!1199715 () Bool)

(assert (=> b!2904170 (=> (not res!1199715) (not e!1833587))))

(declare-fun call!189368 () Bool)

(assert (=> b!2904170 (= res!1199715 call!189368)))

(declare-fun b!2904171 () Bool)

(declare-fun e!1833589 () Bool)

(assert (=> b!2904171 (= e!1833589 call!189369)))

(declare-fun b!2904172 () Bool)

(declare-fun res!1199716 () Bool)

(assert (=> b!2904172 (=> (not res!1199716) (not e!1833589))))

(assert (=> b!2904172 (= res!1199716 call!189368)))

(assert (=> b!2904172 (= e!1833590 e!1833589)))

(declare-fun b!2904173 () Bool)

(assert (=> b!2904173 (= e!1833587 call!189369)))

(declare-fun bm!189364 () Bool)

(assert (=> bm!189364 (= call!189368 (validRegex!3658 (ite c!473243 (regOne!18283 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))) (regOne!18282 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))))

(declare-fun b!2904174 () Bool)

(declare-fun e!1833592 () Bool)

(assert (=> b!2904174 (= e!1833586 e!1833592)))

(declare-fun res!1199714 () Bool)

(assert (=> b!2904174 (= res!1199714 (not (nullable!2775 (reg!9214 (ite c!473195 (regOne!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regOne!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))))

(assert (=> b!2904174 (=> (not res!1199714) (not e!1833592))))

(declare-fun b!2904175 () Bool)

(assert (=> b!2904175 (= e!1833592 call!189367)))

(assert (= (and d!835732 (not res!1199712)) b!2904169))

(assert (= (and b!2904169 c!473244) b!2904174))

(assert (= (and b!2904169 (not c!473244)) b!2904168))

(assert (= (and b!2904174 res!1199714) b!2904175))

(assert (= (and b!2904168 c!473243) b!2904172))

(assert (= (and b!2904168 (not c!473243)) b!2904167))

(assert (= (and b!2904172 res!1199716) b!2904171))

(assert (= (and b!2904167 (not res!1199713)) b!2904170))

(assert (= (and b!2904170 res!1199715) b!2904173))

(assert (= (or b!2904172 b!2904170) bm!189364))

(assert (= (or b!2904171 b!2904173) bm!189363))

(assert (= (or b!2904175 bm!189363) bm!189362))

(declare-fun m!3307261 () Bool)

(assert (=> bm!189362 m!3307261))

(declare-fun m!3307263 () Bool)

(assert (=> bm!189364 m!3307263))

(declare-fun m!3307265 () Bool)

(assert (=> b!2904174 m!3307265))

(assert (=> bm!189322 d!835732))

(declare-fun d!835734 () Bool)

(assert (=> d!835734 (= (nullable!2775 (reg!9214 r!19097)) (nullableFct!847 (reg!9214 r!19097)))))

(declare-fun bs!524046 () Bool)

(assert (= bs!524046 d!835734))

(declare-fun m!3307267 () Bool)

(assert (=> bs!524046 m!3307267))

(assert (=> b!2904027 d!835734))

(declare-fun d!835736 () Bool)

(assert (=> d!835736 (= (nullable!2775 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))) (nullableFct!847 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))

(declare-fun bs!524047 () Bool)

(assert (= bs!524047 d!835736))

(declare-fun m!3307269 () Bool)

(assert (=> bs!524047 m!3307269))

(assert (=> b!2903944 d!835736))

(declare-fun b!2904176 () Bool)

(declare-fun res!1199718 () Bool)

(declare-fun e!1833595 () Bool)

(assert (=> b!2904176 (=> res!1199718 e!1833595)))

(assert (=> b!2904176 (= res!1199718 (not ((_ is Concat!14206) (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))))))

(declare-fun e!1833597 () Bool)

(assert (=> b!2904176 (= e!1833597 e!1833595)))

(declare-fun c!473246 () Bool)

(declare-fun c!473245 () Bool)

(declare-fun call!189370 () Bool)

(declare-fun bm!189365 () Bool)

(assert (=> bm!189365 (= call!189370 (validRegex!3658 (ite c!473246 (reg!9214 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) (ite c!473245 (regTwo!18283 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) (regTwo!18282 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))))))))

(declare-fun bm!189366 () Bool)

(declare-fun call!189372 () Bool)

(assert (=> bm!189366 (= call!189372 call!189370)))

(declare-fun b!2904177 () Bool)

(declare-fun e!1833593 () Bool)

(assert (=> b!2904177 (= e!1833593 e!1833597)))

(assert (=> b!2904177 (= c!473245 ((_ is Union!8885) (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))

(declare-fun d!835738 () Bool)

(declare-fun res!1199717 () Bool)

(declare-fun e!1833598 () Bool)

(assert (=> d!835738 (=> res!1199717 e!1833598)))

(assert (=> d!835738 (= res!1199717 ((_ is ElementMatch!8885) (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))

(assert (=> d!835738 (= (validRegex!3658 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) e!1833598)))

(declare-fun b!2904178 () Bool)

(assert (=> b!2904178 (= e!1833598 e!1833593)))

(assert (=> b!2904178 (= c!473246 ((_ is Star!8885) (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))

(declare-fun b!2904179 () Bool)

(declare-fun e!1833594 () Bool)

(assert (=> b!2904179 (= e!1833595 e!1833594)))

(declare-fun res!1199720 () Bool)

(assert (=> b!2904179 (=> (not res!1199720) (not e!1833594))))

(declare-fun call!189371 () Bool)

(assert (=> b!2904179 (= res!1199720 call!189371)))

(declare-fun b!2904180 () Bool)

(declare-fun e!1833596 () Bool)

(assert (=> b!2904180 (= e!1833596 call!189372)))

(declare-fun b!2904181 () Bool)

(declare-fun res!1199721 () Bool)

(assert (=> b!2904181 (=> (not res!1199721) (not e!1833596))))

(assert (=> b!2904181 (= res!1199721 call!189371)))

(assert (=> b!2904181 (= e!1833597 e!1833596)))

(declare-fun b!2904182 () Bool)

(assert (=> b!2904182 (= e!1833594 call!189372)))

(declare-fun bm!189367 () Bool)

(assert (=> bm!189367 (= call!189371 (validRegex!3658 (ite c!473245 (regOne!18283 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) (regOne!18282 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))))

(declare-fun b!2904183 () Bool)

(declare-fun e!1833599 () Bool)

(assert (=> b!2904183 (= e!1833593 e!1833599)))

(declare-fun res!1199719 () Bool)

(assert (=> b!2904183 (= res!1199719 (not (nullable!2775 (reg!9214 (ite c!473223 (reg!9214 r!19097) (ite c!473222 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))))

(assert (=> b!2904183 (=> (not res!1199719) (not e!1833599))))

(declare-fun b!2904184 () Bool)

(assert (=> b!2904184 (= e!1833599 call!189370)))

(assert (= (and d!835738 (not res!1199717)) b!2904178))

(assert (= (and b!2904178 c!473246) b!2904183))

(assert (= (and b!2904178 (not c!473246)) b!2904177))

(assert (= (and b!2904183 res!1199719) b!2904184))

(assert (= (and b!2904177 c!473245) b!2904181))

(assert (= (and b!2904177 (not c!473245)) b!2904176))

(assert (= (and b!2904181 res!1199721) b!2904180))

(assert (= (and b!2904176 (not res!1199718)) b!2904179))

(assert (= (and b!2904179 res!1199720) b!2904182))

(assert (= (or b!2904181 b!2904179) bm!189367))

(assert (= (or b!2904180 b!2904182) bm!189366))

(assert (= (or b!2904184 bm!189366) bm!189365))

(declare-fun m!3307271 () Bool)

(assert (=> bm!189365 m!3307271))

(declare-fun m!3307273 () Bool)

(assert (=> bm!189367 m!3307273))

(declare-fun m!3307275 () Bool)

(assert (=> b!2904183 m!3307275))

(assert (=> bm!189341 d!835738))

(declare-fun b!2904185 () Bool)

(declare-fun res!1199723 () Bool)

(declare-fun e!1833602 () Bool)

(assert (=> b!2904185 (=> res!1199723 e!1833602)))

(assert (=> b!2904185 (= res!1199723 (not ((_ is Concat!14206) (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))))

(declare-fun e!1833604 () Bool)

(assert (=> b!2904185 (= e!1833604 e!1833602)))

(declare-fun bm!189368 () Bool)

(declare-fun call!189373 () Bool)

(declare-fun c!473247 () Bool)

(declare-fun c!473248 () Bool)

(assert (=> bm!189368 (= call!189373 (validRegex!3658 (ite c!473248 (reg!9214 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))) (ite c!473247 (regTwo!18283 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))) (regTwo!18282 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))))))))))))

(declare-fun bm!189369 () Bool)

(declare-fun call!189375 () Bool)

(assert (=> bm!189369 (= call!189375 call!189373)))

(declare-fun b!2904186 () Bool)

(declare-fun e!1833600 () Bool)

(assert (=> b!2904186 (= e!1833600 e!1833604)))

(assert (=> b!2904186 (= c!473247 ((_ is Union!8885) (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))

(declare-fun d!835740 () Bool)

(declare-fun res!1199722 () Bool)

(declare-fun e!1833605 () Bool)

(assert (=> d!835740 (=> res!1199722 e!1833605)))

(assert (=> d!835740 (= res!1199722 ((_ is ElementMatch!8885) (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))

(assert (=> d!835740 (= (validRegex!3658 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))) e!1833605)))

(declare-fun b!2904187 () Bool)

(assert (=> b!2904187 (= e!1833605 e!1833600)))

(assert (=> b!2904187 (= c!473248 ((_ is Star!8885) (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))

(declare-fun b!2904188 () Bool)

(declare-fun e!1833601 () Bool)

(assert (=> b!2904188 (= e!1833602 e!1833601)))

(declare-fun res!1199725 () Bool)

(assert (=> b!2904188 (=> (not res!1199725) (not e!1833601))))

(declare-fun call!189374 () Bool)

(assert (=> b!2904188 (= res!1199725 call!189374)))

(declare-fun b!2904189 () Bool)

(declare-fun e!1833603 () Bool)

(assert (=> b!2904189 (= e!1833603 call!189375)))

(declare-fun b!2904190 () Bool)

(declare-fun res!1199726 () Bool)

(assert (=> b!2904190 (=> (not res!1199726) (not e!1833603))))

(assert (=> b!2904190 (= res!1199726 call!189374)))

(assert (=> b!2904190 (= e!1833604 e!1833603)))

(declare-fun b!2904191 () Bool)

(assert (=> b!2904191 (= e!1833601 call!189375)))

(declare-fun bm!189370 () Bool)

(assert (=> bm!189370 (= call!189374 (validRegex!3658 (ite c!473247 (regOne!18283 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))) (regOne!18282 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))))

(declare-fun b!2904192 () Bool)

(declare-fun e!1833606 () Bool)

(assert (=> b!2904192 (= e!1833600 e!1833606)))

(declare-fun res!1199724 () Bool)

(assert (=> b!2904192 (= res!1199724 (not (nullable!2775 (reg!9214 (ite c!473196 (reg!9214 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (ite c!473195 (regTwo!18283 (derivativeStep!2392 r!19097 (h!39982 prefix!1456))) (regTwo!18282 (derivativeStep!2392 r!19097 (h!39982 prefix!1456)))))))))))

(assert (=> b!2904192 (=> (not res!1199724) (not e!1833606))))

(declare-fun b!2904193 () Bool)

(assert (=> b!2904193 (= e!1833606 call!189373)))

(assert (= (and d!835740 (not res!1199722)) b!2904187))

(assert (= (and b!2904187 c!473248) b!2904192))

(assert (= (and b!2904187 (not c!473248)) b!2904186))

(assert (= (and b!2904192 res!1199724) b!2904193))

(assert (= (and b!2904186 c!473247) b!2904190))

(assert (= (and b!2904186 (not c!473247)) b!2904185))

(assert (= (and b!2904190 res!1199726) b!2904189))

(assert (= (and b!2904185 (not res!1199723)) b!2904188))

(assert (= (and b!2904188 res!1199725) b!2904191))

(assert (= (or b!2904190 b!2904188) bm!189370))

(assert (= (or b!2904189 b!2904191) bm!189369))

(assert (= (or b!2904193 bm!189369) bm!189368))

(declare-fun m!3307277 () Bool)

(assert (=> bm!189368 m!3307277))

(declare-fun m!3307279 () Bool)

(assert (=> bm!189370 m!3307279))

(declare-fun m!3307281 () Bool)

(assert (=> b!2904192 m!3307281))

(assert (=> bm!189320 d!835740))

(declare-fun d!835742 () Bool)

(declare-fun lostCauseFct!225 (Regex!8885) Bool)

(assert (=> d!835742 (= (lostCause!864 r!19097) (lostCauseFct!225 r!19097))))

(declare-fun bs!524048 () Bool)

(assert (= bs!524048 d!835742))

(declare-fun m!3307283 () Bool)

(assert (=> bs!524048 m!3307283))

(assert (=> b!2904016 d!835742))

(declare-fun d!835744 () Bool)

(declare-fun c!473249 () Bool)

(assert (=> d!835744 (= c!473249 (isEmpty!18874 (tail!4646 prefix!1456)))))

(declare-fun e!1833607 () Bool)

(assert (=> d!835744 (= (prefixMatch!943 (derivativeStep!2392 r!19097 (head!6417 prefix!1456)) (tail!4646 prefix!1456)) e!1833607)))

(declare-fun b!2904194 () Bool)

(assert (=> b!2904194 (= e!1833607 (not (lostCause!864 (derivativeStep!2392 r!19097 (head!6417 prefix!1456)))))))

(declare-fun b!2904195 () Bool)

(assert (=> b!2904195 (= e!1833607 (prefixMatch!943 (derivativeStep!2392 (derivativeStep!2392 r!19097 (head!6417 prefix!1456)) (head!6417 (tail!4646 prefix!1456))) (tail!4646 (tail!4646 prefix!1456))))))

(assert (= (and d!835744 c!473249) b!2904194))

(assert (= (and d!835744 (not c!473249)) b!2904195))

(assert (=> d!835744 m!3307193))

(declare-fun m!3307285 () Bool)

(assert (=> d!835744 m!3307285))

(assert (=> b!2904194 m!3307191))

(declare-fun m!3307287 () Bool)

(assert (=> b!2904194 m!3307287))

(assert (=> b!2904195 m!3307193))

(declare-fun m!3307289 () Bool)

(assert (=> b!2904195 m!3307289))

(assert (=> b!2904195 m!3307191))

(assert (=> b!2904195 m!3307289))

(declare-fun m!3307291 () Bool)

(assert (=> b!2904195 m!3307291))

(assert (=> b!2904195 m!3307193))

(declare-fun m!3307293 () Bool)

(assert (=> b!2904195 m!3307293))

(assert (=> b!2904195 m!3307291))

(assert (=> b!2904195 m!3307293))

(declare-fun m!3307295 () Bool)

(assert (=> b!2904195 m!3307295))

(assert (=> b!2904017 d!835744))

(declare-fun b!2904196 () Bool)

(declare-fun c!473252 () Bool)

(assert (=> b!2904196 (= c!473252 (nullable!2775 (regOne!18282 r!19097)))))

(declare-fun e!1833608 () Regex!8885)

(declare-fun e!1833610 () Regex!8885)

(assert (=> b!2904196 (= e!1833608 e!1833610)))

(declare-fun bm!189371 () Bool)

(declare-fun call!189378 () Regex!8885)

(declare-fun call!189379 () Regex!8885)

(assert (=> bm!189371 (= call!189378 call!189379)))

(declare-fun d!835746 () Bool)

(declare-fun lt!1022411 () Regex!8885)

(assert (=> d!835746 (validRegex!3658 lt!1022411)))

(declare-fun e!1833609 () Regex!8885)

(assert (=> d!835746 (= lt!1022411 e!1833609)))

(declare-fun c!473251 () Bool)

(assert (=> d!835746 (= c!473251 (or ((_ is EmptyExpr!8885) r!19097) ((_ is EmptyLang!8885) r!19097)))))

(assert (=> d!835746 (validRegex!3658 r!19097)))

(assert (=> d!835746 (= (derivativeStep!2392 r!19097 (head!6417 prefix!1456)) lt!1022411)))

(declare-fun b!2904197 () Bool)

(declare-fun c!473254 () Bool)

(assert (=> b!2904197 (= c!473254 ((_ is Union!8885) r!19097))))

(declare-fun e!1833612 () Regex!8885)

(declare-fun e!1833611 () Regex!8885)

(assert (=> b!2904197 (= e!1833612 e!1833611)))

(declare-fun bm!189372 () Bool)

(declare-fun call!189376 () Regex!8885)

(assert (=> bm!189372 (= call!189379 call!189376)))

(declare-fun b!2904198 () Bool)

(assert (=> b!2904198 (= e!1833609 EmptyLang!8885)))

(declare-fun b!2904199 () Bool)

(declare-fun call!189377 () Regex!8885)

(assert (=> b!2904199 (= e!1833610 (Union!8885 (Concat!14206 call!189378 (regTwo!18282 r!19097)) call!189377))))

(declare-fun b!2904200 () Bool)

(assert (=> b!2904200 (= e!1833611 e!1833608)))

(declare-fun c!473250 () Bool)

(assert (=> b!2904200 (= c!473250 ((_ is Star!8885) r!19097))))

(declare-fun b!2904201 () Bool)

(assert (=> b!2904201 (= e!1833608 (Concat!14206 call!189379 r!19097))))

(declare-fun b!2904202 () Bool)

(assert (=> b!2904202 (= e!1833610 (Union!8885 (Concat!14206 call!189378 (regTwo!18282 r!19097)) EmptyLang!8885))))

(declare-fun bm!189373 () Bool)

(assert (=> bm!189373 (= call!189377 (derivativeStep!2392 (ite c!473254 (regTwo!18283 r!19097) (regTwo!18282 r!19097)) (head!6417 prefix!1456)))))

(declare-fun bm!189374 () Bool)

(assert (=> bm!189374 (= call!189376 (derivativeStep!2392 (ite c!473254 (regOne!18283 r!19097) (ite c!473250 (reg!9214 r!19097) (regOne!18282 r!19097))) (head!6417 prefix!1456)))))

(declare-fun b!2904203 () Bool)

(assert (=> b!2904203 (= e!1833609 e!1833612)))

(declare-fun c!473253 () Bool)

(assert (=> b!2904203 (= c!473253 ((_ is ElementMatch!8885) r!19097))))

(declare-fun b!2904204 () Bool)

(assert (=> b!2904204 (= e!1833611 (Union!8885 call!189376 call!189377))))

(declare-fun b!2904205 () Bool)

(assert (=> b!2904205 (= e!1833612 (ite (= (head!6417 prefix!1456) (c!473186 r!19097)) EmptyExpr!8885 EmptyLang!8885))))

(assert (= (and d!835746 c!473251) b!2904198))

(assert (= (and d!835746 (not c!473251)) b!2904203))

(assert (= (and b!2904203 c!473253) b!2904205))

(assert (= (and b!2904203 (not c!473253)) b!2904197))

(assert (= (and b!2904197 c!473254) b!2904204))

(assert (= (and b!2904197 (not c!473254)) b!2904200))

(assert (= (and b!2904200 c!473250) b!2904201))

(assert (= (and b!2904200 (not c!473250)) b!2904196))

(assert (= (and b!2904196 c!473252) b!2904199))

(assert (= (and b!2904196 (not c!473252)) b!2904202))

(assert (= (or b!2904199 b!2904202) bm!189371))

(assert (= (or b!2904201 bm!189371) bm!189372))

(assert (= (or b!2904204 bm!189372) bm!189374))

(assert (= (or b!2904204 b!2904199) bm!189373))

(assert (=> b!2904196 m!3307177))

(declare-fun m!3307297 () Bool)

(assert (=> d!835746 m!3307297))

(assert (=> d!835746 m!3307137))

(assert (=> bm!189373 m!3307189))

(declare-fun m!3307299 () Bool)

(assert (=> bm!189373 m!3307299))

(assert (=> bm!189374 m!3307189))

(declare-fun m!3307301 () Bool)

(assert (=> bm!189374 m!3307301))

(assert (=> b!2904017 d!835746))

(declare-fun d!835748 () Bool)

(assert (=> d!835748 (= (head!6417 prefix!1456) (h!39982 prefix!1456))))

(assert (=> b!2904017 d!835748))

(declare-fun d!835750 () Bool)

(assert (=> d!835750 (= (tail!4646 prefix!1456) (t!233729 prefix!1456))))

(assert (=> b!2904017 d!835750))

(assert (=> b!2904056 d!835748))

(declare-fun d!835752 () Bool)

(assert (=> d!835752 (= (head!6417 s!13418) (h!39982 s!13418))))

(assert (=> b!2904056 d!835752))

(declare-fun d!835754 () Bool)

(assert (=> d!835754 (= (head!6417 (t!233729 prefix!1456)) (h!39982 (t!233729 prefix!1456)))))

(assert (=> b!2904060 d!835754))

(declare-fun d!835756 () Bool)

(assert (=> d!835756 (= (head!6417 (tail!4646 s!13418)) (h!39982 (tail!4646 s!13418)))))

(assert (=> b!2904060 d!835756))

(declare-fun b!2904209 () Bool)

(declare-fun e!1833615 () Bool)

(assert (=> b!2904209 (= e!1833615 (>= (size!26366 (tail!4646 s!13418)) (size!26366 (tail!4646 prefix!1456))))))

(declare-fun b!2904208 () Bool)

(declare-fun e!1833613 () Bool)

(assert (=> b!2904208 (= e!1833613 (isPrefix!2722 (tail!4646 (tail!4646 prefix!1456)) (tail!4646 (tail!4646 s!13418))))))

(declare-fun d!835758 () Bool)

(assert (=> d!835758 e!1833615))

(declare-fun res!1199728 () Bool)

(assert (=> d!835758 (=> res!1199728 e!1833615)))

(declare-fun lt!1022412 () Bool)

(assert (=> d!835758 (= res!1199728 (not lt!1022412))))

(declare-fun e!1833614 () Bool)

(assert (=> d!835758 (= lt!1022412 e!1833614)))

(declare-fun res!1199729 () Bool)

(assert (=> d!835758 (=> res!1199729 e!1833614)))

(assert (=> d!835758 (= res!1199729 ((_ is Nil!34562) (tail!4646 prefix!1456)))))

(assert (=> d!835758 (= (isPrefix!2722 (tail!4646 prefix!1456) (tail!4646 s!13418)) lt!1022412)))

(declare-fun b!2904206 () Bool)

(assert (=> b!2904206 (= e!1833614 e!1833613)))

(declare-fun res!1199727 () Bool)

(assert (=> b!2904206 (=> (not res!1199727) (not e!1833613))))

(assert (=> b!2904206 (= res!1199727 (not ((_ is Nil!34562) (tail!4646 s!13418))))))

(declare-fun b!2904207 () Bool)

(declare-fun res!1199730 () Bool)

(assert (=> b!2904207 (=> (not res!1199730) (not e!1833613))))

(assert (=> b!2904207 (= res!1199730 (= (head!6417 (tail!4646 prefix!1456)) (head!6417 (tail!4646 s!13418))))))

(assert (= (and d!835758 (not res!1199729)) b!2904206))

(assert (= (and b!2904206 res!1199727) b!2904207))

(assert (= (and b!2904207 res!1199730) b!2904208))

(assert (= (and d!835758 (not res!1199728)) b!2904209))

(assert (=> b!2904209 m!3307131))

(assert (=> b!2904209 m!3307211))

(assert (=> b!2904209 m!3307193))

(declare-fun m!3307303 () Bool)

(assert (=> b!2904209 m!3307303))

(assert (=> b!2904208 m!3307193))

(assert (=> b!2904208 m!3307293))

(assert (=> b!2904208 m!3307131))

(assert (=> b!2904208 m!3307217))

(assert (=> b!2904208 m!3307293))

(assert (=> b!2904208 m!3307217))

(declare-fun m!3307305 () Bool)

(assert (=> b!2904208 m!3307305))

(assert (=> b!2904207 m!3307193))

(assert (=> b!2904207 m!3307289))

(assert (=> b!2904207 m!3307131))

(assert (=> b!2904207 m!3307223))

(assert (=> b!2904057 d!835758))

(assert (=> b!2904057 d!835750))

(assert (=> b!2904057 d!835720))

(declare-fun d!835760 () Bool)

(declare-fun lt!1022415 () Int)

(assert (=> d!835760 (>= lt!1022415 0)))

(declare-fun e!1833618 () Int)

(assert (=> d!835760 (= lt!1022415 e!1833618)))

(declare-fun c!473257 () Bool)

(assert (=> d!835760 (= c!473257 ((_ is Nil!34562) s!13418))))

(assert (=> d!835760 (= (size!26366 s!13418) lt!1022415)))

(declare-fun b!2904214 () Bool)

(assert (=> b!2904214 (= e!1833618 0)))

(declare-fun b!2904215 () Bool)

(assert (=> b!2904215 (= e!1833618 (+ 1 (size!26366 (t!233729 s!13418))))))

(assert (= (and d!835760 c!473257) b!2904214))

(assert (= (and d!835760 (not c!473257)) b!2904215))

(declare-fun m!3307307 () Bool)

(assert (=> b!2904215 m!3307307))

(assert (=> b!2904058 d!835760))

(declare-fun d!835762 () Bool)

(declare-fun lt!1022416 () Int)

(assert (=> d!835762 (>= lt!1022416 0)))

(declare-fun e!1833619 () Int)

(assert (=> d!835762 (= lt!1022416 e!1833619)))

(declare-fun c!473258 () Bool)

(assert (=> d!835762 (= c!473258 ((_ is Nil!34562) prefix!1456))))

(assert (=> d!835762 (= (size!26366 prefix!1456) lt!1022416)))

(declare-fun b!2904216 () Bool)

(assert (=> b!2904216 (= e!1833619 0)))

(declare-fun b!2904217 () Bool)

(assert (=> b!2904217 (= e!1833619 (+ 1 (size!26366 (t!233729 prefix!1456))))))

(assert (= (and d!835762 c!473258) b!2904216))

(assert (= (and d!835762 (not c!473258)) b!2904217))

(assert (=> b!2904217 m!3307213))

(assert (=> b!2904058 d!835762))

(declare-fun b!2904221 () Bool)

(declare-fun e!1833622 () Bool)

(assert (=> b!2904221 (= e!1833622 (>= (size!26366 (tail!4646 (tail!4646 s!13418))) (size!26366 (tail!4646 (t!233729 prefix!1456)))))))

(declare-fun b!2904220 () Bool)

(declare-fun e!1833620 () Bool)

(assert (=> b!2904220 (= e!1833620 (isPrefix!2722 (tail!4646 (tail!4646 (t!233729 prefix!1456))) (tail!4646 (tail!4646 (tail!4646 s!13418)))))))

(declare-fun d!835764 () Bool)

(assert (=> d!835764 e!1833622))

(declare-fun res!1199732 () Bool)

(assert (=> d!835764 (=> res!1199732 e!1833622)))

(declare-fun lt!1022417 () Bool)

(assert (=> d!835764 (= res!1199732 (not lt!1022417))))

(declare-fun e!1833621 () Bool)

(assert (=> d!835764 (= lt!1022417 e!1833621)))

(declare-fun res!1199733 () Bool)

(assert (=> d!835764 (=> res!1199733 e!1833621)))

(assert (=> d!835764 (= res!1199733 ((_ is Nil!34562) (tail!4646 (t!233729 prefix!1456))))))

(assert (=> d!835764 (= (isPrefix!2722 (tail!4646 (t!233729 prefix!1456)) (tail!4646 (tail!4646 s!13418))) lt!1022417)))

(declare-fun b!2904218 () Bool)

(assert (=> b!2904218 (= e!1833621 e!1833620)))

(declare-fun res!1199731 () Bool)

(assert (=> b!2904218 (=> (not res!1199731) (not e!1833620))))

(assert (=> b!2904218 (= res!1199731 (not ((_ is Nil!34562) (tail!4646 (tail!4646 s!13418)))))))

(declare-fun b!2904219 () Bool)

(declare-fun res!1199734 () Bool)

(assert (=> b!2904219 (=> (not res!1199734) (not e!1833620))))

(assert (=> b!2904219 (= res!1199734 (= (head!6417 (tail!4646 (t!233729 prefix!1456))) (head!6417 (tail!4646 (tail!4646 s!13418)))))))

(assert (= (and d!835764 (not res!1199733)) b!2904218))

(assert (= (and b!2904218 res!1199731) b!2904219))

(assert (= (and b!2904219 res!1199734) b!2904220))

(assert (= (and d!835764 (not res!1199732)) b!2904221))

(assert (=> b!2904221 m!3307217))

(declare-fun m!3307309 () Bool)

(assert (=> b!2904221 m!3307309))

(assert (=> b!2904221 m!3307215))

(declare-fun m!3307311 () Bool)

(assert (=> b!2904221 m!3307311))

(assert (=> b!2904220 m!3307215))

(declare-fun m!3307313 () Bool)

(assert (=> b!2904220 m!3307313))

(assert (=> b!2904220 m!3307217))

(declare-fun m!3307315 () Bool)

(assert (=> b!2904220 m!3307315))

(assert (=> b!2904220 m!3307313))

(assert (=> b!2904220 m!3307315))

(declare-fun m!3307317 () Bool)

(assert (=> b!2904220 m!3307317))

(assert (=> b!2904219 m!3307215))

(declare-fun m!3307319 () Bool)

(assert (=> b!2904219 m!3307319))

(assert (=> b!2904219 m!3307217))

(declare-fun m!3307321 () Bool)

(assert (=> b!2904219 m!3307321))

(assert (=> b!2904061 d!835764))

(declare-fun d!835766 () Bool)

(assert (=> d!835766 (= (tail!4646 (t!233729 prefix!1456)) (t!233729 (t!233729 prefix!1456)))))

(assert (=> b!2904061 d!835766))

(declare-fun d!835768 () Bool)

(assert (=> d!835768 (= (tail!4646 (tail!4646 s!13418)) (t!233729 (tail!4646 s!13418)))))

(assert (=> b!2904061 d!835768))

(declare-fun d!835770 () Bool)

(declare-fun lt!1022418 () Int)

(assert (=> d!835770 (>= lt!1022418 0)))

(declare-fun e!1833623 () Int)

(assert (=> d!835770 (= lt!1022418 e!1833623)))

(declare-fun c!473259 () Bool)

(assert (=> d!835770 (= c!473259 ((_ is Nil!34562) (tail!4646 s!13418)))))

(assert (=> d!835770 (= (size!26366 (tail!4646 s!13418)) lt!1022418)))

(declare-fun b!2904222 () Bool)

(assert (=> b!2904222 (= e!1833623 0)))

(declare-fun b!2904223 () Bool)

(assert (=> b!2904223 (= e!1833623 (+ 1 (size!26366 (t!233729 (tail!4646 s!13418)))))))

(assert (= (and d!835770 c!473259) b!2904222))

(assert (= (and d!835770 (not c!473259)) b!2904223))

(declare-fun m!3307323 () Bool)

(assert (=> b!2904223 m!3307323))

(assert (=> b!2904062 d!835770))

(declare-fun d!835772 () Bool)

(declare-fun lt!1022419 () Int)

(assert (=> d!835772 (>= lt!1022419 0)))

(declare-fun e!1833624 () Int)

(assert (=> d!835772 (= lt!1022419 e!1833624)))

(declare-fun c!473260 () Bool)

(assert (=> d!835772 (= c!473260 ((_ is Nil!34562) (t!233729 prefix!1456)))))

(assert (=> d!835772 (= (size!26366 (t!233729 prefix!1456)) lt!1022419)))

(declare-fun b!2904224 () Bool)

(assert (=> b!2904224 (= e!1833624 0)))

(declare-fun b!2904225 () Bool)

(assert (=> b!2904225 (= e!1833624 (+ 1 (size!26366 (t!233729 (t!233729 prefix!1456)))))))

(assert (= (and d!835772 c!473260) b!2904224))

(assert (= (and d!835772 (not c!473260)) b!2904225))

(declare-fun m!3307325 () Bool)

(assert (=> b!2904225 m!3307325))

(assert (=> b!2904062 d!835772))

(declare-fun b!2904226 () Bool)

(declare-fun c!473263 () Bool)

(assert (=> b!2904226 (= c!473263 (nullable!2775 (regOne!18282 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))

(declare-fun e!1833625 () Regex!8885)

(declare-fun e!1833627 () Regex!8885)

(assert (=> b!2904226 (= e!1833625 e!1833627)))

(declare-fun bm!189375 () Bool)

(declare-fun call!189382 () Regex!8885)

(declare-fun call!189383 () Regex!8885)

(assert (=> bm!189375 (= call!189382 call!189383)))

(declare-fun d!835774 () Bool)

(declare-fun lt!1022420 () Regex!8885)

(assert (=> d!835774 (validRegex!3658 lt!1022420)))

(declare-fun e!1833626 () Regex!8885)

(assert (=> d!835774 (= lt!1022420 e!1833626)))

(declare-fun c!473262 () Bool)

(assert (=> d!835774 (= c!473262 (or ((_ is EmptyExpr!8885) (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))) ((_ is EmptyLang!8885) (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))))

(assert (=> d!835774 (validRegex!3658 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))))

(assert (=> d!835774 (= (derivativeStep!2392 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)) (h!39982 prefix!1456)) lt!1022420)))

(declare-fun b!2904227 () Bool)

(declare-fun c!473265 () Bool)

(assert (=> b!2904227 (= c!473265 ((_ is Union!8885) (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))))

(declare-fun e!1833629 () Regex!8885)

(declare-fun e!1833628 () Regex!8885)

(assert (=> b!2904227 (= e!1833629 e!1833628)))

(declare-fun bm!189376 () Bool)

(declare-fun call!189380 () Regex!8885)

(assert (=> bm!189376 (= call!189383 call!189380)))

(declare-fun b!2904228 () Bool)

(assert (=> b!2904228 (= e!1833626 EmptyLang!8885)))

(declare-fun call!189381 () Regex!8885)

(declare-fun b!2904229 () Bool)

(assert (=> b!2904229 (= e!1833627 (Union!8885 (Concat!14206 call!189382 (regTwo!18282 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) call!189381))))

(declare-fun b!2904230 () Bool)

(assert (=> b!2904230 (= e!1833628 e!1833625)))

(declare-fun c!473261 () Bool)

(assert (=> b!2904230 (= c!473261 ((_ is Star!8885) (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))))

(declare-fun b!2904231 () Bool)

(assert (=> b!2904231 (= e!1833625 (Concat!14206 call!189383 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))))

(declare-fun b!2904232 () Bool)

(assert (=> b!2904232 (= e!1833627 (Union!8885 (Concat!14206 call!189382 (regTwo!18282 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) EmptyLang!8885))))

(declare-fun bm!189377 () Bool)

(assert (=> bm!189377 (= call!189381 (derivativeStep!2392 (ite c!473265 (regTwo!18283 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))) (regTwo!18282 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) (h!39982 prefix!1456)))))

(declare-fun bm!189378 () Bool)

(assert (=> bm!189378 (= call!189380 (derivativeStep!2392 (ite c!473265 (regOne!18283 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))) (ite c!473261 (reg!9214 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))) (regOne!18282 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))) (h!39982 prefix!1456)))))

(declare-fun b!2904233 () Bool)

(assert (=> b!2904233 (= e!1833626 e!1833629)))

(declare-fun c!473264 () Bool)

(assert (=> b!2904233 (= c!473264 ((_ is ElementMatch!8885) (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097))))))

(declare-fun b!2904234 () Bool)

(assert (=> b!2904234 (= e!1833628 (Union!8885 call!189380 call!189381))))

(declare-fun b!2904235 () Bool)

(assert (=> b!2904235 (= e!1833629 (ite (= (h!39982 prefix!1456) (c!473186 (ite c!473218 (regTwo!18283 r!19097) (regTwo!18282 r!19097)))) EmptyExpr!8885 EmptyLang!8885))))

(assert (= (and d!835774 c!473262) b!2904228))

(assert (= (and d!835774 (not c!473262)) b!2904233))

(assert (= (and b!2904233 c!473264) b!2904235))

(assert (= (and b!2904233 (not c!473264)) b!2904227))

(assert (= (and b!2904227 c!473265) b!2904234))

(assert (= (and b!2904227 (not c!473265)) b!2904230))

(assert (= (and b!2904230 c!473261) b!2904231))

(assert (= (and b!2904230 (not c!473261)) b!2904226))

(assert (= (and b!2904226 c!473263) b!2904229))

(assert (= (and b!2904226 (not c!473263)) b!2904232))

(assert (= (or b!2904229 b!2904232) bm!189375))

(assert (= (or b!2904231 bm!189375) bm!189376))

(assert (= (or b!2904234 bm!189376) bm!189378))

(assert (= (or b!2904234 b!2904229) bm!189377))

(declare-fun m!3307327 () Bool)

(assert (=> b!2904226 m!3307327))

(declare-fun m!3307329 () Bool)

(assert (=> d!835774 m!3307329))

(declare-fun m!3307331 () Bool)

(assert (=> d!835774 m!3307331))

(declare-fun m!3307333 () Bool)

(assert (=> bm!189377 m!3307333))

(declare-fun m!3307335 () Bool)

(assert (=> bm!189378 m!3307335))

(assert (=> bm!189339 d!835774))

(declare-fun c!473268 () Bool)

(declare-fun b!2904236 () Bool)

(assert (=> b!2904236 (= c!473268 (nullable!2775 (regOne!18282 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))))))

(declare-fun e!1833630 () Regex!8885)

(declare-fun e!1833632 () Regex!8885)

(assert (=> b!2904236 (= e!1833630 e!1833632)))

(declare-fun bm!189379 () Bool)

(declare-fun call!189386 () Regex!8885)

(declare-fun call!189387 () Regex!8885)

(assert (=> bm!189379 (= call!189386 call!189387)))

(declare-fun d!835776 () Bool)

(declare-fun lt!1022421 () Regex!8885)

(assert (=> d!835776 (validRegex!3658 lt!1022421)))

(declare-fun e!1833631 () Regex!8885)

(assert (=> d!835776 (= lt!1022421 e!1833631)))

(declare-fun c!473267 () Bool)

(assert (=> d!835776 (= c!473267 (or ((_ is EmptyExpr!8885) (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))) ((_ is EmptyLang!8885) (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))))))

(assert (=> d!835776 (validRegex!3658 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))))

(assert (=> d!835776 (= (derivativeStep!2392 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))) (h!39982 prefix!1456)) lt!1022421)))

(declare-fun b!2904237 () Bool)

(declare-fun c!473270 () Bool)

(assert (=> b!2904237 (= c!473270 ((_ is Union!8885) (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))))))

(declare-fun e!1833634 () Regex!8885)

(declare-fun e!1833633 () Regex!8885)

(assert (=> b!2904237 (= e!1833634 e!1833633)))

(declare-fun bm!189380 () Bool)

(declare-fun call!189384 () Regex!8885)

(assert (=> bm!189380 (= call!189387 call!189384)))

(declare-fun b!2904238 () Bool)

(assert (=> b!2904238 (= e!1833631 EmptyLang!8885)))

(declare-fun b!2904239 () Bool)

(declare-fun call!189385 () Regex!8885)

(assert (=> b!2904239 (= e!1833632 (Union!8885 (Concat!14206 call!189386 (regTwo!18282 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))) call!189385))))

(declare-fun b!2904240 () Bool)

(assert (=> b!2904240 (= e!1833633 e!1833630)))

(declare-fun c!473266 () Bool)

(assert (=> b!2904240 (= c!473266 ((_ is Star!8885) (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))))))

(declare-fun b!2904241 () Bool)

(assert (=> b!2904241 (= e!1833630 (Concat!14206 call!189387 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))))))

(declare-fun b!2904242 () Bool)

(assert (=> b!2904242 (= e!1833632 (Union!8885 (Concat!14206 call!189386 (regTwo!18282 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))) EmptyLang!8885))))

(declare-fun bm!189381 () Bool)

(assert (=> bm!189381 (= call!189385 (derivativeStep!2392 (ite c!473270 (regTwo!18283 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))) (regTwo!18282 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))) (h!39982 prefix!1456)))))

(declare-fun bm!189382 () Bool)

(assert (=> bm!189382 (= call!189384 (derivativeStep!2392 (ite c!473270 (regOne!18283 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))) (ite c!473266 (reg!9214 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))) (regOne!18282 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))))) (h!39982 prefix!1456)))))

(declare-fun b!2904243 () Bool)

(assert (=> b!2904243 (= e!1833631 e!1833634)))

(declare-fun c!473269 () Bool)

(assert (=> b!2904243 (= c!473269 ((_ is ElementMatch!8885) (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097)))))))

(declare-fun b!2904244 () Bool)

(assert (=> b!2904244 (= e!1833633 (Union!8885 call!189384 call!189385))))

(declare-fun b!2904245 () Bool)

(assert (=> b!2904245 (= e!1833634 (ite (= (h!39982 prefix!1456) (c!473186 (ite c!473218 (regOne!18283 r!19097) (ite c!473214 (reg!9214 r!19097) (regOne!18282 r!19097))))) EmptyExpr!8885 EmptyLang!8885))))

(assert (= (and d!835776 c!473267) b!2904238))

(assert (= (and d!835776 (not c!473267)) b!2904243))

(assert (= (and b!2904243 c!473269) b!2904245))

(assert (= (and b!2904243 (not c!473269)) b!2904237))

(assert (= (and b!2904237 c!473270) b!2904244))

(assert (= (and b!2904237 (not c!473270)) b!2904240))

(assert (= (and b!2904240 c!473266) b!2904241))

(assert (= (and b!2904240 (not c!473266)) b!2904236))

(assert (= (and b!2904236 c!473268) b!2904239))

(assert (= (and b!2904236 (not c!473268)) b!2904242))

(assert (= (or b!2904239 b!2904242) bm!189379))

(assert (= (or b!2904241 bm!189379) bm!189380))

(assert (= (or b!2904244 bm!189380) bm!189382))

(assert (= (or b!2904244 b!2904239) bm!189381))

(declare-fun m!3307337 () Bool)

(assert (=> b!2904236 m!3307337))

(declare-fun m!3307339 () Bool)

(assert (=> d!835776 m!3307339))

(declare-fun m!3307341 () Bool)

(assert (=> d!835776 m!3307341))

(declare-fun m!3307343 () Bool)

(assert (=> bm!189381 m!3307343))

(declare-fun m!3307345 () Bool)

(assert (=> bm!189382 m!3307345))

(assert (=> bm!189340 d!835776))

(declare-fun d!835778 () Bool)

(assert (=> d!835778 (= (isEmpty!18874 prefix!1456) ((_ is Nil!34562) prefix!1456))))

(assert (=> d!835712 d!835778))

(declare-fun b!2904249 () Bool)

(declare-fun e!1833635 () Bool)

(declare-fun tp!932416 () Bool)

(declare-fun tp!932417 () Bool)

(assert (=> b!2904249 (= e!1833635 (and tp!932416 tp!932417))))

(declare-fun b!2904248 () Bool)

(declare-fun tp!932418 () Bool)

(assert (=> b!2904248 (= e!1833635 tp!932418)))

(assert (=> b!2904103 (= tp!932358 e!1833635)))

(declare-fun b!2904247 () Bool)

(declare-fun tp!932415 () Bool)

(declare-fun tp!932414 () Bool)

(assert (=> b!2904247 (= e!1833635 (and tp!932415 tp!932414))))

(declare-fun b!2904246 () Bool)

(assert (=> b!2904246 (= e!1833635 tp_is_empty!15357)))

(assert (= (and b!2904103 ((_ is ElementMatch!8885) (regOne!18283 (regOne!18283 r!19097)))) b!2904246))

(assert (= (and b!2904103 ((_ is Concat!14206) (regOne!18283 (regOne!18283 r!19097)))) b!2904247))

(assert (= (and b!2904103 ((_ is Star!8885) (regOne!18283 (regOne!18283 r!19097)))) b!2904248))

(assert (= (and b!2904103 ((_ is Union!8885) (regOne!18283 (regOne!18283 r!19097)))) b!2904249))

(declare-fun b!2904253 () Bool)

(declare-fun e!1833636 () Bool)

(declare-fun tp!932421 () Bool)

(declare-fun tp!932422 () Bool)

(assert (=> b!2904253 (= e!1833636 (and tp!932421 tp!932422))))

(declare-fun b!2904252 () Bool)

(declare-fun tp!932423 () Bool)

(assert (=> b!2904252 (= e!1833636 tp!932423)))

(assert (=> b!2904103 (= tp!932359 e!1833636)))

(declare-fun b!2904251 () Bool)

(declare-fun tp!932420 () Bool)

(declare-fun tp!932419 () Bool)

(assert (=> b!2904251 (= e!1833636 (and tp!932420 tp!932419))))

(declare-fun b!2904250 () Bool)

(assert (=> b!2904250 (= e!1833636 tp_is_empty!15357)))

(assert (= (and b!2904103 ((_ is ElementMatch!8885) (regTwo!18283 (regOne!18283 r!19097)))) b!2904250))

(assert (= (and b!2904103 ((_ is Concat!14206) (regTwo!18283 (regOne!18283 r!19097)))) b!2904251))

(assert (= (and b!2904103 ((_ is Star!8885) (regTwo!18283 (regOne!18283 r!19097)))) b!2904252))

(assert (= (and b!2904103 ((_ is Union!8885) (regTwo!18283 (regOne!18283 r!19097)))) b!2904253))

(declare-fun b!2904257 () Bool)

(declare-fun e!1833637 () Bool)

(declare-fun tp!932426 () Bool)

(declare-fun tp!932427 () Bool)

(assert (=> b!2904257 (= e!1833637 (and tp!932426 tp!932427))))

(declare-fun b!2904256 () Bool)

(declare-fun tp!932428 () Bool)

(assert (=> b!2904256 (= e!1833637 tp!932428)))

(assert (=> b!2904120 (= tp!932376 e!1833637)))

(declare-fun b!2904255 () Bool)

(declare-fun tp!932425 () Bool)

(declare-fun tp!932424 () Bool)

(assert (=> b!2904255 (= e!1833637 (and tp!932425 tp!932424))))

(declare-fun b!2904254 () Bool)

(assert (=> b!2904254 (= e!1833637 tp_is_empty!15357)))

(assert (= (and b!2904120 ((_ is ElementMatch!8885) (reg!9214 (regOne!18282 r!19097)))) b!2904254))

(assert (= (and b!2904120 ((_ is Concat!14206) (reg!9214 (regOne!18282 r!19097)))) b!2904255))

(assert (= (and b!2904120 ((_ is Star!8885) (reg!9214 (regOne!18282 r!19097)))) b!2904256))

(assert (= (and b!2904120 ((_ is Union!8885) (reg!9214 (regOne!18282 r!19097)))) b!2904257))

(declare-fun b!2904261 () Bool)

(declare-fun e!1833638 () Bool)

(declare-fun tp!932431 () Bool)

(declare-fun tp!932432 () Bool)

(assert (=> b!2904261 (= e!1833638 (and tp!932431 tp!932432))))

(declare-fun b!2904260 () Bool)

(declare-fun tp!932433 () Bool)

(assert (=> b!2904260 (= e!1833638 tp!932433)))

(assert (=> b!2904106 (= tp!932363 e!1833638)))

(declare-fun b!2904259 () Bool)

(declare-fun tp!932430 () Bool)

(declare-fun tp!932429 () Bool)

(assert (=> b!2904259 (= e!1833638 (and tp!932430 tp!932429))))

(declare-fun b!2904258 () Bool)

(assert (=> b!2904258 (= e!1833638 tp_is_empty!15357)))

(assert (= (and b!2904106 ((_ is ElementMatch!8885) (regOne!18282 (regTwo!18283 r!19097)))) b!2904258))

(assert (= (and b!2904106 ((_ is Concat!14206) (regOne!18282 (regTwo!18283 r!19097)))) b!2904259))

(assert (= (and b!2904106 ((_ is Star!8885) (regOne!18282 (regTwo!18283 r!19097)))) b!2904260))

(assert (= (and b!2904106 ((_ is Union!8885) (regOne!18282 (regTwo!18283 r!19097)))) b!2904261))

(declare-fun b!2904265 () Bool)

(declare-fun e!1833639 () Bool)

(declare-fun tp!932436 () Bool)

(declare-fun tp!932437 () Bool)

(assert (=> b!2904265 (= e!1833639 (and tp!932436 tp!932437))))

(declare-fun b!2904264 () Bool)

(declare-fun tp!932438 () Bool)

(assert (=> b!2904264 (= e!1833639 tp!932438)))

(assert (=> b!2904106 (= tp!932362 e!1833639)))

(declare-fun b!2904263 () Bool)

(declare-fun tp!932435 () Bool)

(declare-fun tp!932434 () Bool)

(assert (=> b!2904263 (= e!1833639 (and tp!932435 tp!932434))))

(declare-fun b!2904262 () Bool)

(assert (=> b!2904262 (= e!1833639 tp_is_empty!15357)))

(assert (= (and b!2904106 ((_ is ElementMatch!8885) (regTwo!18282 (regTwo!18283 r!19097)))) b!2904262))

(assert (= (and b!2904106 ((_ is Concat!14206) (regTwo!18282 (regTwo!18283 r!19097)))) b!2904263))

(assert (= (and b!2904106 ((_ is Star!8885) (regTwo!18282 (regTwo!18283 r!19097)))) b!2904264))

(assert (= (and b!2904106 ((_ is Union!8885) (regTwo!18282 (regTwo!18283 r!19097)))) b!2904265))

(declare-fun b!2904269 () Bool)

(declare-fun e!1833640 () Bool)

(declare-fun tp!932441 () Bool)

(declare-fun tp!932442 () Bool)

(assert (=> b!2904269 (= e!1833640 (and tp!932441 tp!932442))))

(declare-fun b!2904268 () Bool)

(declare-fun tp!932443 () Bool)

(assert (=> b!2904268 (= e!1833640 tp!932443)))

(assert (=> b!2904121 (= tp!932374 e!1833640)))

(declare-fun b!2904267 () Bool)

(declare-fun tp!932440 () Bool)

(declare-fun tp!932439 () Bool)

(assert (=> b!2904267 (= e!1833640 (and tp!932440 tp!932439))))

(declare-fun b!2904266 () Bool)

(assert (=> b!2904266 (= e!1833640 tp_is_empty!15357)))

(assert (= (and b!2904121 ((_ is ElementMatch!8885) (regOne!18283 (regOne!18282 r!19097)))) b!2904266))

(assert (= (and b!2904121 ((_ is Concat!14206) (regOne!18283 (regOne!18282 r!19097)))) b!2904267))

(assert (= (and b!2904121 ((_ is Star!8885) (regOne!18283 (regOne!18282 r!19097)))) b!2904268))

(assert (= (and b!2904121 ((_ is Union!8885) (regOne!18283 (regOne!18282 r!19097)))) b!2904269))

(declare-fun b!2904273 () Bool)

(declare-fun e!1833641 () Bool)

(declare-fun tp!932446 () Bool)

(declare-fun tp!932447 () Bool)

(assert (=> b!2904273 (= e!1833641 (and tp!932446 tp!932447))))

(declare-fun b!2904272 () Bool)

(declare-fun tp!932448 () Bool)

(assert (=> b!2904272 (= e!1833641 tp!932448)))

(assert (=> b!2904121 (= tp!932375 e!1833641)))

(declare-fun b!2904271 () Bool)

(declare-fun tp!932445 () Bool)

(declare-fun tp!932444 () Bool)

(assert (=> b!2904271 (= e!1833641 (and tp!932445 tp!932444))))

(declare-fun b!2904270 () Bool)

(assert (=> b!2904270 (= e!1833641 tp_is_empty!15357)))

(assert (= (and b!2904121 ((_ is ElementMatch!8885) (regTwo!18283 (regOne!18282 r!19097)))) b!2904270))

(assert (= (and b!2904121 ((_ is Concat!14206) (regTwo!18283 (regOne!18282 r!19097)))) b!2904271))

(assert (= (and b!2904121 ((_ is Star!8885) (regTwo!18283 (regOne!18282 r!19097)))) b!2904272))

(assert (= (and b!2904121 ((_ is Union!8885) (regTwo!18283 (regOne!18282 r!19097)))) b!2904273))

(declare-fun b!2904277 () Bool)

(declare-fun e!1833642 () Bool)

(declare-fun tp!932451 () Bool)

(declare-fun tp!932452 () Bool)

(assert (=> b!2904277 (= e!1833642 (and tp!932451 tp!932452))))

(declare-fun b!2904276 () Bool)

(declare-fun tp!932453 () Bool)

(assert (=> b!2904276 (= e!1833642 tp!932453)))

(assert (=> b!2904107 (= tp!932366 e!1833642)))

(declare-fun b!2904275 () Bool)

(declare-fun tp!932450 () Bool)

(declare-fun tp!932449 () Bool)

(assert (=> b!2904275 (= e!1833642 (and tp!932450 tp!932449))))

(declare-fun b!2904274 () Bool)

(assert (=> b!2904274 (= e!1833642 tp_is_empty!15357)))

(assert (= (and b!2904107 ((_ is ElementMatch!8885) (reg!9214 (regTwo!18283 r!19097)))) b!2904274))

(assert (= (and b!2904107 ((_ is Concat!14206) (reg!9214 (regTwo!18283 r!19097)))) b!2904275))

(assert (= (and b!2904107 ((_ is Star!8885) (reg!9214 (regTwo!18283 r!19097)))) b!2904276))

(assert (= (and b!2904107 ((_ is Union!8885) (reg!9214 (regTwo!18283 r!19097)))) b!2904277))

(declare-fun b!2904281 () Bool)

(declare-fun e!1833643 () Bool)

(declare-fun tp!932456 () Bool)

(declare-fun tp!932457 () Bool)

(assert (=> b!2904281 (= e!1833643 (and tp!932456 tp!932457))))

(declare-fun b!2904280 () Bool)

(declare-fun tp!932458 () Bool)

(assert (=> b!2904280 (= e!1833643 tp!932458)))

(assert (=> b!2904108 (= tp!932364 e!1833643)))

(declare-fun b!2904279 () Bool)

(declare-fun tp!932455 () Bool)

(declare-fun tp!932454 () Bool)

(assert (=> b!2904279 (= e!1833643 (and tp!932455 tp!932454))))

(declare-fun b!2904278 () Bool)

(assert (=> b!2904278 (= e!1833643 tp_is_empty!15357)))

(assert (= (and b!2904108 ((_ is ElementMatch!8885) (regOne!18283 (regTwo!18283 r!19097)))) b!2904278))

(assert (= (and b!2904108 ((_ is Concat!14206) (regOne!18283 (regTwo!18283 r!19097)))) b!2904279))

(assert (= (and b!2904108 ((_ is Star!8885) (regOne!18283 (regTwo!18283 r!19097)))) b!2904280))

(assert (= (and b!2904108 ((_ is Union!8885) (regOne!18283 (regTwo!18283 r!19097)))) b!2904281))

(declare-fun b!2904285 () Bool)

(declare-fun e!1833644 () Bool)

(declare-fun tp!932461 () Bool)

(declare-fun tp!932462 () Bool)

(assert (=> b!2904285 (= e!1833644 (and tp!932461 tp!932462))))

(declare-fun b!2904284 () Bool)

(declare-fun tp!932463 () Bool)

(assert (=> b!2904284 (= e!1833644 tp!932463)))

(assert (=> b!2904108 (= tp!932365 e!1833644)))

(declare-fun b!2904283 () Bool)

(declare-fun tp!932460 () Bool)

(declare-fun tp!932459 () Bool)

(assert (=> b!2904283 (= e!1833644 (and tp!932460 tp!932459))))

(declare-fun b!2904282 () Bool)

(assert (=> b!2904282 (= e!1833644 tp_is_empty!15357)))

(assert (= (and b!2904108 ((_ is ElementMatch!8885) (regTwo!18283 (regTwo!18283 r!19097)))) b!2904282))

(assert (= (and b!2904108 ((_ is Concat!14206) (regTwo!18283 (regTwo!18283 r!19097)))) b!2904283))

(assert (= (and b!2904108 ((_ is Star!8885) (regTwo!18283 (regTwo!18283 r!19097)))) b!2904284))

(assert (= (and b!2904108 ((_ is Union!8885) (regTwo!18283 (regTwo!18283 r!19097)))) b!2904285))

(declare-fun b!2904289 () Bool)

(declare-fun e!1833645 () Bool)

(declare-fun tp!932466 () Bool)

(declare-fun tp!932467 () Bool)

(assert (=> b!2904289 (= e!1833645 (and tp!932466 tp!932467))))

(declare-fun b!2904288 () Bool)

(declare-fun tp!932468 () Bool)

(assert (=> b!2904288 (= e!1833645 tp!932468)))

(assert (=> b!2904125 (= tp!932384 e!1833645)))

(declare-fun b!2904287 () Bool)

(declare-fun tp!932465 () Bool)

(declare-fun tp!932464 () Bool)

(assert (=> b!2904287 (= e!1833645 (and tp!932465 tp!932464))))

(declare-fun b!2904286 () Bool)

(assert (=> b!2904286 (= e!1833645 tp_is_empty!15357)))

(assert (= (and b!2904125 ((_ is ElementMatch!8885) (regOne!18282 (regTwo!18282 r!19097)))) b!2904286))

(assert (= (and b!2904125 ((_ is Concat!14206) (regOne!18282 (regTwo!18282 r!19097)))) b!2904287))

(assert (= (and b!2904125 ((_ is Star!8885) (regOne!18282 (regTwo!18282 r!19097)))) b!2904288))

(assert (= (and b!2904125 ((_ is Union!8885) (regOne!18282 (regTwo!18282 r!19097)))) b!2904289))

(declare-fun b!2904293 () Bool)

(declare-fun e!1833646 () Bool)

(declare-fun tp!932471 () Bool)

(declare-fun tp!932472 () Bool)

(assert (=> b!2904293 (= e!1833646 (and tp!932471 tp!932472))))

(declare-fun b!2904292 () Bool)

(declare-fun tp!932473 () Bool)

(assert (=> b!2904292 (= e!1833646 tp!932473)))

(assert (=> b!2904125 (= tp!932383 e!1833646)))

(declare-fun b!2904291 () Bool)

(declare-fun tp!932470 () Bool)

(declare-fun tp!932469 () Bool)

(assert (=> b!2904291 (= e!1833646 (and tp!932470 tp!932469))))

(declare-fun b!2904290 () Bool)

(assert (=> b!2904290 (= e!1833646 tp_is_empty!15357)))

(assert (= (and b!2904125 ((_ is ElementMatch!8885) (regTwo!18282 (regTwo!18282 r!19097)))) b!2904290))

(assert (= (and b!2904125 ((_ is Concat!14206) (regTwo!18282 (regTwo!18282 r!19097)))) b!2904291))

(assert (= (and b!2904125 ((_ is Star!8885) (regTwo!18282 (regTwo!18282 r!19097)))) b!2904292))

(assert (= (and b!2904125 ((_ is Union!8885) (regTwo!18282 (regTwo!18282 r!19097)))) b!2904293))

(declare-fun b!2904294 () Bool)

(declare-fun e!1833647 () Bool)

(declare-fun tp!932474 () Bool)

(assert (=> b!2904294 (= e!1833647 (and tp_is_empty!15357 tp!932474))))

(assert (=> b!2904077 (= tp!932338 e!1833647)))

(assert (= (and b!2904077 ((_ is Cons!34562) (t!233729 (t!233729 prefix!1456)))) b!2904294))

(declare-fun b!2904298 () Bool)

(declare-fun e!1833648 () Bool)

(declare-fun tp!932477 () Bool)

(declare-fun tp!932478 () Bool)

(assert (=> b!2904298 (= e!1833648 (and tp!932477 tp!932478))))

(declare-fun b!2904297 () Bool)

(declare-fun tp!932479 () Bool)

(assert (=> b!2904297 (= e!1833648 tp!932479)))

(assert (=> b!2904093 (= tp!932350 e!1833648)))

(declare-fun b!2904296 () Bool)

(declare-fun tp!932476 () Bool)

(declare-fun tp!932475 () Bool)

(assert (=> b!2904296 (= e!1833648 (and tp!932476 tp!932475))))

(declare-fun b!2904295 () Bool)

(assert (=> b!2904295 (= e!1833648 tp_is_empty!15357)))

(assert (= (and b!2904093 ((_ is ElementMatch!8885) (regOne!18282 (reg!9214 r!19097)))) b!2904295))

(assert (= (and b!2904093 ((_ is Concat!14206) (regOne!18282 (reg!9214 r!19097)))) b!2904296))

(assert (= (and b!2904093 ((_ is Star!8885) (regOne!18282 (reg!9214 r!19097)))) b!2904297))

(assert (= (and b!2904093 ((_ is Union!8885) (regOne!18282 (reg!9214 r!19097)))) b!2904298))

(declare-fun b!2904302 () Bool)

(declare-fun e!1833649 () Bool)

(declare-fun tp!932482 () Bool)

(declare-fun tp!932483 () Bool)

(assert (=> b!2904302 (= e!1833649 (and tp!932482 tp!932483))))

(declare-fun b!2904301 () Bool)

(declare-fun tp!932484 () Bool)

(assert (=> b!2904301 (= e!1833649 tp!932484)))

(assert (=> b!2904093 (= tp!932349 e!1833649)))

(declare-fun b!2904300 () Bool)

(declare-fun tp!932481 () Bool)

(declare-fun tp!932480 () Bool)

(assert (=> b!2904300 (= e!1833649 (and tp!932481 tp!932480))))

(declare-fun b!2904299 () Bool)

(assert (=> b!2904299 (= e!1833649 tp_is_empty!15357)))

(assert (= (and b!2904093 ((_ is ElementMatch!8885) (regTwo!18282 (reg!9214 r!19097)))) b!2904299))

(assert (= (and b!2904093 ((_ is Concat!14206) (regTwo!18282 (reg!9214 r!19097)))) b!2904300))

(assert (= (and b!2904093 ((_ is Star!8885) (regTwo!18282 (reg!9214 r!19097)))) b!2904301))

(assert (= (and b!2904093 ((_ is Union!8885) (regTwo!18282 (reg!9214 r!19097)))) b!2904302))

(declare-fun b!2904306 () Bool)

(declare-fun e!1833650 () Bool)

(declare-fun tp!932487 () Bool)

(declare-fun tp!932488 () Bool)

(assert (=> b!2904306 (= e!1833650 (and tp!932487 tp!932488))))

(declare-fun b!2904305 () Bool)

(declare-fun tp!932489 () Bool)

(assert (=> b!2904305 (= e!1833650 tp!932489)))

(assert (=> b!2904126 (= tp!932387 e!1833650)))

(declare-fun b!2904304 () Bool)

(declare-fun tp!932486 () Bool)

(declare-fun tp!932485 () Bool)

(assert (=> b!2904304 (= e!1833650 (and tp!932486 tp!932485))))

(declare-fun b!2904303 () Bool)

(assert (=> b!2904303 (= e!1833650 tp_is_empty!15357)))

(assert (= (and b!2904126 ((_ is ElementMatch!8885) (reg!9214 (regTwo!18282 r!19097)))) b!2904303))

(assert (= (and b!2904126 ((_ is Concat!14206) (reg!9214 (regTwo!18282 r!19097)))) b!2904304))

(assert (= (and b!2904126 ((_ is Star!8885) (reg!9214 (regTwo!18282 r!19097)))) b!2904305))

(assert (= (and b!2904126 ((_ is Union!8885) (reg!9214 (regTwo!18282 r!19097)))) b!2904306))

(declare-fun b!2904310 () Bool)

(declare-fun e!1833651 () Bool)

(declare-fun tp!932492 () Bool)

(declare-fun tp!932493 () Bool)

(assert (=> b!2904310 (= e!1833651 (and tp!932492 tp!932493))))

(declare-fun b!2904309 () Bool)

(declare-fun tp!932494 () Bool)

(assert (=> b!2904309 (= e!1833651 tp!932494)))

(assert (=> b!2904127 (= tp!932385 e!1833651)))

(declare-fun b!2904308 () Bool)

(declare-fun tp!932491 () Bool)

(declare-fun tp!932490 () Bool)

(assert (=> b!2904308 (= e!1833651 (and tp!932491 tp!932490))))

(declare-fun b!2904307 () Bool)

(assert (=> b!2904307 (= e!1833651 tp_is_empty!15357)))

(assert (= (and b!2904127 ((_ is ElementMatch!8885) (regOne!18283 (regTwo!18282 r!19097)))) b!2904307))

(assert (= (and b!2904127 ((_ is Concat!14206) (regOne!18283 (regTwo!18282 r!19097)))) b!2904308))

(assert (= (and b!2904127 ((_ is Star!8885) (regOne!18283 (regTwo!18282 r!19097)))) b!2904309))

(assert (= (and b!2904127 ((_ is Union!8885) (regOne!18283 (regTwo!18282 r!19097)))) b!2904310))

(declare-fun b!2904314 () Bool)

(declare-fun e!1833652 () Bool)

(declare-fun tp!932497 () Bool)

(declare-fun tp!932498 () Bool)

(assert (=> b!2904314 (= e!1833652 (and tp!932497 tp!932498))))

(declare-fun b!2904313 () Bool)

(declare-fun tp!932499 () Bool)

(assert (=> b!2904313 (= e!1833652 tp!932499)))

(assert (=> b!2904127 (= tp!932386 e!1833652)))

(declare-fun b!2904312 () Bool)

(declare-fun tp!932496 () Bool)

(declare-fun tp!932495 () Bool)

(assert (=> b!2904312 (= e!1833652 (and tp!932496 tp!932495))))

(declare-fun b!2904311 () Bool)

(assert (=> b!2904311 (= e!1833652 tp_is_empty!15357)))

(assert (= (and b!2904127 ((_ is ElementMatch!8885) (regTwo!18283 (regTwo!18282 r!19097)))) b!2904311))

(assert (= (and b!2904127 ((_ is Concat!14206) (regTwo!18283 (regTwo!18282 r!19097)))) b!2904312))

(assert (= (and b!2904127 ((_ is Star!8885) (regTwo!18283 (regTwo!18282 r!19097)))) b!2904313))

(assert (= (and b!2904127 ((_ is Union!8885) (regTwo!18283 (regTwo!18282 r!19097)))) b!2904314))

(declare-fun b!2904315 () Bool)

(declare-fun e!1833653 () Bool)

(declare-fun tp!932500 () Bool)

(assert (=> b!2904315 (= e!1833653 (and tp_is_empty!15357 tp!932500))))

(assert (=> b!2904115 (= tp!932369 e!1833653)))

(assert (= (and b!2904115 ((_ is Cons!34562) (t!233729 (t!233729 s!13418)))) b!2904315))

(declare-fun b!2904319 () Bool)

(declare-fun e!1833654 () Bool)

(declare-fun tp!932503 () Bool)

(declare-fun tp!932504 () Bool)

(assert (=> b!2904319 (= e!1833654 (and tp!932503 tp!932504))))

(declare-fun b!2904318 () Bool)

(declare-fun tp!932505 () Bool)

(assert (=> b!2904318 (= e!1833654 tp!932505)))

(assert (=> b!2904101 (= tp!932357 e!1833654)))

(declare-fun b!2904317 () Bool)

(declare-fun tp!932502 () Bool)

(declare-fun tp!932501 () Bool)

(assert (=> b!2904317 (= e!1833654 (and tp!932502 tp!932501))))

(declare-fun b!2904316 () Bool)

(assert (=> b!2904316 (= e!1833654 tp_is_empty!15357)))

(assert (= (and b!2904101 ((_ is ElementMatch!8885) (regOne!18282 (regOne!18283 r!19097)))) b!2904316))

(assert (= (and b!2904101 ((_ is Concat!14206) (regOne!18282 (regOne!18283 r!19097)))) b!2904317))

(assert (= (and b!2904101 ((_ is Star!8885) (regOne!18282 (regOne!18283 r!19097)))) b!2904318))

(assert (= (and b!2904101 ((_ is Union!8885) (regOne!18282 (regOne!18283 r!19097)))) b!2904319))

(declare-fun b!2904323 () Bool)

(declare-fun e!1833655 () Bool)

(declare-fun tp!932508 () Bool)

(declare-fun tp!932509 () Bool)

(assert (=> b!2904323 (= e!1833655 (and tp!932508 tp!932509))))

(declare-fun b!2904322 () Bool)

(declare-fun tp!932510 () Bool)

(assert (=> b!2904322 (= e!1833655 tp!932510)))

(assert (=> b!2904101 (= tp!932356 e!1833655)))

(declare-fun b!2904321 () Bool)

(declare-fun tp!932507 () Bool)

(declare-fun tp!932506 () Bool)

(assert (=> b!2904321 (= e!1833655 (and tp!932507 tp!932506))))

(declare-fun b!2904320 () Bool)

(assert (=> b!2904320 (= e!1833655 tp_is_empty!15357)))

(assert (= (and b!2904101 ((_ is ElementMatch!8885) (regTwo!18282 (regOne!18283 r!19097)))) b!2904320))

(assert (= (and b!2904101 ((_ is Concat!14206) (regTwo!18282 (regOne!18283 r!19097)))) b!2904321))

(assert (= (and b!2904101 ((_ is Star!8885) (regTwo!18282 (regOne!18283 r!19097)))) b!2904322))

(assert (= (and b!2904101 ((_ is Union!8885) (regTwo!18282 (regOne!18283 r!19097)))) b!2904323))

(declare-fun b!2904327 () Bool)

(declare-fun e!1833656 () Bool)

(declare-fun tp!932513 () Bool)

(declare-fun tp!932514 () Bool)

(assert (=> b!2904327 (= e!1833656 (and tp!932513 tp!932514))))

(declare-fun b!2904326 () Bool)

(declare-fun tp!932515 () Bool)

(assert (=> b!2904326 (= e!1833656 tp!932515)))

(assert (=> b!2904094 (= tp!932353 e!1833656)))

(declare-fun b!2904325 () Bool)

(declare-fun tp!932512 () Bool)

(declare-fun tp!932511 () Bool)

(assert (=> b!2904325 (= e!1833656 (and tp!932512 tp!932511))))

(declare-fun b!2904324 () Bool)

(assert (=> b!2904324 (= e!1833656 tp_is_empty!15357)))

(assert (= (and b!2904094 ((_ is ElementMatch!8885) (reg!9214 (reg!9214 r!19097)))) b!2904324))

(assert (= (and b!2904094 ((_ is Concat!14206) (reg!9214 (reg!9214 r!19097)))) b!2904325))

(assert (= (and b!2904094 ((_ is Star!8885) (reg!9214 (reg!9214 r!19097)))) b!2904326))

(assert (= (and b!2904094 ((_ is Union!8885) (reg!9214 (reg!9214 r!19097)))) b!2904327))

(declare-fun b!2904331 () Bool)

(declare-fun e!1833657 () Bool)

(declare-fun tp!932518 () Bool)

(declare-fun tp!932519 () Bool)

(assert (=> b!2904331 (= e!1833657 (and tp!932518 tp!932519))))

(declare-fun b!2904330 () Bool)

(declare-fun tp!932520 () Bool)

(assert (=> b!2904330 (= e!1833657 tp!932520)))

(assert (=> b!2904119 (= tp!932373 e!1833657)))

(declare-fun b!2904329 () Bool)

(declare-fun tp!932517 () Bool)

(declare-fun tp!932516 () Bool)

(assert (=> b!2904329 (= e!1833657 (and tp!932517 tp!932516))))

(declare-fun b!2904328 () Bool)

(assert (=> b!2904328 (= e!1833657 tp_is_empty!15357)))

(assert (= (and b!2904119 ((_ is ElementMatch!8885) (regOne!18282 (regOne!18282 r!19097)))) b!2904328))

(assert (= (and b!2904119 ((_ is Concat!14206) (regOne!18282 (regOne!18282 r!19097)))) b!2904329))

(assert (= (and b!2904119 ((_ is Star!8885) (regOne!18282 (regOne!18282 r!19097)))) b!2904330))

(assert (= (and b!2904119 ((_ is Union!8885) (regOne!18282 (regOne!18282 r!19097)))) b!2904331))

(declare-fun b!2904335 () Bool)

(declare-fun e!1833658 () Bool)

(declare-fun tp!932523 () Bool)

(declare-fun tp!932524 () Bool)

(assert (=> b!2904335 (= e!1833658 (and tp!932523 tp!932524))))

(declare-fun b!2904334 () Bool)

(declare-fun tp!932525 () Bool)

(assert (=> b!2904334 (= e!1833658 tp!932525)))

(assert (=> b!2904119 (= tp!932372 e!1833658)))

(declare-fun b!2904333 () Bool)

(declare-fun tp!932522 () Bool)

(declare-fun tp!932521 () Bool)

(assert (=> b!2904333 (= e!1833658 (and tp!932522 tp!932521))))

(declare-fun b!2904332 () Bool)

(assert (=> b!2904332 (= e!1833658 tp_is_empty!15357)))

(assert (= (and b!2904119 ((_ is ElementMatch!8885) (regTwo!18282 (regOne!18282 r!19097)))) b!2904332))

(assert (= (and b!2904119 ((_ is Concat!14206) (regTwo!18282 (regOne!18282 r!19097)))) b!2904333))

(assert (= (and b!2904119 ((_ is Star!8885) (regTwo!18282 (regOne!18282 r!19097)))) b!2904334))

(assert (= (and b!2904119 ((_ is Union!8885) (regTwo!18282 (regOne!18282 r!19097)))) b!2904335))

(declare-fun b!2904339 () Bool)

(declare-fun e!1833659 () Bool)

(declare-fun tp!932528 () Bool)

(declare-fun tp!932529 () Bool)

(assert (=> b!2904339 (= e!1833659 (and tp!932528 tp!932529))))

(declare-fun b!2904338 () Bool)

(declare-fun tp!932530 () Bool)

(assert (=> b!2904338 (= e!1833659 tp!932530)))

(assert (=> b!2904095 (= tp!932351 e!1833659)))

(declare-fun b!2904337 () Bool)

(declare-fun tp!932527 () Bool)

(declare-fun tp!932526 () Bool)

(assert (=> b!2904337 (= e!1833659 (and tp!932527 tp!932526))))

(declare-fun b!2904336 () Bool)

(assert (=> b!2904336 (= e!1833659 tp_is_empty!15357)))

(assert (= (and b!2904095 ((_ is ElementMatch!8885) (regOne!18283 (reg!9214 r!19097)))) b!2904336))

(assert (= (and b!2904095 ((_ is Concat!14206) (regOne!18283 (reg!9214 r!19097)))) b!2904337))

(assert (= (and b!2904095 ((_ is Star!8885) (regOne!18283 (reg!9214 r!19097)))) b!2904338))

(assert (= (and b!2904095 ((_ is Union!8885) (regOne!18283 (reg!9214 r!19097)))) b!2904339))

(declare-fun b!2904343 () Bool)

(declare-fun e!1833660 () Bool)

(declare-fun tp!932533 () Bool)

(declare-fun tp!932534 () Bool)

(assert (=> b!2904343 (= e!1833660 (and tp!932533 tp!932534))))

(declare-fun b!2904342 () Bool)

(declare-fun tp!932535 () Bool)

(assert (=> b!2904342 (= e!1833660 tp!932535)))

(assert (=> b!2904095 (= tp!932352 e!1833660)))

(declare-fun b!2904341 () Bool)

(declare-fun tp!932532 () Bool)

(declare-fun tp!932531 () Bool)

(assert (=> b!2904341 (= e!1833660 (and tp!932532 tp!932531))))

(declare-fun b!2904340 () Bool)

(assert (=> b!2904340 (= e!1833660 tp_is_empty!15357)))

(assert (= (and b!2904095 ((_ is ElementMatch!8885) (regTwo!18283 (reg!9214 r!19097)))) b!2904340))

(assert (= (and b!2904095 ((_ is Concat!14206) (regTwo!18283 (reg!9214 r!19097)))) b!2904341))

(assert (= (and b!2904095 ((_ is Star!8885) (regTwo!18283 (reg!9214 r!19097)))) b!2904342))

(assert (= (and b!2904095 ((_ is Union!8885) (regTwo!18283 (reg!9214 r!19097)))) b!2904343))

(declare-fun b!2904347 () Bool)

(declare-fun e!1833661 () Bool)

(declare-fun tp!932538 () Bool)

(declare-fun tp!932539 () Bool)

(assert (=> b!2904347 (= e!1833661 (and tp!932538 tp!932539))))

(declare-fun b!2904346 () Bool)

(declare-fun tp!932540 () Bool)

(assert (=> b!2904346 (= e!1833661 tp!932540)))

(assert (=> b!2904102 (= tp!932360 e!1833661)))

(declare-fun b!2904345 () Bool)

(declare-fun tp!932537 () Bool)

(declare-fun tp!932536 () Bool)

(assert (=> b!2904345 (= e!1833661 (and tp!932537 tp!932536))))

(declare-fun b!2904344 () Bool)

(assert (=> b!2904344 (= e!1833661 tp_is_empty!15357)))

(assert (= (and b!2904102 ((_ is ElementMatch!8885) (reg!9214 (regOne!18283 r!19097)))) b!2904344))

(assert (= (and b!2904102 ((_ is Concat!14206) (reg!9214 (regOne!18283 r!19097)))) b!2904345))

(assert (= (and b!2904102 ((_ is Star!8885) (reg!9214 (regOne!18283 r!19097)))) b!2904346))

(assert (= (and b!2904102 ((_ is Union!8885) (reg!9214 (regOne!18283 r!19097)))) b!2904347))

(check-sat (not b!2904322) (not b!2904285) (not bm!189356) (not b!2904321) (not b!2904294) tp_is_empty!15357 (not b!2904313) (not b!2904325) (not b!2904287) (not b!2904292) (not bm!189377) (not b!2904280) (not d!835734) (not b!2904283) (not bm!189378) (not d!835742) (not b!2904277) (not b!2904165) (not bm!189362) (not bm!189368) (not b!2904306) (not b!2904251) (not b!2904310) (not b!2904261) (not b!2904183) (not b!2904333) (not b!2904288) (not b!2904275) (not b!2904252) (not b!2904268) (not b!2904156) (not b!2904263) (not b!2904343) (not d!835746) (not b!2904323) (not bm!189374) (not b!2904297) (not b!2904326) (not b!2904272) (not b!2904208) (not b!2904276) (not b!2904247) (not bm!189358) (not b!2904337) (not b!2904192) (not bm!189382) (not b!2904267) (not b!2904225) (not b!2904253) (not b!2904301) (not b!2904220) (not b!2904318) (not b!2904217) (not b!2904255) (not b!2904309) (not b!2904317) (not d!835774) (not b!2904259) (not b!2904300) (not b!2904273) (not b!2904304) (not b!2904260) (not b!2904207) (not b!2904223) (not b!2904305) (not b!2904195) (not bm!189365) (not b!2904345) (not b!2904194) (not b!2904174) (not b!2904302) (not b!2904293) (not b!2904248) (not b!2904329) (not b!2904289) (not b!2904265) (not b!2904338) (not b!2904249) (not b!2904264) (not b!2904271) (not bm!189370) (not b!2904291) (not b!2904226) (not b!2904346) (not b!2904347) (not d!835776) (not bm!189361) (not b!2904331) (not d!835726) (not bm!189381) (not d!835736) (not b!2904215) (not b!2904335) (not b!2904196) (not b!2904257) (not b!2904327) (not b!2904319) (not b!2904236) (not b!2904296) (not b!2904314) (not b!2904342) (not b!2904219) (not bm!189359) (not b!2904341) (not b!2904315) (not bm!189373) (not bm!189364) (not b!2904279) (not d!835744) (not b!2904284) (not bm!189367) (not b!2904221) (not b!2904308) (not b!2904334) (not b!2904269) (not b!2904256) (not b!2904339) (not b!2904209) (not b!2904330) (not b!2904312) (not b!2904281) (not b!2904298))
(check-sat)
