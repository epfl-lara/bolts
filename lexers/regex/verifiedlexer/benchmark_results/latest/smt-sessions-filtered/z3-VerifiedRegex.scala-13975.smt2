; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739892 () Bool)

(assert start!739892)

(declare-fun res!3096812 () Bool)

(declare-fun e!4602946 () Bool)

(assert (=> start!739892 (=> (not res!3096812) (not e!4602946))))

(declare-datatypes ((C!41816 0))(
  ( (C!41817 (val!31348 Int)) )
))
(declare-datatypes ((Regex!20745 0))(
  ( (ElementMatch!20745 (c!1431694 C!41816)) (Concat!29590 (regOne!42002 Regex!20745) (regTwo!42002 Regex!20745)) (EmptyExpr!20745) (Star!20745 (reg!21074 Regex!20745)) (EmptyLang!20745) (Union!20745 (regOne!42003 Regex!20745) (regTwo!42003 Regex!20745)) )
))
(declare-fun lt!2671182 () Regex!20745)

(declare-fun validRegex!11159 (Regex!20745) Bool)

(assert (=> start!739892 (= res!3096812 (validRegex!11159 lt!2671182))))

(declare-fun r!25924 () Regex!20745)

(assert (=> start!739892 (= lt!2671182 (Star!20745 r!25924))))

(assert (=> start!739892 e!4602946))

(declare-fun e!4602945 () Bool)

(assert (=> start!739892 e!4602945))

(declare-fun e!4602947 () Bool)

(assert (=> start!739892 e!4602947))

(declare-fun b!7768094 () Bool)

(declare-fun tp_is_empty!51845 () Bool)

(declare-fun tp!2281987 () Bool)

(assert (=> b!7768094 (= e!4602947 (and tp_is_empty!51845 tp!2281987))))

(declare-fun b!7768095 () Bool)

(declare-fun res!3096810 () Bool)

(assert (=> b!7768095 (=> (not res!3096810) (not e!4602946))))

(declare-datatypes ((List!73586 0))(
  ( (Nil!73462) (Cons!73462 (h!79910 C!41816) (t!388321 List!73586)) )
))
(declare-fun s!14904 () List!73586)

(declare-fun matchR!10207 (Regex!20745 List!73586) Bool)

(assert (=> b!7768095 (= res!3096810 (matchR!10207 lt!2671182 s!14904))))

(declare-fun b!7768096 () Bool)

(declare-fun tp!2281988 () Bool)

(declare-fun tp!2281989 () Bool)

(assert (=> b!7768096 (= e!4602945 (and tp!2281988 tp!2281989))))

(declare-fun b!7768097 () Bool)

(assert (=> b!7768097 (= e!4602945 tp_is_empty!51845)))

(declare-fun b!7768098 () Bool)

(declare-fun res!3096811 () Bool)

(assert (=> b!7768098 (=> (not res!3096811) (not e!4602946))))

(get-info :version)

(assert (=> b!7768098 (= res!3096811 ((_ is Cons!73462) s!14904))))

(declare-fun b!7768099 () Bool)

(declare-fun tp!2281984 () Bool)

(assert (=> b!7768099 (= e!4602945 tp!2281984)))

(declare-fun b!7768100 () Bool)

(declare-fun derivativeStep!6090 (Regex!20745 C!41816) Regex!20745)

(assert (=> b!7768100 (= e!4602946 (not (= (derivativeStep!6090 lt!2671182 (h!79910 s!14904)) (Concat!29590 (derivativeStep!6090 r!25924 (h!79910 s!14904)) lt!2671182))))))

(declare-fun b!7768101 () Bool)

(declare-fun tp!2281985 () Bool)

(declare-fun tp!2281986 () Bool)

(assert (=> b!7768101 (= e!4602945 (and tp!2281985 tp!2281986))))

(assert (= (and start!739892 res!3096812) b!7768095))

(assert (= (and b!7768095 res!3096810) b!7768098))

(assert (= (and b!7768098 res!3096811) b!7768100))

(assert (= (and start!739892 ((_ is ElementMatch!20745) r!25924)) b!7768097))

(assert (= (and start!739892 ((_ is Concat!29590) r!25924)) b!7768101))

(assert (= (and start!739892 ((_ is Star!20745) r!25924)) b!7768099))

(assert (= (and start!739892 ((_ is Union!20745) r!25924)) b!7768096))

(assert (= (and start!739892 ((_ is Cons!73462) s!14904)) b!7768094))

(declare-fun m!8223594 () Bool)

