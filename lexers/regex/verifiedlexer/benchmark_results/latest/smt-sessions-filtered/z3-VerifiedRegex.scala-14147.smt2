; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743018 () Bool)

(assert start!743018)

(declare-fun b!7846725 () Bool)

(declare-fun res!3120558 () Bool)

(declare-fun e!4638864 () Bool)

(assert (=> b!7846725 (=> (not res!3120558) (not e!4638864))))

(declare-datatypes ((C!42460 0))(
  ( (C!42461 (val!31692 Int)) )
))
(declare-datatypes ((List!73926 0))(
  ( (Nil!73802) (Cons!73802 (h!80250 C!42460) (t!388661 List!73926)) )
))
(declare-fun s1!4084 () List!73926)

(get-info :version)

(assert (=> b!7846725 (= res!3120558 ((_ is Cons!73802) s1!4084))))

(declare-fun b!7846726 () Bool)

(declare-fun e!4638866 () Bool)

(declare-fun tp!2323337 () Bool)

(declare-fun tp!2323347 () Bool)

(assert (=> b!7846726 (= e!4638866 (and tp!2323337 tp!2323347))))

(declare-fun b!7846727 () Bool)

(declare-fun res!3120553 () Bool)

(assert (=> b!7846727 (=> (not res!3120553) (not e!4638864))))

(declare-datatypes ((Regex!21067 0))(
  ( (ElementMatch!21067 (c!1442283 C!42460)) (Concat!29912 (regOne!42646 Regex!21067) (regTwo!42646 Regex!21067)) (EmptyExpr!21067) (Star!21067 (reg!21396 Regex!21067)) (EmptyLang!21067) (Union!21067 (regOne!42647 Regex!21067) (regTwo!42647 Regex!21067)) )
))
(declare-fun r2!6165 () Regex!21067)

(declare-fun validRegex!11477 (Regex!21067) Bool)

(assert (=> b!7846727 (= res!3120553 (validRegex!11477 r2!6165))))

(declare-fun res!3120555 () Bool)

(assert (=> start!743018 (=> (not res!3120555) (not e!4638864))))

(declare-fun r1!6227 () Regex!21067)

(assert (=> start!743018 (= res!3120555 (validRegex!11477 r1!6227))))

(assert (=> start!743018 e!4638864))

(declare-fun e!4638865 () Bool)

(assert (=> start!743018 e!4638865))

(assert (=> start!743018 e!4638866))

(declare-fun e!4638862 () Bool)

(assert (=> start!743018 e!4638862))

(declare-fun e!4638863 () Bool)

(assert (=> start!743018 e!4638863))

(declare-fun b!7846728 () Bool)

(declare-fun e!4638867 () Bool)

(assert (=> b!7846728 (= e!4638864 (not e!4638867))))

(declare-fun res!3120556 () Bool)

(assert (=> b!7846728 (=> res!3120556 e!4638867)))

(declare-fun nullable!9341 (Regex!21067) Bool)

(assert (=> b!7846728 (= res!3120556 (nullable!9341 r1!6227))))

(declare-fun s2!3706 () List!73926)

(declare-fun lt!2679250 () Regex!21067)

(declare-fun matchR!10503 (Regex!21067 List!73926) Bool)

(declare-fun ++!18077 (List!73926 List!73926) List!73926)

(assert (=> b!7846728 (matchR!10503 (Concat!29912 lt!2679250 r2!6165) (++!18077 (t!388661 s1!4084) s2!3706))))

(declare-datatypes ((Unit!168880 0))(
  ( (Unit!168881) )
))
(declare-fun lt!2679251 () Unit!168880)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!438 (Regex!21067 Regex!21067 List!73926 List!73926) Unit!168880)

(assert (=> b!7846728 (= lt!2679251 (lemmaTwoRegexMatchThenConcatMatchesConcatString!438 lt!2679250 r2!6165 (t!388661 s1!4084) s2!3706))))

(declare-fun derivativeStep!6304 (Regex!21067 C!42460) Regex!21067)

(assert (=> b!7846728 (= lt!2679250 (derivativeStep!6304 r1!6227 (h!80250 s1!4084)))))

(declare-fun b!7846729 () Bool)

(declare-fun tp!2323348 () Bool)

(declare-fun tp!2323344 () Bool)

(assert (=> b!7846729 (= e!4638865 (and tp!2323348 tp!2323344))))

(declare-fun b!7846730 () Bool)

(assert (=> b!7846730 (= e!4638867 (validRegex!11477 (Concat!29912 r1!6227 r2!6165)))))

(declare-fun b!7846731 () Bool)

(declare-fun tp_is_empty!52533 () Bool)

(declare-fun tp!2323338 () Bool)

(assert (=> b!7846731 (= e!4638862 (and tp_is_empty!52533 tp!2323338))))

(declare-fun b!7846732 () Bool)

(declare-fun tp!2323340 () Bool)

(assert (=> b!7846732 (= e!4638866 tp!2323340)))

(declare-fun b!7846733 () Bool)

(assert (=> b!7846733 (= e!4638865 tp_is_empty!52533)))

(declare-fun b!7846734 () Bool)

(declare-fun tp!2323339 () Bool)

(assert (=> b!7846734 (= e!4638865 tp!2323339)))

(declare-fun b!7846735 () Bool)

(assert (=> b!7846735 (= e!4638866 tp_is_empty!52533)))

(declare-fun b!7846736 () Bool)

(declare-fun tp!2323341 () Bool)

(declare-fun tp!2323343 () Bool)

(assert (=> b!7846736 (= e!4638865 (and tp!2323341 tp!2323343))))

(declare-fun b!7846737 () Bool)

(declare-fun res!3120554 () Bool)

(assert (=> b!7846737 (=> (not res!3120554) (not e!4638864))))

(assert (=> b!7846737 (= res!3120554 (matchR!10503 r1!6227 s1!4084))))

(declare-fun b!7846738 () Bool)

(declare-fun tp!2323345 () Bool)

(assert (=> b!7846738 (= e!4638863 (and tp_is_empty!52533 tp!2323345))))

(declare-fun b!7846739 () Bool)

(declare-fun tp!2323342 () Bool)

(declare-fun tp!2323346 () Bool)

(assert (=> b!7846739 (= e!4638866 (and tp!2323342 tp!2323346))))

(declare-fun b!7846740 () Bool)

(declare-fun res!3120557 () Bool)

(assert (=> b!7846740 (=> (not res!3120557) (not e!4638864))))

(assert (=> b!7846740 (= res!3120557 (matchR!10503 r2!6165 s2!3706))))

(assert (= (and start!743018 res!3120555) b!7846727))

(assert (= (and b!7846727 res!3120553) b!7846737))

(assert (= (and b!7846737 res!3120554) b!7846740))

(assert (= (and b!7846740 res!3120557) b!7846725))

(assert (= (and b!7846725 res!3120558) b!7846728))

(assert (= (and b!7846728 (not res!3120556)) b!7846730))

(assert (= (and start!743018 ((_ is ElementMatch!21067) r1!6227)) b!7846733))

(assert (= (and start!743018 ((_ is Concat!29912) r1!6227)) b!7846736))

(assert (= (and start!743018 ((_ is Star!21067) r1!6227)) b!7846734))

(assert (= (and start!743018 ((_ is Union!21067) r1!6227)) b!7846729))

(assert (= (and start!743018 ((_ is ElementMatch!21067) r2!6165)) b!7846735))

(assert (= (and start!743018 ((_ is Concat!29912) r2!6165)) b!7846739))

(assert (= (and start!743018 ((_ is Star!21067) r2!6165)) b!7846732))

(assert (= (and start!743018 ((_ is Union!21067) r2!6165)) b!7846726))

(assert (= (and start!743018 ((_ is Cons!73802) s1!4084)) b!7846731))

(assert (= (and start!743018 ((_ is Cons!73802) s2!3706)) b!7846738))

(declare-fun m!8256288 () Bool)

(assert (=> b!7846727 m!8256288))

(declare-fun m!8256290 () Bool)

(assert (=> b!7846730 m!8256290))

(declare-fun m!8256292 () Bool)

(assert (=> b!7846728 m!8256292))

(declare-fun m!8256294 () Bool)

(assert (=> b!7846728 m!8256294))

(declare-fun m!8256296 () Bool)

(assert (=> b!7846728 m!8256296))

(declare-fun m!8256298 () Bool)

(assert (=> b!7846728 m!8256298))

(assert (=> b!7846728 m!8256296))

(declare-fun m!8256300 () Bool)

(assert (=> b!7846728 m!8256300))

(declare-fun m!8256302 () Bool)

(assert (=> start!743018 m!8256302))

(declare-fun m!8256304 () Bool)

(assert (=> b!7846740 m!8256304))

(declare-fun m!8256306 () Bool)

(assert (=> b!7846737 m!8256306))

