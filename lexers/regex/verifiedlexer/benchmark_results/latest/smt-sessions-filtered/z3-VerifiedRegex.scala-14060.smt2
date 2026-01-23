; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741842 () Bool)

(assert start!741842)

(declare-fun b!7813122 () Bool)

(declare-fun e!4623997 () Bool)

(declare-fun tp_is_empty!52185 () Bool)

(assert (=> b!7813122 (= e!4623997 tp_is_empty!52185)))

(declare-fun b!7813123 () Bool)

(declare-fun e!4624000 () Bool)

(declare-datatypes ((C!42156 0))(
  ( (C!42157 (val!31518 Int)) )
))
(declare-datatypes ((List!73752 0))(
  ( (Nil!73628) (Cons!73628 (h!80076 C!42156) (t!388487 List!73752)) )
))
(declare-fun s!14225 () List!73752)

(declare-fun ListPrimitiveSize!454 (List!73752) Int)

(assert (=> b!7813123 (= e!4624000 (>= (ListPrimitiveSize!454 (t!388487 s!14225)) (ListPrimitiveSize!454 s!14225)))))

(declare-fun b!7813124 () Bool)

(declare-fun tp!2302975 () Bool)

(assert (=> b!7813124 (= e!4623997 tp!2302975)))

(declare-fun b!7813125 () Bool)

(declare-fun e!4624001 () Bool)

(declare-fun tp!2302971 () Bool)

(declare-fun tp!2302976 () Bool)

(assert (=> b!7813125 (= e!4624001 (and tp!2302971 tp!2302976))))

(declare-fun b!7813127 () Bool)

(declare-fun res!3111104 () Bool)

(assert (=> b!7813127 (=> (not res!3111104) (not e!4624000))))

(declare-datatypes ((Regex!20915 0))(
  ( (ElementMatch!20915 (c!1438552 C!42156)) (Concat!29760 (regOne!42342 Regex!20915) (regTwo!42342 Regex!20915)) (EmptyExpr!20915) (Star!20915 (reg!21244 Regex!20915)) (EmptyLang!20915) (Union!20915 (regOne!42343 Regex!20915) (regTwo!42343 Regex!20915)) )
))
(declare-fun lt!2675942 () Regex!20915)

(declare-fun lt!2675941 () Regex!20915)

(declare-fun matchR!10373 (Regex!20915 List!73752) Bool)

(assert (=> b!7813127 (= res!3111104 (matchR!10373 (Union!20915 lt!2675942 lt!2675941) (t!388487 s!14225)))))

(declare-fun b!7813128 () Bool)

(declare-fun tp!2302978 () Bool)

(assert (=> b!7813128 (= e!4624001 tp!2302978)))

(declare-fun b!7813129 () Bool)

(declare-fun tp!2302979 () Bool)

(declare-fun tp!2302973 () Bool)

(assert (=> b!7813129 (= e!4624001 (and tp!2302979 tp!2302973))))

(declare-fun b!7813130 () Bool)

(assert (=> b!7813130 (= e!4624001 tp_is_empty!52185)))

(declare-fun b!7813131 () Bool)

(declare-fun res!3111100 () Bool)

(declare-fun e!4623999 () Bool)

(assert (=> b!7813131 (=> (not res!3111100) (not e!4623999))))

(declare-fun r2!6144 () Regex!20915)

(declare-fun validRegex!11329 (Regex!20915) Bool)

(assert (=> b!7813131 (= res!3111100 (validRegex!11329 r2!6144))))

(declare-fun b!7813132 () Bool)

(declare-fun res!3111101 () Bool)

(assert (=> b!7813132 (=> (not res!3111101) (not e!4623999))))

(declare-fun r1!6206 () Regex!20915)

(assert (=> b!7813132 (= res!3111101 (matchR!10373 (Union!20915 r1!6206 r2!6144) s!14225))))

(declare-fun b!7813133 () Bool)

(declare-fun e!4623998 () Bool)

(declare-fun tp!2302977 () Bool)

(assert (=> b!7813133 (= e!4623998 (and tp_is_empty!52185 tp!2302977))))

(declare-fun b!7813126 () Bool)

(assert (=> b!7813126 (= e!4623999 e!4624000)))

(declare-fun res!3111103 () Bool)

(assert (=> b!7813126 (=> (not res!3111103) (not e!4624000))))

(assert (=> b!7813126 (= res!3111103 (validRegex!11329 lt!2675942))))

(declare-fun derivativeStep!6246 (Regex!20915 C!42156) Regex!20915)

(assert (=> b!7813126 (= lt!2675941 (derivativeStep!6246 r2!6144 (h!80076 s!14225)))))

(assert (=> b!7813126 (= lt!2675942 (derivativeStep!6246 r1!6206 (h!80076 s!14225)))))

(declare-fun res!3111102 () Bool)

(assert (=> start!741842 (=> (not res!3111102) (not e!4623999))))

(assert (=> start!741842 (= res!3111102 (validRegex!11329 r1!6206))))

(assert (=> start!741842 e!4623999))

(assert (=> start!741842 e!4623997))

(assert (=> start!741842 e!4624001))

(assert (=> start!741842 e!4623998))

(declare-fun b!7813134 () Bool)

(declare-fun res!3111105 () Bool)

(assert (=> b!7813134 (=> (not res!3111105) (not e!4624000))))

(assert (=> b!7813134 (= res!3111105 (validRegex!11329 lt!2675941))))

(declare-fun b!7813135 () Bool)

(declare-fun tp!2302980 () Bool)

(declare-fun tp!2302981 () Bool)

(assert (=> b!7813135 (= e!4623997 (and tp!2302980 tp!2302981))))

(declare-fun b!7813136 () Bool)

(declare-fun res!3111106 () Bool)

(assert (=> b!7813136 (=> (not res!3111106) (not e!4623999))))

(get-info :version)

(assert (=> b!7813136 (= res!3111106 ((_ is Cons!73628) s!14225))))

(declare-fun b!7813137 () Bool)

(declare-fun tp!2302972 () Bool)

(declare-fun tp!2302974 () Bool)

(assert (=> b!7813137 (= e!4623997 (and tp!2302972 tp!2302974))))

(assert (= (and start!741842 res!3111102) b!7813131))

(assert (= (and b!7813131 res!3111100) b!7813132))

(assert (= (and b!7813132 res!3111101) b!7813136))

(assert (= (and b!7813136 res!3111106) b!7813126))

(assert (= (and b!7813126 res!3111103) b!7813134))

(assert (= (and b!7813134 res!3111105) b!7813127))

(assert (= (and b!7813127 res!3111104) b!7813123))

(assert (= (and start!741842 ((_ is ElementMatch!20915) r1!6206)) b!7813122))

(assert (= (and start!741842 ((_ is Concat!29760) r1!6206)) b!7813135))

(assert (= (and start!741842 ((_ is Star!20915) r1!6206)) b!7813124))

(assert (= (and start!741842 ((_ is Union!20915) r1!6206)) b!7813137))

(assert (= (and start!741842 ((_ is ElementMatch!20915) r2!6144)) b!7813130))

(assert (= (and start!741842 ((_ is Concat!29760) r2!6144)) b!7813125))

(assert (= (and start!741842 ((_ is Star!20915) r2!6144)) b!7813128))

(assert (= (and start!741842 ((_ is Union!20915) r2!6144)) b!7813129))

(assert (= (and start!741842 ((_ is Cons!73628) s!14225)) b!7813133))

(declare-fun m!8242694 () Bool)

(assert (=> b!7813132 m!8242694))

(declare-fun m!8242696 () Bool)

(assert (=> b!7813131 m!8242696))

(declare-fun m!8242698 () Bool)

(assert (=> b!7813134 m!8242698))

(declare-fun m!8242700 () Bool)

(assert (=> b!7813126 m!8242700))

(declare-fun m!8242702 () Bool)

(assert (=> b!7813126 m!8242702))

(declare-fun m!8242704 () Bool)

(assert (=> b!7813126 m!8242704))

(declare-fun m!8242706 () Bool)

(assert (=> b!7813123 m!8242706))

(declare-fun m!8242708 () Bool)

(assert (=> b!7813123 m!8242708))

(declare-fun m!8242710 () Bool)

(assert (=> b!7813127 m!8242710))

(declare-fun m!8242712 () Bool)

(assert (=> start!741842 m!8242712))

(check-sat (not b!7813126) (not b!7813132) (not b!7813131) (not b!7813125) (not b!7813134) (not b!7813133) (not b!7813123) (not b!7813127) (not b!7813128) (not start!741842) tp_is_empty!52185 (not b!7813137) (not b!7813135) (not b!7813129) (not b!7813124))
(check-sat)
(get-model)

(declare-fun b!7813156 () Bool)

(declare-fun e!4624022 () Bool)

(declare-fun e!4624016 () Bool)