(assert (=> start!739892 m!8223594))

(declare-fun m!8223596 () Bool)

(assert (=> b!7768095 m!8223596))

(declare-fun m!8223598 () Bool)

(assert (=> b!7768100 m!8223598))

(declare-fun m!8223600 () Bool)

(assert (=> b!7768100 m!8223600))

(check-sat (not b!7768099) (not b!7768101) (not b!7768094) tp_is_empty!51845 (not b!7768096) (not b!7768100) (not start!739892) (not b!7768095))
(check-sat)
(get-model)

(declare-fun b!7768122 () Bool)

(declare-fun e!4602961 () Regex!20745)

(declare-fun call!719751 () Regex!20745)

(declare-fun call!719750 () Regex!20745)

(assert (=> b!7768122 (= e!4602961 (Union!20745 (Concat!29590 call!719751 (regTwo!42002 lt!2671182)) call!719750))))

(declare-fun b!7768123 () Bool)

(declare-fun e!4602959 () Regex!20745)

(declare-fun e!4602960 () Regex!20745)

(assert (=> b!7768123 (= e!4602959 e!4602960)))

(declare-fun c!1431709 () Bool)

(assert (=> b!7768123 (= c!1431709 ((_ is Star!20745) lt!2671182))))

(declare-fun b!7768124 () Bool)

(declare-fun e!4602958 () Regex!20745)

(assert (=> b!7768124 (= e!4602958 (ite (= (h!79910 s!14904) (c!1431694 lt!2671182)) EmptyExpr!20745 EmptyLang!20745))))

(declare-fun bm!719744 () Bool)

(declare-fun c!1431706 () Bool)

(assert (=> bm!719744 (= call!719750 (derivativeStep!6090 (ite c!1431706 (regTwo!42003 lt!2671182) (regTwo!42002 lt!2671182)) (h!79910 s!14904)))))

(declare-fun bm!719745 () Bool)

(declare-fun call!719752 () Regex!20745)

(assert (=> bm!719745 (= call!719752 (derivativeStep!6090 (ite c!1431706 (regOne!42003 lt!2671182) (ite c!1431709 (reg!21074 lt!2671182) (regOne!42002 lt!2671182))) (h!79910 s!14904)))))

(declare-fun b!7768125 () Bool)

(assert (=> b!7768125 (= e!4602959 (Union!20745 call!719752 call!719750))))

(declare-fun b!7768126 () Bool)

(declare-fun e!4602962 () Regex!20745)

(assert (=> b!7768126 (= e!4602962 EmptyLang!20745)))

(declare-fun bm!719746 () Bool)

(declare-fun call!719749 () Regex!20745)

(assert (=> bm!719746 (= call!719751 call!719749)))

(declare-fun b!7768128 () Bool)

(declare-fun c!1431708 () Bool)

(declare-fun nullable!9138 (Regex!20745) Bool)

(assert (=> b!7768128 (= c!1431708 (nullable!9138 (regOne!42002 lt!2671182)))))

(assert (=> b!7768128 (= e!4602960 e!4602961)))

(declare-fun b!7768129 () Bool)

(assert (=> b!7768129 (= e!4602960 (Concat!29590 call!719749 lt!2671182))))

(declare-fun b!7768130 () Bool)

(assert (=> b!7768130 (= e!4602962 e!4602958)))

(declare-fun c!1431707 () Bool)

(assert (=> b!7768130 (= c!1431707 ((_ is ElementMatch!20745) lt!2671182))))

(declare-fun d!2344108 () Bool)

(declare-fun lt!2671185 () Regex!20745)

(assert (=> d!2344108 (validRegex!11159 lt!2671185)))

(assert (=> d!2344108 (= lt!2671185 e!4602962)))

(declare-fun c!1431705 () Bool)

(assert (=> d!2344108 (= c!1431705 (or ((_ is EmptyExpr!20745) lt!2671182) ((_ is EmptyLang!20745) lt!2671182)))))

(assert (=> d!2344108 (validRegex!11159 lt!2671182)))

(assert (=> d!2344108 (= (derivativeStep!6090 lt!2671182 (h!79910 s!14904)) lt!2671185)))

(declare-fun b!7768127 () Bool)

(assert (=> b!7768127 (= e!4602961 (Union!20745 (Concat!29590 call!719751 (regTwo!42002 lt!2671182)) EmptyLang!20745))))

(declare-fun bm!719747 () Bool)

(assert (=> bm!719747 (= call!719749 call!719752)))