(check-sat (not b!7846730) (not b!7846731) (not b!7846729) (not b!7846738) (not b!7846737) tp_is_empty!52533 (not b!7846740) (not b!7846739) (not b!7846726) (not b!7846736) (not start!743018) (not b!7846728) (not b!7846732) (not b!7846734) (not b!7846727))
(check-sat)
(get-model)

(declare-fun b!7846805 () Bool)

(declare-fun res!3120595 () Bool)

(declare-fun e!4638911 () Bool)

(assert (=> b!7846805 (=> res!3120595 e!4638911)))

(declare-fun e!4638912 () Bool)

(assert (=> b!7846805 (= res!3120595 e!4638912)))

(declare-fun res!3120602 () Bool)

(assert (=> b!7846805 (=> (not res!3120602) (not e!4638912))))

(declare-fun lt!2679254 () Bool)

(assert (=> b!7846805 (= res!3120602 lt!2679254)))

(declare-fun b!7846806 () Bool)

(declare-fun head!16029 (List!73926) C!42460)

(assert (=> b!7846806 (= e!4638912 (= (head!16029 s1!4084) (c!1442283 r1!6227)))))

(declare-fun b!7846807 () Bool)

(declare-fun e!4638913 () Bool)

(assert (=> b!7846807 (= e!4638913 (not lt!2679254))))

(declare-fun b!7846808 () Bool)

(declare-fun res!3120596 () Bool)

(assert (=> b!7846808 (=> (not res!3120596) (not e!4638912))))

(declare-fun call!727121 () Bool)

(assert (=> b!7846808 (= res!3120596 (not call!727121))))

(declare-fun b!7846809 () Bool)

(declare-fun e!4638910 () Bool)

(declare-fun e!4638916 () Bool)

(assert (=> b!7846809 (= e!4638910 e!4638916)))

(declare-fun res!3120600 () Bool)

(assert (=> b!7846809 (=> res!3120600 e!4638916)))

(assert (=> b!7846809 (= res!3120600 call!727121)))

(declare-fun b!7846810 () Bool)

(declare-fun res!3120599 () Bool)

(assert (=> b!7846810 (=> (not res!3120599) (not e!4638912))))

(declare-fun isEmpty!42318 (List!73926) Bool)

(declare-fun tail!15572 (List!73926) List!73926)

(assert (=> b!7846810 (= res!3120599 (isEmpty!42318 (tail!15572 s1!4084)))))

(declare-fun b!7846811 () Bool)

(declare-fun e!4638914 () Bool)

(assert (=> b!7846811 (= e!4638914 (matchR!10503 (derivativeStep!6304 r1!6227 (head!16029 s1!4084)) (tail!15572 s1!4084)))))

(declare-fun b!7846812 () Bool)

(assert (=> b!7846812 (= e!4638911 e!4638910)))

(declare-fun res!3120601 () Bool)

(assert (=> b!7846812 (=> (not res!3120601) (not e!4638910))))

(assert (=> b!7846812 (= res!3120601 (not lt!2679254))))

(declare-fun b!7846813 () Bool)

(declare-fun res!3120598 () Bool)

(assert (=> b!7846813 (=> res!3120598 e!4638911)))

(assert (=> b!7846813 (= res!3120598 (not ((_ is ElementMatch!21067) r1!6227)))))

(assert (=> b!7846813 (= e!4638913 e!4638911)))

(declare-fun b!7846814 () Bool)

(declare-fun e!4638915 () Bool)

(assert (=> b!7846814 (= e!4638915 (= lt!2679254 call!727121))))

(declare-fun b!7846815 () Bool)

(assert (=> b!7846815 (= e!4638914 (nullable!9341 r1!6227))))

(declare-fun b!7846816 () Bool)

(declare-fun res!3120597 () Bool)

(assert (=> b!7846816 (=> res!3120597 e!4638916)))

(assert (=> b!7846816 (= res!3120597 (not (isEmpty!42318 (tail!15572 s1!4084))))))

(declare-fun b!7846817 () Bool)

(assert (=> b!7846817 (= e!4638915 e!4638913)))

(declare-fun c!1442299 () Bool)

(assert (=> b!7846817 (= c!1442299 ((_ is EmptyLang!21067) r1!6227))))

(declare-fun b!7846818 () Bool)

(assert (=> b!7846818 (= e!4638916 (not (= (head!16029 s1!4084) (c!1442283 r1!6227))))))

(declare-fun bm!727116 () Bool)

(assert (=> bm!727116 (= call!727121 (isEmpty!42318 s1!4084))))

(declare-fun d!2352856 () Bool)

(assert (=> d!2352856 e!4638915))

(declare-fun c!1442298 () Bool)

(assert (=> d!2352856 (= c!1442298 ((_ is EmptyExpr!21067) r1!6227))))

(assert (=> d!2352856 (= lt!2679254 e!4638914)))

(declare-fun c!1442300 () Bool)

(assert (=> d!2352856 (= c!1442300 (isEmpty!42318 s1!4084))))

(assert (=> d!2352856 (validRegex!11477 r1!6227)))

(assert (=> d!2352856 (= (matchR!10503 r1!6227 s1!4084) lt!2679254)))

(assert (= (and d!2352856 c!1442300) b!7846815))

(assert (= (and d!2352856 (not c!1442300)) b!7846811))

(assert (= (and d!2352856 c!1442298) b!7846814))

(assert (= (and d!2352856 (not c!1442298)) b!7846817))

(assert (= (and b!7846817 c!1442299) b!7846807))

(assert (= (and b!7846817 (not c!1442299)) b!7846813))

(assert (= (and b!7846813 (not res!3120598)) b!7846805))

(assert (= (and b!7846805 res!3120602) b!7846808))

(assert (= (and b!7846808 res!3120596) b!7846810))

(assert (= (and b!7846810 res!3120599) b!7846806))

(assert (= (and b!7846805 (not res!3120595)) b!7846812))

(assert (= (and b!7846812 res!3120601) b!7846809))

(assert (= (and b!7846809 (not res!3120600)) b!7846816))

(assert (= (and b!7846816 (not res!3120597)) b!7846818))

(assert (= (or b!7846814 b!7846808 b!7846809) bm!727116))

(declare-fun m!8256320 () Bool)

(assert (=> b!7846810 m!8256320))

(assert (=> b!7846810 m!8256320))

(declare-fun m!8256322 () Bool)

(assert (=> b!7846810 m!8256322))

(declare-fun m!8256324 () Bool)

(assert (=> b!7846811 m!8256324))

(assert (=> b!7846811 m!8256324))

(declare-fun m!8256326 () Bool)

(assert (=> b!7846811 m!8256326))

(assert (=> b!7846811 m!8256320))

(assert (=> b!7846811 m!8256326))

(assert (=> b!7846811 m!8256320))

(declare-fun m!8256328 () Bool)

(assert (=> b!7846811 m!8256328))

(assert (=> b!7846815 m!8256292))

(declare-fun m!8256330 () Bool)

(assert (=> bm!727116 m!8256330))

(assert (=> d!2352856 m!8256330))

(assert (=> d!2352856 m!8256302))

(assert (=> b!7846816 m!8256320))

(assert (=> b!7846816 m!8256320))

(assert (=> b!7846816 m!8256322))

(assert (=> b!7846806 m!8256324))

(assert (=> b!7846818 m!8256324))

(assert (=> b!7846737 d!2352856))

(declare-fun b!7846879 () Bool)

(declare-fun e!4638953 () Bool)

(declare-fun e!4638952 () Bool)

(assert (=> b!7846879 (= e!4638953 e!4638952)))

(declare-fun res!3120641 () Bool)

(assert (=> b!7846879 (= res!3120641 (not (nullable!9341 (reg!21396 (Concat!29912 r1!6227 r2!6165)))))))

(assert (=> b!7846879 (=> (not res!3120641) (not e!4638952))))

(declare-fun b!7846880 () Bool)

(declare-fun res!3120639 () Bool)

(declare-fun e!4638958 () Bool)

(assert (=> b!7846880 (=> (not res!3120639) (not e!4638958))))

(declare-fun call!727131 () Bool)

(assert (=> b!7846880 (= res!3120639 call!727131)))

(declare-fun e!4638957 () Bool)

(assert (=> b!7846880 (= e!4638957 e!4638958)))

(declare-fun b!7846881 () Bool)

(declare-fun call!727132 () Bool)

(assert (=> b!7846881 (= e!4638952 call!727132)))

(declare-fun bm!727126 () Bool)

(assert (=> bm!727126 (= call!727131 call!727132)))

(declare-fun d!2352864 () Bool)

(declare-fun res!3120640 () Bool)

(declare-fun e!4638956 () Bool)

(assert (=> d!2352864 (=> res!3120640 e!4638956)))

(assert (=> d!2352864 (= res!3120640 ((_ is ElementMatch!21067) (Concat!29912 r1!6227 r2!6165)))))

(assert (=> d!2352864 (= (validRegex!11477 (Concat!29912 r1!6227 r2!6165)) e!4638956)))

(declare-fun b!7846882 () Bool)

(declare-fun e!4638955 () Bool)