(assert (=> b!7813156 (= e!4624022 e!4624016)))

(declare-fun c!1438558 () Bool)

(assert (=> b!7813156 (= c!1438558 ((_ is Union!20915) r1!6206))))

(declare-fun bm!724800 () Bool)

(declare-fun call!724806 () Bool)

(declare-fun call!724805 () Bool)

(assert (=> bm!724800 (= call!724806 call!724805)))

(declare-fun b!7813157 () Bool)

(declare-fun res!3111117 () Bool)

(declare-fun e!4624020 () Bool)

(assert (=> b!7813157 (=> (not res!3111117) (not e!4624020))))

(declare-fun call!724807 () Bool)

(assert (=> b!7813157 (= res!3111117 call!724807)))

(assert (=> b!7813157 (= e!4624016 e!4624020)))

(declare-fun b!7813158 () Bool)

(declare-fun e!4624021 () Bool)

(assert (=> b!7813158 (= e!4624021 call!724806)))

(declare-fun bm!724801 () Bool)

(assert (=> bm!724801 (= call!724807 (validRegex!11329 (ite c!1438558 (regOne!42343 r1!6206) (regOne!42342 r1!6206))))))

(declare-fun b!7813159 () Bool)

(declare-fun e!4624017 () Bool)

(assert (=> b!7813159 (= e!4624017 e!4624021)))

(declare-fun res!3111118 () Bool)

(assert (=> b!7813159 (=> (not res!3111118) (not e!4624021))))

(assert (=> b!7813159 (= res!3111118 call!724807)))

(declare-fun d!2348953 () Bool)

(declare-fun res!3111119 () Bool)

(declare-fun e!4624018 () Bool)

(assert (=> d!2348953 (=> res!3111119 e!4624018)))

(assert (=> d!2348953 (= res!3111119 ((_ is ElementMatch!20915) r1!6206))))

(assert (=> d!2348953 (= (validRegex!11329 r1!6206) e!4624018)))

(declare-fun b!7813160 () Bool)

(declare-fun res!3111121 () Bool)

(assert (=> b!7813160 (=> res!3111121 e!4624017)))

(assert (=> b!7813160 (= res!3111121 (not ((_ is Concat!29760) r1!6206)))))

(assert (=> b!7813160 (= e!4624016 e!4624017)))

(declare-fun bm!724802 () Bool)

(declare-fun c!1438557 () Bool)

(assert (=> bm!724802 (= call!724805 (validRegex!11329 (ite c!1438557 (reg!21244 r1!6206) (ite c!1438558 (regTwo!42343 r1!6206) (regTwo!42342 r1!6206)))))))

(declare-fun b!7813161 () Bool)

(assert (=> b!7813161 (= e!4624018 e!4624022)))

(assert (=> b!7813161 (= c!1438557 ((_ is Star!20915) r1!6206))))

(declare-fun b!7813162 () Bool)

(assert (=> b!7813162 (= e!4624020 call!724806)))

(declare-fun b!7813163 () Bool)

(declare-fun e!4624019 () Bool)

(assert (=> b!7813163 (= e!4624022 e!4624019)))

(declare-fun res!3111120 () Bool)

(declare-fun nullable!9286 (Regex!20915) Bool)

(assert (=> b!7813163 (= res!3111120 (not (nullable!9286 (reg!21244 r1!6206))))))

(assert (=> b!7813163 (=> (not res!3111120) (not e!4624019))))

(declare-fun b!7813164 () Bool)

(assert (=> b!7813164 (= e!4624019 call!724805)))

(assert (= (and d!2348953 (not res!3111119)) b!7813161))

(assert (= (and b!7813161 c!1438557) b!7813163))

(assert (= (and b!7813161 (not c!1438557)) b!7813156))

(assert (= (and b!7813163 res!3111120) b!7813164))

(assert (= (and b!7813156 c!1438558) b!7813157))

(assert (= (and b!7813156 (not c!1438558)) b!7813160))

(assert (= (and b!7813157 res!3111117) b!7813162))

(assert (= (and b!7813160 (not res!3111121)) b!7813159))

(assert (= (and b!7813159 res!3111118) b!7813158))

(assert (= (or b!7813157 b!7813159) bm!724801))

(assert (= (or b!7813162 b!7813158) bm!724800))

(assert (= (or b!7813164 bm!724800) bm!724802))

(declare-fun m!8242714 () Bool)

(assert (=> bm!724801 m!8242714))

(declare-fun m!8242716 () Bool)

(assert (=> bm!724802 m!8242716))

(declare-fun m!8242718 () Bool)

(assert (=> b!7813163 m!8242718))

(assert (=> start!741842 d!2348953))

(declare-fun d!2348957 () Bool)

(declare-fun lt!2675945 () Int)

(assert (=> d!2348957 (>= lt!2675945 0)))

(declare-fun e!4624039 () Int)

(assert (=> d!2348957 (= lt!2675945 e!4624039)))

(declare-fun c!1438565 () Bool)

(assert (=> d!2348957 (= c!1438565 ((_ is Nil!73628) (t!388487 s!14225)))))

(assert (=> d!2348957 (= (ListPrimitiveSize!454 (t!388487 s!14225)) lt!2675945)))

(declare-fun b!7813187 () Bool)

(assert (=> b!7813187 (= e!4624039 0)))

(declare-fun b!7813188 () Bool)

(assert (=> b!7813188 (= e!4624039 (+ 1 (ListPrimitiveSize!454 (t!388487 (t!388487 s!14225)))))))

(assert (= (and d!2348957 c!1438565) b!7813187))

(assert (= (and d!2348957 (not c!1438565)) b!7813188))

(declare-fun m!8242720 () Bool)

(assert (=> b!7813188 m!8242720))

(assert (=> b!7813123 d!2348957))

(declare-fun d!2348959 () Bool)

(declare-fun lt!2675946 () Int)

(assert (=> d!2348959 (>= lt!2675946 0)))

(declare-fun e!4624040 () Int)

(assert (=> d!2348959 (= lt!2675946 e!4624040)))

(declare-fun c!1438566 () Bool)

(assert (=> d!2348959 (= c!1438566 ((_ is Nil!73628) s!14225))))

(assert (=> d!2348959 (= (ListPrimitiveSize!454 s!14225) lt!2675946)))

(declare-fun b!7813189 () Bool)

(assert (=> b!7813189 (= e!4624040 0)))

(declare-fun b!7813190 () Bool)

(assert (=> b!7813190 (= e!4624040 (+ 1 (ListPrimitiveSize!454 (t!388487 s!14225))))))

(assert (= (and d!2348959 c!1438566) b!7813189))

(assert (= (and d!2348959 (not c!1438566)) b!7813190))

(assert (=> b!7813190 m!8242706))

(assert (=> b!7813123 d!2348959))

(declare-fun b!7813191 () Bool)

(declare-fun e!4624047 () Bool)

(declare-fun e!4624041 () Bool)

(assert (=> b!7813191 (= e!4624047 e!4624041)))

(declare-fun c!1438568 () Bool)

(assert (=> b!7813191 (= c!1438568 ((_ is Union!20915) lt!2675941))))

(declare-fun bm!724809 () Bool)

(declare-fun call!724815 () Bool)

(declare-fun call!724814 () Bool)

(assert (=> bm!724809 (= call!724815 call!724814)))

(declare-fun b!7813192 () Bool)

(declare-fun res!3111132 () Bool)

(declare-fun e!4624045 () Bool)

(assert (=> b!7813192 (=> (not res!3111132) (not e!4624045))))

(declare-fun call!724816 () Bool)

(assert (=> b!7813192 (= res!3111132 call!724816)))

(assert (=> b!7813192 (= e!4624041 e!4624045)))

(declare-fun b!7813193 () Bool)

(declare-fun e!4624046 () Bool)

(assert (=> b!7813193 (= e!4624046 call!724815)))

(declare-fun bm!724810 () Bool)

(assert (=> bm!724810 (= call!724816 (validRegex!11329 (ite c!1438568 (regOne!42343 lt!2675941) (regOne!42342 lt!2675941))))))

(declare-fun b!7813194 () Bool)

(declare-fun e!4624042 () Bool)

(assert (=> b!7813194 (= e!4624042 e!4624046)))

(declare-fun res!3111133 () Bool)

(assert (=> b!7813194 (=> (not res!3111133) (not e!4624046))))

(assert (=> b!7813194 (= res!3111133 call!724816)))

(declare-fun d!2348961 () Bool)

(declare-fun res!3111134 () Bool)

(declare-fun e!4624043 () Bool)

(assert (=> d!2348961 (=> res!3111134 e!4624043)))

(assert (=> d!2348961 (= res!3111134 ((_ is ElementMatch!20915) lt!2675941))))

(assert (=> d!2348961 (= (validRegex!11329 lt!2675941) e!4624043)))