(declare-fun b!7768131 () Bool)

(assert (=> b!7768131 (= c!1431706 ((_ is Union!20745) lt!2671182))))

(assert (=> b!7768131 (= e!4602958 e!4602959)))

(assert (= (and d!2344108 c!1431705) b!7768126))

(assert (= (and d!2344108 (not c!1431705)) b!7768130))

(assert (= (and b!7768130 c!1431707) b!7768124))

(assert (= (and b!7768130 (not c!1431707)) b!7768131))

(assert (= (and b!7768131 c!1431706) b!7768125))

(assert (= (and b!7768131 (not c!1431706)) b!7768123))

(assert (= (and b!7768123 c!1431709) b!7768129))

(assert (= (and b!7768123 (not c!1431709)) b!7768128))

(assert (= (and b!7768128 c!1431708) b!7768122))

(assert (= (and b!7768128 (not c!1431708)) b!7768127))

(assert (= (or b!7768122 b!7768127) bm!719746))

(assert (= (or b!7768129 bm!719746) bm!719747))

(assert (= (or b!7768125 b!7768122) bm!719744))

(assert (= (or b!7768125 bm!719747) bm!719745))

(declare-fun m!8223602 () Bool)

(assert (=> bm!719744 m!8223602))

(declare-fun m!8223604 () Bool)

(assert (=> bm!719745 m!8223604))

(declare-fun m!8223606 () Bool)

(assert (=> b!7768128 m!8223606))

(declare-fun m!8223608 () Bool)

(assert (=> d!2344108 m!8223608))

(assert (=> d!2344108 m!8223594))

(assert (=> b!7768100 d!2344108))

(declare-fun call!719754 () Regex!20745)

(declare-fun call!719755 () Regex!20745)

(declare-fun e!4602966 () Regex!20745)

(declare-fun b!7768132 () Bool)

(assert (=> b!7768132 (= e!4602966 (Union!20745 (Concat!29590 call!719755 (regTwo!42002 r!25924)) call!719754))))

(declare-fun b!7768133 () Bool)

(declare-fun e!4602964 () Regex!20745)

(declare-fun e!4602965 () Regex!20745)

(assert (=> b!7768133 (= e!4602964 e!4602965)))

(declare-fun c!1431714 () Bool)

(assert (=> b!7768133 (= c!1431714 ((_ is Star!20745) r!25924))))

(declare-fun b!7768134 () Bool)

(declare-fun e!4602963 () Regex!20745)

(assert (=> b!7768134 (= e!4602963 (ite (= (h!79910 s!14904) (c!1431694 r!25924)) EmptyExpr!20745 EmptyLang!20745))))

(declare-fun bm!719748 () Bool)

(declare-fun c!1431711 () Bool)

(assert (=> bm!719748 (= call!719754 (derivativeStep!6090 (ite c!1431711 (regTwo!42003 r!25924) (regTwo!42002 r!25924)) (h!79910 s!14904)))))

(declare-fun bm!719749 () Bool)

(declare-fun call!719756 () Regex!20745)

(assert (=> bm!719749 (= call!719756 (derivativeStep!6090 (ite c!1431711 (regOne!42003 r!25924) (ite c!1431714 (reg!21074 r!25924) (regOne!42002 r!25924))) (h!79910 s!14904)))))

(declare-fun b!7768135 () Bool)

(assert (=> b!7768135 (= e!4602964 (Union!20745 call!719756 call!719754))))

(declare-fun b!7768136 () Bool)

(declare-fun e!4602967 () Regex!20745)

(assert (=> b!7768136 (= e!4602967 EmptyLang!20745)))

(declare-fun bm!719750 () Bool)

(declare-fun call!719753 () Regex!20745)

(assert (=> bm!719750 (= call!719755 call!719753)))

(declare-fun b!7768138 () Bool)

(declare-fun c!1431713 () Bool)

(assert (=> b!7768138 (= c!1431713 (nullable!9138 (regOne!42002 r!25924)))))

(assert (=> b!7768138 (= e!4602965 e!4602966)))

(declare-fun b!7768139 () Bool)

(assert (=> b!7768139 (= e!4602965 (Concat!29590 call!719753 r!25924))))

(declare-fun b!7768140 () Bool)

(assert (=> b!7768140 (= e!4602967 e!4602963)))

(declare-fun c!1431712 () Bool)

(assert (=> b!7768140 (= c!1431712 ((_ is ElementMatch!20745) r!25924))))

(declare-fun d!2344112 () Bool)