(declare-fun e!4638954 () Bool)

(assert (=> b!7846882 (= e!4638955 e!4638954)))

(declare-fun res!3120638 () Bool)

(assert (=> b!7846882 (=> (not res!3120638) (not e!4638954))))

(declare-fun call!727133 () Bool)

(assert (=> b!7846882 (= res!3120638 call!727133)))

(declare-fun c!1442314 () Bool)

(declare-fun c!1442315 () Bool)

(declare-fun bm!727127 () Bool)

(assert (=> bm!727127 (= call!727132 (validRegex!11477 (ite c!1442315 (reg!21396 (Concat!29912 r1!6227 r2!6165)) (ite c!1442314 (regOne!42647 (Concat!29912 r1!6227 r2!6165)) (regTwo!42646 (Concat!29912 r1!6227 r2!6165))))))))

(declare-fun b!7846883 () Bool)

(assert (=> b!7846883 (= e!4638954 call!727131)))

(declare-fun b!7846884 () Bool)

(declare-fun res!3120637 () Bool)

(assert (=> b!7846884 (=> res!3120637 e!4638955)))

(assert (=> b!7846884 (= res!3120637 (not ((_ is Concat!29912) (Concat!29912 r1!6227 r2!6165))))))

(assert (=> b!7846884 (= e!4638957 e!4638955)))

(declare-fun bm!727128 () Bool)

(assert (=> bm!727128 (= call!727133 (validRegex!11477 (ite c!1442314 (regTwo!42647 (Concat!29912 r1!6227 r2!6165)) (regOne!42646 (Concat!29912 r1!6227 r2!6165)))))))

(declare-fun b!7846885 () Bool)

(assert (=> b!7846885 (= e!4638953 e!4638957)))

(assert (=> b!7846885 (= c!1442314 ((_ is Union!21067) (Concat!29912 r1!6227 r2!6165)))))

(declare-fun b!7846886 () Bool)

(assert (=> b!7846886 (= e!4638956 e!4638953)))

(assert (=> b!7846886 (= c!1442315 ((_ is Star!21067) (Concat!29912 r1!6227 r2!6165)))))

(declare-fun b!7846887 () Bool)

(assert (=> b!7846887 (= e!4638958 call!727133)))

(assert (= (and d!2352864 (not res!3120640)) b!7846886))

(assert (= (and b!7846886 c!1442315) b!7846879))

(assert (= (and b!7846886 (not c!1442315)) b!7846885))

(assert (= (and b!7846879 res!3120641) b!7846881))

(assert (= (and b!7846885 c!1442314) b!7846880))

(assert (= (and b!7846885 (not c!1442314)) b!7846884))

(assert (= (and b!7846880 res!3120639) b!7846887))

(assert (= (and b!7846884 (not res!3120637)) b!7846882))

(assert (= (and b!7846882 res!3120638) b!7846883))

(assert (= (or b!7846880 b!7846883) bm!727126))

(assert (= (or b!7846887 b!7846882) bm!727128))

(assert (= (or b!7846881 bm!727126) bm!727127))

(declare-fun m!8256340 () Bool)

(assert (=> b!7846879 m!8256340))

(declare-fun m!8256346 () Bool)

(assert (=> bm!727127 m!8256346))

(declare-fun m!8256350 () Bool)

(assert (=> bm!727128 m!8256350))

(assert (=> b!7846730 d!2352864))

(declare-fun b!7846888 () Bool)

(declare-fun e!4638960 () Bool)

(declare-fun e!4638959 () Bool)

(assert (=> b!7846888 (= e!4638960 e!4638959)))

(declare-fun res!3120646 () Bool)

(assert (=> b!7846888 (= res!3120646 (not (nullable!9341 (reg!21396 r1!6227))))))

(assert (=> b!7846888 (=> (not res!3120646) (not e!4638959))))

(declare-fun b!7846889 () Bool)

(declare-fun res!3120644 () Bool)

(declare-fun e!4638965 () Bool)

(assert (=> b!7846889 (=> (not res!3120644) (not e!4638965))))

(declare-fun call!727134 () Bool)

(assert (=> b!7846889 (= res!3120644 call!727134)))

(declare-fun e!4638964 () Bool)

(assert (=> b!7846889 (= e!4638964 e!4638965)))

(declare-fun b!7846890 () Bool)

(declare-fun call!727135 () Bool)

(assert (=> b!7846890 (= e!4638959 call!727135)))

(declare-fun bm!727129 () Bool)

(assert (=> bm!727129 (= call!727134 call!727135)))

(declare-fun d!2352866 () Bool)

(declare-fun res!3120645 () Bool)

(declare-fun e!4638963 () Bool)

(assert (=> d!2352866 (=> res!3120645 e!4638963)))

(assert (=> d!2352866 (= res!3120645 ((_ is ElementMatch!21067) r1!6227))))

(assert (=> d!2352866 (= (validRegex!11477 r1!6227) e!4638963)))

(declare-fun b!7846891 () Bool)

(declare-fun e!4638962 () Bool)

(declare-fun e!4638961 () Bool)

(assert (=> b!7846891 (= e!4638962 e!4638961)))

(declare-fun res!3120643 () Bool)

(assert (=> b!7846891 (=> (not res!3120643) (not e!4638961))))

(declare-fun call!727136 () Bool)

(assert (=> b!7846891 (= res!3120643 call!727136)))

(declare-fun c!1442316 () Bool)

(declare-fun c!1442317 () Bool)

(declare-fun bm!727130 () Bool)

(assert (=> bm!727130 (= call!727135 (validRegex!11477 (ite c!1442317 (reg!21396 r1!6227) (ite c!1442316 (regOne!42647 r1!6227) (regTwo!42646 r1!6227)))))))

(declare-fun b!7846892 () Bool)

(assert (=> b!7846892 (= e!4638961 call!727134)))

(declare-fun b!7846893 () Bool)

(declare-fun res!3120642 () Bool)

(assert (=> b!7846893 (=> res!3120642 e!4638962)))

(assert (=> b!7846893 (= res!3120642 (not ((_ is Concat!29912) r1!6227)))))

(assert (=> b!7846893 (= e!4638964 e!4638962)))

(declare-fun bm!727131 () Bool)

(assert (=> bm!727131 (= call!727136 (validRegex!11477 (ite c!1442316 (regTwo!42647 r1!6227) (regOne!42646 r1!6227))))))

(declare-fun b!7846894 () Bool)

(assert (=> b!7846894 (= e!4638960 e!4638964)))

(assert (=> b!7846894 (= c!1442316 ((_ is Union!21067) r1!6227))))

(declare-fun b!7846895 () Bool)

(assert (=> b!7846895 (= e!4638963 e!4638960)))

(assert (=> b!7846895 (= c!1442317 ((_ is Star!21067) r1!6227))))

(declare-fun b!7846896 () Bool)

(assert (=> b!7846896 (= e!4638965 call!727136)))

(assert (= (and d!2352866 (not res!3120645)) b!7846895))

(assert (= (and b!7846895 c!1442317) b!7846888))

(assert (= (and b!7846895 (not c!1442317)) b!7846894))

(assert (= (and b!7846888 res!3120646) b!7846890))

(assert (= (and b!7846894 c!1442316) b!7846889))

(assert (= (and b!7846894 (not c!1442316)) b!7846893))

(assert (= (and b!7846889 res!3120644) b!7846896))

(assert (= (and b!7846893 (not res!3120642)) b!7846891))

(assert (= (and b!7846891 res!3120643) b!7846892))

(assert (= (or b!7846889 b!7846892) bm!727129))

(assert (= (or b!7846896 b!7846891) bm!727131))

(assert (= (or b!7846890 bm!727129) bm!727130))

(declare-fun m!8256352 () Bool)

(assert (=> b!7846888 m!8256352))

(declare-fun m!8256354 () Bool)

(assert (=> bm!727130 m!8256354))

(declare-fun m!8256356 () Bool)

(assert (=> bm!727131 m!8256356))

(assert (=> start!743018 d!2352866))

(declare-fun b!7846911 () Bool)

(declare-fun res!3120655 () Bool)

(declare-fun e!4638974 () Bool)

(assert (=> b!7846911 (=> res!3120655 e!4638974)))

(declare-fun e!4638975 () Bool)

(assert (=> b!7846911 (= res!3120655 e!4638975)))

(declare-fun res!3120662 () Bool)

(assert (=> b!7846911 (=> (not res!3120662) (not e!4638975))))

(declare-fun lt!2679259 () Bool)

(assert (=> b!7846911 (= res!3120662 lt!2679259)))

(declare-fun b!7846912 () Bool)

(assert (=> b!7846912 (= e!4638975 (= (head!16029 s2!3706) (c!1442283 r2!6165)))))

(declare-fun b!7846913 () Bool)

(declare-fun e!4638976 () Bool)

(assert (=> b!7846913 (= e!4638976 (not lt!2679259))))

(declare-fun b!7846914 () Bool)

(declare-fun res!3120656 () Bool)