(declare-fun b!7813195 () Bool)

(declare-fun res!3111136 () Bool)

(assert (=> b!7813195 (=> res!3111136 e!4624042)))

(assert (=> b!7813195 (= res!3111136 (not ((_ is Concat!29760) lt!2675941)))))

(assert (=> b!7813195 (= e!4624041 e!4624042)))

(declare-fun c!1438567 () Bool)

(declare-fun bm!724811 () Bool)

(assert (=> bm!724811 (= call!724814 (validRegex!11329 (ite c!1438567 (reg!21244 lt!2675941) (ite c!1438568 (regTwo!42343 lt!2675941) (regTwo!42342 lt!2675941)))))))

(declare-fun b!7813196 () Bool)

(assert (=> b!7813196 (= e!4624043 e!4624047)))

(assert (=> b!7813196 (= c!1438567 ((_ is Star!20915) lt!2675941))))

(declare-fun b!7813197 () Bool)

(assert (=> b!7813197 (= e!4624045 call!724815)))

(declare-fun b!7813198 () Bool)

(declare-fun e!4624044 () Bool)

(assert (=> b!7813198 (= e!4624047 e!4624044)))

(declare-fun res!3111135 () Bool)

(assert (=> b!7813198 (= res!3111135 (not (nullable!9286 (reg!21244 lt!2675941))))))

(assert (=> b!7813198 (=> (not res!3111135) (not e!4624044))))

(declare-fun b!7813199 () Bool)

(assert (=> b!7813199 (= e!4624044 call!724814)))

(assert (= (and d!2348961 (not res!3111134)) b!7813196))

(assert (= (and b!7813196 c!1438567) b!7813198))

(assert (= (and b!7813196 (not c!1438567)) b!7813191))

(assert (= (and b!7813198 res!3111135) b!7813199))

(assert (= (and b!7813191 c!1438568) b!7813192))

(assert (= (and b!7813191 (not c!1438568)) b!7813195))

(assert (= (and b!7813192 res!3111132) b!7813197))

(assert (= (and b!7813195 (not res!3111136)) b!7813194))

(assert (= (and b!7813194 res!3111133) b!7813193))

(assert (= (or b!7813192 b!7813194) bm!724810))

(assert (= (or b!7813197 b!7813193) bm!724809))

(assert (= (or b!7813199 bm!724809) bm!724811))

(declare-fun m!8242722 () Bool)

(assert (=> bm!724810 m!8242722))

(declare-fun m!8242724 () Bool)

(assert (=> bm!724811 m!8242724))

(declare-fun m!8242726 () Bool)

(assert (=> b!7813198 m!8242726))

(assert (=> b!7813134 d!2348961))

(declare-fun b!7813257 () Bool)

(declare-fun e!4624080 () Bool)

(declare-fun lt!2675951 () Bool)

(assert (=> b!7813257 (= e!4624080 (not lt!2675951))))

(declare-fun b!7813258 () Bool)

(declare-fun res!3111160 () Bool)

(declare-fun e!4624084 () Bool)

(assert (=> b!7813258 (=> (not res!3111160) (not e!4624084))))

(declare-fun call!724830 () Bool)

(assert (=> b!7813258 (= res!3111160 (not call!724830))))

(declare-fun e!4624081 () Bool)

(declare-fun b!7813259 () Bool)

(declare-fun head!15975 (List!73752) C!42156)

(declare-fun tail!15516 (List!73752) List!73752)

(assert (=> b!7813259 (= e!4624081 (matchR!10373 (derivativeStep!6246 (Union!20915 lt!2675942 lt!2675941) (head!15975 (t!388487 s!14225))) (tail!15516 (t!388487 s!14225))))))

(declare-fun b!7813260 () Bool)

(declare-fun res!3111161 () Bool)

(declare-fun e!4624082 () Bool)

(assert (=> b!7813260 (=> res!3111161 e!4624082)))

(assert (=> b!7813260 (= res!3111161 (not ((_ is ElementMatch!20915) (Union!20915 lt!2675942 lt!2675941))))))

(assert (=> b!7813260 (= e!4624080 e!4624082)))

(declare-fun b!7813261 () Bool)

(declare-fun e!4624083 () Bool)

(assert (=> b!7813261 (= e!4624083 e!4624080)))

(declare-fun c!1438589 () Bool)

(assert (=> b!7813261 (= c!1438589 ((_ is EmptyLang!20915) (Union!20915 lt!2675942 lt!2675941)))))

(declare-fun b!7813262 () Bool)

(declare-fun e!4624079 () Bool)

(assert (=> b!7813262 (= e!4624079 (not (= (head!15975 (t!388487 s!14225)) (c!1438552 (Union!20915 lt!2675942 lt!2675941)))))))

(declare-fun b!7813264 () Bool)

(assert (=> b!7813264 (= e!4624084 (= (head!15975 (t!388487 s!14225)) (c!1438552 (Union!20915 lt!2675942 lt!2675941))))))

(declare-fun b!7813265 () Bool)

(declare-fun res!3111164 () Bool)

(assert (=> b!7813265 (=> res!3111164 e!4624079)))

(declare-fun isEmpty!42274 (List!73752) Bool)

(assert (=> b!7813265 (= res!3111164 (not (isEmpty!42274 (tail!15516 (t!388487 s!14225)))))))

(declare-fun b!7813266 () Bool)

(assert (=> b!7813266 (= e!4624081 (nullable!9286 (Union!20915 lt!2675942 lt!2675941)))))

(declare-fun b!7813267 () Bool)

(declare-fun e!4624085 () Bool)

(assert (=> b!7813267 (= e!4624082 e!4624085)))

(declare-fun res!3111158 () Bool)

(assert (=> b!7813267 (=> (not res!3111158) (not e!4624085))))

(assert (=> b!7813267 (= res!3111158 (not lt!2675951))))

(declare-fun bm!724825 () Bool)

(assert (=> bm!724825 (= call!724830 (isEmpty!42274 (t!388487 s!14225)))))

(declare-fun b!7813268 () Bool)

(assert (=> b!7813268 (= e!4624083 (= lt!2675951 call!724830))))

(declare-fun b!7813269 () Bool)

(declare-fun res!3111165 () Bool)

(assert (=> b!7813269 (=> res!3111165 e!4624082)))

(assert (=> b!7813269 (= res!3111165 e!4624084)))

(declare-fun res!3111159 () Bool)

(assert (=> b!7813269 (=> (not res!3111159) (not e!4624084))))

(assert (=> b!7813269 (= res!3111159 lt!2675951)))

(declare-fun b!7813270 () Bool)

(assert (=> b!7813270 (= e!4624085 e!4624079)))

(declare-fun res!3111162 () Bool)

(assert (=> b!7813270 (=> res!3111162 e!4624079)))

(assert (=> b!7813270 (= res!3111162 call!724830)))

(declare-fun b!7813263 () Bool)

(declare-fun res!3111163 () Bool)

(assert (=> b!7813263 (=> (not res!3111163) (not e!4624084))))

(assert (=> b!7813263 (= res!3111163 (isEmpty!42274 (tail!15516 (t!388487 s!14225))))))

(declare-fun d!2348963 () Bool)

(assert (=> d!2348963 e!4624083))

(declare-fun c!1438588 () Bool)

(assert (=> d!2348963 (= c!1438588 ((_ is EmptyExpr!20915) (Union!20915 lt!2675942 lt!2675941)))))

(assert (=> d!2348963 (= lt!2675951 e!4624081)))

(declare-fun c!1438587 () Bool)

(assert (=> d!2348963 (= c!1438587 (isEmpty!42274 (t!388487 s!14225)))))

(assert (=> d!2348963 (validRegex!11329 (Union!20915 lt!2675942 lt!2675941))))

(assert (=> d!2348963 (= (matchR!10373 (Union!20915 lt!2675942 lt!2675941) (t!388487 s!14225)) lt!2675951)))

(assert (= (and d!2348963 c!1438587) b!7813266))

(assert (= (and d!2348963 (not c!1438587)) b!7813259))

(assert (= (and d!2348963 c!1438588) b!7813268))

(assert (= (and d!2348963 (not c!1438588)) b!7813261))

(assert (= (and b!7813261 c!1438589) b!7813257))

(assert (= (and b!7813261 (not c!1438589)) b!7813260))

(assert (= (and b!7813260 (not res!3111161)) b!7813269))

(assert (= (and b!7813269 res!3111159) b!7813258))

(assert (= (and b!7813258 res!3111160) b!7813263))

(assert (= (and b!7813263 res!3111163) b!7813264))

(assert (= (and b!7813269 (not res!3111165)) b!7813267))

(assert (= (and b!7813267 res!3111158) b!7813270))

(assert (= (and b!7813270 (not res!3111162)) b!7813265))

(assert (= (and b!7813265 (not res!3111164)) b!7813262))

