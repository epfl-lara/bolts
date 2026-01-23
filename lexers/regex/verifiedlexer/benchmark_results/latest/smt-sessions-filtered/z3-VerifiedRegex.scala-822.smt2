; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45500 () Bool)

(assert start!45500)

(declare-fun b!474079 () Bool)

(declare-fun e!289680 () Bool)

(declare-fun tp!131768 () Bool)

(declare-fun tp!131767 () Bool)

(assert (=> b!474079 (= e!289680 (and tp!131768 tp!131767))))

(declare-fun b!474080 () Bool)

(declare-fun tp!131770 () Bool)

(assert (=> b!474080 (= e!289680 tp!131770)))

(declare-fun b!474081 () Bool)

(declare-fun tp!131771 () Bool)

(declare-fun tp!131769 () Bool)

(assert (=> b!474081 (= e!289680 (and tp!131771 tp!131769))))

(declare-fun b!474082 () Bool)

(declare-fun res!210469 () Bool)

(declare-fun e!289681 () Bool)

(assert (=> b!474082 (=> (not res!210469) (not e!289681))))

(declare-datatypes ((C!3204 0))(
  ( (C!3205 (val!1588 Int)) )
))
(declare-datatypes ((Regex!1141 0))(
  ( (ElementMatch!1141 (c!94972 C!3204)) (Concat!2041 (regOne!2794 Regex!1141) (regTwo!2794 Regex!1141)) (EmptyExpr!1141) (Star!1141 (reg!1470 Regex!1141)) (EmptyLang!1141) (Union!1141 (regOne!2795 Regex!1141) (regTwo!2795 Regex!1141)) )
))
(declare-fun r!20230 () Regex!1141)

(declare-fun lostCause!135 (Regex!1141) Bool)

(assert (=> b!474082 (= res!210469 (lostCause!135 r!20230))))

(declare-fun b!474083 () Bool)

(declare-fun tp_is_empty!2279 () Bool)

(assert (=> b!474083 (= e!289680 tp_is_empty!2279)))

(declare-fun b!474084 () Bool)

(declare-fun regexDepth!2 (Regex!1141) Int)

(assert (=> b!474084 (= e!289681 (< (regexDepth!2 r!20230) 0))))

(declare-fun res!210468 () Bool)

(assert (=> start!45500 (=> (not res!210468) (not e!289681))))

(declare-fun validRegex!369 (Regex!1141) Bool)

(assert (=> start!45500 (= res!210468 (validRegex!369 r!20230))))

(assert (=> start!45500 e!289681))

(assert (=> start!45500 e!289680))

(assert (= (and start!45500 res!210468) b!474082))

(assert (= (and b!474082 res!210469) b!474084))

(get-info :version)

(assert (= (and start!45500 ((_ is ElementMatch!1141) r!20230)) b!474083))

(assert (= (and start!45500 ((_ is Concat!2041) r!20230)) b!474081))

(assert (= (and start!45500 ((_ is Star!1141) r!20230)) b!474080))

(assert (= (and start!45500 ((_ is Union!1141) r!20230)) b!474079))

(declare-fun m!746829 () Bool)

(assert (=> b!474082 m!746829))

(declare-fun m!746831 () Bool)

(assert (=> b!474084 m!746831))

(declare-fun m!746833 () Bool)

(assert (=> start!45500 m!746833))

(check-sat (not b!474082) (not start!45500) (not b!474080) (not b!474079) (not b!474081) (not b!474084) tp_is_empty!2279)
(check-sat)
(get-model)

(declare-fun b!474162 () Bool)

(declare-fun e!289739 () Bool)

(declare-fun lt!210685 () Int)

(declare-fun call!32905 () Int)

(assert (=> b!474162 (= e!289739 (> lt!210685 call!32905))))

(declare-fun d!179781 () Bool)

(declare-fun e!289738 () Bool)

(assert (=> d!179781 e!289738))

(declare-fun res!210493 () Bool)

(assert (=> d!179781 (=> (not res!210493) (not e!289738))))

(assert (=> d!179781 (= res!210493 (> lt!210685 0))))

(declare-fun e!289734 () Int)

(assert (=> d!179781 (= lt!210685 e!289734)))

(declare-fun c!95002 () Bool)

(assert (=> d!179781 (= c!95002 ((_ is ElementMatch!1141) r!20230))))

(assert (=> d!179781 (= (regexDepth!2 r!20230) lt!210685)))

(declare-fun b!474163 () Bool)

(declare-fun e!289732 () Bool)

(declare-fun call!32903 () Int)

(assert (=> b!474163 (= e!289732 (> lt!210685 call!32903))))