(assert (=> b!7846914 (=> (not res!3120656) (not e!4638975))))

(declare-fun call!727138 () Bool)

(assert (=> b!7846914 (= res!3120656 (not call!727138))))

(declare-fun b!7846915 () Bool)

(declare-fun e!4638973 () Bool)

(declare-fun e!4638979 () Bool)

(assert (=> b!7846915 (= e!4638973 e!4638979)))

(declare-fun res!3120660 () Bool)

(assert (=> b!7846915 (=> res!3120660 e!4638979)))

(assert (=> b!7846915 (= res!3120660 call!727138)))

(declare-fun b!7846916 () Bool)

(declare-fun res!3120659 () Bool)

(assert (=> b!7846916 (=> (not res!3120659) (not e!4638975))))

(assert (=> b!7846916 (= res!3120659 (isEmpty!42318 (tail!15572 s2!3706)))))

(declare-fun b!7846917 () Bool)

(declare-fun e!4638977 () Bool)

(assert (=> b!7846917 (= e!4638977 (matchR!10503 (derivativeStep!6304 r2!6165 (head!16029 s2!3706)) (tail!15572 s2!3706)))))

(declare-fun b!7846918 () Bool)

(assert (=> b!7846918 (= e!4638974 e!4638973)))

(declare-fun res!3120661 () Bool)

(assert (=> b!7846918 (=> (not res!3120661) (not e!4638973))))

(assert (=> b!7846918 (= res!3120661 (not lt!2679259))))

(declare-fun b!7846919 () Bool)

(declare-fun res!3120658 () Bool)

(assert (=> b!7846919 (=> res!3120658 e!4638974)))

(assert (=> b!7846919 (= res!3120658 (not ((_ is ElementMatch!21067) r2!6165)))))

(assert (=> b!7846919 (= e!4638976 e!4638974)))

(declare-fun b!7846920 () Bool)

(declare-fun e!4638978 () Bool)

(assert (=> b!7846920 (= e!4638978 (= lt!2679259 call!727138))))

(declare-fun b!7846921 () Bool)

(assert (=> b!7846921 (= e!4638977 (nullable!9341 r2!6165))))

(declare-fun b!7846922 () Bool)

(declare-fun res!3120657 () Bool)

(assert (=> b!7846922 (=> res!3120657 e!4638979)))

(assert (=> b!7846922 (= res!3120657 (not (isEmpty!42318 (tail!15572 s2!3706))))))

(declare-fun b!7846923 () Bool)

(assert (=> b!7846923 (= e!4638978 e!4638976)))

(declare-fun c!1442322 () Bool)

(assert (=> b!7846923 (= c!1442322 ((_ is EmptyLang!21067) r2!6165))))

(declare-fun b!7846924 () Bool)

(assert (=> b!7846924 (= e!4638979 (not (= (head!16029 s2!3706) (c!1442283 r2!6165))))))

(declare-fun bm!727133 () Bool)

(assert (=> bm!727133 (= call!727138 (isEmpty!42318 s2!3706))))

(declare-fun d!2352870 () Bool)

(assert (=> d!2352870 e!4638978))

(declare-fun c!1442321 () Bool)

(assert (=> d!2352870 (= c!1442321 ((_ is EmptyExpr!21067) r2!6165))))

(assert (=> d!2352870 (= lt!2679259 e!4638977)))

(declare-fun c!1442323 () Bool)

(assert (=> d!2352870 (= c!1442323 (isEmpty!42318 s2!3706))))

(assert (=> d!2352870 (validRegex!11477 r2!6165)))

(assert (=> d!2352870 (= (matchR!10503 r2!6165 s2!3706) lt!2679259)))

(assert (= (and d!2352870 c!1442323) b!7846921))

(assert (= (and d!2352870 (not c!1442323)) b!7846917))

(assert (= (and d!2352870 c!1442321) b!7846920))

(assert (= (and d!2352870 (not c!1442321)) b!7846923))

(assert (= (and b!7846923 c!1442322) b!7846913))

(assert (= (and b!7846923 (not c!1442322)) b!7846919))

(assert (= (and b!7846919 (not res!3120658)) b!7846911))

(assert (= (and b!7846911 res!3120662) b!7846914))

(assert (= (and b!7846914 res!3120656) b!7846916))

(assert (= (and b!7846916 res!3120659) b!7846912))

(assert (= (and b!7846911 (not res!3120655)) b!7846918))

(assert (= (and b!7846918 res!3120661) b!7846915))

(assert (= (and b!7846915 (not res!3120660)) b!7846922))

(assert (= (and b!7846922 (not res!3120657)) b!7846924))

(assert (= (or b!7846920 b!7846914 b!7846915) bm!727133))

(declare-fun m!8256370 () Bool)

(assert (=> b!7846916 m!8256370))

(assert (=> b!7846916 m!8256370))

(declare-fun m!8256372 () Bool)

(assert (=> b!7846916 m!8256372))

(declare-fun m!8256374 () Bool)

(assert (=> b!7846917 m!8256374))

(assert (=> b!7846917 m!8256374))

(declare-fun m!8256376 () Bool)

(assert (=> b!7846917 m!8256376))

(assert (=> b!7846917 m!8256370))

(assert (=> b!7846917 m!8256376))

(assert (=> b!7846917 m!8256370))

(declare-fun m!8256378 () Bool)

(assert (=> b!7846917 m!8256378))

(declare-fun m!8256380 () Bool)

(assert (=> b!7846921 m!8256380))

(declare-fun m!8256382 () Bool)

(assert (=> bm!727133 m!8256382))

(assert (=> d!2352870 m!8256382))

(assert (=> d!2352870 m!8256288))

(assert (=> b!7846922 m!8256370))

(assert (=> b!7846922 m!8256370))

(assert (=> b!7846922 m!8256372))

(assert (=> b!7846912 m!8256374))

(assert (=> b!7846924 m!8256374))

(assert (=> b!7846740 d!2352870))

(declare-fun b!7846939 () Bool)

(declare-fun e!4638988 () Bool)

(declare-fun e!4638987 () Bool)

(assert (=> b!7846939 (= e!4638988 e!4638987)))

(declare-fun res!3120675 () Bool)

(assert (=> b!7846939 (= res!3120675 (not (nullable!9341 (reg!21396 r2!6165))))))

(assert (=> b!7846939 (=> (not res!3120675) (not e!4638987))))

(declare-fun b!7846940 () Bool)

(declare-fun res!3120673 () Bool)

(declare-fun e!4638993 () Bool)

(assert (=> b!7846940 (=> (not res!3120673) (not e!4638993))))

(declare-fun call!727140 () Bool)

(assert (=> b!7846940 (= res!3120673 call!727140)))

(declare-fun e!4638992 () Bool)

(assert (=> b!7846940 (= e!4638992 e!4638993)))

(declare-fun b!7846941 () Bool)

(declare-fun call!727141 () Bool)

(assert (=> b!7846941 (= e!4638987 call!727141)))

(declare-fun bm!727135 () Bool)

(assert (=> bm!727135 (= call!727140 call!727141)))

(declare-fun d!2352874 () Bool)

(declare-fun res!3120674 () Bool)

(declare-fun e!4638991 () Bool)

(assert (=> d!2352874 (=> res!3120674 e!4638991)))

(assert (=> d!2352874 (= res!3120674 ((_ is ElementMatch!21067) r2!6165))))

(assert (=> d!2352874 (= (validRegex!11477 r2!6165) e!4638991)))

(declare-fun b!7846942 () Bool)

(declare-fun e!4638990 () Bool)

(declare-fun e!4638989 () Bool)

(assert (=> b!7846942 (= e!4638990 e!4638989)))

(declare-fun res!3120672 () Bool)

(assert (=> b!7846942 (=> (not res!3120672) (not e!4638989))))

(declare-fun call!727142 () Bool)

(assert (=> b!7846942 (= res!3120672 call!727142)))

(declare-fun c!1442328 () Bool)

(declare-fun c!1442327 () Bool)

(declare-fun bm!727136 () Bool)

(assert (=> bm!727136 (= call!727141 (validRegex!11477 (ite c!1442328 (reg!21396 r2!6165) (ite c!1442327 (regOne!42647 r2!6165) (regTwo!42646 r2!6165)))))))

(declare-fun b!7846943 () Bool)

(assert (=> b!7846943 (= e!4638989 call!727140)))

(declare-fun b!7846944 () Bool)

(declare-fun res!3120671 () Bool)

(assert (=> b!7846944 (=> res!3120671 e!4638990)))

(assert (=> b!7846944 (= res!3120671 (not ((_ is Concat!29912) r2!6165)))))

(assert (=> b!7846944 (= e!4638992 e!4638990)))

(declare-fun bm!727137 () Bool)

(assert (=> bm!727137 (= call!727142 (validRegex!11477 (ite c!1442327 (regTwo!42647 r2!6165) (regOne!42646 r2!6165))))))

(declare-fun b!7846945 () Bool)