(assert (= (or b!7813268 b!7813258 b!7813270) bm!724825))

(declare-fun m!8242734 () Bool)

(assert (=> b!7813264 m!8242734))

(declare-fun m!8242736 () Bool)

(assert (=> b!7813266 m!8242736))

(declare-fun m!8242738 () Bool)

(assert (=> bm!724825 m!8242738))

(declare-fun m!8242740 () Bool)

(assert (=> b!7813265 m!8242740))

(assert (=> b!7813265 m!8242740))

(declare-fun m!8242742 () Bool)

(assert (=> b!7813265 m!8242742))

(assert (=> b!7813263 m!8242740))

(assert (=> b!7813263 m!8242740))

(assert (=> b!7813263 m!8242742))

(assert (=> d!2348963 m!8242738))

(declare-fun m!8242744 () Bool)

(assert (=> d!2348963 m!8242744))

(assert (=> b!7813259 m!8242734))

(assert (=> b!7813259 m!8242734))

(declare-fun m!8242746 () Bool)

(assert (=> b!7813259 m!8242746))

(assert (=> b!7813259 m!8242740))

(assert (=> b!7813259 m!8242746))

(assert (=> b!7813259 m!8242740))

(declare-fun m!8242748 () Bool)

(assert (=> b!7813259 m!8242748))

(assert (=> b!7813262 m!8242734))

(assert (=> b!7813127 d!2348963))

(declare-fun b!7813271 () Bool)

(declare-fun e!4624087 () Bool)

(declare-fun lt!2675952 () Bool)

(assert (=> b!7813271 (= e!4624087 (not lt!2675952))))

(declare-fun b!7813272 () Bool)

(declare-fun res!3111168 () Bool)

(declare-fun e!4624091 () Bool)

(assert (=> b!7813272 (=> (not res!3111168) (not e!4624091))))

(declare-fun call!724831 () Bool)

(assert (=> b!7813272 (= res!3111168 (not call!724831))))

(declare-fun b!7813273 () Bool)

(declare-fun e!4624088 () Bool)

(assert (=> b!7813273 (= e!4624088 (matchR!10373 (derivativeStep!6246 (Union!20915 r1!6206 r2!6144) (head!15975 s!14225)) (tail!15516 s!14225)))))

(declare-fun b!7813274 () Bool)

(declare-fun res!3111169 () Bool)

(declare-fun e!4624089 () Bool)

(assert (=> b!7813274 (=> res!3111169 e!4624089)))

(assert (=> b!7813274 (= res!3111169 (not ((_ is ElementMatch!20915) (Union!20915 r1!6206 r2!6144))))))

(assert (=> b!7813274 (= e!4624087 e!4624089)))

(declare-fun b!7813275 () Bool)

(declare-fun e!4624090 () Bool)

(assert (=> b!7813275 (= e!4624090 e!4624087)))

(declare-fun c!1438592 () Bool)

(assert (=> b!7813275 (= c!1438592 ((_ is EmptyLang!20915) (Union!20915 r1!6206 r2!6144)))))

(declare-fun e!4624086 () Bool)

(declare-fun b!7813276 () Bool)

(assert (=> b!7813276 (= e!4624086 (not (= (head!15975 s!14225) (c!1438552 (Union!20915 r1!6206 r2!6144)))))))

(declare-fun b!7813278 () Bool)

(assert (=> b!7813278 (= e!4624091 (= (head!15975 s!14225) (c!1438552 (Union!20915 r1!6206 r2!6144))))))

(declare-fun b!7813279 () Bool)

(declare-fun res!3111172 () Bool)

(assert (=> b!7813279 (=> res!3111172 e!4624086)))

(assert (=> b!7813279 (= res!3111172 (not (isEmpty!42274 (tail!15516 s!14225))))))

(declare-fun b!7813280 () Bool)

(assert (=> b!7813280 (= e!4624088 (nullable!9286 (Union!20915 r1!6206 r2!6144)))))

(declare-fun b!7813281 () Bool)

(declare-fun e!4624092 () Bool)

(assert (=> b!7813281 (= e!4624089 e!4624092)))

(declare-fun res!3111166 () Bool)

(assert (=> b!7813281 (=> (not res!3111166) (not e!4624092))))

(assert (=> b!7813281 (= res!3111166 (not lt!2675952))))

(declare-fun bm!724826 () Bool)

(assert (=> bm!724826 (= call!724831 (isEmpty!42274 s!14225))))

(declare-fun b!7813282 () Bool)

(assert (=> b!7813282 (= e!4624090 (= lt!2675952 call!724831))))

(declare-fun b!7813283 () Bool)

(declare-fun res!3111173 () Bool)

(assert (=> b!7813283 (=> res!3111173 e!4624089)))

(assert (=> b!7813283 (= res!3111173 e!4624091)))

(declare-fun res!3111167 () Bool)

(assert (=> b!7813283 (=> (not res!3111167) (not e!4624091))))

(assert (=> b!7813283 (= res!3111167 lt!2675952)))

(declare-fun b!7813284 () Bool)

(assert (=> b!7813284 (= e!4624092 e!4624086)))

(declare-fun res!3111170 () Bool)

(assert (=> b!7813284 (=> res!3111170 e!4624086)))

(assert (=> b!7813284 (= res!3111170 call!724831)))

(declare-fun b!7813277 () Bool)

(declare-fun res!3111171 () Bool)

(assert (=> b!7813277 (=> (not res!3111171) (not e!4624091))))

(assert (=> b!7813277 (= res!3111171 (isEmpty!42274 (tail!15516 s!14225)))))

(declare-fun d!2348967 () Bool)

(assert (=> d!2348967 e!4624090))

(declare-fun c!1438591 () Bool)

(assert (=> d!2348967 (= c!1438591 ((_ is EmptyExpr!20915) (Union!20915 r1!6206 r2!6144)))))

(assert (=> d!2348967 (= lt!2675952 e!4624088)))

(declare-fun c!1438590 () Bool)

(assert (=> d!2348967 (= c!1438590 (isEmpty!42274 s!14225))))

(assert (=> d!2348967 (validRegex!11329 (Union!20915 r1!6206 r2!6144))))

(assert (=> d!2348967 (= (matchR!10373 (Union!20915 r1!6206 r2!6144) s!14225) lt!2675952)))

(assert (= (and d!2348967 c!1438590) b!7813280))

(assert (= (and d!2348967 (not c!1438590)) b!7813273))

(assert (= (and d!2348967 c!1438591) b!7813282))

(assert (= (and d!2348967 (not c!1438591)) b!7813275))

(assert (= (and b!7813275 c!1438592) b!7813271))

(assert (= (and b!7813275 (not c!1438592)) b!7813274))

(assert (= (and b!7813274 (not res!3111169)) b!7813283))

(assert (= (and b!7813283 res!3111167) b!7813272))

(assert (= (and b!7813272 res!3111168) b!7813277))

(assert (= (and b!7813277 res!3111171) b!7813278))

(assert (= (and b!7813283 (not res!3111173)) b!7813281))

(assert (= (and b!7813281 res!3111166) b!7813284))

(assert (= (and b!7813284 (not res!3111170)) b!7813279))

(assert (= (and b!7813279 (not res!3111172)) b!7813276))

(assert (= (or b!7813282 b!7813272 b!7813284) bm!724826))

(declare-fun m!8242750 () Bool)

(assert (=> b!7813278 m!8242750))

(declare-fun m!8242752 () Bool)

(assert (=> b!7813280 m!8242752))

(declare-fun m!8242754 () Bool)

(assert (=> bm!724826 m!8242754))

(declare-fun m!8242756 () Bool)

(assert (=> b!7813279 m!8242756))

(assert (=> b!7813279 m!8242756))

(declare-fun m!8242758 () Bool)

(assert (=> b!7813279 m!8242758))

(assert (=> b!7813277 m!8242756))

(assert (=> b!7813277 m!8242756))

(assert (=> b!7813277 m!8242758))

(assert (=> d!2348967 m!8242754))

(declare-fun m!8242760 () Bool)

(assert (=> d!2348967 m!8242760))

(assert (=> b!7813273 m!8242750))

(assert (=> b!7813273 m!8242750))

(declare-fun m!8242764 () Bool)

(assert (=> b!7813273 m!8242764))

(assert (=> b!7813273 m!8242756))

(assert (=> b!7813273 m!8242764))

(assert (=> b!7813273 m!8242756))

(declare-fun m!8242770 () Bool)

(assert (=> b!7813273 m!8242770))

(assert (=> b!7813276 m!8242750))

(assert (=> b!7813132 d!2348967))

(declare-fun b!7813295 () Bool)

(declare-fun e!4624104 () Bool)

(declare-fun e!4624098 () Bool)

(assert (=> b!7813295 (= e!4624104 e!4624098)))

(declare-fun c!1438599 () Bool)