(declare-fun b!474164 () Bool)

(declare-fun e!289740 () Bool)

(declare-fun e!289736 () Bool)

(assert (=> b!474164 (= e!289740 e!289736)))

(declare-fun c!95001 () Bool)

(assert (=> b!474164 (= c!95001 ((_ is Concat!2041) r!20230))))

(declare-fun b!474165 () Bool)

(declare-fun c!95007 () Bool)

(assert (=> b!474165 (= c!95007 ((_ is Union!1141) r!20230))))

(declare-fun e!289737 () Int)

(declare-fun e!289735 () Int)

(assert (=> b!474165 (= e!289737 e!289735)))

(declare-fun call!32902 () Int)

(declare-fun call!32901 () Int)

(declare-fun call!32904 () Int)

(declare-fun bm!32894 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!32894 (= call!32901 (maxBigInt!0 (ite c!95007 call!32904 call!32902) (ite c!95007 call!32902 call!32904)))))

(declare-fun b!474166 () Bool)

(assert (=> b!474166 (= e!289734 e!289737)))

(declare-fun c!95006 () Bool)

(assert (=> b!474166 (= c!95006 ((_ is Star!1141) r!20230))))

(declare-fun b!474167 () Bool)

(assert (=> b!474167 (= e!289735 (+ 1 call!32901))))

(declare-fun b!474168 () Bool)

(declare-fun call!32900 () Int)

(assert (=> b!474168 (= e!289737 (+ 1 call!32900))))

(declare-fun b!474169 () Bool)

(declare-fun e!289733 () Int)

(assert (=> b!474169 (= e!289733 1)))

(declare-fun bm!32895 () Bool)

(assert (=> bm!32895 (= call!32900 (regexDepth!2 (ite c!95006 (reg!1470 r!20230) (ite c!95007 (regTwo!2795 r!20230) (regOne!2794 r!20230)))))))

(declare-fun b!474170 () Bool)

(assert (=> b!474170 (= e!289734 1)))

(declare-fun b!474171 () Bool)

(assert (=> b!474171 (= e!289739 (= lt!210685 1))))

(declare-fun bm!32896 () Bool)

(declare-fun call!32899 () Int)

(declare-fun c!95004 () Bool)

(assert (=> bm!32896 (= call!32899 (regexDepth!2 (ite c!95004 (regOne!2795 r!20230) (regTwo!2794 r!20230))))))

(declare-fun bm!32897 () Bool)

(assert (=> bm!32897 (= call!32904 (regexDepth!2 (ite c!95007 (regOne!2795 r!20230) (regTwo!2794 r!20230))))))

(declare-fun b!474172 () Bool)

(assert (=> b!474172 (= e!289740 e!289732)))

(declare-fun res!210492 () Bool)

(assert (=> b!474172 (= res!210492 (> lt!210685 call!32899))))

(assert (=> b!474172 (=> (not res!210492) (not e!289732))))

(declare-fun b!474173 () Bool)

(declare-fun e!289731 () Bool)

(assert (=> b!474173 (= e!289731 (> lt!210685 call!32899))))

(declare-fun bm!32898 () Bool)

(assert (=> bm!32898 (= call!32902 call!32900)))

(declare-fun bm!32899 () Bool)

(assert (=> bm!32899 (= call!32903 (regexDepth!2 (ite c!95004 (regTwo!2795 r!20230) (ite c!95001 (regOne!2794 r!20230) (reg!1470 r!20230)))))))

(declare-fun bm!32900 () Bool)

(assert (=> bm!32900 (= call!32905 call!32903)))

(declare-fun b!474174 () Bool)

(declare-fun c!95005 () Bool)

(assert (=> b!474174 (= c!95005 ((_ is Star!1141) r!20230))))

(assert (=> b!474174 (= e!289736 e!289739)))

(declare-fun b!474175 () Bool)

(assert (=> b!474175 (= e!289735 e!289733)))

(declare-fun c!95003 () Bool)

(assert (=> b!474175 (= c!95003 ((_ is Concat!2041) r!20230))))

(declare-fun b!474176 () Bool)

(assert (=> b!474176 (= e!289738 e!289740)))

(assert (=> b!474176 (= c!95004 ((_ is Union!1141) r!20230))))

(declare-fun b!474177 () Bool)

(declare-fun res!210491 () Bool)

(assert (=> b!474177 (=> (not res!210491) (not e!289731))))

(assert (=> b!474177 (= res!210491 (> lt!210685 call!32905))))

(assert (=> b!474177 (= e!289736 e!289731)))