(declare-fun lt!2671186 () Regex!20745)

(assert (=> d!2344112 (validRegex!11159 lt!2671186)))

(assert (=> d!2344112 (= lt!2671186 e!4602967)))

(declare-fun c!1431710 () Bool)

(assert (=> d!2344112 (= c!1431710 (or ((_ is EmptyExpr!20745) r!25924) ((_ is EmptyLang!20745) r!25924)))))

(assert (=> d!2344112 (validRegex!11159 r!25924)))

(assert (=> d!2344112 (= (derivativeStep!6090 r!25924 (h!79910 s!14904)) lt!2671186)))

(declare-fun b!7768137 () Bool)

(assert (=> b!7768137 (= e!4602966 (Union!20745 (Concat!29590 call!719755 (regTwo!42002 r!25924)) EmptyLang!20745))))

(declare-fun bm!719751 () Bool)

(assert (=> bm!719751 (= call!719753 call!719756)))

(declare-fun b!7768141 () Bool)

(assert (=> b!7768141 (= c!1431711 ((_ is Union!20745) r!25924))))

(assert (=> b!7768141 (= e!4602963 e!4602964)))

(assert (= (and d!2344112 c!1431710) b!7768136))

(assert (= (and d!2344112 (not c!1431710)) b!7768140))

(assert (= (and b!7768140 c!1431712) b!7768134))

(assert (= (and b!7768140 (not c!1431712)) b!7768141))

(assert (= (and b!7768141 c!1431711) b!7768135))

(assert (= (and b!7768141 (not c!1431711)) b!7768133))

(assert (= (and b!7768133 c!1431714) b!7768139))

(assert (= (and b!7768133 (not c!1431714)) b!7768138))

(assert (= (and b!7768138 c!1431713) b!7768132))

(assert (= (and b!7768138 (not c!1431713)) b!7768137))

(assert (= (or b!7768132 b!7768137) bm!719750))

(assert (= (or b!7768139 bm!719750) bm!719751))

(assert (= (or b!7768135 b!7768132) bm!719748))

(assert (= (or b!7768135 bm!719751) bm!719749))

(declare-fun m!8223610 () Bool)

(assert (=> bm!719748 m!8223610))

(declare-fun m!8223612 () Bool)

(assert (=> bm!719749 m!8223612))

(declare-fun m!8223614 () Bool)

(assert (=> b!7768138 m!8223614))

(declare-fun m!8223616 () Bool)

(assert (=> d!2344112 m!8223616))

(declare-fun m!8223618 () Bool)

(assert (=> d!2344112 m!8223618))

(assert (=> b!7768100 d!2344112))

(declare-fun bm!719758 () Bool)

(declare-fun call!719763 () Bool)

(declare-fun call!719765 () Bool)

(assert (=> bm!719758 (= call!719763 call!719765)))

(declare-fun b!7768188 () Bool)

(declare-fun e!4603002 () Bool)

(declare-fun e!4602997 () Bool)

(assert (=> b!7768188 (= e!4603002 e!4602997)))

(declare-fun c!1431725 () Bool)

(assert (=> b!7768188 (= c!1431725 ((_ is Union!20745) lt!2671182))))

(declare-fun b!7768189 () Bool)

(declare-fun e!4602996 () Bool)

(assert (=> b!7768189 (= e!4602996 e!4603002)))

(declare-fun c!1431726 () Bool)

(assert (=> b!7768189 (= c!1431726 ((_ is Star!20745) lt!2671182))))

(declare-fun b!7768190 () Bool)

(declare-fun e!4603000 () Bool)

(declare-fun call!719764 () Bool)

(assert (=> b!7768190 (= e!4603000 call!719764)))

(declare-fun b!7768191 () Bool)

(declare-fun e!4603001 () Bool)

(assert (=> b!7768191 (= e!4603001 call!719763)))

(declare-fun d!2344114 () Bool)

(declare-fun res!3096840 () Bool)

(assert (=> d!2344114 (=> res!3096840 e!4602996)))

(assert (=> d!2344114 (= res!3096840 ((_ is ElementMatch!20745) lt!2671182))))

(assert (=> d!2344114 (= (validRegex!11159 lt!2671182) e!4602996)))

(declare-fun bm!719759 () Bool)

(assert (=> bm!719759 (= call!719765 (validRegex!11159 (ite c!1431726 (reg!21074 lt!2671182) (ite c!1431725 (regOne!42003 lt!2671182) (regTwo!42002 lt!2671182)))))))

(declare-fun b!7768192 () Bool)