(assert (=> b!7846945 (= e!4638988 e!4638992)))

(assert (=> b!7846945 (= c!1442327 ((_ is Union!21067) r2!6165))))

(declare-fun b!7846946 () Bool)

(assert (=> b!7846946 (= e!4638991 e!4638988)))

(assert (=> b!7846946 (= c!1442328 ((_ is Star!21067) r2!6165))))

(declare-fun b!7846947 () Bool)

(assert (=> b!7846947 (= e!4638993 call!727142)))

(assert (= (and d!2352874 (not res!3120674)) b!7846946))

(assert (= (and b!7846946 c!1442328) b!7846939))

(assert (= (and b!7846946 (not c!1442328)) b!7846945))

(assert (= (and b!7846939 res!3120675) b!7846941))

(assert (= (and b!7846945 c!1442327) b!7846940))

(assert (= (and b!7846945 (not c!1442327)) b!7846944))

(assert (= (and b!7846940 res!3120673) b!7846947))

(assert (= (and b!7846944 (not res!3120671)) b!7846942))

(assert (= (and b!7846942 res!3120672) b!7846943))

(assert (= (or b!7846940 b!7846943) bm!727135))

(assert (= (or b!7846947 b!7846942) bm!727137))

(assert (= (or b!7846941 bm!727135) bm!727136))

(declare-fun m!8256396 () Bool)

(assert (=> b!7846939 m!8256396))

(declare-fun m!8256400 () Bool)

(assert (=> bm!727136 m!8256400))

(declare-fun m!8256404 () Bool)

(assert (=> bm!727137 m!8256404))

(assert (=> b!7846727 d!2352874))

(declare-fun b!7846948 () Bool)

(declare-fun res!3120676 () Bool)

(declare-fun e!4638995 () Bool)

(assert (=> b!7846948 (=> res!3120676 e!4638995)))

(declare-fun e!4638996 () Bool)

(assert (=> b!7846948 (= res!3120676 e!4638996)))

(declare-fun res!3120683 () Bool)

(assert (=> b!7846948 (=> (not res!3120683) (not e!4638996))))

(declare-fun lt!2679261 () Bool)

(assert (=> b!7846948 (= res!3120683 lt!2679261)))

(declare-fun b!7846949 () Bool)

(assert (=> b!7846949 (= e!4638996 (= (head!16029 (++!18077 (t!388661 s1!4084) s2!3706)) (c!1442283 (Concat!29912 lt!2679250 r2!6165))))))

(declare-fun b!7846950 () Bool)

(declare-fun e!4638997 () Bool)

(assert (=> b!7846950 (= e!4638997 (not lt!2679261))))

(declare-fun b!7846951 () Bool)

(declare-fun res!3120677 () Bool)

(assert (=> b!7846951 (=> (not res!3120677) (not e!4638996))))

(declare-fun call!727143 () Bool)

(assert (=> b!7846951 (= res!3120677 (not call!727143))))

(declare-fun b!7846952 () Bool)

(declare-fun e!4638994 () Bool)

(declare-fun e!4639000 () Bool)

(assert (=> b!7846952 (= e!4638994 e!4639000)))

(declare-fun res!3120681 () Bool)

(assert (=> b!7846952 (=> res!3120681 e!4639000)))

(assert (=> b!7846952 (= res!3120681 call!727143)))

(declare-fun b!7846953 () Bool)

(declare-fun res!3120680 () Bool)

(assert (=> b!7846953 (=> (not res!3120680) (not e!4638996))))

(assert (=> b!7846953 (= res!3120680 (isEmpty!42318 (tail!15572 (++!18077 (t!388661 s1!4084) s2!3706))))))

(declare-fun e!4638998 () Bool)

(declare-fun b!7846954 () Bool)

(assert (=> b!7846954 (= e!4638998 (matchR!10503 (derivativeStep!6304 (Concat!29912 lt!2679250 r2!6165) (head!16029 (++!18077 (t!388661 s1!4084) s2!3706))) (tail!15572 (++!18077 (t!388661 s1!4084) s2!3706))))))

(declare-fun b!7846955 () Bool)

(assert (=> b!7846955 (= e!4638995 e!4638994)))

(declare-fun res!3120682 () Bool)

(assert (=> b!7846955 (=> (not res!3120682) (not e!4638994))))

(assert (=> b!7846955 (= res!3120682 (not lt!2679261))))

(declare-fun b!7846956 () Bool)

(declare-fun res!3120679 () Bool)

(assert (=> b!7846956 (=> res!3120679 e!4638995)))

(assert (=> b!7846956 (= res!3120679 (not ((_ is ElementMatch!21067) (Concat!29912 lt!2679250 r2!6165))))))

(assert (=> b!7846956 (= e!4638997 e!4638995)))

(declare-fun b!7846957 () Bool)

(declare-fun e!4638999 () Bool)

(assert (=> b!7846957 (= e!4638999 (= lt!2679261 call!727143))))

(declare-fun b!7846958 () Bool)

(assert (=> b!7846958 (= e!4638998 (nullable!9341 (Concat!29912 lt!2679250 r2!6165)))))

(declare-fun b!7846959 () Bool)

(declare-fun res!3120678 () Bool)

(assert (=> b!7846959 (=> res!3120678 e!4639000)))

(assert (=> b!7846959 (= res!3120678 (not (isEmpty!42318 (tail!15572 (++!18077 (t!388661 s1!4084) s2!3706)))))))

(declare-fun b!7846960 () Bool)

(assert (=> b!7846960 (= e!4638999 e!4638997)))

(declare-fun c!1442330 () Bool)

(assert (=> b!7846960 (= c!1442330 ((_ is EmptyLang!21067) (Concat!29912 lt!2679250 r2!6165)))))

(declare-fun b!7846961 () Bool)

(assert (=> b!7846961 (= e!4639000 (not (= (head!16029 (++!18077 (t!388661 s1!4084) s2!3706)) (c!1442283 (Concat!29912 lt!2679250 r2!6165)))))))

(declare-fun bm!727138 () Bool)

(assert (=> bm!727138 (= call!727143 (isEmpty!42318 (++!18077 (t!388661 s1!4084) s2!3706)))))

(declare-fun d!2352876 () Bool)

(assert (=> d!2352876 e!4638999))

(declare-fun c!1442329 () Bool)

(assert (=> d!2352876 (= c!1442329 ((_ is EmptyExpr!21067) (Concat!29912 lt!2679250 r2!6165)))))

(assert (=> d!2352876 (= lt!2679261 e!4638998)))

(declare-fun c!1442331 () Bool)

(assert (=> d!2352876 (= c!1442331 (isEmpty!42318 (++!18077 (t!388661 s1!4084) s2!3706)))))

(assert (=> d!2352876 (validRegex!11477 (Concat!29912 lt!2679250 r2!6165))))

(assert (=> d!2352876 (= (matchR!10503 (Concat!29912 lt!2679250 r2!6165) (++!18077 (t!388661 s1!4084) s2!3706)) lt!2679261)))

(assert (= (and d!2352876 c!1442331) b!7846958))

(assert (= (and d!2352876 (not c!1442331)) b!7846954))

(assert (= (and d!2352876 c!1442329) b!7846957))

(assert (= (and d!2352876 (not c!1442329)) b!7846960))

(assert (= (and b!7846960 c!1442330) b!7846950))

(assert (= (and b!7846960 (not c!1442330)) b!7846956))

(assert (= (and b!7846956 (not res!3120679)) b!7846948))

(assert (= (and b!7846948 res!3120683) b!7846951))

(assert (= (and b!7846951 res!3120677) b!7846953))

(assert (= (and b!7846953 res!3120680) b!7846949))

(assert (= (and b!7846948 (not res!3120676)) b!7846955))

(assert (= (and b!7846955 res!3120682) b!7846952))

(assert (= (and b!7846952 (not res!3120681)) b!7846959))

(assert (= (and b!7846959 (not res!3120678)) b!7846961))

(assert (= (or b!7846957 b!7846951 b!7846952) bm!727138))

(assert (=> b!7846953 m!8256296))

(declare-fun m!8256406 () Bool)

(assert (=> b!7846953 m!8256406))

(assert (=> b!7846953 m!8256406))

(declare-fun m!8256408 () Bool)

(assert (=> b!7846953 m!8256408))

(assert (=> b!7846954 m!8256296))

(declare-fun m!8256410 () Bool)

(assert (=> b!7846954 m!8256410))

(assert (=> b!7846954 m!8256410))

(declare-fun m!8256412 () Bool)

(assert (=> b!7846954 m!8256412))

(assert (=> b!7846954 m!8256296))

(assert (=> b!7846954 m!8256406))

(assert (=> b!7846954 m!8256412))

(assert (=> b!7846954 m!8256406))

(declare-fun m!8256414 () Bool)

(assert (=> b!7846954 m!8256414))

(declare-fun m!8256416 () Bool)

(assert (=> b!7846958 m!8256416))

(assert (=> bm!727138 m!8256296))