(declare-fun b!474178 () Bool)

(assert (=> b!474178 (= e!289733 (+ 1 call!32901))))

(assert (= (and d!179781 c!95002) b!474170))

(assert (= (and d!179781 (not c!95002)) b!474166))

(assert (= (and b!474166 c!95006) b!474168))

(assert (= (and b!474166 (not c!95006)) b!474165))

(assert (= (and b!474165 c!95007) b!474167))

(assert (= (and b!474165 (not c!95007)) b!474175))

(assert (= (and b!474175 c!95003) b!474178))

(assert (= (and b!474175 (not c!95003)) b!474169))

(assert (= (or b!474167 b!474178) bm!32898))

(assert (= (or b!474167 b!474178) bm!32897))

(assert (= (or b!474167 b!474178) bm!32894))

(assert (= (or b!474168 bm!32898) bm!32895))

(assert (= (and d!179781 res!210493) b!474176))

(assert (= (and b!474176 c!95004) b!474172))

(assert (= (and b!474176 (not c!95004)) b!474164))

(assert (= (and b!474172 res!210492) b!474163))

(assert (= (and b!474164 c!95001) b!474177))

(assert (= (and b!474164 (not c!95001)) b!474174))

(assert (= (and b!474177 res!210491) b!474173))

(assert (= (and b!474174 c!95005) b!474162))

(assert (= (and b!474174 (not c!95005)) b!474171))

(assert (= (or b!474177 b!474162) bm!32900))

(assert (= (or b!474163 bm!32900) bm!32899))

(assert (= (or b!474172 b!474173) bm!32896))

(declare-fun m!746841 () Bool)

(assert (=> bm!32899 m!746841))

(declare-fun m!746843 () Bool)

(assert (=> bm!32896 m!746843))

(declare-fun m!746845 () Bool)

(assert (=> bm!32895 m!746845))

(declare-fun m!746847 () Bool)

(assert (=> bm!32894 m!746847))

(declare-fun m!746849 () Bool)

(assert (=> bm!32897 m!746849))

(assert (=> b!474084 d!179781))

(declare-fun b!474232 () Bool)

(declare-fun e!289782 () Bool)

(declare-fun call!32925 () Bool)

(assert (=> b!474232 (= e!289782 call!32925)))

(declare-fun b!474233 () Bool)

(declare-fun e!289777 () Bool)

(declare-fun e!289781 () Bool)

(assert (=> b!474233 (= e!289777 e!289781)))

(declare-fun c!95026 () Bool)

(assert (=> b!474233 (= c!95026 ((_ is Union!1141) r!20230))))

(declare-fun call!32927 () Bool)

(declare-fun c!95025 () Bool)

(declare-fun bm!32920 () Bool)

(assert (=> bm!32920 (= call!32927 (validRegex!369 (ite c!95025 (reg!1470 r!20230) (ite c!95026 (regOne!2795 r!20230) (regTwo!2794 r!20230)))))))

(declare-fun b!474234 () Bool)

(declare-fun e!289783 () Bool)

(declare-fun e!289778 () Bool)

(assert (=> b!474234 (= e!289783 e!289778)))

(declare-fun res!210513 () Bool)

(assert (=> b!474234 (=> (not res!210513) (not e!289778))))

(assert (=> b!474234 (= res!210513 call!32925)))

(declare-fun b!474235 () Bool)

(declare-fun call!32926 () Bool)

(assert (=> b!474235 (= e!289778 call!32926)))

(declare-fun b!474236 () Bool)

(declare-fun e!289780 () Bool)

(assert (=> b!474236 (= e!289780 call!32927)))

(declare-fun b!474237 () Bool)

(assert (=> b!474237 (= e!289777 e!289780)))

(declare-fun res!210517 () Bool)

(declare-fun nullable!276 (Regex!1141) Bool)

(assert (=> b!474237 (= res!210517 (not (nullable!276 (reg!1470 r!20230))))))

(assert (=> b!474237 (=> (not res!210517) (not e!289780))))

(declare-fun bm!32921 () Bool)

(assert (=> bm!32921 (= call!32925 (validRegex!369 (ite c!95026 (regTwo!2795 r!20230) (regOne!2794 r!20230))))))

(declare-fun b!474238 () Bool)

(declare-fun e!289779 () Bool)

(assert (=> b!474238 (= e!289779 e!289777)))

(assert (=> b!474238 (= c!95025 ((_ is Star!1141) r!20230))))

(declare-fun b!474239 () Bool)

(declare-fun res!210515 () Bool)

(assert (=> b!474239 (=> res!210515 e!289783)))