(declare-fun res!3096839 () Bool)

(declare-fun e!4602999 () Bool)

(assert (=> b!7768192 (=> res!3096839 e!4602999)))

(assert (=> b!7768192 (= res!3096839 (not ((_ is Concat!29590) lt!2671182)))))

(assert (=> b!7768192 (= e!4602997 e!4602999)))

(declare-fun b!7768193 () Bool)

(assert (=> b!7768193 (= e!4602999 e!4603001)))

(declare-fun res!3096843 () Bool)

(assert (=> b!7768193 (=> (not res!3096843) (not e!4603001))))

(assert (=> b!7768193 (= res!3096843 call!719764)))

(declare-fun b!7768194 () Bool)

(declare-fun e!4602998 () Bool)

(assert (=> b!7768194 (= e!4602998 call!719765)))

(declare-fun b!7768195 () Bool)

(assert (=> b!7768195 (= e!4603002 e!4602998)))

(declare-fun res!3096842 () Bool)

(assert (=> b!7768195 (= res!3096842 (not (nullable!9138 (reg!21074 lt!2671182))))))

(assert (=> b!7768195 (=> (not res!3096842) (not e!4602998))))

(declare-fun bm!719760 () Bool)

(assert (=> bm!719760 (= call!719764 (validRegex!11159 (ite c!1431725 (regTwo!42003 lt!2671182) (regOne!42002 lt!2671182))))))

(declare-fun b!7768196 () Bool)

(declare-fun res!3096841 () Bool)

(assert (=> b!7768196 (=> (not res!3096841) (not e!4603000))))

(assert (=> b!7768196 (= res!3096841 call!719763)))

(assert (=> b!7768196 (= e!4602997 e!4603000)))

(assert (= (and d!2344114 (not res!3096840)) b!7768189))

(assert (= (and b!7768189 c!1431726) b!7768195))

(assert (= (and b!7768189 (not c!1431726)) b!7768188))

(assert (= (and b!7768195 res!3096842) b!7768194))

(assert (= (and b!7768188 c!1431725) b!7768196))

(assert (= (and b!7768188 (not c!1431725)) b!7768192))

(assert (= (and b!7768196 res!3096841) b!7768190))

(assert (= (and b!7768192 (not res!3096839)) b!7768193))

(assert (= (and b!7768193 res!3096843) b!7768191))

(assert (= (or b!7768190 b!7768193) bm!719760))

(assert (= (or b!7768196 b!7768191) bm!719758))

(assert (= (or b!7768194 bm!719758) bm!719759))

(declare-fun m!8223620 () Bool)

(assert (=> bm!719759 m!8223620))

(declare-fun m!8223622 () Bool)

(assert (=> b!7768195 m!8223622))

(declare-fun m!8223624 () Bool)

(assert (=> bm!719760 m!8223624))

(assert (=> start!739892 d!2344114))

(declare-fun b!7768239 () Bool)

(declare-fun res!3096875 () Bool)

(declare-fun e!4603028 () Bool)

(assert (=> b!7768239 (=> (not res!3096875) (not e!4603028))))

(declare-fun call!719771 () Bool)

(assert (=> b!7768239 (= res!3096875 (not call!719771))))

(declare-fun b!7768240 () Bool)

(declare-fun e!4603026 () Bool)

(declare-fun head!15876 (List!73586) C!41816)

(declare-fun tail!15417 (List!73586) List!73586)

(assert (=> b!7768240 (= e!4603026 (matchR!10207 (derivativeStep!6090 lt!2671182 (head!15876 s!14904)) (tail!15417 s!14904)))))

(declare-fun b!7768242 () Bool)

(declare-fun res!3096871 () Bool)

(declare-fun e!4603027 () Bool)

(assert (=> b!7768242 (=> res!3096871 e!4603027)))

(assert (=> b!7768242 (= res!3096871 (not ((_ is ElementMatch!20745) lt!2671182)))))

(declare-fun e!4603029 () Bool)

(assert (=> b!7768242 (= e!4603029 e!4603027)))

(declare-fun b!7768243 () Bool)

(assert (=> b!7768243 (= e!4603028 (= (head!15876 s!14904) (c!1431694 lt!2671182)))))

(declare-fun b!7768244 () Bool)

(declare-fun e!4603030 () Bool)

(assert (=> b!7768244 (= e!4603027 e!4603030)))

(declare-fun res!3096870 () Bool)

(assert (=> b!7768244 (=> (not res!3096870) (not e!4603030))))