(declare-fun m!8256418 () Bool)

(assert (=> bm!727138 m!8256418))

(assert (=> d!2352876 m!8256296))

(assert (=> d!2352876 m!8256418))

(declare-fun m!8256420 () Bool)

(assert (=> d!2352876 m!8256420))

(assert (=> b!7846959 m!8256296))

(assert (=> b!7846959 m!8256406))

(assert (=> b!7846959 m!8256406))

(assert (=> b!7846959 m!8256408))

(assert (=> b!7846949 m!8256296))

(assert (=> b!7846949 m!8256410))

(assert (=> b!7846961 m!8256296))

(assert (=> b!7846961 m!8256410))

(assert (=> b!7846728 d!2352876))

(declare-fun d!2352880 () Bool)

(declare-fun nullableFct!3677 (Regex!21067) Bool)

(assert (=> d!2352880 (= (nullable!9341 r1!6227) (nullableFct!3677 r1!6227))))

(declare-fun bs!1967039 () Bool)

(assert (= bs!1967039 d!2352880))

(declare-fun m!8256422 () Bool)

(assert (=> bs!1967039 m!8256422))

(assert (=> b!7846728 d!2352880))

(declare-fun b!7847005 () Bool)

(declare-fun e!4639027 () Regex!21067)

(declare-fun call!727163 () Regex!21067)

(assert (=> b!7847005 (= e!4639027 (Concat!29912 call!727163 r1!6227))))

(declare-fun bm!727155 () Bool)

(declare-fun call!727162 () Regex!21067)

(declare-fun call!727160 () Regex!21067)

(assert (=> bm!727155 (= call!727162 call!727160)))

(declare-fun c!1442352 () Bool)

(declare-fun c!1442353 () Bool)

(declare-fun bm!727156 () Bool)

(declare-fun call!727161 () Regex!21067)

(assert (=> bm!727156 (= call!727161 (derivativeStep!6304 (ite c!1442352 (regOne!42647 r1!6227) (ite c!1442353 (reg!21396 r1!6227) (regOne!42646 r1!6227))) (h!80250 s1!4084)))))

(declare-fun b!7847006 () Bool)

(declare-fun e!4639025 () Regex!21067)

(assert (=> b!7847006 (= e!4639025 (Union!21067 (Concat!29912 call!727162 (regTwo!42646 r1!6227)) EmptyLang!21067))))

(declare-fun b!7847007 () Bool)

(declare-fun e!4639028 () Regex!21067)

(declare-fun e!4639026 () Regex!21067)

(assert (=> b!7847007 (= e!4639028 e!4639026)))

(declare-fun c!1442355 () Bool)

(assert (=> b!7847007 (= c!1442355 ((_ is ElementMatch!21067) r1!6227))))

(declare-fun bm!727157 () Bool)

(assert (=> bm!727157 (= call!727163 call!727161)))

(declare-fun b!7847008 () Bool)

(declare-fun c!1442356 () Bool)

(assert (=> b!7847008 (= c!1442356 (nullable!9341 (regOne!42646 r1!6227)))))

(assert (=> b!7847008 (= e!4639027 e!4639025)))

(declare-fun b!7847009 () Bool)

(assert (=> b!7847009 (= e!4639026 (ite (= (h!80250 s1!4084) (c!1442283 r1!6227)) EmptyExpr!21067 EmptyLang!21067))))

(declare-fun d!2352882 () Bool)

(declare-fun lt!2679269 () Regex!21067)

(assert (=> d!2352882 (validRegex!11477 lt!2679269)))

(assert (=> d!2352882 (= lt!2679269 e!4639028)))

(declare-fun c!1442354 () Bool)

(assert (=> d!2352882 (= c!1442354 (or ((_ is EmptyExpr!21067) r1!6227) ((_ is EmptyLang!21067) r1!6227)))))

(assert (=> d!2352882 (validRegex!11477 r1!6227)))

(assert (=> d!2352882 (= (derivativeStep!6304 r1!6227 (h!80250 s1!4084)) lt!2679269)))

(declare-fun bm!727158 () Bool)

(assert (=> bm!727158 (= call!727160 (derivativeStep!6304 (ite c!1442352 (regTwo!42647 r1!6227) (ite c!1442356 (regTwo!42646 r1!6227) (regOne!42646 r1!6227))) (h!80250 s1!4084)))))

(declare-fun b!7847010 () Bool)

(assert (=> b!7847010 (= c!1442352 ((_ is Union!21067) r1!6227))))

(declare-fun e!4639024 () Regex!21067)

(assert (=> b!7847010 (= e!4639026 e!4639024)))

(declare-fun b!7847011 () Bool)

(assert (=> b!7847011 (= e!4639028 EmptyLang!21067)))

(declare-fun b!7847012 () Bool)

(assert (=> b!7847012 (= e!4639025 (Union!21067 (Concat!29912 call!727163 (regTwo!42646 r1!6227)) call!727162))))

(declare-fun b!7847013 () Bool)

(assert (=> b!7847013 (= e!4639024 e!4639027)))

(assert (=> b!7847013 (= c!1442353 ((_ is Star!21067) r1!6227))))

(declare-fun b!7847014 () Bool)

(assert (=> b!7847014 (= e!4639024 (Union!21067 call!727161 call!727160))))

(assert (= (and d!2352882 c!1442354) b!7847011))

(assert (= (and d!2352882 (not c!1442354)) b!7847007))

(assert (= (and b!7847007 c!1442355) b!7847009))

(assert (= (and b!7847007 (not c!1442355)) b!7847010))

(assert (= (and b!7847010 c!1442352) b!7847014))

(assert (= (and b!7847010 (not c!1442352)) b!7847013))

(assert (= (and b!7847013 c!1442353) b!7847005))

(assert (= (and b!7847013 (not c!1442353)) b!7847008))

(assert (= (and b!7847008 c!1442356) b!7847012))

(assert (= (and b!7847008 (not c!1442356)) b!7847006))

(assert (= (or b!7847012 b!7847006) bm!727155))

(assert (= (or b!7847005 b!7847012) bm!727157))

(assert (= (or b!7847014 bm!727155) bm!727158))

(assert (= (or b!7847014 bm!727157) bm!727156))

(declare-fun m!8256430 () Bool)

(assert (=> bm!727156 m!8256430))

(declare-fun m!8256432 () Bool)

(assert (=> b!7847008 m!8256432))

(declare-fun m!8256434 () Bool)

(assert (=> d!2352882 m!8256434))

(assert (=> d!2352882 m!8256302))

(declare-fun m!8256436 () Bool)

(assert (=> bm!727158 m!8256436))

(assert (=> b!7846728 d!2352882))

(declare-fun d!2352888 () Bool)

(assert (=> d!2352888 (matchR!10503 (Concat!29912 lt!2679250 r2!6165) (++!18077 (t!388661 s1!4084) s2!3706))))

(declare-fun lt!2679275 () Unit!168880)

(declare-fun choose!59636 (Regex!21067 Regex!21067 List!73926 List!73926) Unit!168880)

(assert (=> d!2352888 (= lt!2679275 (choose!59636 lt!2679250 r2!6165 (t!388661 s1!4084) s2!3706))))

(declare-fun e!4639040 () Bool)

(assert (=> d!2352888 e!4639040))

(declare-fun res!3120693 () Bool)

(assert (=> d!2352888 (=> (not res!3120693) (not e!4639040))))

(assert (=> d!2352888 (= res!3120693 (validRegex!11477 lt!2679250))))

(assert (=> d!2352888 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!438 lt!2679250 r2!6165 (t!388661 s1!4084) s2!3706) lt!2679275)))

(declare-fun b!7847035 () Bool)

(assert (=> b!7847035 (= e!4639040 (validRegex!11477 r2!6165))))

(assert (= (and d!2352888 res!3120693) b!7847035))

(assert (=> d!2352888 m!8256296))

(assert (=> d!2352888 m!8256296))

(assert (=> d!2352888 m!8256300))

(declare-fun m!8256446 () Bool)

(assert (=> d!2352888 m!8256446))

(declare-fun m!8256448 () Bool)

(assert (=> d!2352888 m!8256448))

(assert (=> b!7847035 m!8256288))

(assert (=> b!7846728 d!2352888))

(declare-fun b!7847114 () Bool)

(declare-fun e!4639070 () List!73926)

(assert (=> b!7847114 (= e!4639070 (Cons!73802 (h!80250 (t!388661 s1!4084)) (++!18077 (t!388661 (t!388661 s1!4084)) s2!3706)))))

(declare-fun b!7847116 () Bool)

(declare-fun e!4639071 () Bool)

(declare-fun lt!2679279 () List!73926)

(assert (=> b!7847116 (= e!4639071 (or (not (= s2!3706 Nil!73802)) (= lt!2679279 (t!388661 s1!4084))))))

(declare-fun b!7847113 () Bool)

(assert (=> b!7847113 (= e!4639070 s2!3706)))

(declare-fun d!2352892 () Bool)