(assert (=> b!7813295 (= c!1438599 ((_ is Union!20915) r2!6144))))

(declare-fun bm!724831 () Bool)

(declare-fun call!724837 () Bool)

(declare-fun call!724836 () Bool)

(assert (=> bm!724831 (= call!724837 call!724836)))

(declare-fun b!7813296 () Bool)

(declare-fun res!3111174 () Bool)

(declare-fun e!4624102 () Bool)

(assert (=> b!7813296 (=> (not res!3111174) (not e!4624102))))

(declare-fun call!724838 () Bool)

(assert (=> b!7813296 (= res!3111174 call!724838)))

(assert (=> b!7813296 (= e!4624098 e!4624102)))

(declare-fun b!7813297 () Bool)

(declare-fun e!4624103 () Bool)

(assert (=> b!7813297 (= e!4624103 call!724837)))

(declare-fun bm!724832 () Bool)

(assert (=> bm!724832 (= call!724838 (validRegex!11329 (ite c!1438599 (regOne!42343 r2!6144) (regOne!42342 r2!6144))))))

(declare-fun b!7813298 () Bool)

(declare-fun e!4624099 () Bool)

(assert (=> b!7813298 (= e!4624099 e!4624103)))

(declare-fun res!3111175 () Bool)

(assert (=> b!7813298 (=> (not res!3111175) (not e!4624103))))

(assert (=> b!7813298 (= res!3111175 call!724838)))

(declare-fun d!2348969 () Bool)

(declare-fun res!3111176 () Bool)

(declare-fun e!4624100 () Bool)

(assert (=> d!2348969 (=> res!3111176 e!4624100)))

(assert (=> d!2348969 (= res!3111176 ((_ is ElementMatch!20915) r2!6144))))

(assert (=> d!2348969 (= (validRegex!11329 r2!6144) e!4624100)))

(declare-fun b!7813299 () Bool)

(declare-fun res!3111178 () Bool)

(assert (=> b!7813299 (=> res!3111178 e!4624099)))

(assert (=> b!7813299 (= res!3111178 (not ((_ is Concat!29760) r2!6144)))))

(assert (=> b!7813299 (= e!4624098 e!4624099)))

(declare-fun c!1438598 () Bool)

(declare-fun bm!724833 () Bool)

(assert (=> bm!724833 (= call!724836 (validRegex!11329 (ite c!1438598 (reg!21244 r2!6144) (ite c!1438599 (regTwo!42343 r2!6144) (regTwo!42342 r2!6144)))))))

(declare-fun b!7813300 () Bool)

(assert (=> b!7813300 (= e!4624100 e!4624104)))

(assert (=> b!7813300 (= c!1438598 ((_ is Star!20915) r2!6144))))

(declare-fun b!7813301 () Bool)

(assert (=> b!7813301 (= e!4624102 call!724837)))

(declare-fun b!7813302 () Bool)

(declare-fun e!4624101 () Bool)

(assert (=> b!7813302 (= e!4624104 e!4624101)))

(declare-fun res!3111177 () Bool)

(assert (=> b!7813302 (= res!3111177 (not (nullable!9286 (reg!21244 r2!6144))))))

(assert (=> b!7813302 (=> (not res!3111177) (not e!4624101))))

(declare-fun b!7813303 () Bool)

(assert (=> b!7813303 (= e!4624101 call!724836)))

(assert (= (and d!2348969 (not res!3111176)) b!7813300))

(assert (= (and b!7813300 c!1438598) b!7813302))

(assert (= (and b!7813300 (not c!1438598)) b!7813295))

(assert (= (and b!7813302 res!3111177) b!7813303))

(assert (= (and b!7813295 c!1438599) b!7813296))

(assert (= (and b!7813295 (not c!1438599)) b!7813299))

(assert (= (and b!7813296 res!3111174) b!7813301))

(assert (= (and b!7813299 (not res!3111178)) b!7813298))

(assert (= (and b!7813298 res!3111175) b!7813297))

(assert (= (or b!7813296 b!7813298) bm!724832))

(assert (= (or b!7813301 b!7813297) bm!724831))

(assert (= (or b!7813303 bm!724831) bm!724833))

(declare-fun m!8242774 () Bool)

(assert (=> bm!724832 m!8242774))

(declare-fun m!8242776 () Bool)

(assert (=> bm!724833 m!8242776))

(declare-fun m!8242778 () Bool)

(assert (=> b!7813302 m!8242778))

(assert (=> b!7813131 d!2348969))

(declare-fun b!7813314 () Bool)

(declare-fun e!4624116 () Bool)

(declare-fun e!4624110 () Bool)

(assert (=> b!7813314 (= e!4624116 e!4624110)))

(declare-fun c!1438606 () Bool)

(assert (=> b!7813314 (= c!1438606 ((_ is Union!20915) lt!2675942))))

(declare-fun bm!724838 () Bool)

(declare-fun call!724844 () Bool)

(declare-fun call!724843 () Bool)

(assert (=> bm!724838 (= call!724844 call!724843)))

(declare-fun b!7813315 () Bool)

(declare-fun res!3111179 () Bool)

(declare-fun e!4624114 () Bool)

(assert (=> b!7813315 (=> (not res!3111179) (not e!4624114))))

(declare-fun call!724845 () Bool)

(assert (=> b!7813315 (= res!3111179 call!724845)))

(assert (=> b!7813315 (= e!4624110 e!4624114)))

(declare-fun b!7813316 () Bool)

(declare-fun e!4624115 () Bool)

(assert (=> b!7813316 (= e!4624115 call!724844)))

(declare-fun bm!724839 () Bool)

(assert (=> bm!724839 (= call!724845 (validRegex!11329 (ite c!1438606 (regOne!42343 lt!2675942) (regOne!42342 lt!2675942))))))

(declare-fun b!7813317 () Bool)

(declare-fun e!4624111 () Bool)

(assert (=> b!7813317 (= e!4624111 e!4624115)))

(declare-fun res!3111180 () Bool)

(assert (=> b!7813317 (=> (not res!3111180) (not e!4624115))))

(assert (=> b!7813317 (= res!3111180 call!724845)))

(declare-fun d!2348973 () Bool)

(declare-fun res!3111181 () Bool)

(declare-fun e!4624112 () Bool)

(assert (=> d!2348973 (=> res!3111181 e!4624112)))

(assert (=> d!2348973 (= res!3111181 ((_ is ElementMatch!20915) lt!2675942))))

(assert (=> d!2348973 (= (validRegex!11329 lt!2675942) e!4624112)))

(declare-fun b!7813318 () Bool)

(declare-fun res!3111183 () Bool)

(assert (=> b!7813318 (=> res!3111183 e!4624111)))

(assert (=> b!7813318 (= res!3111183 (not ((_ is Concat!29760) lt!2675942)))))

(assert (=> b!7813318 (= e!4624110 e!4624111)))

(declare-fun c!1438605 () Bool)

(declare-fun bm!724840 () Bool)

(assert (=> bm!724840 (= call!724843 (validRegex!11329 (ite c!1438605 (reg!21244 lt!2675942) (ite c!1438606 (regTwo!42343 lt!2675942) (regTwo!42342 lt!2675942)))))))

(declare-fun b!7813319 () Bool)

(assert (=> b!7813319 (= e!4624112 e!4624116)))

(assert (=> b!7813319 (= c!1438605 ((_ is Star!20915) lt!2675942))))

(declare-fun b!7813320 () Bool)

(assert (=> b!7813320 (= e!4624114 call!724844)))

(declare-fun b!7813321 () Bool)

(declare-fun e!4624113 () Bool)

(assert (=> b!7813321 (= e!4624116 e!4624113)))

(declare-fun res!3111182 () Bool)

(assert (=> b!7813321 (= res!3111182 (not (nullable!9286 (reg!21244 lt!2675942))))))

(assert (=> b!7813321 (=> (not res!3111182) (not e!4624113))))

(declare-fun b!7813322 () Bool)

(assert (=> b!7813322 (= e!4624113 call!724843)))

(assert (= (and d!2348973 (not res!3111181)) b!7813319))

(assert (= (and b!7813319 c!1438605) b!7813321))

(assert (= (and b!7813319 (not c!1438605)) b!7813314))

(assert (= (and b!7813321 res!3111182) b!7813322))

(assert (= (and b!7813314 c!1438606) b!7813315))

(assert (= (and b!7813314 (not c!1438606)) b!7813318))

(assert (= (and b!7813315 res!3111179) b!7813320))

(assert (= (and b!7813318 (not res!3111183)) b!7813317))

(assert (= (and b!7813317 res!3111180) b!7813316))

(assert (= (or b!7813315 b!7813317) bm!724839))

(assert (= (or b!7813320 b!7813316) bm!724838))

(assert (= (or b!7813322 bm!724838) bm!724840))