(declare-fun lt!2671192 () Bool)

(assert (=> b!7768244 (= res!3096870 (not lt!2671192))))

(declare-fun b!7768245 () Bool)

(declare-fun e!4603025 () Bool)

(assert (=> b!7768245 (= e!4603030 e!4603025)))

(declare-fun res!3096874 () Bool)

(assert (=> b!7768245 (=> res!3096874 e!4603025)))

(assert (=> b!7768245 (= res!3096874 call!719771)))

(declare-fun b!7768246 () Bool)

(assert (=> b!7768246 (= e!4603025 (not (= (head!15876 s!14904) (c!1431694 lt!2671182))))))

(declare-fun b!7768247 () Bool)

(assert (=> b!7768247 (= e!4603029 (not lt!2671192))))

(declare-fun bm!719766 () Bool)

(declare-fun isEmpty!42134 (List!73586) Bool)

(assert (=> bm!719766 (= call!719771 (isEmpty!42134 s!14904))))

(declare-fun d!2344116 () Bool)

(declare-fun e!4603024 () Bool)

(assert (=> d!2344116 e!4603024))

(declare-fun c!1431737 () Bool)

(assert (=> d!2344116 (= c!1431737 ((_ is EmptyExpr!20745) lt!2671182))))

(assert (=> d!2344116 (= lt!2671192 e!4603026)))

(declare-fun c!1431736 () Bool)

(assert (=> d!2344116 (= c!1431736 (isEmpty!42134 s!14904))))

(assert (=> d!2344116 (validRegex!11159 lt!2671182)))

(assert (=> d!2344116 (= (matchR!10207 lt!2671182 s!14904) lt!2671192)))

(declare-fun b!7768241 () Bool)

(assert (=> b!7768241 (= e!4603024 (= lt!2671192 call!719771))))

(declare-fun b!7768248 () Bool)

(declare-fun res!3096872 () Bool)

(assert (=> b!7768248 (=> (not res!3096872) (not e!4603028))))

(assert (=> b!7768248 (= res!3096872 (isEmpty!42134 (tail!15417 s!14904)))))

(declare-fun b!7768249 () Bool)

(assert (=> b!7768249 (= e!4603024 e!4603029)))

(declare-fun c!1431738 () Bool)

(assert (=> b!7768249 (= c!1431738 ((_ is EmptyLang!20745) lt!2671182))))

(declare-fun b!7768250 () Bool)

(assert (=> b!7768250 (= e!4603026 (nullable!9138 lt!2671182))))

(declare-fun b!7768251 () Bool)

(declare-fun res!3096868 () Bool)

(assert (=> b!7768251 (=> res!3096868 e!4603027)))

(assert (=> b!7768251 (= res!3096868 e!4603028)))

(declare-fun res!3096873 () Bool)

(assert (=> b!7768251 (=> (not res!3096873) (not e!4603028))))

(assert (=> b!7768251 (= res!3096873 lt!2671192)))

(declare-fun b!7768252 () Bool)

(declare-fun res!3096869 () Bool)

(assert (=> b!7768252 (=> res!3096869 e!4603025)))

(assert (=> b!7768252 (= res!3096869 (not (isEmpty!42134 (tail!15417 s!14904))))))

(assert (= (and d!2344116 c!1431736) b!7768250))

(assert (= (and d!2344116 (not c!1431736)) b!7768240))

(assert (= (and d!2344116 c!1431737) b!7768241))

(assert (= (and d!2344116 (not c!1431737)) b!7768249))

(assert (= (and b!7768249 c!1431738) b!7768247))

(assert (= (and b!7768249 (not c!1431738)) b!7768242))

(assert (= (and b!7768242 (not res!3096871)) b!7768251))

(assert (= (and b!7768251 res!3096873) b!7768239))

(assert (= (and b!7768239 res!3096875) b!7768248))

(assert (= (and b!7768248 res!3096872) b!7768243))

(assert (= (and b!7768251 (not res!3096868)) b!7768244))

(assert (= (and b!7768244 res!3096870) b!7768245))

(assert (= (and b!7768245 (not res!3096874)) b!7768252))

(assert (= (and b!7768252 (not res!3096869)) b!7768246))

(assert (= (or b!7768241 b!7768239 b!7768245) bm!719766))

(declare-fun m!8223640 () Bool)

(assert (=> b!7768252 m!8223640))

(assert (=> b!7768252 m!8223640))

(declare-fun m!8223642 () Bool)

(assert (=> b!7768252 m!8223642))