(assert (=> b!474239 (= res!210515 (not ((_ is Concat!2041) r!20230)))))

(assert (=> b!474239 (= e!289781 e!289783)))

(declare-fun b!474240 () Bool)

(declare-fun res!210516 () Bool)

(assert (=> b!474240 (=> (not res!210516) (not e!289782))))

(assert (=> b!474240 (= res!210516 call!32926)))

(assert (=> b!474240 (= e!289781 e!289782)))

(declare-fun d!179785 () Bool)

(declare-fun res!210514 () Bool)

(assert (=> d!179785 (=> res!210514 e!289779)))

(assert (=> d!179785 (= res!210514 ((_ is ElementMatch!1141) r!20230))))

(assert (=> d!179785 (= (validRegex!369 r!20230) e!289779)))

(declare-fun bm!32922 () Bool)

(assert (=> bm!32922 (= call!32926 call!32927)))

(assert (= (and d!179785 (not res!210514)) b!474238))

(assert (= (and b!474238 c!95025) b!474237))

(assert (= (and b!474238 (not c!95025)) b!474233))

(assert (= (and b!474237 res!210517) b!474236))

(assert (= (and b!474233 c!95026) b!474240))

(assert (= (and b!474233 (not c!95026)) b!474239))

(assert (= (and b!474240 res!210516) b!474232))

(assert (= (and b!474239 (not res!210515)) b!474234))

(assert (= (and b!474234 res!210513) b!474235))

(assert (= (or b!474232 b!474234) bm!32921))

(assert (= (or b!474240 b!474235) bm!32922))

(assert (= (or b!474236 bm!32922) bm!32920))

(declare-fun m!746861 () Bool)

(assert (=> bm!32920 m!746861))

(declare-fun m!746863 () Bool)

(assert (=> b!474237 m!746863))

(declare-fun m!746865 () Bool)

(assert (=> bm!32921 m!746865))

(assert (=> start!45500 d!179785))

(declare-fun d!179789 () Bool)

(declare-fun lostCauseFct!44 (Regex!1141) Bool)

(assert (=> d!179789 (= (lostCause!135 r!20230) (lostCauseFct!44 r!20230))))

(declare-fun bs!58671 () Bool)

(assert (= bs!58671 d!179789))

(declare-fun m!746869 () Bool)

(assert (=> bs!58671 m!746869))

(assert (=> b!474082 d!179789))

(declare-fun e!289789 () Bool)

(assert (=> b!474080 (= tp!131770 e!289789)))

(declare-fun b!474267 () Bool)

(declare-fun tp!131798 () Bool)

(assert (=> b!474267 (= e!289789 tp!131798)))

(declare-fun b!474265 () Bool)

(assert (=> b!474265 (= e!289789 tp_is_empty!2279)))

(declare-fun b!474268 () Bool)

(declare-fun tp!131801 () Bool)

(declare-fun tp!131800 () Bool)

(assert (=> b!474268 (= e!289789 (and tp!131801 tp!131800))))

(declare-fun b!474266 () Bool)

(declare-fun tp!131797 () Bool)

(declare-fun tp!131799 () Bool)

(assert (=> b!474266 (= e!289789 (and tp!131797 tp!131799))))

(assert (= (and b!474080 ((_ is ElementMatch!1141) (reg!1470 r!20230))) b!474265))

(assert (= (and b!474080 ((_ is Concat!2041) (reg!1470 r!20230))) b!474266))

(assert (= (and b!474080 ((_ is Star!1141) (reg!1470 r!20230))) b!474267))

(assert (= (and b!474080 ((_ is Union!1141) (reg!1470 r!20230))) b!474268))

(declare-fun e!289791 () Bool)

(assert (=> b!474081 (= tp!131771 e!289791)))

(declare-fun b!474275 () Bool)

(declare-fun tp!131808 () Bool)

(assert (=> b!474275 (= e!289791 tp!131808)))

(declare-fun b!474273 () Bool)

(assert (=> b!474273 (= e!289791 tp_is_empty!2279)))

(declare-fun b!474277 () Bool)

(declare-fun tp!131814 () Bool)

(declare-fun tp!131812 () Bool)

(assert (=> b!474277 (= e!289791 (and tp!131814 tp!131812))))

(declare-fun b!474274 () Bool)

(declare-fun tp!131807 () Bool)

(declare-fun tp!131809 () Bool)

(assert (=> b!474274 (= e!289791 (and tp!131807 tp!131809))))

(assert (= (and b!474081 ((_ is ElementMatch!1141) (regOne!2794 r!20230))) b!474273))