(declare-fun m!8242788 () Bool)

(assert (=> bm!724839 m!8242788))

(declare-fun m!8242790 () Bool)

(assert (=> bm!724840 m!8242790))

(declare-fun m!8242792 () Bool)

(assert (=> b!7813321 m!8242792))

(assert (=> b!7813126 d!2348973))

(declare-fun bm!724854 () Bool)

(declare-fun c!1438629 () Bool)

(declare-fun c!1438631 () Bool)

(declare-fun call!724859 () Regex!20915)

(assert (=> bm!724854 (= call!724859 (derivativeStep!6246 (ite c!1438629 (regTwo!42343 r2!6144) (ite c!1438631 (reg!21244 r2!6144) (regOne!42342 r2!6144))) (h!80076 s!14225)))))

(declare-fun bm!724855 () Bool)

(declare-fun call!724861 () Regex!20915)

(assert (=> bm!724855 (= call!724861 call!724859)))

(declare-fun b!7813388 () Bool)

(declare-fun e!4624153 () Regex!20915)

(declare-fun e!4624156 () Regex!20915)

(assert (=> b!7813388 (= e!4624153 e!4624156)))

(assert (=> b!7813388 (= c!1438631 ((_ is Star!20915) r2!6144))))

(declare-fun bm!724856 () Bool)

(declare-fun call!724860 () Regex!20915)

(declare-fun c!1438633 () Bool)

(assert (=> bm!724856 (= call!724860 (derivativeStep!6246 (ite c!1438629 (regOne!42343 r2!6144) (ite c!1438633 (regTwo!42342 r2!6144) (regOne!42342 r2!6144))) (h!80076 s!14225)))))

(declare-fun b!7813389 () Bool)

(assert (=> b!7813389 (= c!1438633 (nullable!9286 (regOne!42342 r2!6144)))))

(declare-fun e!4624154 () Regex!20915)

(assert (=> b!7813389 (= e!4624156 e!4624154)))

(declare-fun b!7813391 () Bool)

(declare-fun call!724862 () Regex!20915)

(assert (=> b!7813391 (= e!4624154 (Union!20915 (Concat!29760 call!724862 (regTwo!42342 r2!6144)) EmptyLang!20915))))

(declare-fun b!7813392 () Bool)

(declare-fun e!4624152 () Regex!20915)

(assert (=> b!7813392 (= e!4624152 EmptyLang!20915)))

(declare-fun b!7813393 () Bool)

(declare-fun e!4624155 () Regex!20915)

(assert (=> b!7813393 (= e!4624155 (ite (= (h!80076 s!14225) (c!1438552 r2!6144)) EmptyExpr!20915 EmptyLang!20915))))

(declare-fun b!7813390 () Bool)

(assert (=> b!7813390 (= e!4624156 (Concat!29760 call!724861 r2!6144))))

(declare-fun d!2348977 () Bool)

(declare-fun lt!2675963 () Regex!20915)

(assert (=> d!2348977 (validRegex!11329 lt!2675963)))

(assert (=> d!2348977 (= lt!2675963 e!4624152)))

(declare-fun c!1438630 () Bool)

(assert (=> d!2348977 (= c!1438630 (or ((_ is EmptyExpr!20915) r2!6144) ((_ is EmptyLang!20915) r2!6144)))))

(assert (=> d!2348977 (validRegex!11329 r2!6144)))

(assert (=> d!2348977 (= (derivativeStep!6246 r2!6144 (h!80076 s!14225)) lt!2675963)))

(declare-fun b!7813394 () Bool)

(assert (=> b!7813394 (= e!4624154 (Union!20915 (Concat!29760 call!724861 (regTwo!42342 r2!6144)) call!724862))))

(declare-fun bm!724857 () Bool)

(assert (=> bm!724857 (= call!724862 call!724860)))

(declare-fun b!7813395 () Bool)

(assert (=> b!7813395 (= e!4624152 e!4624155)))

(declare-fun c!1438632 () Bool)

(assert (=> b!7813395 (= c!1438632 ((_ is ElementMatch!20915) r2!6144))))

(declare-fun b!7813396 () Bool)

(assert (=> b!7813396 (= c!1438629 ((_ is Union!20915) r2!6144))))

(assert (=> b!7813396 (= e!4624155 e!4624153)))

(declare-fun b!7813397 () Bool)

(assert (=> b!7813397 (= e!4624153 (Union!20915 call!724860 call!724859))))

(assert (= (and d!2348977 c!1438630) b!7813392))

(assert (= (and d!2348977 (not c!1438630)) b!7813395))

(assert (= (and b!7813395 c!1438632) b!7813393))

(assert (= (and b!7813395 (not c!1438632)) b!7813396))

(assert (= (and b!7813396 c!1438629) b!7813397))

(assert (= (and b!7813396 (not c!1438629)) b!7813388))

(assert (= (and b!7813388 c!1438631) b!7813390))

(assert (= (and b!7813388 (not c!1438631)) b!7813389))

(assert (= (and b!7813389 c!1438633) b!7813394))

(assert (= (and b!7813389 (not c!1438633)) b!7813391))

(assert (= (or b!7813394 b!7813391) bm!724857))

(assert (= (or b!7813390 b!7813394) bm!724855))

(assert (= (or b!7813397 bm!724855) bm!724854))

(assert (= (or b!7813397 bm!724857) bm!724856))

(declare-fun m!8242802 () Bool)

(assert (=> bm!724854 m!8242802))

(declare-fun m!8242804 () Bool)

(assert (=> bm!724856 m!8242804))

(declare-fun m!8242806 () Bool)

(assert (=> b!7813389 m!8242806))

(declare-fun m!8242808 () Bool)

(assert (=> d!2348977 m!8242808))

(assert (=> d!2348977 m!8242696))

(assert (=> b!7813126 d!2348977))

(declare-fun call!724863 () Regex!20915)

(declare-fun c!1438634 () Bool)

(declare-fun bm!724858 () Bool)

(declare-fun c!1438636 () Bool)

(assert (=> bm!724858 (= call!724863 (derivativeStep!6246 (ite c!1438634 (regTwo!42343 r1!6206) (ite c!1438636 (reg!21244 r1!6206) (regOne!42342 r1!6206))) (h!80076 s!14225)))))

(declare-fun bm!724859 () Bool)

(declare-fun call!724865 () Regex!20915)

(assert (=> bm!724859 (= call!724865 call!724863)))

(declare-fun b!7813398 () Bool)

(declare-fun e!4624158 () Regex!20915)

(declare-fun e!4624161 () Regex!20915)

(assert (=> b!7813398 (= e!4624158 e!4624161)))

(assert (=> b!7813398 (= c!1438636 ((_ is Star!20915) r1!6206))))

(declare-fun c!1438638 () Bool)

(declare-fun bm!724860 () Bool)

(declare-fun call!724864 () Regex!20915)

(assert (=> bm!724860 (= call!724864 (derivativeStep!6246 (ite c!1438634 (regOne!42343 r1!6206) (ite c!1438638 (regTwo!42342 r1!6206) (regOne!42342 r1!6206))) (h!80076 s!14225)))))

(declare-fun b!7813399 () Bool)

(assert (=> b!7813399 (= c!1438638 (nullable!9286 (regOne!42342 r1!6206)))))

(declare-fun e!4624159 () Regex!20915)

(assert (=> b!7813399 (= e!4624161 e!4624159)))

(declare-fun b!7813401 () Bool)

(declare-fun call!724866 () Regex!20915)

(assert (=> b!7813401 (= e!4624159 (Union!20915 (Concat!29760 call!724866 (regTwo!42342 r1!6206)) EmptyLang!20915))))

(declare-fun b!7813402 () Bool)

(declare-fun e!4624157 () Regex!20915)

(assert (=> b!7813402 (= e!4624157 EmptyLang!20915)))

(declare-fun b!7813403 () Bool)

(declare-fun e!4624160 () Regex!20915)

(assert (=> b!7813403 (= e!4624160 (ite (= (h!80076 s!14225) (c!1438552 r1!6206)) EmptyExpr!20915 EmptyLang!20915))))

(declare-fun b!7813400 () Bool)

(assert (=> b!7813400 (= e!4624161 (Concat!29760 call!724865 r1!6206))))

(declare-fun d!2348985 () Bool)

(declare-fun lt!2675964 () Regex!20915)

(assert (=> d!2348985 (validRegex!11329 lt!2675964)))

(assert (=> d!2348985 (= lt!2675964 e!4624157)))

(declare-fun c!1438635 () Bool)

(assert (=> d!2348985 (= c!1438635 (or ((_ is EmptyExpr!20915) r1!6206) ((_ is EmptyLang!20915) r1!6206)))))

(assert (=> d!2348985 (validRegex!11329 r1!6206)))

(assert (=> d!2348985 (= (derivativeStep!6246 r1!6206 (h!80076 s!14225)) lt!2675964)))