(declare-fun m!8223644 () Bool)

(assert (=> b!7768240 m!8223644))

(assert (=> b!7768240 m!8223644))

(declare-fun m!8223646 () Bool)

(assert (=> b!7768240 m!8223646))

(assert (=> b!7768240 m!8223640))

(assert (=> b!7768240 m!8223646))

(assert (=> b!7768240 m!8223640))

(declare-fun m!8223648 () Bool)

(assert (=> b!7768240 m!8223648))

(declare-fun m!8223650 () Bool)

(assert (=> bm!719766 m!8223650))

(assert (=> b!7768243 m!8223644))

(declare-fun m!8223652 () Bool)

(assert (=> b!7768250 m!8223652))

(assert (=> b!7768248 m!8223640))

(assert (=> b!7768248 m!8223640))

(assert (=> b!7768248 m!8223642))

(assert (=> d!2344116 m!8223650))

(assert (=> d!2344116 m!8223594))

(assert (=> b!7768246 m!8223644))

(assert (=> b!7768095 d!2344116))

(declare-fun b!7768265 () Bool)

(declare-fun e!4603033 () Bool)

(declare-fun tp!2282004 () Bool)

(assert (=> b!7768265 (= e!4603033 tp!2282004)))

(declare-fun b!7768266 () Bool)

(declare-fun tp!2282000 () Bool)

(declare-fun tp!2282003 () Bool)

(assert (=> b!7768266 (= e!4603033 (and tp!2282000 tp!2282003))))

(declare-fun b!7768264 () Bool)

(declare-fun tp!2282002 () Bool)

(declare-fun tp!2282001 () Bool)

(assert (=> b!7768264 (= e!4603033 (and tp!2282002 tp!2282001))))

(declare-fun b!7768263 () Bool)

(assert (=> b!7768263 (= e!4603033 tp_is_empty!51845)))

(assert (=> b!7768099 (= tp!2281984 e!4603033)))

(assert (= (and b!7768099 ((_ is ElementMatch!20745) (reg!21074 r!25924))) b!7768263))

(assert (= (and b!7768099 ((_ is Concat!29590) (reg!21074 r!25924))) b!7768264))

(assert (= (and b!7768099 ((_ is Star!20745) (reg!21074 r!25924))) b!7768265))

(assert (= (and b!7768099 ((_ is Union!20745) (reg!21074 r!25924))) b!7768266))

(declare-fun b!7768271 () Bool)

(declare-fun e!4603036 () Bool)

(declare-fun tp!2282007 () Bool)

(assert (=> b!7768271 (= e!4603036 (and tp_is_empty!51845 tp!2282007))))

(assert (=> b!7768094 (= tp!2281987 e!4603036)))

(assert (= (and b!7768094 ((_ is Cons!73462) (t!388321 s!14904))) b!7768271))

(declare-fun b!7768274 () Bool)

(declare-fun e!4603037 () Bool)

(declare-fun tp!2282012 () Bool)

(assert (=> b!7768274 (= e!4603037 tp!2282012)))

(declare-fun b!7768275 () Bool)

(declare-fun tp!2282008 () Bool)

(declare-fun tp!2282011 () Bool)

(assert (=> b!7768275 (= e!4603037 (and tp!2282008 tp!2282011))))

(declare-fun b!7768273 () Bool)

(declare-fun tp!2282010 () Bool)

(declare-fun tp!2282009 () Bool)

(assert (=> b!7768273 (= e!4603037 (and tp!2282010 tp!2282009))))

(declare-fun b!7768272 () Bool)

(assert (=> b!7768272 (= e!4603037 tp_is_empty!51845)))

(assert (=> b!7768101 (= tp!2281985 e!4603037)))

(assert (= (and b!7768101 ((_ is ElementMatch!20745) (regOne!42002 r!25924))) b!7768272))

(assert (= (and b!7768101 ((_ is Concat!29590) (regOne!42002 r!25924))) b!7768273))

(assert (= (and b!7768101 ((_ is Star!20745) (regOne!42002 r!25924))) b!7768274))

(assert (= (and b!7768101 ((_ is Union!20745) (regOne!42002 r!25924))) b!7768275))

(declare-fun b!7768280 () Bool)

(declare-fun e!4603040 () Bool)

(declare-fun tp!2282017 () Bool)

(assert (=> b!7768280 (= e!4603040 tp!2282017)))

(declare-fun b!7768281 () Bool)

(declare-fun tp!2282013 () Bool)

(declare-fun tp!2282016 () Bool)