(assert (= (and b!474081 ((_ is Concat!2041) (regOne!2794 r!20230))) b!474274))

(assert (= (and b!474081 ((_ is Star!1141) (regOne!2794 r!20230))) b!474275))

(assert (= (and b!474081 ((_ is Union!1141) (regOne!2794 r!20230))) b!474277))

(declare-fun e!289794 () Bool)

(assert (=> b!474081 (= tp!131769 e!289794)))

(declare-fun b!474287 () Bool)

(declare-fun tp!131823 () Bool)

(assert (=> b!474287 (= e!289794 tp!131823)))

(declare-fun b!474285 () Bool)

(assert (=> b!474285 (= e!289794 tp_is_empty!2279)))

(declare-fun b!474288 () Bool)

(declare-fun tp!131826 () Bool)

(declare-fun tp!131825 () Bool)

(assert (=> b!474288 (= e!289794 (and tp!131826 tp!131825))))

(declare-fun b!474286 () Bool)

(declare-fun tp!131822 () Bool)

(declare-fun tp!131824 () Bool)

(assert (=> b!474286 (= e!289794 (and tp!131822 tp!131824))))

(assert (= (and b!474081 ((_ is ElementMatch!1141) (regTwo!2794 r!20230))) b!474285))

(assert (= (and b!474081 ((_ is Concat!2041) (regTwo!2794 r!20230))) b!474286))

(assert (= (and b!474081 ((_ is Star!1141) (regTwo!2794 r!20230))) b!474287))

(assert (= (and b!474081 ((_ is Union!1141) (regTwo!2794 r!20230))) b!474288))

(declare-fun e!289796 () Bool)

(assert (=> b!474079 (= tp!131768 e!289796)))

(declare-fun b!474295 () Bool)

(declare-fun tp!131833 () Bool)

(assert (=> b!474295 (= e!289796 tp!131833)))

(declare-fun b!474293 () Bool)

(assert (=> b!474293 (= e!289796 tp_is_empty!2279)))

(declare-fun b!474296 () Bool)

(declare-fun tp!131836 () Bool)

(declare-fun tp!131835 () Bool)

(assert (=> b!474296 (= e!289796 (and tp!131836 tp!131835))))

(declare-fun b!474294 () Bool)

(declare-fun tp!131832 () Bool)

(declare-fun tp!131834 () Bool)

(assert (=> b!474294 (= e!289796 (and tp!131832 tp!131834))))

(assert (= (and b!474079 ((_ is ElementMatch!1141) (regOne!2795 r!20230))) b!474293))

(assert (= (and b!474079 ((_ is Concat!2041) (regOne!2795 r!20230))) b!474294))

(assert (= (and b!474079 ((_ is Star!1141) (regOne!2795 r!20230))) b!474295))

(assert (= (and b!474079 ((_ is Union!1141) (regOne!2795 r!20230))) b!474296))

(declare-fun e!289797 () Bool)

(assert (=> b!474079 (= tp!131767 e!289797)))

(declare-fun b!474299 () Bool)

(declare-fun tp!131838 () Bool)

(assert (=> b!474299 (= e!289797 tp!131838)))

(declare-fun b!474297 () Bool)

(assert (=> b!474297 (= e!289797 tp_is_empty!2279)))

(declare-fun b!474300 () Bool)

(declare-fun tp!131841 () Bool)

(declare-fun tp!131840 () Bool)

(assert (=> b!474300 (= e!289797 (and tp!131841 tp!131840))))

(declare-fun b!474298 () Bool)

(declare-fun tp!131837 () Bool)

(declare-fun tp!131839 () Bool)

(assert (=> b!474298 (= e!289797 (and tp!131837 tp!131839))))

(assert (= (and b!474079 ((_ is ElementMatch!1141) (regTwo!2795 r!20230))) b!474297))

(assert (= (and b!474079 ((_ is Concat!2041) (regTwo!2795 r!20230))) b!474298))

(assert (= (and b!474079 ((_ is Star!1141) (regTwo!2795 r!20230))) b!474299))

(assert (= (and b!474079 ((_ is Union!1141) (regTwo!2795 r!20230))) b!474300))

(check-sat (not b!474296) (not b!474286) (not b!474294) (not d!179789) (not b!474288) (not bm!32895) tp_is_empty!2279 (not b!474275) (not b!474287) (not bm!32896) (not b!474277) (not bm!32894) (not bm!32899) (not b!474300) (not b!474267) (not bm!32921) (not b!474266) (not b!474268) (not bm!32920) (not b!474274) (not bm!32897) (not b!474298) (not b!474295) (not b!474237) (not b!474299))
(check-sat)