(declare-fun b!7813404 () Bool)

(assert (=> b!7813404 (= e!4624159 (Union!20915 (Concat!29760 call!724865 (regTwo!42342 r1!6206)) call!724866))))

(declare-fun bm!724861 () Bool)

(assert (=> bm!724861 (= call!724866 call!724864)))

(declare-fun b!7813405 () Bool)

(assert (=> b!7813405 (= e!4624157 e!4624160)))

(declare-fun c!1438637 () Bool)

(assert (=> b!7813405 (= c!1438637 ((_ is ElementMatch!20915) r1!6206))))

(declare-fun b!7813406 () Bool)

(assert (=> b!7813406 (= c!1438634 ((_ is Union!20915) r1!6206))))

(assert (=> b!7813406 (= e!4624160 e!4624158)))

(declare-fun b!7813407 () Bool)

(assert (=> b!7813407 (= e!4624158 (Union!20915 call!724864 call!724863))))

(assert (= (and d!2348985 c!1438635) b!7813402))

(assert (= (and d!2348985 (not c!1438635)) b!7813405))

(assert (= (and b!7813405 c!1438637) b!7813403))

(assert (= (and b!7813405 (not c!1438637)) b!7813406))

(assert (= (and b!7813406 c!1438634) b!7813407))

(assert (= (and b!7813406 (not c!1438634)) b!7813398))

(assert (= (and b!7813398 c!1438636) b!7813400))

(assert (= (and b!7813398 (not c!1438636)) b!7813399))

(assert (= (and b!7813399 c!1438638) b!7813404))

(assert (= (and b!7813399 (not c!1438638)) b!7813401))

(assert (= (or b!7813404 b!7813401) bm!724861))

(assert (= (or b!7813400 b!7813404) bm!724859))

(assert (= (or b!7813407 bm!724859) bm!724858))

(assert (= (or b!7813407 bm!724861) bm!724860))

(declare-fun m!8242810 () Bool)

(assert (=> bm!724858 m!8242810))

(declare-fun m!8242812 () Bool)

(assert (=> bm!724860 m!8242812))

(declare-fun m!8242814 () Bool)

(assert (=> b!7813399 m!8242814))

(declare-fun m!8242816 () Bool)

(assert (=> d!2348985 m!8242816))

(assert (=> d!2348985 m!8242712))

(assert (=> b!7813126 d!2348985))

(declare-fun b!7813432 () Bool)

(declare-fun e!4624171 () Bool)

(assert (=> b!7813432 (= e!4624171 tp_is_empty!52185)))

(declare-fun b!7813434 () Bool)

(declare-fun tp!2302996 () Bool)

(assert (=> b!7813434 (= e!4624171 tp!2302996)))

(assert (=> b!7813125 (= tp!2302971 e!4624171)))

(declare-fun b!7813433 () Bool)

(declare-fun tp!2302992 () Bool)

(declare-fun tp!2302994 () Bool)

(assert (=> b!7813433 (= e!4624171 (and tp!2302992 tp!2302994))))

(declare-fun b!7813435 () Bool)

(declare-fun tp!2302995 () Bool)

(declare-fun tp!2302993 () Bool)

(assert (=> b!7813435 (= e!4624171 (and tp!2302995 tp!2302993))))

(assert (= (and b!7813125 ((_ is ElementMatch!20915) (regOne!42342 r2!6144))) b!7813432))

(assert (= (and b!7813125 ((_ is Concat!29760) (regOne!42342 r2!6144))) b!7813433))

(assert (= (and b!7813125 ((_ is Star!20915) (regOne!42342 r2!6144))) b!7813434))

(assert (= (and b!7813125 ((_ is Union!20915) (regOne!42342 r2!6144))) b!7813435))

(declare-fun b!7813445 () Bool)

(declare-fun e!4624179 () Bool)

(assert (=> b!7813445 (= e!4624179 tp_is_empty!52185)))

(declare-fun b!7813447 () Bool)

(declare-fun tp!2303001 () Bool)

(assert (=> b!7813447 (= e!4624179 tp!2303001)))

(assert (=> b!7813125 (= tp!2302976 e!4624179)))

(declare-fun b!7813446 () Bool)

(declare-fun tp!2302997 () Bool)

(declare-fun tp!2302999 () Bool)

(assert (=> b!7813446 (= e!4624179 (and tp!2302997 tp!2302999))))

(declare-fun b!7813448 () Bool)

(declare-fun tp!2303000 () Bool)

(declare-fun tp!2302998 () Bool)

(assert (=> b!7813448 (= e!4624179 (and tp!2303000 tp!2302998))))

(assert (= (and b!7813125 ((_ is ElementMatch!20915) (regTwo!42342 r2!6144))) b!7813445))

(assert (= (and b!7813125 ((_ is Concat!29760) (regTwo!42342 r2!6144))) b!7813446))

(assert (= (and b!7813125 ((_ is Star!20915) (regTwo!42342 r2!6144))) b!7813447))

(assert (= (and b!7813125 ((_ is Union!20915) (regTwo!42342 r2!6144))) b!7813448))

(declare-fun b!7813449 () Bool)

(declare-fun e!4624180 () Bool)

(assert (=> b!7813449 (= e!4624180 tp_is_empty!52185)))

(declare-fun b!7813451 () Bool)

(declare-fun tp!2303006 () Bool)

(assert (=> b!7813451 (= e!4624180 tp!2303006)))

(assert (=> b!7813135 (= tp!2302980 e!4624180)))

(declare-fun b!7813450 () Bool)

(declare-fun tp!2303002 () Bool)

(declare-fun tp!2303004 () Bool)

(assert (=> b!7813450 (= e!4624180 (and tp!2303002 tp!2303004))))

(declare-fun b!7813452 () Bool)

(declare-fun tp!2303005 () Bool)

(declare-fun tp!2303003 () Bool)

(assert (=> b!7813452 (= e!4624180 (and tp!2303005 tp!2303003))))

(assert (= (and b!7813135 ((_ is ElementMatch!20915) (regOne!42342 r1!6206))) b!7813449))

(assert (= (and b!7813135 ((_ is Concat!29760) (regOne!42342 r1!6206))) b!7813450))

(assert (= (and b!7813135 ((_ is Star!20915) (regOne!42342 r1!6206))) b!7813451))

(assert (= (and b!7813135 ((_ is Union!20915) (regOne!42342 r1!6206))) b!7813452))

(declare-fun b!7813453 () Bool)

(declare-fun e!4624181 () Bool)

(assert (=> b!7813453 (= e!4624181 tp_is_empty!52185)))

(declare-fun b!7813455 () Bool)

(declare-fun tp!2303011 () Bool)

(assert (=> b!7813455 (= e!4624181 tp!2303011)))

(assert (=> b!7813135 (= tp!2302981 e!4624181)))

(declare-fun b!7813454 () Bool)

(declare-fun tp!2303007 () Bool)

(declare-fun tp!2303009 () Bool)

(assert (=> b!7813454 (= e!4624181 (and tp!2303007 tp!2303009))))

(declare-fun b!7813456 () Bool)

(declare-fun tp!2303010 () Bool)

(declare-fun tp!2303008 () Bool)

(assert (=> b!7813456 (= e!4624181 (and tp!2303010 tp!2303008))))

(assert (= (and b!7813135 ((_ is ElementMatch!20915) (regTwo!42342 r1!6206))) b!7813453))

(assert (= (and b!7813135 ((_ is Concat!29760) (regTwo!42342 r1!6206))) b!7813454))

(assert (= (and b!7813135 ((_ is Star!20915) (regTwo!42342 r1!6206))) b!7813455))

(assert (= (and b!7813135 ((_ is Union!20915) (regTwo!42342 r1!6206))) b!7813456))

(declare-fun b!7813466 () Bool)

(declare-fun e!4624189 () Bool)

(assert (=> b!7813466 (= e!4624189 tp_is_empty!52185)))

(declare-fun b!7813468 () Bool)

(declare-fun tp!2303016 () Bool)

(assert (=> b!7813468 (= e!4624189 tp!2303016)))

(assert (=> b!7813129 (= tp!2302979 e!4624189)))

(declare-fun b!7813467 () Bool)

(declare-fun tp!2303012 () Bool)

(declare-fun tp!2303014 () Bool)

(assert (=> b!7813467 (= e!4624189 (and tp!2303012 tp!2303014))))

(declare-fun b!7813469 () Bool)

(declare-fun tp!2303015 () Bool)

(declare-fun tp!2303013 () Bool)

(assert (=> b!7813469 (= e!4624189 (and tp!2303015 tp!2303013))))

(assert (= (and b!7813129 ((_ is ElementMatch!20915) (regOne!42343 r2!6144))) b!7813466))

(assert (= (and b!7813129 ((_ is Concat!29760) (regOne!42343 r2!6144))) b!7813467))