(assert (=> b!7768281 (= e!4603040 (and tp!2282013 tp!2282016))))

(declare-fun b!7768279 () Bool)

(declare-fun tp!2282015 () Bool)

(declare-fun tp!2282014 () Bool)

(assert (=> b!7768279 (= e!4603040 (and tp!2282015 tp!2282014))))

(declare-fun b!7768278 () Bool)

(assert (=> b!7768278 (= e!4603040 tp_is_empty!51845)))

(assert (=> b!7768101 (= tp!2281986 e!4603040)))

(assert (= (and b!7768101 ((_ is ElementMatch!20745) (regTwo!42002 r!25924))) b!7768278))

(assert (= (and b!7768101 ((_ is Concat!29590) (regTwo!42002 r!25924))) b!7768279))

(assert (= (and b!7768101 ((_ is Star!20745) (regTwo!42002 r!25924))) b!7768280))

(assert (= (and b!7768101 ((_ is Union!20745) (regTwo!42002 r!25924))) b!7768281))

(declare-fun b!7768288 () Bool)

(declare-fun e!4603043 () Bool)

(declare-fun tp!2282022 () Bool)

(assert (=> b!7768288 (= e!4603043 tp!2282022)))

(declare-fun b!7768289 () Bool)

(declare-fun tp!2282018 () Bool)

(declare-fun tp!2282021 () Bool)

(assert (=> b!7768289 (= e!4603043 (and tp!2282018 tp!2282021))))

(declare-fun b!7768287 () Bool)

(declare-fun tp!2282020 () Bool)

(declare-fun tp!2282019 () Bool)

(assert (=> b!7768287 (= e!4603043 (and tp!2282020 tp!2282019))))

(declare-fun b!7768286 () Bool)

(assert (=> b!7768286 (= e!4603043 tp_is_empty!51845)))

(assert (=> b!7768096 (= tp!2281988 e!4603043)))

(assert (= (and b!7768096 ((_ is ElementMatch!20745) (regOne!42003 r!25924))) b!7768286))

(assert (= (and b!7768096 ((_ is Concat!29590) (regOne!42003 r!25924))) b!7768287))

(assert (= (and b!7768096 ((_ is Star!20745) (regOne!42003 r!25924))) b!7768288))

(assert (= (and b!7768096 ((_ is Union!20745) (regOne!42003 r!25924))) b!7768289))

(declare-fun b!7768294 () Bool)

(declare-fun e!4603046 () Bool)

(declare-fun tp!2282027 () Bool)

(assert (=> b!7768294 (= e!4603046 tp!2282027)))

(declare-fun b!7768295 () Bool)

(declare-fun tp!2282023 () Bool)

(declare-fun tp!2282026 () Bool)

(assert (=> b!7768295 (= e!4603046 (and tp!2282023 tp!2282026))))

(declare-fun b!7768293 () Bool)

(declare-fun tp!2282025 () Bool)

(declare-fun tp!2282024 () Bool)

(assert (=> b!7768293 (= e!4603046 (and tp!2282025 tp!2282024))))

(declare-fun b!7768292 () Bool)

(assert (=> b!7768292 (= e!4603046 tp_is_empty!51845)))

(assert (=> b!7768096 (= tp!2281989 e!4603046)))

(assert (= (and b!7768096 ((_ is ElementMatch!20745) (regTwo!42003 r!25924))) b!7768292))

(assert (= (and b!7768096 ((_ is Concat!29590) (regTwo!42003 r!25924))) b!7768293))

(assert (= (and b!7768096 ((_ is Star!20745) (regTwo!42003 r!25924))) b!7768294))

(assert (= (and b!7768096 ((_ is Union!20745) (regTwo!42003 r!25924))) b!7768295))

(check-sat (not b!7768271) (not b!7768280) (not d!2344108) (not b!7768246) (not b!7768138) (not b!7768273) (not b!7768128) (not b!7768240) (not bm!719759) (not b!7768294) (not b!7768195) (not bm!719745) (not b!7768250) (not bm!719766) (not bm!719760) (not b!7768288) (not bm!719749) (not b!7768266) (not b!7768248) (not d!2344116) (not b!7768243) (not b!7768274) tp_is_empty!51845 (not b!7768265) (not b!7768293) (not b!7768281) (not b!7768287) (not b!7768289) (not bm!719744) (not d!2344112) (not b!7768279) (not b!7768264) (not b!7768275) (not b!7768295) (not bm!719748) (not b!7768252))
(check-sat)