(assert (=> d!2352892 e!4639071))

(declare-fun res!3120705 () Bool)

(assert (=> d!2352892 (=> (not res!3120705) (not e!4639071))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15665 (List!73926) (InoxSet C!42460))

(assert (=> d!2352892 (= res!3120705 (= (content!15665 lt!2679279) ((_ map or) (content!15665 (t!388661 s1!4084)) (content!15665 s2!3706))))))

(assert (=> d!2352892 (= lt!2679279 e!4639070)))

(declare-fun c!1442369 () Bool)

(assert (=> d!2352892 (= c!1442369 ((_ is Nil!73802) (t!388661 s1!4084)))))

(assert (=> d!2352892 (= (++!18077 (t!388661 s1!4084) s2!3706) lt!2679279)))

(declare-fun b!7847115 () Bool)

(declare-fun res!3120706 () Bool)

(assert (=> b!7847115 (=> (not res!3120706) (not e!4639071))))

(declare-fun size!42818 (List!73926) Int)

(assert (=> b!7847115 (= res!3120706 (= (size!42818 lt!2679279) (+ (size!42818 (t!388661 s1!4084)) (size!42818 s2!3706))))))

(assert (= (and d!2352892 c!1442369) b!7847113))

(assert (= (and d!2352892 (not c!1442369)) b!7847114))

(assert (= (and d!2352892 res!3120705) b!7847115))

(assert (= (and b!7847115 res!3120706) b!7847116))

(declare-fun m!8256470 () Bool)

(assert (=> b!7847114 m!8256470))

(declare-fun m!8256472 () Bool)

(assert (=> d!2352892 m!8256472))

(declare-fun m!8256474 () Bool)

(assert (=> d!2352892 m!8256474))

(declare-fun m!8256476 () Bool)

(assert (=> d!2352892 m!8256476))

(declare-fun m!8256478 () Bool)

(assert (=> b!7847115 m!8256478))

(declare-fun m!8256480 () Bool)

(assert (=> b!7847115 m!8256480))

(declare-fun m!8256482 () Bool)

(assert (=> b!7847115 m!8256482))

(assert (=> b!7846728 d!2352892))

(declare-fun b!7847128 () Bool)

(declare-fun e!4639074 () Bool)

(declare-fun tp!2323427 () Bool)

(declare-fun tp!2323424 () Bool)

(assert (=> b!7847128 (= e!4639074 (and tp!2323427 tp!2323424))))

(declare-fun b!7847129 () Bool)

(declare-fun tp!2323423 () Bool)

(assert (=> b!7847129 (= e!4639074 tp!2323423)))

(declare-fun b!7847127 () Bool)

(assert (=> b!7847127 (= e!4639074 tp_is_empty!52533)))

(declare-fun b!7847130 () Bool)

(declare-fun tp!2323425 () Bool)

(declare-fun tp!2323426 () Bool)

(assert (=> b!7847130 (= e!4639074 (and tp!2323425 tp!2323426))))

(assert (=> b!7846726 (= tp!2323337 e!4639074)))

(assert (= (and b!7846726 ((_ is ElementMatch!21067) (regOne!42647 r2!6165))) b!7847127))

(assert (= (and b!7846726 ((_ is Concat!29912) (regOne!42647 r2!6165))) b!7847128))

(assert (= (and b!7846726 ((_ is Star!21067) (regOne!42647 r2!6165))) b!7847129))

(assert (= (and b!7846726 ((_ is Union!21067) (regOne!42647 r2!6165))) b!7847130))

(declare-fun b!7847132 () Bool)

(declare-fun e!4639075 () Bool)

(declare-fun tp!2323432 () Bool)

(declare-fun tp!2323429 () Bool)

(assert (=> b!7847132 (= e!4639075 (and tp!2323432 tp!2323429))))

(declare-fun b!7847133 () Bool)

(declare-fun tp!2323428 () Bool)

(assert (=> b!7847133 (= e!4639075 tp!2323428)))

(declare-fun b!7847131 () Bool)

(assert (=> b!7847131 (= e!4639075 tp_is_empty!52533)))

(declare-fun b!7847134 () Bool)

(declare-fun tp!2323430 () Bool)

(declare-fun tp!2323431 () Bool)

(assert (=> b!7847134 (= e!4639075 (and tp!2323430 tp!2323431))))

(assert (=> b!7846726 (= tp!2323347 e!4639075)))

(assert (= (and b!7846726 ((_ is ElementMatch!21067) (regTwo!42647 r2!6165))) b!7847131))

(assert (= (and b!7846726 ((_ is Concat!29912) (regTwo!42647 r2!6165))) b!7847132))

(assert (= (and b!7846726 ((_ is Star!21067) (regTwo!42647 r2!6165))) b!7847133))

(assert (= (and b!7846726 ((_ is Union!21067) (regTwo!42647 r2!6165))) b!7847134))

(declare-fun b!7847139 () Bool)

(declare-fun e!4639078 () Bool)

(declare-fun tp!2323435 () Bool)

(assert (=> b!7847139 (= e!4639078 (and tp_is_empty!52533 tp!2323435))))

(assert (=> b!7846731 (= tp!2323338 e!4639078)))

(assert (= (and b!7846731 ((_ is Cons!73802) (t!388661 s1!4084))) b!7847139))

(declare-fun b!7847141 () Bool)

(declare-fun e!4639079 () Bool)

(declare-fun tp!2323440 () Bool)

(declare-fun tp!2323437 () Bool)

(assert (=> b!7847141 (= e!4639079 (and tp!2323440 tp!2323437))))

(declare-fun b!7847142 () Bool)

(declare-fun tp!2323436 () Bool)

(assert (=> b!7847142 (= e!4639079 tp!2323436)))

(declare-fun b!7847140 () Bool)

(assert (=> b!7847140 (= e!4639079 tp_is_empty!52533)))

(declare-fun b!7847143 () Bool)

(declare-fun tp!2323438 () Bool)

(declare-fun tp!2323439 () Bool)

(assert (=> b!7847143 (= e!4639079 (and tp!2323438 tp!2323439))))

(assert (=> b!7846732 (= tp!2323340 e!4639079)))

(assert (= (and b!7846732 ((_ is ElementMatch!21067) (reg!21396 r2!6165))) b!7847140))

(assert (= (and b!7846732 ((_ is Concat!29912) (reg!21396 r2!6165))) b!7847141))

(assert (= (and b!7846732 ((_ is Star!21067) (reg!21396 r2!6165))) b!7847142))

(assert (= (and b!7846732 ((_ is Union!21067) (reg!21396 r2!6165))) b!7847143))

(declare-fun b!7847145 () Bool)

(declare-fun e!4639080 () Bool)

(declare-fun tp!2323445 () Bool)

(declare-fun tp!2323442 () Bool)

(assert (=> b!7847145 (= e!4639080 (and tp!2323445 tp!2323442))))

(declare-fun b!7847146 () Bool)

(declare-fun tp!2323441 () Bool)

(assert (=> b!7847146 (= e!4639080 tp!2323441)))

(declare-fun b!7847144 () Bool)

(assert (=> b!7847144 (= e!4639080 tp_is_empty!52533)))

(declare-fun b!7847147 () Bool)

(declare-fun tp!2323443 () Bool)

(declare-fun tp!2323444 () Bool)

(assert (=> b!7847147 (= e!4639080 (and tp!2323443 tp!2323444))))

(assert (=> b!7846736 (= tp!2323341 e!4639080)))

(assert (= (and b!7846736 ((_ is ElementMatch!21067) (regOne!42646 r1!6227))) b!7847144))

(assert (= (and b!7846736 ((_ is Concat!29912) (regOne!42646 r1!6227))) b!7847145))

(assert (= (and b!7846736 ((_ is Star!21067) (regOne!42646 r1!6227))) b!7847146))

(assert (= (and b!7846736 ((_ is Union!21067) (regOne!42646 r1!6227))) b!7847147))

(declare-fun b!7847149 () Bool)

(declare-fun e!4639081 () Bool)

(declare-fun tp!2323450 () Bool)

(declare-fun tp!2323447 () Bool)

(assert (=> b!7847149 (= e!4639081 (and tp!2323450 tp!2323447))))

(declare-fun b!7847150 () Bool)

(declare-fun tp!2323446 () Bool)

(assert (=> b!7847150 (= e!4639081 tp!2323446)))

(declare-fun b!7847148 () Bool)

(assert (=> b!7847148 (= e!4639081 tp_is_empty!52533)))

(declare-fun b!7847151 () Bool)

(declare-fun tp!2323448 () Bool)

(declare-fun tp!2323449 () Bool)

(assert (=> b!7847151 (= e!4639081 (and tp!2323448 tp!2323449))))

(assert (=> b!7846736 (= tp!2323343 e!4639081)))

(assert (= (and b!7846736 ((_ is ElementMatch!21067) (regTwo!42646 r1!6227))) b!7847148))

(assert (= (and b!7846736 ((_ is Concat!29912) (regTwo!42646 r1!6227))) b!7847149))

(assert (= (and b!7846736 ((_ is Star!21067) (regTwo!42646 r1!6227))) b!7847150))

(assert (= (and b!7846736 ((_ is Union!21067) (regTwo!42646 r1!6227))) b!7847151))

(declare-fun b!7847153 () Bool)

(declare-fun e!4639082 () Bool)

(declare-fun tp!2323455 () Bool)

(declare-fun tp!2323452 () Bool)

(assert (=> b!7847153 (= e!4639082 (and tp!2323455 tp!2323452))))

(declare-fun b!7847154 () Bool)

(declare-fun tp!2323451 () Bool)

(assert (=> b!7847154 (= e!4639082 tp!2323451)))

(declare-fun b!7847152 () Bool)

(assert (=> b!7847152 (= e!4639082 tp_is_empty!52533)))

(declare-fun b!7847155 () Bool)

(declare-fun tp!2323453 () Bool)

(declare-fun tp!2323454 () Bool)

(assert (=> b!7847155 (= e!4639082 (and tp!2323453 tp!2323454))))

(assert (=> b!7846734 (= tp!2323339 e!4639082)))

(assert (= (and b!7846734 ((_ is ElementMatch!21067) (reg!21396 r1!6227))) b!7847152))

(assert (= (and b!7846734 ((_ is Concat!29912) (reg!21396 r1!6227))) b!7847153))

(assert (= (and b!7846734 ((_ is Star!21067) (reg!21396 r1!6227))) b!7847154))

(assert (= (and b!7846734 ((_ is Union!21067) (reg!21396 r1!6227))) b!7847155))

(declare-fun b!7847157 () Bool)

(declare-fun e!4639083 () Bool)

(declare-fun tp!2323460 () Bool)

(declare-fun tp!2323457 () Bool)

(assert (=> b!7847157 (= e!4639083 (and tp!2323460 tp!2323457))))

(declare-fun b!7847158 () Bool)

(declare-fun tp!2323456 () Bool)

(assert (=> b!7847158 (= e!4639083 tp!2323456)))

(declare-fun b!7847156 () Bool)

(assert (=> b!7847156 (= e!4639083 tp_is_empty!52533)))

(declare-fun b!7847159 () Bool)

(declare-fun tp!2323458 () Bool)

(declare-fun tp!2323459 () Bool)

(assert (=> b!7847159 (= e!4639083 (and tp!2323458 tp!2323459))))

(assert (=> b!7846739 (= tp!2323342 e!4639083)))

(assert (= (and b!7846739 ((_ is ElementMatch!21067) (regOne!42646 r2!6165))) b!7847156))

(assert (= (and b!7846739 ((_ is Concat!29912) (regOne!42646 r2!6165))) b!7847157))

(assert (= (and b!7846739 ((_ is Star!21067) (regOne!42646 r2!6165))) b!7847158))

(assert (= (and b!7846739 ((_ is Union!21067) (regOne!42646 r2!6165))) b!7847159))

(declare-fun b!7847161 () Bool)

(declare-fun e!4639084 () Bool)

(declare-fun tp!2323465 () Bool)

(declare-fun tp!2323462 () Bool)

(assert (=> b!7847161 (= e!4639084 (and tp!2323465 tp!2323462))))

(declare-fun b!7847162 () Bool)

(declare-fun tp!2323461 () Bool)

(assert (=> b!7847162 (= e!4639084 tp!2323461)))

(declare-fun b!7847160 () Bool)

(assert (=> b!7847160 (= e!4639084 tp_is_empty!52533)))

(declare-fun b!7847163 () Bool)

(declare-fun tp!2323463 () Bool)

(declare-fun tp!2323464 () Bool)

(assert (=> b!7847163 (= e!4639084 (and tp!2323463 tp!2323464))))

(assert (=> b!7846739 (= tp!2323346 e!4639084)))

(assert (= (and b!7846739 ((_ is ElementMatch!21067) (regTwo!42646 r2!6165))) b!7847160))

(assert (= (and b!7846739 ((_ is Concat!29912) (regTwo!42646 r2!6165))) b!7847161))

(assert (= (and b!7846739 ((_ is Star!21067) (regTwo!42646 r2!6165))) b!7847162))

(assert (= (and b!7846739 ((_ is Union!21067) (regTwo!42646 r2!6165))) b!7847163))

(declare-fun b!7847165 () Bool)

(declare-fun e!4639085 () Bool)

(declare-fun tp!2323470 () Bool)

(declare-fun tp!2323467 () Bool)

(assert (=> b!7847165 (= e!4639085 (and tp!2323470 tp!2323467))))

(declare-fun b!7847166 () Bool)

(declare-fun tp!2323466 () Bool)

(assert (=> b!7847166 (= e!4639085 tp!2323466)))

(declare-fun b!7847164 () Bool)

(assert (=> b!7847164 (= e!4639085 tp_is_empty!52533)))

(declare-fun b!7847167 () Bool)

(declare-fun tp!2323468 () Bool)

(declare-fun tp!2323469 () Bool)

(assert (=> b!7847167 (= e!4639085 (and tp!2323468 tp!2323469))))

(assert (=> b!7846729 (= tp!2323348 e!4639085)))

(assert (= (and b!7846729 ((_ is ElementMatch!21067) (regOne!42647 r1!6227))) b!7847164))

(assert (= (and b!7846729 ((_ is Concat!29912) (regOne!42647 r1!6227))) b!7847165))

(assert (= (and b!7846729 ((_ is Star!21067) (regOne!42647 r1!6227))) b!7847166))

(assert (= (and b!7846729 ((_ is Union!21067) (regOne!42647 r1!6227))) b!7847167))

(declare-fun b!7847169 () Bool)

(declare-fun e!4639086 () Bool)

(declare-fun tp!2323475 () Bool)

(declare-fun tp!2323472 () Bool)

(assert (=> b!7847169 (= e!4639086 (and tp!2323475 tp!2323472))))

(declare-fun b!7847170 () Bool)

(declare-fun tp!2323471 () Bool)

(assert (=> b!7847170 (= e!4639086 tp!2323471)))

(declare-fun b!7847168 () Bool)

(assert (=> b!7847168 (= e!4639086 tp_is_empty!52533)))

(declare-fun b!7847171 () Bool)

(declare-fun tp!2323473 () Bool)

(declare-fun tp!2323474 () Bool)

(assert (=> b!7847171 (= e!4639086 (and tp!2323473 tp!2323474))))

(assert (=> b!7846729 (= tp!2323344 e!4639086)))

(assert (= (and b!7846729 ((_ is ElementMatch!21067) (regTwo!42647 r1!6227))) b!7847168))

(assert (= (and b!7846729 ((_ is Concat!29912) (regTwo!42647 r1!6227))) b!7847169))

(assert (= (and b!7846729 ((_ is Star!21067) (regTwo!42647 r1!6227))) b!7847170))

(assert (= (and b!7846729 ((_ is Union!21067) (regTwo!42647 r1!6227))) b!7847171))

(declare-fun b!7847172 () Bool)

(declare-fun e!4639087 () Bool)

(declare-fun tp!2323476 () Bool)

(assert (=> b!7847172 (= e!4639087 (and tp_is_empty!52533 tp!2323476))))

(assert (=> b!7846738 (= tp!2323345 e!4639087)))

(assert (= (and b!7846738 ((_ is Cons!73802) (t!388661 s2!3706))) b!7847172))

(check-sat (not b!7847167) (not b!7847165) (not b!7846917) (not bm!727127) (not b!7847154) (not b!7847139) (not bm!727158) (not b!7847157) (not b!7847150) (not b!7847146) (not b!7847171) (not b!7846961) (not b!7846954) (not b!7847153) (not bm!727156) (not b!7846922) (not b!7847141) (not b!7846959) (not b!7846949) (not bm!727136) (not b!7847134) (not b!7846888) (not bm!727138) (not b!7846912) (not d!2352892) (not b!7846816) tp_is_empty!52533 (not d!2352880) (not b!7847163) (not b!7847133) (not b!7846958) (not bm!727130) (not b!7847132) (not b!7847161) (not d!2352882) (not b!7847130) (not b!7847128) (not b!7847115) (not b!7847158) (not b!7847008) (not b!7847149) (not b!7847143) (not b!7847172) (not b!7846879) (not b!7846924) (not bm!727137) (not bm!727116) (not bm!727133) (not b!7847147) (not bm!727128) (not b!7847129) (not b!7847151) (not bm!727131) (not d!2352876) (not b!7846815) (not b!7846810) (not d!2352856) (not b!7847169) (not b!7847114) (not b!7846921) (not b!7847166) (not b!7847159) (not d!2352888) (not d!2352870) (not b!7847162) (not b!7847155) (not b!7846806) (not b!7846818) (not b!7846953) (not b!7847142) (not b!7846916) (not b!7846939) (not b!7847145) (not b!7847035) (not b!7847170) (not b!7846811))
(check-sat)