(assert (= (and b!7813129 ((_ is Star!20915) (regOne!42343 r2!6144))) b!7813468))

(assert (= (and b!7813129 ((_ is Union!20915) (regOne!42343 r2!6144))) b!7813469))

(declare-fun b!7813470 () Bool)

(declare-fun e!4624190 () Bool)

(assert (=> b!7813470 (= e!4624190 tp_is_empty!52185)))

(declare-fun b!7813472 () Bool)

(declare-fun tp!2303021 () Bool)

(assert (=> b!7813472 (= e!4624190 tp!2303021)))

(assert (=> b!7813129 (= tp!2302973 e!4624190)))

(declare-fun b!7813471 () Bool)

(declare-fun tp!2303017 () Bool)

(declare-fun tp!2303019 () Bool)

(assert (=> b!7813471 (= e!4624190 (and tp!2303017 tp!2303019))))

(declare-fun b!7813473 () Bool)

(declare-fun tp!2303020 () Bool)

(declare-fun tp!2303018 () Bool)

(assert (=> b!7813473 (= e!4624190 (and tp!2303020 tp!2303018))))

(assert (= (and b!7813129 ((_ is ElementMatch!20915) (regTwo!42343 r2!6144))) b!7813470))

(assert (= (and b!7813129 ((_ is Concat!29760) (regTwo!42343 r2!6144))) b!7813471))

(assert (= (and b!7813129 ((_ is Star!20915) (regTwo!42343 r2!6144))) b!7813472))

(assert (= (and b!7813129 ((_ is Union!20915) (regTwo!42343 r2!6144))) b!7813473))

(declare-fun b!7813474 () Bool)

(declare-fun e!4624191 () Bool)

(assert (=> b!7813474 (= e!4624191 tp_is_empty!52185)))

(declare-fun b!7813476 () Bool)

(declare-fun tp!2303026 () Bool)

(assert (=> b!7813476 (= e!4624191 tp!2303026)))

(assert (=> b!7813124 (= tp!2302975 e!4624191)))

(declare-fun b!7813475 () Bool)

(declare-fun tp!2303022 () Bool)

(declare-fun tp!2303024 () Bool)

(assert (=> b!7813475 (= e!4624191 (and tp!2303022 tp!2303024))))

(declare-fun b!7813477 () Bool)

(declare-fun tp!2303025 () Bool)

(declare-fun tp!2303023 () Bool)

(assert (=> b!7813477 (= e!4624191 (and tp!2303025 tp!2303023))))

(assert (= (and b!7813124 ((_ is ElementMatch!20915) (reg!21244 r1!6206))) b!7813474))

(assert (= (and b!7813124 ((_ is Concat!29760) (reg!21244 r1!6206))) b!7813475))

(assert (= (and b!7813124 ((_ is Star!20915) (reg!21244 r1!6206))) b!7813476))

(assert (= (and b!7813124 ((_ is Union!20915) (reg!21244 r1!6206))) b!7813477))

(declare-fun b!7813496 () Bool)

(declare-fun e!4624201 () Bool)

(declare-fun tp!2303029 () Bool)

(assert (=> b!7813496 (= e!4624201 (and tp_is_empty!52185 tp!2303029))))

(assert (=> b!7813133 (= tp!2302977 e!4624201)))

(assert (= (and b!7813133 ((_ is Cons!73628) (t!388487 s!14225))) b!7813496))

(declare-fun b!7813497 () Bool)

(declare-fun e!4624202 () Bool)

(assert (=> b!7813497 (= e!4624202 tp_is_empty!52185)))

(declare-fun b!7813499 () Bool)

(declare-fun tp!2303034 () Bool)

(assert (=> b!7813499 (= e!4624202 tp!2303034)))

(assert (=> b!7813128 (= tp!2302978 e!4624202)))

(declare-fun b!7813498 () Bool)

(declare-fun tp!2303030 () Bool)

(declare-fun tp!2303032 () Bool)

(assert (=> b!7813498 (= e!4624202 (and tp!2303030 tp!2303032))))

(declare-fun b!7813500 () Bool)

(declare-fun tp!2303033 () Bool)

(declare-fun tp!2303031 () Bool)

(assert (=> b!7813500 (= e!4624202 (and tp!2303033 tp!2303031))))

(assert (= (and b!7813128 ((_ is ElementMatch!20915) (reg!21244 r2!6144))) b!7813497))

(assert (= (and b!7813128 ((_ is Concat!29760) (reg!21244 r2!6144))) b!7813498))

(assert (= (and b!7813128 ((_ is Star!20915) (reg!21244 r2!6144))) b!7813499))

(assert (= (and b!7813128 ((_ is Union!20915) (reg!21244 r2!6144))) b!7813500))

(declare-fun b!7813501 () Bool)

(declare-fun e!4624203 () Bool)

(assert (=> b!7813501 (= e!4624203 tp_is_empty!52185)))

(declare-fun b!7813503 () Bool)

(declare-fun tp!2303039 () Bool)

(assert (=> b!7813503 (= e!4624203 tp!2303039)))

(assert (=> b!7813137 (= tp!2302972 e!4624203)))

(declare-fun b!7813502 () Bool)

(declare-fun tp!2303035 () Bool)

(declare-fun tp!2303037 () Bool)

(assert (=> b!7813502 (= e!4624203 (and tp!2303035 tp!2303037))))

(declare-fun b!7813504 () Bool)

(declare-fun tp!2303038 () Bool)

(declare-fun tp!2303036 () Bool)

(assert (=> b!7813504 (= e!4624203 (and tp!2303038 tp!2303036))))

(assert (= (and b!7813137 ((_ is ElementMatch!20915) (regOne!42343 r1!6206))) b!7813501))

(assert (= (and b!7813137 ((_ is Concat!29760) (regOne!42343 r1!6206))) b!7813502))

(assert (= (and b!7813137 ((_ is Star!20915) (regOne!42343 r1!6206))) b!7813503))

(assert (= (and b!7813137 ((_ is Union!20915) (regOne!42343 r1!6206))) b!7813504))

(declare-fun b!7813505 () Bool)

(declare-fun e!4624204 () Bool)

(assert (=> b!7813505 (= e!4624204 tp_is_empty!52185)))

(declare-fun b!7813507 () Bool)

(declare-fun tp!2303044 () Bool)

(assert (=> b!7813507 (= e!4624204 tp!2303044)))

(assert (=> b!7813137 (= tp!2302974 e!4624204)))

(declare-fun b!7813506 () Bool)

(declare-fun tp!2303040 () Bool)

(declare-fun tp!2303042 () Bool)

(assert (=> b!7813506 (= e!4624204 (and tp!2303040 tp!2303042))))

(declare-fun b!7813508 () Bool)

(declare-fun tp!2303043 () Bool)

(declare-fun tp!2303041 () Bool)

(assert (=> b!7813508 (= e!4624204 (and tp!2303043 tp!2303041))))

(assert (= (and b!7813137 ((_ is ElementMatch!20915) (regTwo!42343 r1!6206))) b!7813505))

(assert (= (and b!7813137 ((_ is Concat!29760) (regTwo!42343 r1!6206))) b!7813506))

(assert (= (and b!7813137 ((_ is Star!20915) (regTwo!42343 r1!6206))) b!7813507))

(assert (= (and b!7813137 ((_ is Union!20915) (regTwo!42343 r1!6206))) b!7813508))

(check-sat (not b!7813476) (not b!7813263) (not bm!724810) (not b!7813508) (not d!2348967) (not bm!724858) (not b!7813264) (not b!7813434) (not b!7813496) (not b!7813190) (not bm!724856) (not b!7813163) (not b!7813433) (not bm!724811) (not b!7813321) (not b!7813448) (not b!7813265) (not bm!724832) (not b!7813473) (not bm!724854) (not b!7813435) (not b!7813389) (not d!2348963) (not b!7813279) (not b!7813399) (not b!7813446) (not d!2348977) (not b!7813280) (not b!7813266) (not b!7813198) (not b!7813278) (not bm!724839) (not b!7813471) (not b!7813498) (not bm!724860) (not d!2348985) (not b!7813259) (not b!7813277) (not b!7813454) (not bm!724825) (not b!7813273) (not b!7813502) (not b!7813262) (not b!7813477) (not b!7813503) (not b!7813188) (not b!7813452) (not b!7813276) (not b!7813472) (not b!7813468) (not b!7813447) (not b!7813451) (not b!7813506) (not b!7813469) (not b!7813302) (not b!7813455) (not b!7813500) (not b!7813504) (not bm!724826) (not b!7813456) (not bm!724833) (not bm!724802) (not b!7813507) (not bm!724840) (not b!7813467) (not b!7813499) tp_is_empty!52185 (not b!7813475) (not b!7813450) (not bm!724801))
(check-sat)
