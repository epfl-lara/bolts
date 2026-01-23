; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45736 () Bool)

(assert start!45736)

(declare-fun b!478810 () Bool)

(declare-fun e!291989 () Bool)

(declare-fun tp_is_empty!2323 () Bool)

(assert (=> b!478810 (= e!291989 tp_is_empty!2323)))

(declare-fun b!478811 () Bool)

(declare-fun tp!134120 () Bool)

(declare-fun tp!134117 () Bool)

(assert (=> b!478811 (= e!291989 (and tp!134120 tp!134117))))

(declare-fun b!478812 () Bool)

(declare-fun tp!134119 () Bool)

(assert (=> b!478812 (= e!291989 tp!134119)))

(declare-fun res!211659 () Bool)

(declare-fun e!291988 () Bool)

(assert (=> start!45736 (=> (not res!211659) (not e!291988))))

(declare-datatypes ((C!3248 0))(
  ( (C!3249 (val!1610 Int)) )
))
(declare-datatypes ((Regex!1163 0))(
  ( (ElementMatch!1163 (c!95814 C!3248)) (Concat!2063 (regOne!2838 Regex!1163) (regTwo!2838 Regex!1163)) (EmptyExpr!1163) (Star!1163 (reg!1492 Regex!1163)) (EmptyLang!1163) (Union!1163 (regOne!2839 Regex!1163) (regTwo!2839 Regex!1163)) )
))
(declare-fun r!20230 () Regex!1163)

(declare-fun validRegex!391 (Regex!1163) Bool)

(assert (=> start!45736 (= res!211659 (validRegex!391 r!20230))))

(assert (=> start!45736 e!291988))

(assert (=> start!45736 e!291989))

(assert (=> start!45736 tp_is_empty!2323))

(declare-fun b!478813 () Bool)

(declare-fun c!12526 () C!3248)

(declare-fun lostCause!157 (Regex!1163) Bool)

(declare-fun derivativeStep!249 (Regex!1163 C!3248) Regex!1163)

(assert (=> b!478813 (= e!291988 (not (lostCause!157 (derivativeStep!249 r!20230 c!12526))))))

(declare-fun b!478814 () Bool)

(declare-fun res!211660 () Bool)

(assert (=> b!478814 (=> (not res!211660) (not e!291988))))

(assert (=> b!478814 (= res!211660 (lostCause!157 r!20230))))

(declare-fun b!478815 () Bool)

(declare-fun tp!134121 () Bool)

(declare-fun tp!134118 () Bool)

(assert (=> b!478815 (= e!291989 (and tp!134121 tp!134118))))

(declare-fun b!478816 () Bool)

(declare-fun res!211661 () Bool)

(assert (=> b!478816 (=> (not res!211661) (not e!291988))))

(get-info :version)

(assert (=> b!478816 (= res!211661 (and (not ((_ is EmptyLang!1163) r!20230)) (not ((_ is EmptyExpr!1163) r!20230)) (not ((_ is ElementMatch!1163) r!20230)) (not ((_ is Union!1163) r!20230)) ((_ is Star!1163) r!20230)))))

(assert (= (and start!45736 res!211659) b!478814))

(assert (= (and b!478814 res!211660) b!478816))

(assert (= (and b!478816 res!211661) b!478813))

(assert (= (and start!45736 ((_ is ElementMatch!1163) r!20230)) b!478810))

(assert (= (and start!45736 ((_ is Concat!2063) r!20230)) b!478811))

(assert (= (and start!45736 ((_ is Star!1163) r!20230)) b!478812))

(assert (= (and start!45736 ((_ is Union!1163) r!20230)) b!478815))

(declare-fun m!748483 () Bool)

(assert (=> start!45736 m!748483))

(declare-fun m!748485 () Bool)

(assert (=> b!478813 m!748485))

(assert (=> b!478813 m!748485))

(declare-fun m!748487 () Bool)

(assert (=> b!478813 m!748487))

(declare-fun m!748489 () Bool)

(assert (=> b!478814 m!748489))

(check-sat tp_is_empty!2323 (not b!478815) (not start!45736) (not b!478812) (not b!478811) (not b!478813) (not b!478814))
(check-sat)
(get-model)

(declare-fun b!478862 () Bool)

(declare-fun e!292030 () Bool)

(declare-fun e!292028 () Bool)

(assert (=> b!478862 (= e!292030 e!292028)))

(declare-fun c!95826 () Bool)

(assert (=> b!478862 (= c!95826 ((_ is Star!1163) r!20230))))

(declare-fun b!478863 () Bool)

(declare-fun e!292027 () Bool)

(assert (=> b!478863 (= e!292028 e!292027)))

(declare-fun res!211687 () Bool)

(declare-fun nullable!298 (Regex!1163) Bool)

(assert (=> b!478863 (= res!211687 (not (nullable!298 (reg!1492 r!20230))))))

(assert (=> b!478863 (=> (not res!211687) (not e!292027))))

(declare-fun b!478864 () Bool)

(declare-fun res!211688 () Bool)

(declare-fun e!292025 () Bool)

(assert (=> b!478864 (=> (not res!211688) (not e!292025))))

(declare-fun call!33798 () Bool)

(assert (=> b!478864 (= res!211688 call!33798)))

(declare-fun e!292031 () Bool)

(assert (=> b!478864 (= e!292031 e!292025)))

(declare-fun b!478865 () Bool)

(declare-fun call!33799 () Bool)

(assert (=> b!478865 (= e!292025 call!33799)))

(declare-fun b!478866 () Bool)

(assert (=> b!478866 (= e!292028 e!292031)))

(declare-fun c!95825 () Bool)

(assert (=> b!478866 (= c!95825 ((_ is Union!1163) r!20230))))

(declare-fun bm!33792 () Bool)

(declare-fun call!33797 () Bool)

(assert (=> bm!33792 (= call!33797 (validRegex!391 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))

(declare-fun bm!33793 () Bool)

(assert (=> bm!33793 (= call!33798 call!33797)))

(declare-fun b!478868 () Bool)

(declare-fun res!211691 () Bool)

(declare-fun e!292026 () Bool)

(assert (=> b!478868 (=> res!211691 e!292026)))

(assert (=> b!478868 (= res!211691 (not ((_ is Concat!2063) r!20230)))))

(assert (=> b!478868 (= e!292031 e!292026)))

(declare-fun b!478869 () Bool)

(declare-fun e!292029 () Bool)

(assert (=> b!478869 (= e!292026 e!292029)))

(declare-fun res!211689 () Bool)

(assert (=> b!478869 (=> (not res!211689) (not e!292029))))

(assert (=> b!478869 (= res!211689 call!33799)))

(declare-fun b!478870 () Bool)

(assert (=> b!478870 (= e!292029 call!33798)))

(declare-fun bm!33794 () Bool)

(assert (=> bm!33794 (= call!33799 (validRegex!391 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))))))

(declare-fun b!478867 () Bool)

(assert (=> b!478867 (= e!292027 call!33797)))

(declare-fun d!180306 () Bool)

(declare-fun res!211690 () Bool)

(assert (=> d!180306 (=> res!211690 e!292030)))

(assert (=> d!180306 (= res!211690 ((_ is ElementMatch!1163) r!20230))))

(assert (=> d!180306 (= (validRegex!391 r!20230) e!292030)))

(assert (= (and d!180306 (not res!211690)) b!478862))

(assert (= (and b!478862 c!95826) b!478863))

(assert (= (and b!478862 (not c!95826)) b!478866))

(assert (= (and b!478863 res!211687) b!478867))

(assert (= (and b!478866 c!95825) b!478864))

(assert (= (and b!478866 (not c!95825)) b!478868))

(assert (= (and b!478864 res!211688) b!478865))

(assert (= (and b!478868 (not res!211691)) b!478869))

(assert (= (and b!478869 res!211689) b!478870))

(assert (= (or b!478865 b!478869) bm!33794))

(assert (= (or b!478864 b!478870) bm!33793))

(assert (= (or b!478867 bm!33793) bm!33792))

(declare-fun m!748493 () Bool)

(assert (=> b!478863 m!748493))

(declare-fun m!748499 () Bool)

(assert (=> bm!33792 m!748499))

(declare-fun m!748501 () Bool)

(assert (=> bm!33794 m!748501))

(assert (=> start!45736 d!180306))

(declare-fun d!180312 () Bool)

(declare-fun lostCauseFct!66 (Regex!1163) Bool)

(assert (=> d!180312 (= (lostCause!157 (derivativeStep!249 r!20230 c!12526)) (lostCauseFct!66 (derivativeStep!249 r!20230 c!12526)))))

(declare-fun bs!58787 () Bool)

(assert (= bs!58787 d!180312))

(assert (=> bs!58787 m!748485))

(declare-fun m!748505 () Bool)

(assert (=> bs!58787 m!748505))

(assert (=> b!478813 d!180312))

(declare-fun bm!33815 () Bool)

(declare-fun c!95853 () Bool)

(declare-fun call!33821 () Regex!1163)

(assert (=> bm!33815 (= call!33821 (derivativeStep!249 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)) c!12526))))

(declare-fun b!478921 () Bool)

(assert (=> b!478921 (= c!95853 ((_ is Union!1163) r!20230))))

(declare-fun e!292057 () Regex!1163)

(declare-fun e!292061 () Regex!1163)

(assert (=> b!478921 (= e!292057 e!292061)))

(declare-fun b!478922 () Bool)

(assert (=> b!478922 (= e!292057 (ite (= c!12526 (c!95814 r!20230)) EmptyExpr!1163 EmptyLang!1163))))

(declare-fun bm!33816 () Bool)

(declare-fun call!33820 () Regex!1163)

(declare-fun call!33823 () Regex!1163)

(assert (=> bm!33816 (= call!33820 call!33823)))

(declare-fun b!478923 () Bool)

(declare-fun e!292060 () Regex!1163)

(assert (=> b!478923 (= e!292061 e!292060)))

(declare-fun c!95852 () Bool)

(assert (=> b!478923 (= c!95852 ((_ is Star!1163) r!20230))))

(declare-fun d!180316 () Bool)

(declare-fun lt!210882 () Regex!1163)

(assert (=> d!180316 (validRegex!391 lt!210882)))

(declare-fun e!292059 () Regex!1163)

(assert (=> d!180316 (= lt!210882 e!292059)))

(declare-fun c!95854 () Bool)

(assert (=> d!180316 (= c!95854 (or ((_ is EmptyExpr!1163) r!20230) ((_ is EmptyLang!1163) r!20230)))))

(assert (=> d!180316 (validRegex!391 r!20230)))

(assert (=> d!180316 (= (derivativeStep!249 r!20230 c!12526) lt!210882)))

(declare-fun call!33822 () Regex!1163)

(declare-fun b!478924 () Bool)

(declare-fun e!292058 () Regex!1163)

(assert (=> b!478924 (= e!292058 (Union!1163 (Concat!2063 call!33822 (regTwo!2838 r!20230)) call!33821))))

(declare-fun b!478925 () Bool)

(declare-fun c!95855 () Bool)

(assert (=> b!478925 (= c!95855 (nullable!298 (regOne!2838 r!20230)))))

(assert (=> b!478925 (= e!292060 e!292058)))

(declare-fun b!478926 () Bool)

(assert (=> b!478926 (= e!292059 EmptyLang!1163)))

(declare-fun bm!33817 () Bool)

(assert (=> bm!33817 (= call!33822 call!33820)))

(declare-fun b!478927 () Bool)

(assert (=> b!478927 (= e!292060 (Concat!2063 call!33820 r!20230))))

(declare-fun b!478928 () Bool)

(assert (=> b!478928 (= e!292061 (Union!1163 call!33821 call!33823))))

(declare-fun bm!33818 () Bool)

(assert (=> bm!33818 (= call!33823 (derivativeStep!249 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))) c!12526))))

(declare-fun b!478929 () Bool)

(assert (=> b!478929 (= e!292059 e!292057)))

(declare-fun c!95856 () Bool)

(assert (=> b!478929 (= c!95856 ((_ is ElementMatch!1163) r!20230))))

(declare-fun b!478930 () Bool)

(assert (=> b!478930 (= e!292058 (Union!1163 (Concat!2063 call!33822 (regTwo!2838 r!20230)) EmptyLang!1163))))

(assert (= (and d!180316 c!95854) b!478926))

(assert (= (and d!180316 (not c!95854)) b!478929))

(assert (= (and b!478929 c!95856) b!478922))

(assert (= (and b!478929 (not c!95856)) b!478921))

(assert (= (and b!478921 c!95853) b!478928))

(assert (= (and b!478921 (not c!95853)) b!478923))

(assert (= (and b!478923 c!95852) b!478927))

(assert (= (and b!478923 (not c!95852)) b!478925))

(assert (= (and b!478925 c!95855) b!478924))

(assert (= (and b!478925 (not c!95855)) b!478930))

(assert (= (or b!478924 b!478930) bm!33817))

(assert (= (or b!478927 bm!33817) bm!33816))

(assert (= (or b!478928 bm!33816) bm!33818))

(assert (= (or b!478928 b!478924) bm!33815))

(declare-fun m!748511 () Bool)

(assert (=> bm!33815 m!748511))

(declare-fun m!748515 () Bool)

(assert (=> d!180316 m!748515))

(assert (=> d!180316 m!748483))

(declare-fun m!748519 () Bool)

(assert (=> b!478925 m!748519))

(declare-fun m!748521 () Bool)

(assert (=> bm!33818 m!748521))

(assert (=> b!478813 d!180316))

(declare-fun d!180320 () Bool)

(assert (=> d!180320 (= (lostCause!157 r!20230) (lostCauseFct!66 r!20230))))

(declare-fun bs!58789 () Bool)

(assert (= bs!58789 d!180320))

(declare-fun m!748525 () Bool)

(assert (=> bs!58789 m!748525))

(assert (=> b!478814 d!180320))

(declare-fun b!478955 () Bool)

(declare-fun e!292067 () Bool)

(assert (=> b!478955 (= e!292067 tp_is_empty!2323)))

(declare-fun b!478957 () Bool)

(declare-fun tp!134148 () Bool)

(assert (=> b!478957 (= e!292067 tp!134148)))

(assert (=> b!478811 (= tp!134120 e!292067)))

(declare-fun b!478958 () Bool)

(declare-fun tp!134147 () Bool)

(declare-fun tp!134150 () Bool)

(assert (=> b!478958 (= e!292067 (and tp!134147 tp!134150))))

(declare-fun b!478956 () Bool)

(declare-fun tp!134149 () Bool)

(declare-fun tp!134151 () Bool)

(assert (=> b!478956 (= e!292067 (and tp!134149 tp!134151))))

(assert (= (and b!478811 ((_ is ElementMatch!1163) (regOne!2838 r!20230))) b!478955))

(assert (= (and b!478811 ((_ is Concat!2063) (regOne!2838 r!20230))) b!478956))

(assert (= (and b!478811 ((_ is Star!1163) (regOne!2838 r!20230))) b!478957))

(assert (= (and b!478811 ((_ is Union!1163) (regOne!2838 r!20230))) b!478958))

(declare-fun b!478963 () Bool)

(declare-fun e!292069 () Bool)

(assert (=> b!478963 (= e!292069 tp_is_empty!2323)))

(declare-fun b!478965 () Bool)

(declare-fun tp!134158 () Bool)

(assert (=> b!478965 (= e!292069 tp!134158)))

(assert (=> b!478811 (= tp!134117 e!292069)))

(declare-fun b!478966 () Bool)

(declare-fun tp!134157 () Bool)

(declare-fun tp!134160 () Bool)

(assert (=> b!478966 (= e!292069 (and tp!134157 tp!134160))))

(declare-fun b!478964 () Bool)

(declare-fun tp!134159 () Bool)

(declare-fun tp!134161 () Bool)

(assert (=> b!478964 (= e!292069 (and tp!134159 tp!134161))))

(assert (= (and b!478811 ((_ is ElementMatch!1163) (regTwo!2838 r!20230))) b!478963))

(assert (= (and b!478811 ((_ is Concat!2063) (regTwo!2838 r!20230))) b!478964))

(assert (= (and b!478811 ((_ is Star!1163) (regTwo!2838 r!20230))) b!478965))

(assert (= (and b!478811 ((_ is Union!1163) (regTwo!2838 r!20230))) b!478966))

(declare-fun b!478971 () Bool)

(declare-fun e!292071 () Bool)

(assert (=> b!478971 (= e!292071 tp_is_empty!2323)))

(declare-fun b!478973 () Bool)

(declare-fun tp!134168 () Bool)

(assert (=> b!478973 (= e!292071 tp!134168)))

(assert (=> b!478815 (= tp!134121 e!292071)))

(declare-fun b!478974 () Bool)

(declare-fun tp!134167 () Bool)

(declare-fun tp!134170 () Bool)

(assert (=> b!478974 (= e!292071 (and tp!134167 tp!134170))))

(declare-fun b!478972 () Bool)

(declare-fun tp!134169 () Bool)

(declare-fun tp!134171 () Bool)

(assert (=> b!478972 (= e!292071 (and tp!134169 tp!134171))))

(assert (= (and b!478815 ((_ is ElementMatch!1163) (regOne!2839 r!20230))) b!478971))

(assert (= (and b!478815 ((_ is Concat!2063) (regOne!2839 r!20230))) b!478972))

(assert (= (and b!478815 ((_ is Star!1163) (regOne!2839 r!20230))) b!478973))

(assert (= (and b!478815 ((_ is Union!1163) (regOne!2839 r!20230))) b!478974))

(declare-fun b!478979 () Bool)

(declare-fun e!292073 () Bool)

(assert (=> b!478979 (= e!292073 tp_is_empty!2323)))

(declare-fun b!478981 () Bool)

(declare-fun tp!134178 () Bool)

(assert (=> b!478981 (= e!292073 tp!134178)))

(assert (=> b!478815 (= tp!134118 e!292073)))

(declare-fun b!478982 () Bool)

(declare-fun tp!134177 () Bool)

(declare-fun tp!134180 () Bool)

(assert (=> b!478982 (= e!292073 (and tp!134177 tp!134180))))

(declare-fun b!478980 () Bool)

(declare-fun tp!134179 () Bool)

(declare-fun tp!134181 () Bool)

(assert (=> b!478980 (= e!292073 (and tp!134179 tp!134181))))

(assert (= (and b!478815 ((_ is ElementMatch!1163) (regTwo!2839 r!20230))) b!478979))

(assert (= (and b!478815 ((_ is Concat!2063) (regTwo!2839 r!20230))) b!478980))

(assert (= (and b!478815 ((_ is Star!1163) (regTwo!2839 r!20230))) b!478981))

(assert (= (and b!478815 ((_ is Union!1163) (regTwo!2839 r!20230))) b!478982))

(declare-fun b!478987 () Bool)

(declare-fun e!292075 () Bool)

(assert (=> b!478987 (= e!292075 tp_is_empty!2323)))

(declare-fun b!478989 () Bool)

(declare-fun tp!134188 () Bool)

(assert (=> b!478989 (= e!292075 tp!134188)))

(assert (=> b!478812 (= tp!134119 e!292075)))

(declare-fun b!478990 () Bool)

(declare-fun tp!134187 () Bool)

(declare-fun tp!134190 () Bool)

(assert (=> b!478990 (= e!292075 (and tp!134187 tp!134190))))

(declare-fun b!478988 () Bool)

(declare-fun tp!134189 () Bool)

(declare-fun tp!134191 () Bool)

(assert (=> b!478988 (= e!292075 (and tp!134189 tp!134191))))

(assert (= (and b!478812 ((_ is ElementMatch!1163) (reg!1492 r!20230))) b!478987))

(assert (= (and b!478812 ((_ is Concat!2063) (reg!1492 r!20230))) b!478988))

(assert (= (and b!478812 ((_ is Star!1163) (reg!1492 r!20230))) b!478989))

(assert (= (and b!478812 ((_ is Union!1163) (reg!1492 r!20230))) b!478990))

(check-sat (not b!478974) (not bm!33818) (not d!180320) (not b!478958) (not b!478957) (not b!478989) (not d!180316) (not bm!33792) (not b!478990) (not b!478988) (not b!478964) (not b!478981) (not b!478980) (not b!478965) (not b!478972) (not b!478925) tp_is_empty!2323 (not d!180312) (not b!478863) (not b!478956) (not bm!33794) (not b!478973) (not b!478966) (not bm!33815) (not b!478982))
(check-sat)
(get-model)

(declare-fun d!180322 () Bool)

(declare-fun nullableFct!104 (Regex!1163) Bool)

(assert (=> d!180322 (= (nullable!298 (reg!1492 r!20230)) (nullableFct!104 (reg!1492 r!20230)))))

(declare-fun bs!58790 () Bool)

(assert (= bs!58790 d!180322))

(declare-fun m!748527 () Bool)

(assert (=> bs!58790 m!748527))

(assert (=> b!478863 d!180322))

(declare-fun b!479005 () Bool)

(declare-fun e!292093 () Bool)

(declare-fun call!33829 () Bool)

(assert (=> b!479005 (= e!292093 call!33829)))

(declare-fun bm!33823 () Bool)

(declare-fun c!95859 () Bool)

(assert (=> bm!33823 (= call!33829 (lostCause!157 (ite c!95859 (regTwo!2839 r!20230) (regTwo!2838 r!20230))))))

(declare-fun b!479006 () Bool)

(declare-fun e!292091 () Bool)

(assert (=> b!479006 (= e!292091 e!292093)))

(declare-fun res!211706 () Bool)

(declare-fun call!33828 () Bool)

(assert (=> b!479006 (= res!211706 call!33828)))

(assert (=> b!479006 (=> res!211706 e!292093)))

(declare-fun d!180324 () Bool)

(declare-fun lt!210885 () Bool)

(declare-datatypes ((List!4600 0))(
  ( (Nil!4590) (Cons!4590 (h!9987 C!3248) (t!73118 List!4600)) )
))
(declare-datatypes ((Option!1218 0))(
  ( (None!1217) (Some!1217 (v!15629 List!4600)) )
))
(declare-fun isEmpty!3544 (Option!1218) Bool)

(declare-fun getLanguageWitness!53 (Regex!1163) Option!1218)

(assert (=> d!180324 (= lt!210885 (isEmpty!3544 (getLanguageWitness!53 r!20230)))))

(declare-fun e!292090 () Bool)

(assert (=> d!180324 (= lt!210885 e!292090)))

(declare-fun res!211705 () Bool)

(assert (=> d!180324 (=> (not res!211705) (not e!292090))))

(assert (=> d!180324 (= res!211705 (not ((_ is EmptyExpr!1163) r!20230)))))

(assert (=> d!180324 (= (lostCauseFct!66 r!20230) lt!210885)))

(declare-fun b!479007 () Bool)

(declare-fun e!292092 () Bool)

(assert (=> b!479007 (= e!292090 e!292092)))

(declare-fun res!211704 () Bool)

(assert (=> b!479007 (=> res!211704 e!292092)))

(assert (=> b!479007 (= res!211704 ((_ is EmptyLang!1163) r!20230))))

(declare-fun b!479008 () Bool)

(declare-fun e!292089 () Bool)

(assert (=> b!479008 (= e!292089 e!292091)))

(assert (=> b!479008 (= c!95859 ((_ is Union!1163) r!20230))))

(declare-fun b!479009 () Bool)

(assert (=> b!479009 (= e!292092 e!292089)))

(declare-fun res!211702 () Bool)

(assert (=> b!479009 (=> (not res!211702) (not e!292089))))

(assert (=> b!479009 (= res!211702 (and (not ((_ is ElementMatch!1163) r!20230)) (not ((_ is Star!1163) r!20230))))))

(declare-fun b!479010 () Bool)

(declare-fun e!292088 () Bool)

(assert (=> b!479010 (= e!292088 call!33829)))

(declare-fun bm!33824 () Bool)

(assert (=> bm!33824 (= call!33828 (lostCause!157 (ite c!95859 (regOne!2839 r!20230) (regOne!2838 r!20230))))))

(declare-fun b!479011 () Bool)

(assert (=> b!479011 (= e!292091 e!292088)))

(declare-fun res!211703 () Bool)

(assert (=> b!479011 (= res!211703 call!33828)))

(assert (=> b!479011 (=> (not res!211703) (not e!292088))))

(assert (= (and d!180324 res!211705) b!479007))

(assert (= (and b!479007 (not res!211704)) b!479009))

(assert (= (and b!479009 res!211702) b!479008))

(assert (= (and b!479008 c!95859) b!479011))

(assert (= (and b!479008 (not c!95859)) b!479006))

(assert (= (and b!479011 res!211703) b!479010))

(assert (= (and b!479006 (not res!211706)) b!479005))

(assert (= (or b!479011 b!479006) bm!33824))

(assert (= (or b!479010 b!479005) bm!33823))

(declare-fun m!748529 () Bool)

(assert (=> bm!33823 m!748529))

(declare-fun m!748531 () Bool)

(assert (=> d!180324 m!748531))

(assert (=> d!180324 m!748531))

(declare-fun m!748533 () Bool)

(assert (=> d!180324 m!748533))

(declare-fun m!748535 () Bool)

(assert (=> bm!33824 m!748535))

(assert (=> d!180320 d!180324))

(declare-fun b!479012 () Bool)

(declare-fun e!292099 () Bool)

(declare-fun e!292097 () Bool)

(assert (=> b!479012 (= e!292099 e!292097)))

(declare-fun c!95861 () Bool)

(assert (=> b!479012 (= c!95861 ((_ is Star!1163) (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))

(declare-fun b!479013 () Bool)

(declare-fun e!292096 () Bool)

(assert (=> b!479013 (= e!292097 e!292096)))

(declare-fun res!211707 () Bool)

(assert (=> b!479013 (= res!211707 (not (nullable!298 (reg!1492 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))))

(assert (=> b!479013 (=> (not res!211707) (not e!292096))))

(declare-fun b!479014 () Bool)

(declare-fun res!211708 () Bool)

(declare-fun e!292094 () Bool)

(assert (=> b!479014 (=> (not res!211708) (not e!292094))))

(declare-fun call!33831 () Bool)

(assert (=> b!479014 (= res!211708 call!33831)))

(declare-fun e!292100 () Bool)

(assert (=> b!479014 (= e!292100 e!292094)))

(declare-fun b!479015 () Bool)

(declare-fun call!33832 () Bool)

(assert (=> b!479015 (= e!292094 call!33832)))

(declare-fun b!479016 () Bool)

(assert (=> b!479016 (= e!292097 e!292100)))

(declare-fun c!95860 () Bool)

(assert (=> b!479016 (= c!95860 ((_ is Union!1163) (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))

(declare-fun bm!33825 () Bool)

(declare-fun call!33830 () Bool)

(assert (=> bm!33825 (= call!33830 (validRegex!391 (ite c!95861 (reg!1492 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) (ite c!95860 (regOne!2839 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) (regTwo!2838 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230))))))))))

(declare-fun bm!33826 () Bool)

(assert (=> bm!33826 (= call!33831 call!33830)))

(declare-fun b!479018 () Bool)

(declare-fun res!211711 () Bool)

(declare-fun e!292095 () Bool)

(assert (=> b!479018 (=> res!211711 e!292095)))

(assert (=> b!479018 (= res!211711 (not ((_ is Concat!2063) (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230))))))))

(assert (=> b!479018 (= e!292100 e!292095)))

(declare-fun b!479019 () Bool)

(declare-fun e!292098 () Bool)

(assert (=> b!479019 (= e!292095 e!292098)))

(declare-fun res!211709 () Bool)

(assert (=> b!479019 (=> (not res!211709) (not e!292098))))

(assert (=> b!479019 (= res!211709 call!33832)))

(declare-fun b!479020 () Bool)

(assert (=> b!479020 (= e!292098 call!33831)))

(declare-fun bm!33827 () Bool)

(assert (=> bm!33827 (= call!33832 (validRegex!391 (ite c!95860 (regTwo!2839 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) (regOne!2838 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))))

(declare-fun b!479017 () Bool)

(assert (=> b!479017 (= e!292096 call!33830)))

(declare-fun d!180326 () Bool)

(declare-fun res!211710 () Bool)

(assert (=> d!180326 (=> res!211710 e!292099)))

(assert (=> d!180326 (= res!211710 ((_ is ElementMatch!1163) (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))

(assert (=> d!180326 (= (validRegex!391 (ite c!95826 (reg!1492 r!20230) (ite c!95825 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) e!292099)))

(assert (= (and d!180326 (not res!211710)) b!479012))

(assert (= (and b!479012 c!95861) b!479013))

(assert (= (and b!479012 (not c!95861)) b!479016))

(assert (= (and b!479013 res!211707) b!479017))

(assert (= (and b!479016 c!95860) b!479014))

(assert (= (and b!479016 (not c!95860)) b!479018))

(assert (= (and b!479014 res!211708) b!479015))

(assert (= (and b!479018 (not res!211711)) b!479019))

(assert (= (and b!479019 res!211709) b!479020))

(assert (= (or b!479015 b!479019) bm!33827))

(assert (= (or b!479014 b!479020) bm!33826))

(assert (= (or b!479017 bm!33826) bm!33825))

(declare-fun m!748537 () Bool)

(assert (=> b!479013 m!748537))

(declare-fun m!748539 () Bool)

(assert (=> bm!33825 m!748539))

(declare-fun m!748541 () Bool)

(assert (=> bm!33827 m!748541))

(assert (=> bm!33792 d!180326))

(declare-fun b!479021 () Bool)

(declare-fun e!292106 () Bool)

(declare-fun e!292104 () Bool)

(assert (=> b!479021 (= e!292106 e!292104)))

(declare-fun c!95863 () Bool)

(assert (=> b!479021 (= c!95863 ((_ is Star!1163) lt!210882))))

(declare-fun b!479022 () Bool)

(declare-fun e!292103 () Bool)

(assert (=> b!479022 (= e!292104 e!292103)))

(declare-fun res!211712 () Bool)

(assert (=> b!479022 (= res!211712 (not (nullable!298 (reg!1492 lt!210882))))))

(assert (=> b!479022 (=> (not res!211712) (not e!292103))))

(declare-fun b!479023 () Bool)

(declare-fun res!211713 () Bool)

(declare-fun e!292101 () Bool)

(assert (=> b!479023 (=> (not res!211713) (not e!292101))))

(declare-fun call!33834 () Bool)

(assert (=> b!479023 (= res!211713 call!33834)))

(declare-fun e!292107 () Bool)

(assert (=> b!479023 (= e!292107 e!292101)))

(declare-fun b!479024 () Bool)

(declare-fun call!33835 () Bool)

(assert (=> b!479024 (= e!292101 call!33835)))

(declare-fun b!479025 () Bool)

(assert (=> b!479025 (= e!292104 e!292107)))

(declare-fun c!95862 () Bool)

(assert (=> b!479025 (= c!95862 ((_ is Union!1163) lt!210882))))

(declare-fun bm!33828 () Bool)

(declare-fun call!33833 () Bool)

(assert (=> bm!33828 (= call!33833 (validRegex!391 (ite c!95863 (reg!1492 lt!210882) (ite c!95862 (regOne!2839 lt!210882) (regTwo!2838 lt!210882)))))))

(declare-fun bm!33829 () Bool)

(assert (=> bm!33829 (= call!33834 call!33833)))

(declare-fun b!479027 () Bool)

(declare-fun res!211716 () Bool)

(declare-fun e!292102 () Bool)

(assert (=> b!479027 (=> res!211716 e!292102)))

(assert (=> b!479027 (= res!211716 (not ((_ is Concat!2063) lt!210882)))))

(assert (=> b!479027 (= e!292107 e!292102)))

(declare-fun b!479028 () Bool)

(declare-fun e!292105 () Bool)

(assert (=> b!479028 (= e!292102 e!292105)))

(declare-fun res!211714 () Bool)

(assert (=> b!479028 (=> (not res!211714) (not e!292105))))

(assert (=> b!479028 (= res!211714 call!33835)))

(declare-fun b!479029 () Bool)

(assert (=> b!479029 (= e!292105 call!33834)))

(declare-fun bm!33830 () Bool)

(assert (=> bm!33830 (= call!33835 (validRegex!391 (ite c!95862 (regTwo!2839 lt!210882) (regOne!2838 lt!210882))))))

(declare-fun b!479026 () Bool)

(assert (=> b!479026 (= e!292103 call!33833)))

(declare-fun d!180328 () Bool)

(declare-fun res!211715 () Bool)

(assert (=> d!180328 (=> res!211715 e!292106)))

(assert (=> d!180328 (= res!211715 ((_ is ElementMatch!1163) lt!210882))))

(assert (=> d!180328 (= (validRegex!391 lt!210882) e!292106)))

(assert (= (and d!180328 (not res!211715)) b!479021))

(assert (= (and b!479021 c!95863) b!479022))

(assert (= (and b!479021 (not c!95863)) b!479025))

(assert (= (and b!479022 res!211712) b!479026))

(assert (= (and b!479025 c!95862) b!479023))

(assert (= (and b!479025 (not c!95862)) b!479027))

(assert (= (and b!479023 res!211713) b!479024))

(assert (= (and b!479027 (not res!211716)) b!479028))

(assert (= (and b!479028 res!211714) b!479029))

(assert (= (or b!479024 b!479028) bm!33830))

(assert (= (or b!479023 b!479029) bm!33829))

(assert (= (or b!479026 bm!33829) bm!33828))

(declare-fun m!748543 () Bool)

(assert (=> b!479022 m!748543))

(declare-fun m!748545 () Bool)

(assert (=> bm!33828 m!748545))

(declare-fun m!748547 () Bool)

(assert (=> bm!33830 m!748547))

(assert (=> d!180316 d!180328))

(assert (=> d!180316 d!180306))

(declare-fun b!479030 () Bool)

(declare-fun e!292113 () Bool)

(declare-fun call!33837 () Bool)

(assert (=> b!479030 (= e!292113 call!33837)))

(declare-fun c!95864 () Bool)

(declare-fun bm!33831 () Bool)

(assert (=> bm!33831 (= call!33837 (lostCause!157 (ite c!95864 (regTwo!2839 (derivativeStep!249 r!20230 c!12526)) (regTwo!2838 (derivativeStep!249 r!20230 c!12526)))))))

(declare-fun b!479031 () Bool)

(declare-fun e!292111 () Bool)

(assert (=> b!479031 (= e!292111 e!292113)))

(declare-fun res!211721 () Bool)

(declare-fun call!33836 () Bool)

(assert (=> b!479031 (= res!211721 call!33836)))

(assert (=> b!479031 (=> res!211721 e!292113)))

(declare-fun d!180330 () Bool)

(declare-fun lt!210886 () Bool)

(assert (=> d!180330 (= lt!210886 (isEmpty!3544 (getLanguageWitness!53 (derivativeStep!249 r!20230 c!12526))))))

(declare-fun e!292110 () Bool)

(assert (=> d!180330 (= lt!210886 e!292110)))

(declare-fun res!211720 () Bool)

(assert (=> d!180330 (=> (not res!211720) (not e!292110))))

(assert (=> d!180330 (= res!211720 (not ((_ is EmptyExpr!1163) (derivativeStep!249 r!20230 c!12526))))))

(assert (=> d!180330 (= (lostCauseFct!66 (derivativeStep!249 r!20230 c!12526)) lt!210886)))

(declare-fun b!479032 () Bool)

(declare-fun e!292112 () Bool)

(assert (=> b!479032 (= e!292110 e!292112)))

(declare-fun res!211719 () Bool)

(assert (=> b!479032 (=> res!211719 e!292112)))

(assert (=> b!479032 (= res!211719 ((_ is EmptyLang!1163) (derivativeStep!249 r!20230 c!12526)))))

(declare-fun b!479033 () Bool)

(declare-fun e!292109 () Bool)

(assert (=> b!479033 (= e!292109 e!292111)))

(assert (=> b!479033 (= c!95864 ((_ is Union!1163) (derivativeStep!249 r!20230 c!12526)))))

(declare-fun b!479034 () Bool)

(assert (=> b!479034 (= e!292112 e!292109)))

(declare-fun res!211717 () Bool)

(assert (=> b!479034 (=> (not res!211717) (not e!292109))))

(assert (=> b!479034 (= res!211717 (and (not ((_ is ElementMatch!1163) (derivativeStep!249 r!20230 c!12526))) (not ((_ is Star!1163) (derivativeStep!249 r!20230 c!12526)))))))

(declare-fun b!479035 () Bool)

(declare-fun e!292108 () Bool)

(assert (=> b!479035 (= e!292108 call!33837)))

(declare-fun bm!33832 () Bool)

(assert (=> bm!33832 (= call!33836 (lostCause!157 (ite c!95864 (regOne!2839 (derivativeStep!249 r!20230 c!12526)) (regOne!2838 (derivativeStep!249 r!20230 c!12526)))))))

(declare-fun b!479036 () Bool)

(assert (=> b!479036 (= e!292111 e!292108)))

(declare-fun res!211718 () Bool)

(assert (=> b!479036 (= res!211718 call!33836)))

(assert (=> b!479036 (=> (not res!211718) (not e!292108))))

(assert (= (and d!180330 res!211720) b!479032))

(assert (= (and b!479032 (not res!211719)) b!479034))

(assert (= (and b!479034 res!211717) b!479033))

(assert (= (and b!479033 c!95864) b!479036))

(assert (= (and b!479033 (not c!95864)) b!479031))

(assert (= (and b!479036 res!211718) b!479035))

(assert (= (and b!479031 (not res!211721)) b!479030))

(assert (= (or b!479036 b!479031) bm!33832))

(assert (= (or b!479035 b!479030) bm!33831))

(declare-fun m!748549 () Bool)

(assert (=> bm!33831 m!748549))

(assert (=> d!180330 m!748485))

(declare-fun m!748551 () Bool)

(assert (=> d!180330 m!748551))

(assert (=> d!180330 m!748551))

(declare-fun m!748553 () Bool)

(assert (=> d!180330 m!748553))

(declare-fun m!748555 () Bool)

(assert (=> bm!33832 m!748555))

(assert (=> d!180312 d!180330))

(declare-fun b!479037 () Bool)

(declare-fun e!292119 () Bool)

(declare-fun e!292117 () Bool)

(assert (=> b!479037 (= e!292119 e!292117)))

(declare-fun c!95866 () Bool)

(assert (=> b!479037 (= c!95866 ((_ is Star!1163) (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))))))

(declare-fun b!479038 () Bool)

(declare-fun e!292116 () Bool)

(assert (=> b!479038 (= e!292117 e!292116)))

(declare-fun res!211722 () Bool)

(assert (=> b!479038 (= res!211722 (not (nullable!298 (reg!1492 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))))))))

(assert (=> b!479038 (=> (not res!211722) (not e!292116))))

(declare-fun b!479039 () Bool)

(declare-fun res!211723 () Bool)

(declare-fun e!292114 () Bool)

(assert (=> b!479039 (=> (not res!211723) (not e!292114))))

(declare-fun call!33839 () Bool)

(assert (=> b!479039 (= res!211723 call!33839)))

(declare-fun e!292120 () Bool)

(assert (=> b!479039 (= e!292120 e!292114)))

(declare-fun b!479040 () Bool)

(declare-fun call!33840 () Bool)

(assert (=> b!479040 (= e!292114 call!33840)))

(declare-fun b!479041 () Bool)

(assert (=> b!479041 (= e!292117 e!292120)))

(declare-fun c!95865 () Bool)

(assert (=> b!479041 (= c!95865 ((_ is Union!1163) (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))))))

(declare-fun call!33838 () Bool)

(declare-fun bm!33833 () Bool)

(assert (=> bm!33833 (= call!33838 (validRegex!391 (ite c!95866 (reg!1492 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))) (ite c!95865 (regOne!2839 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))) (regTwo!2838 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230)))))))))

(declare-fun bm!33834 () Bool)

(assert (=> bm!33834 (= call!33839 call!33838)))

(declare-fun b!479043 () Bool)

(declare-fun res!211726 () Bool)

(declare-fun e!292115 () Bool)

(assert (=> b!479043 (=> res!211726 e!292115)))

(assert (=> b!479043 (= res!211726 (not ((_ is Concat!2063) (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230)))))))

(assert (=> b!479043 (= e!292120 e!292115)))

(declare-fun b!479044 () Bool)

(declare-fun e!292118 () Bool)

(assert (=> b!479044 (= e!292115 e!292118)))

(declare-fun res!211724 () Bool)

(assert (=> b!479044 (=> (not res!211724) (not e!292118))))

(assert (=> b!479044 (= res!211724 call!33840)))

(declare-fun b!479045 () Bool)

(assert (=> b!479045 (= e!292118 call!33839)))

(declare-fun bm!33835 () Bool)

(assert (=> bm!33835 (= call!33840 (validRegex!391 (ite c!95865 (regTwo!2839 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))) (regOne!2838 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))))))))

(declare-fun b!479042 () Bool)

(assert (=> b!479042 (= e!292116 call!33838)))

(declare-fun d!180332 () Bool)

(declare-fun res!211725 () Bool)

(assert (=> d!180332 (=> res!211725 e!292119)))

(assert (=> d!180332 (= res!211725 ((_ is ElementMatch!1163) (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))))))

(assert (=> d!180332 (= (validRegex!391 (ite c!95825 (regTwo!2839 r!20230) (regOne!2838 r!20230))) e!292119)))

(assert (= (and d!180332 (not res!211725)) b!479037))

(assert (= (and b!479037 c!95866) b!479038))

(assert (= (and b!479037 (not c!95866)) b!479041))

(assert (= (and b!479038 res!211722) b!479042))

(assert (= (and b!479041 c!95865) b!479039))

(assert (= (and b!479041 (not c!95865)) b!479043))

(assert (= (and b!479039 res!211723) b!479040))

(assert (= (and b!479043 (not res!211726)) b!479044))

(assert (= (and b!479044 res!211724) b!479045))

(assert (= (or b!479040 b!479044) bm!33835))

(assert (= (or b!479039 b!479045) bm!33834))

(assert (= (or b!479042 bm!33834) bm!33833))

(declare-fun m!748557 () Bool)

(assert (=> b!479038 m!748557))

(declare-fun m!748559 () Bool)

(assert (=> bm!33833 m!748559))

(declare-fun m!748561 () Bool)

(assert (=> bm!33835 m!748561))

(assert (=> bm!33794 d!180332))

(declare-fun bm!33836 () Bool)

(declare-fun call!33842 () Regex!1163)

(declare-fun c!95868 () Bool)

(assert (=> bm!33836 (= call!33842 (derivativeStep!249 (ite c!95868 (regOne!2839 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))) (regTwo!2838 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) c!12526))))

(declare-fun b!479046 () Bool)

(assert (=> b!479046 (= c!95868 ((_ is Union!1163) (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))))))

(declare-fun e!292121 () Regex!1163)

(declare-fun e!292125 () Regex!1163)

(assert (=> b!479046 (= e!292121 e!292125)))

(declare-fun b!479047 () Bool)

(assert (=> b!479047 (= e!292121 (ite (= c!12526 (c!95814 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) EmptyExpr!1163 EmptyLang!1163))))

(declare-fun bm!33837 () Bool)

(declare-fun call!33841 () Regex!1163)

(declare-fun call!33844 () Regex!1163)

(assert (=> bm!33837 (= call!33841 call!33844)))

(declare-fun b!479048 () Bool)

(declare-fun e!292124 () Regex!1163)

(assert (=> b!479048 (= e!292125 e!292124)))

(declare-fun c!95867 () Bool)

(assert (=> b!479048 (= c!95867 ((_ is Star!1163) (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))))))

(declare-fun d!180334 () Bool)

(declare-fun lt!210887 () Regex!1163)

(assert (=> d!180334 (validRegex!391 lt!210887)))

(declare-fun e!292123 () Regex!1163)

(assert (=> d!180334 (= lt!210887 e!292123)))

(declare-fun c!95869 () Bool)

(assert (=> d!180334 (= c!95869 (or ((_ is EmptyExpr!1163) (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))) ((_ is EmptyLang!1163) (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))

(assert (=> d!180334 (validRegex!391 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))

(assert (=> d!180334 (= (derivativeStep!249 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)) c!12526) lt!210887)))

(declare-fun call!33843 () Regex!1163)

(declare-fun b!479049 () Bool)

(declare-fun e!292122 () Regex!1163)

(assert (=> b!479049 (= e!292122 (Union!1163 (Concat!2063 call!33843 (regTwo!2838 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) call!33842))))

(declare-fun b!479050 () Bool)

(declare-fun c!95870 () Bool)

(assert (=> b!479050 (= c!95870 (nullable!298 (regOne!2838 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))))))

(assert (=> b!479050 (= e!292124 e!292122)))

(declare-fun b!479051 () Bool)

(assert (=> b!479051 (= e!292123 EmptyLang!1163)))

(declare-fun bm!33838 () Bool)

(assert (=> bm!33838 (= call!33843 call!33841)))

(declare-fun b!479052 () Bool)

(assert (=> b!479052 (= e!292124 (Concat!2063 call!33841 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))))))

(declare-fun b!479053 () Bool)

(assert (=> b!479053 (= e!292125 (Union!1163 call!33842 call!33844))))

(declare-fun bm!33839 () Bool)

(assert (=> bm!33839 (= call!33844 (derivativeStep!249 (ite c!95868 (regTwo!2839 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))) (ite c!95867 (reg!1492 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))) (regOne!2838 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))))) c!12526))))

(declare-fun b!479054 () Bool)

(assert (=> b!479054 (= e!292123 e!292121)))

(declare-fun c!95871 () Bool)

(assert (=> b!479054 (= c!95871 ((_ is ElementMatch!1163) (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230))))))

(declare-fun b!479055 () Bool)

(assert (=> b!479055 (= e!292122 (Union!1163 (Concat!2063 call!33843 (regTwo!2838 (ite c!95853 (regOne!2839 r!20230) (regTwo!2838 r!20230)))) EmptyLang!1163))))

(assert (= (and d!180334 c!95869) b!479051))

(assert (= (and d!180334 (not c!95869)) b!479054))

(assert (= (and b!479054 c!95871) b!479047))

(assert (= (and b!479054 (not c!95871)) b!479046))

(assert (= (and b!479046 c!95868) b!479053))

(assert (= (and b!479046 (not c!95868)) b!479048))

(assert (= (and b!479048 c!95867) b!479052))

(assert (= (and b!479048 (not c!95867)) b!479050))

(assert (= (and b!479050 c!95870) b!479049))

(assert (= (and b!479050 (not c!95870)) b!479055))

(assert (= (or b!479049 b!479055) bm!33838))

(assert (= (or b!479052 bm!33838) bm!33837))

(assert (= (or b!479053 bm!33837) bm!33839))

(assert (= (or b!479053 b!479049) bm!33836))

(declare-fun m!748563 () Bool)

(assert (=> bm!33836 m!748563))

(declare-fun m!748565 () Bool)

(assert (=> d!180334 m!748565))

(declare-fun m!748567 () Bool)

(assert (=> d!180334 m!748567))

(declare-fun m!748569 () Bool)

(assert (=> b!479050 m!748569))

(declare-fun m!748571 () Bool)

(assert (=> bm!33839 m!748571))

(assert (=> bm!33815 d!180334))

(declare-fun c!95873 () Bool)

(declare-fun call!33846 () Regex!1163)

(declare-fun bm!33840 () Bool)

(assert (=> bm!33840 (= call!33846 (derivativeStep!249 (ite c!95873 (regOne!2839 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))) (regTwo!2838 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))) c!12526))))

(declare-fun b!479056 () Bool)

(assert (=> b!479056 (= c!95873 ((_ is Union!1163) (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))))))

(declare-fun e!292126 () Regex!1163)

(declare-fun e!292130 () Regex!1163)

(assert (=> b!479056 (= e!292126 e!292130)))

(declare-fun b!479057 () Bool)

(assert (=> b!479057 (= e!292126 (ite (= c!12526 (c!95814 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))) EmptyExpr!1163 EmptyLang!1163))))

(declare-fun bm!33841 () Bool)

(declare-fun call!33845 () Regex!1163)

(declare-fun call!33848 () Regex!1163)

(assert (=> bm!33841 (= call!33845 call!33848)))

(declare-fun b!479058 () Bool)

(declare-fun e!292129 () Regex!1163)

(assert (=> b!479058 (= e!292130 e!292129)))

(declare-fun c!95872 () Bool)

(assert (=> b!479058 (= c!95872 ((_ is Star!1163) (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))))))

(declare-fun d!180336 () Bool)

(declare-fun lt!210888 () Regex!1163)

(assert (=> d!180336 (validRegex!391 lt!210888)))

(declare-fun e!292128 () Regex!1163)

(assert (=> d!180336 (= lt!210888 e!292128)))

(declare-fun c!95874 () Bool)

(assert (=> d!180336 (= c!95874 (or ((_ is EmptyExpr!1163) (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))) ((_ is EmptyLang!1163) (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))))))

(assert (=> d!180336 (validRegex!391 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))))

(assert (=> d!180336 (= (derivativeStep!249 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))) c!12526) lt!210888)))

(declare-fun e!292127 () Regex!1163)

(declare-fun call!33847 () Regex!1163)

(declare-fun b!479059 () Bool)

(assert (=> b!479059 (= e!292127 (Union!1163 (Concat!2063 call!33847 (regTwo!2838 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))) call!33846))))

(declare-fun b!479060 () Bool)

(declare-fun c!95875 () Bool)

(assert (=> b!479060 (= c!95875 (nullable!298 (regOne!2838 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))))))

(assert (=> b!479060 (= e!292129 e!292127)))

(declare-fun b!479061 () Bool)

(assert (=> b!479061 (= e!292128 EmptyLang!1163)))

(declare-fun bm!33842 () Bool)

(assert (=> bm!33842 (= call!33847 call!33845)))

(declare-fun b!479062 () Bool)

(assert (=> b!479062 (= e!292129 (Concat!2063 call!33845 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))))))

(declare-fun b!479063 () Bool)

(assert (=> b!479063 (= e!292130 (Union!1163 call!33846 call!33848))))

(declare-fun bm!33843 () Bool)

(assert (=> bm!33843 (= call!33848 (derivativeStep!249 (ite c!95873 (regTwo!2839 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))) (ite c!95872 (reg!1492 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))) (regOne!2838 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))))) c!12526))))

(declare-fun b!479064 () Bool)

(assert (=> b!479064 (= e!292128 e!292126)))

(declare-fun c!95876 () Bool)

(assert (=> b!479064 (= c!95876 ((_ is ElementMatch!1163) (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230)))))))

(declare-fun b!479065 () Bool)

(assert (=> b!479065 (= e!292127 (Union!1163 (Concat!2063 call!33847 (regTwo!2838 (ite c!95853 (regTwo!2839 r!20230) (ite c!95852 (reg!1492 r!20230) (regOne!2838 r!20230))))) EmptyLang!1163))))

(assert (= (and d!180336 c!95874) b!479061))

(assert (= (and d!180336 (not c!95874)) b!479064))

(assert (= (and b!479064 c!95876) b!479057))

(assert (= (and b!479064 (not c!95876)) b!479056))

(assert (= (and b!479056 c!95873) b!479063))

(assert (= (and b!479056 (not c!95873)) b!479058))

(assert (= (and b!479058 c!95872) b!479062))

(assert (= (and b!479058 (not c!95872)) b!479060))

(assert (= (and b!479060 c!95875) b!479059))

(assert (= (and b!479060 (not c!95875)) b!479065))

(assert (= (or b!479059 b!479065) bm!33842))

(assert (= (or b!479062 bm!33842) bm!33841))

(assert (= (or b!479063 bm!33841) bm!33843))

(assert (= (or b!479063 b!479059) bm!33840))

(declare-fun m!748573 () Bool)

(assert (=> bm!33840 m!748573))

(declare-fun m!748575 () Bool)

(assert (=> d!180336 m!748575))

(declare-fun m!748577 () Bool)

(assert (=> d!180336 m!748577))

(declare-fun m!748579 () Bool)

(assert (=> b!479060 m!748579))

(declare-fun m!748581 () Bool)

(assert (=> bm!33843 m!748581))

(assert (=> bm!33818 d!180336))

(declare-fun d!180338 () Bool)

(assert (=> d!180338 (= (nullable!298 (regOne!2838 r!20230)) (nullableFct!104 (regOne!2838 r!20230)))))

(declare-fun bs!58791 () Bool)

(assert (= bs!58791 d!180338))

(declare-fun m!748583 () Bool)

(assert (=> bs!58791 m!748583))

(assert (=> b!478925 d!180338))

(declare-fun b!479066 () Bool)

(declare-fun e!292131 () Bool)

(assert (=> b!479066 (= e!292131 tp_is_empty!2323)))

(declare-fun b!479068 () Bool)

(declare-fun tp!134193 () Bool)

(assert (=> b!479068 (= e!292131 tp!134193)))

(assert (=> b!478980 (= tp!134179 e!292131)))

(declare-fun b!479069 () Bool)

(declare-fun tp!134192 () Bool)

(declare-fun tp!134195 () Bool)

(assert (=> b!479069 (= e!292131 (and tp!134192 tp!134195))))

(declare-fun b!479067 () Bool)

(declare-fun tp!134194 () Bool)

(declare-fun tp!134196 () Bool)

(assert (=> b!479067 (= e!292131 (and tp!134194 tp!134196))))

(assert (= (and b!478980 ((_ is ElementMatch!1163) (regOne!2838 (regTwo!2839 r!20230)))) b!479066))

(assert (= (and b!478980 ((_ is Concat!2063) (regOne!2838 (regTwo!2839 r!20230)))) b!479067))

(assert (= (and b!478980 ((_ is Star!1163) (regOne!2838 (regTwo!2839 r!20230)))) b!479068))

(assert (= (and b!478980 ((_ is Union!1163) (regOne!2838 (regTwo!2839 r!20230)))) b!479069))

(declare-fun b!479070 () Bool)

(declare-fun e!292132 () Bool)

(assert (=> b!479070 (= e!292132 tp_is_empty!2323)))

(declare-fun b!479072 () Bool)

(declare-fun tp!134198 () Bool)

(assert (=> b!479072 (= e!292132 tp!134198)))

(assert (=> b!478980 (= tp!134181 e!292132)))

(declare-fun b!479073 () Bool)

(declare-fun tp!134197 () Bool)

(declare-fun tp!134200 () Bool)

(assert (=> b!479073 (= e!292132 (and tp!134197 tp!134200))))

(declare-fun b!479071 () Bool)

(declare-fun tp!134199 () Bool)

(declare-fun tp!134201 () Bool)

(assert (=> b!479071 (= e!292132 (and tp!134199 tp!134201))))

(assert (= (and b!478980 ((_ is ElementMatch!1163) (regTwo!2838 (regTwo!2839 r!20230)))) b!479070))

(assert (= (and b!478980 ((_ is Concat!2063) (regTwo!2838 (regTwo!2839 r!20230)))) b!479071))

(assert (= (and b!478980 ((_ is Star!1163) (regTwo!2838 (regTwo!2839 r!20230)))) b!479072))

(assert (= (and b!478980 ((_ is Union!1163) (regTwo!2838 (regTwo!2839 r!20230)))) b!479073))

(declare-fun b!479074 () Bool)

(declare-fun e!292133 () Bool)

(assert (=> b!479074 (= e!292133 tp_is_empty!2323)))

(declare-fun b!479076 () Bool)

(declare-fun tp!134203 () Bool)

(assert (=> b!479076 (= e!292133 tp!134203)))

(assert (=> b!478990 (= tp!134187 e!292133)))

(declare-fun b!479077 () Bool)

(declare-fun tp!134202 () Bool)

(declare-fun tp!134205 () Bool)

(assert (=> b!479077 (= e!292133 (and tp!134202 tp!134205))))

(declare-fun b!479075 () Bool)

(declare-fun tp!134204 () Bool)

(declare-fun tp!134206 () Bool)

(assert (=> b!479075 (= e!292133 (and tp!134204 tp!134206))))

(assert (= (and b!478990 ((_ is ElementMatch!1163) (regOne!2839 (reg!1492 r!20230)))) b!479074))

(assert (= (and b!478990 ((_ is Concat!2063) (regOne!2839 (reg!1492 r!20230)))) b!479075))

(assert (= (and b!478990 ((_ is Star!1163) (regOne!2839 (reg!1492 r!20230)))) b!479076))

(assert (= (and b!478990 ((_ is Union!1163) (regOne!2839 (reg!1492 r!20230)))) b!479077))

(declare-fun b!479078 () Bool)

(declare-fun e!292134 () Bool)

(assert (=> b!479078 (= e!292134 tp_is_empty!2323)))

(declare-fun b!479080 () Bool)

(declare-fun tp!134208 () Bool)

(assert (=> b!479080 (= e!292134 tp!134208)))

(assert (=> b!478990 (= tp!134190 e!292134)))

(declare-fun b!479081 () Bool)

(declare-fun tp!134207 () Bool)

(declare-fun tp!134210 () Bool)

(assert (=> b!479081 (= e!292134 (and tp!134207 tp!134210))))

(declare-fun b!479079 () Bool)

(declare-fun tp!134209 () Bool)

(declare-fun tp!134211 () Bool)

(assert (=> b!479079 (= e!292134 (and tp!134209 tp!134211))))

(assert (= (and b!478990 ((_ is ElementMatch!1163) (regTwo!2839 (reg!1492 r!20230)))) b!479078))

(assert (= (and b!478990 ((_ is Concat!2063) (regTwo!2839 (reg!1492 r!20230)))) b!479079))

(assert (= (and b!478990 ((_ is Star!1163) (regTwo!2839 (reg!1492 r!20230)))) b!479080))

(assert (= (and b!478990 ((_ is Union!1163) (regTwo!2839 (reg!1492 r!20230)))) b!479081))

(declare-fun b!479082 () Bool)

(declare-fun e!292135 () Bool)

(assert (=> b!479082 (= e!292135 tp_is_empty!2323)))

(declare-fun b!479084 () Bool)

(declare-fun tp!134213 () Bool)

(assert (=> b!479084 (= e!292135 tp!134213)))

(assert (=> b!478981 (= tp!134178 e!292135)))

(declare-fun b!479085 () Bool)

(declare-fun tp!134212 () Bool)

(declare-fun tp!134215 () Bool)

(assert (=> b!479085 (= e!292135 (and tp!134212 tp!134215))))

(declare-fun b!479083 () Bool)

(declare-fun tp!134214 () Bool)

(declare-fun tp!134216 () Bool)

(assert (=> b!479083 (= e!292135 (and tp!134214 tp!134216))))

(assert (= (and b!478981 ((_ is ElementMatch!1163) (reg!1492 (regTwo!2839 r!20230)))) b!479082))

(assert (= (and b!478981 ((_ is Concat!2063) (reg!1492 (regTwo!2839 r!20230)))) b!479083))

(assert (= (and b!478981 ((_ is Star!1163) (reg!1492 (regTwo!2839 r!20230)))) b!479084))

(assert (= (and b!478981 ((_ is Union!1163) (reg!1492 (regTwo!2839 r!20230)))) b!479085))

(declare-fun b!479086 () Bool)

(declare-fun e!292136 () Bool)

(assert (=> b!479086 (= e!292136 tp_is_empty!2323)))

(declare-fun b!479088 () Bool)

(declare-fun tp!134218 () Bool)

(assert (=> b!479088 (= e!292136 tp!134218)))

(assert (=> b!478988 (= tp!134189 e!292136)))

(declare-fun b!479089 () Bool)

(declare-fun tp!134217 () Bool)

(declare-fun tp!134220 () Bool)

(assert (=> b!479089 (= e!292136 (and tp!134217 tp!134220))))

(declare-fun b!479087 () Bool)

(declare-fun tp!134219 () Bool)

(declare-fun tp!134221 () Bool)

(assert (=> b!479087 (= e!292136 (and tp!134219 tp!134221))))

(assert (= (and b!478988 ((_ is ElementMatch!1163) (regOne!2838 (reg!1492 r!20230)))) b!479086))

(assert (= (and b!478988 ((_ is Concat!2063) (regOne!2838 (reg!1492 r!20230)))) b!479087))

(assert (= (and b!478988 ((_ is Star!1163) (regOne!2838 (reg!1492 r!20230)))) b!479088))

(assert (= (and b!478988 ((_ is Union!1163) (regOne!2838 (reg!1492 r!20230)))) b!479089))

(declare-fun b!479090 () Bool)

(declare-fun e!292137 () Bool)

(assert (=> b!479090 (= e!292137 tp_is_empty!2323)))

(declare-fun b!479092 () Bool)

(declare-fun tp!134223 () Bool)

(assert (=> b!479092 (= e!292137 tp!134223)))

(assert (=> b!478988 (= tp!134191 e!292137)))

(declare-fun b!479093 () Bool)

(declare-fun tp!134222 () Bool)

(declare-fun tp!134225 () Bool)

(assert (=> b!479093 (= e!292137 (and tp!134222 tp!134225))))

(declare-fun b!479091 () Bool)

(declare-fun tp!134224 () Bool)

(declare-fun tp!134226 () Bool)

(assert (=> b!479091 (= e!292137 (and tp!134224 tp!134226))))

(assert (= (and b!478988 ((_ is ElementMatch!1163) (regTwo!2838 (reg!1492 r!20230)))) b!479090))

(assert (= (and b!478988 ((_ is Concat!2063) (regTwo!2838 (reg!1492 r!20230)))) b!479091))

(assert (= (and b!478988 ((_ is Star!1163) (regTwo!2838 (reg!1492 r!20230)))) b!479092))

(assert (= (and b!478988 ((_ is Union!1163) (regTwo!2838 (reg!1492 r!20230)))) b!479093))

(declare-fun b!479094 () Bool)

(declare-fun e!292138 () Bool)

(assert (=> b!479094 (= e!292138 tp_is_empty!2323)))

(declare-fun b!479096 () Bool)

(declare-fun tp!134228 () Bool)

(assert (=> b!479096 (= e!292138 tp!134228)))

(assert (=> b!478989 (= tp!134188 e!292138)))

(declare-fun b!479097 () Bool)

(declare-fun tp!134227 () Bool)

(declare-fun tp!134230 () Bool)

(assert (=> b!479097 (= e!292138 (and tp!134227 tp!134230))))

(declare-fun b!479095 () Bool)

(declare-fun tp!134229 () Bool)

(declare-fun tp!134231 () Bool)

(assert (=> b!479095 (= e!292138 (and tp!134229 tp!134231))))

(assert (= (and b!478989 ((_ is ElementMatch!1163) (reg!1492 (reg!1492 r!20230)))) b!479094))

(assert (= (and b!478989 ((_ is Concat!2063) (reg!1492 (reg!1492 r!20230)))) b!479095))

(assert (= (and b!478989 ((_ is Star!1163) (reg!1492 (reg!1492 r!20230)))) b!479096))

(assert (= (and b!478989 ((_ is Union!1163) (reg!1492 (reg!1492 r!20230)))) b!479097))

(declare-fun b!479098 () Bool)

(declare-fun e!292139 () Bool)

(assert (=> b!479098 (= e!292139 tp_is_empty!2323)))

(declare-fun b!479100 () Bool)

(declare-fun tp!134233 () Bool)

(assert (=> b!479100 (= e!292139 tp!134233)))

(assert (=> b!478958 (= tp!134147 e!292139)))

(declare-fun b!479101 () Bool)

(declare-fun tp!134232 () Bool)

(declare-fun tp!134235 () Bool)

(assert (=> b!479101 (= e!292139 (and tp!134232 tp!134235))))

(declare-fun b!479099 () Bool)

(declare-fun tp!134234 () Bool)

(declare-fun tp!134236 () Bool)

(assert (=> b!479099 (= e!292139 (and tp!134234 tp!134236))))

(assert (= (and b!478958 ((_ is ElementMatch!1163) (regOne!2839 (regOne!2838 r!20230)))) b!479098))

(assert (= (and b!478958 ((_ is Concat!2063) (regOne!2839 (regOne!2838 r!20230)))) b!479099))

(assert (= (and b!478958 ((_ is Star!1163) (regOne!2839 (regOne!2838 r!20230)))) b!479100))

(assert (= (and b!478958 ((_ is Union!1163) (regOne!2839 (regOne!2838 r!20230)))) b!479101))

(declare-fun b!479102 () Bool)

(declare-fun e!292140 () Bool)

(assert (=> b!479102 (= e!292140 tp_is_empty!2323)))

(declare-fun b!479104 () Bool)

(declare-fun tp!134238 () Bool)

(assert (=> b!479104 (= e!292140 tp!134238)))

(assert (=> b!478958 (= tp!134150 e!292140)))

(declare-fun b!479105 () Bool)

(declare-fun tp!134237 () Bool)

(declare-fun tp!134240 () Bool)

(assert (=> b!479105 (= e!292140 (and tp!134237 tp!134240))))

(declare-fun b!479103 () Bool)

(declare-fun tp!134239 () Bool)

(declare-fun tp!134241 () Bool)

(assert (=> b!479103 (= e!292140 (and tp!134239 tp!134241))))

(assert (= (and b!478958 ((_ is ElementMatch!1163) (regTwo!2839 (regOne!2838 r!20230)))) b!479102))

(assert (= (and b!478958 ((_ is Concat!2063) (regTwo!2839 (regOne!2838 r!20230)))) b!479103))

(assert (= (and b!478958 ((_ is Star!1163) (regTwo!2839 (regOne!2838 r!20230)))) b!479104))

(assert (= (and b!478958 ((_ is Union!1163) (regTwo!2839 (regOne!2838 r!20230)))) b!479105))

(declare-fun b!479106 () Bool)

(declare-fun e!292141 () Bool)

(assert (=> b!479106 (= e!292141 tp_is_empty!2323)))

(declare-fun b!479108 () Bool)

(declare-fun tp!134243 () Bool)

(assert (=> b!479108 (= e!292141 tp!134243)))

(assert (=> b!478956 (= tp!134149 e!292141)))

(declare-fun b!479109 () Bool)

(declare-fun tp!134242 () Bool)

(declare-fun tp!134245 () Bool)

(assert (=> b!479109 (= e!292141 (and tp!134242 tp!134245))))

(declare-fun b!479107 () Bool)

(declare-fun tp!134244 () Bool)

(declare-fun tp!134246 () Bool)

(assert (=> b!479107 (= e!292141 (and tp!134244 tp!134246))))

(assert (= (and b!478956 ((_ is ElementMatch!1163) (regOne!2838 (regOne!2838 r!20230)))) b!479106))

(assert (= (and b!478956 ((_ is Concat!2063) (regOne!2838 (regOne!2838 r!20230)))) b!479107))

(assert (= (and b!478956 ((_ is Star!1163) (regOne!2838 (regOne!2838 r!20230)))) b!479108))

(assert (= (and b!478956 ((_ is Union!1163) (regOne!2838 (regOne!2838 r!20230)))) b!479109))

(declare-fun b!479110 () Bool)

(declare-fun e!292142 () Bool)

(assert (=> b!479110 (= e!292142 tp_is_empty!2323)))

(declare-fun b!479112 () Bool)

(declare-fun tp!134248 () Bool)

(assert (=> b!479112 (= e!292142 tp!134248)))

(assert (=> b!478956 (= tp!134151 e!292142)))

(declare-fun b!479113 () Bool)

(declare-fun tp!134247 () Bool)

(declare-fun tp!134250 () Bool)

(assert (=> b!479113 (= e!292142 (and tp!134247 tp!134250))))

(declare-fun b!479111 () Bool)

(declare-fun tp!134249 () Bool)

(declare-fun tp!134251 () Bool)

(assert (=> b!479111 (= e!292142 (and tp!134249 tp!134251))))

(assert (= (and b!478956 ((_ is ElementMatch!1163) (regTwo!2838 (regOne!2838 r!20230)))) b!479110))

(assert (= (and b!478956 ((_ is Concat!2063) (regTwo!2838 (regOne!2838 r!20230)))) b!479111))

(assert (= (and b!478956 ((_ is Star!1163) (regTwo!2838 (regOne!2838 r!20230)))) b!479112))

(assert (= (and b!478956 ((_ is Union!1163) (regTwo!2838 (regOne!2838 r!20230)))) b!479113))

(declare-fun b!479114 () Bool)

(declare-fun e!292143 () Bool)

(assert (=> b!479114 (= e!292143 tp_is_empty!2323)))

(declare-fun b!479116 () Bool)

(declare-fun tp!134253 () Bool)

(assert (=> b!479116 (= e!292143 tp!134253)))

(assert (=> b!478966 (= tp!134157 e!292143)))

(declare-fun b!479117 () Bool)

(declare-fun tp!134252 () Bool)

(declare-fun tp!134255 () Bool)

(assert (=> b!479117 (= e!292143 (and tp!134252 tp!134255))))

(declare-fun b!479115 () Bool)

(declare-fun tp!134254 () Bool)

(declare-fun tp!134256 () Bool)

(assert (=> b!479115 (= e!292143 (and tp!134254 tp!134256))))

(assert (= (and b!478966 ((_ is ElementMatch!1163) (regOne!2839 (regTwo!2838 r!20230)))) b!479114))

(assert (= (and b!478966 ((_ is Concat!2063) (regOne!2839 (regTwo!2838 r!20230)))) b!479115))

(assert (= (and b!478966 ((_ is Star!1163) (regOne!2839 (regTwo!2838 r!20230)))) b!479116))

(assert (= (and b!478966 ((_ is Union!1163) (regOne!2839 (regTwo!2838 r!20230)))) b!479117))

(declare-fun b!479118 () Bool)

(declare-fun e!292144 () Bool)

(assert (=> b!479118 (= e!292144 tp_is_empty!2323)))

(declare-fun b!479120 () Bool)

(declare-fun tp!134258 () Bool)

(assert (=> b!479120 (= e!292144 tp!134258)))

(assert (=> b!478966 (= tp!134160 e!292144)))

(declare-fun b!479121 () Bool)

(declare-fun tp!134257 () Bool)

(declare-fun tp!134260 () Bool)

(assert (=> b!479121 (= e!292144 (and tp!134257 tp!134260))))

(declare-fun b!479119 () Bool)

(declare-fun tp!134259 () Bool)

(declare-fun tp!134261 () Bool)

(assert (=> b!479119 (= e!292144 (and tp!134259 tp!134261))))

(assert (= (and b!478966 ((_ is ElementMatch!1163) (regTwo!2839 (regTwo!2838 r!20230)))) b!479118))

(assert (= (and b!478966 ((_ is Concat!2063) (regTwo!2839 (regTwo!2838 r!20230)))) b!479119))

(assert (= (and b!478966 ((_ is Star!1163) (regTwo!2839 (regTwo!2838 r!20230)))) b!479120))

(assert (= (and b!478966 ((_ is Union!1163) (regTwo!2839 (regTwo!2838 r!20230)))) b!479121))

(declare-fun b!479122 () Bool)

(declare-fun e!292145 () Bool)

(assert (=> b!479122 (= e!292145 tp_is_empty!2323)))

(declare-fun b!479124 () Bool)

(declare-fun tp!134263 () Bool)

(assert (=> b!479124 (= e!292145 tp!134263)))

(assert (=> b!478957 (= tp!134148 e!292145)))

(declare-fun b!479125 () Bool)

(declare-fun tp!134262 () Bool)

(declare-fun tp!134265 () Bool)

(assert (=> b!479125 (= e!292145 (and tp!134262 tp!134265))))

(declare-fun b!479123 () Bool)

(declare-fun tp!134264 () Bool)

(declare-fun tp!134266 () Bool)

(assert (=> b!479123 (= e!292145 (and tp!134264 tp!134266))))

(assert (= (and b!478957 ((_ is ElementMatch!1163) (reg!1492 (regOne!2838 r!20230)))) b!479122))

(assert (= (and b!478957 ((_ is Concat!2063) (reg!1492 (regOne!2838 r!20230)))) b!479123))

(assert (= (and b!478957 ((_ is Star!1163) (reg!1492 (regOne!2838 r!20230)))) b!479124))

(assert (= (and b!478957 ((_ is Union!1163) (reg!1492 (regOne!2838 r!20230)))) b!479125))

(declare-fun b!479126 () Bool)

(declare-fun e!292146 () Bool)

(assert (=> b!479126 (= e!292146 tp_is_empty!2323)))

(declare-fun b!479128 () Bool)

(declare-fun tp!134268 () Bool)

(assert (=> b!479128 (= e!292146 tp!134268)))

(assert (=> b!478964 (= tp!134159 e!292146)))

(declare-fun b!479129 () Bool)

(declare-fun tp!134267 () Bool)

(declare-fun tp!134270 () Bool)

(assert (=> b!479129 (= e!292146 (and tp!134267 tp!134270))))

(declare-fun b!479127 () Bool)

(declare-fun tp!134269 () Bool)

(declare-fun tp!134271 () Bool)

(assert (=> b!479127 (= e!292146 (and tp!134269 tp!134271))))

(assert (= (and b!478964 ((_ is ElementMatch!1163) (regOne!2838 (regTwo!2838 r!20230)))) b!479126))

(assert (= (and b!478964 ((_ is Concat!2063) (regOne!2838 (regTwo!2838 r!20230)))) b!479127))

(assert (= (and b!478964 ((_ is Star!1163) (regOne!2838 (regTwo!2838 r!20230)))) b!479128))

(assert (= (and b!478964 ((_ is Union!1163) (regOne!2838 (regTwo!2838 r!20230)))) b!479129))

(declare-fun b!479130 () Bool)

(declare-fun e!292147 () Bool)

(assert (=> b!479130 (= e!292147 tp_is_empty!2323)))

(declare-fun b!479132 () Bool)

(declare-fun tp!134273 () Bool)

(assert (=> b!479132 (= e!292147 tp!134273)))

(assert (=> b!478964 (= tp!134161 e!292147)))

(declare-fun b!479133 () Bool)

(declare-fun tp!134272 () Bool)

(declare-fun tp!134275 () Bool)

(assert (=> b!479133 (= e!292147 (and tp!134272 tp!134275))))

(declare-fun b!479131 () Bool)

(declare-fun tp!134274 () Bool)

(declare-fun tp!134276 () Bool)

(assert (=> b!479131 (= e!292147 (and tp!134274 tp!134276))))

(assert (= (and b!478964 ((_ is ElementMatch!1163) (regTwo!2838 (regTwo!2838 r!20230)))) b!479130))

(assert (= (and b!478964 ((_ is Concat!2063) (regTwo!2838 (regTwo!2838 r!20230)))) b!479131))

(assert (= (and b!478964 ((_ is Star!1163) (regTwo!2838 (regTwo!2838 r!20230)))) b!479132))

(assert (= (and b!478964 ((_ is Union!1163) (regTwo!2838 (regTwo!2838 r!20230)))) b!479133))

(declare-fun b!479134 () Bool)

(declare-fun e!292148 () Bool)

(assert (=> b!479134 (= e!292148 tp_is_empty!2323)))

(declare-fun b!479136 () Bool)

(declare-fun tp!134278 () Bool)

(assert (=> b!479136 (= e!292148 tp!134278)))

(assert (=> b!478974 (= tp!134167 e!292148)))

(declare-fun b!479137 () Bool)

(declare-fun tp!134277 () Bool)

(declare-fun tp!134280 () Bool)

(assert (=> b!479137 (= e!292148 (and tp!134277 tp!134280))))

(declare-fun b!479135 () Bool)

(declare-fun tp!134279 () Bool)

(declare-fun tp!134281 () Bool)

(assert (=> b!479135 (= e!292148 (and tp!134279 tp!134281))))

(assert (= (and b!478974 ((_ is ElementMatch!1163) (regOne!2839 (regOne!2839 r!20230)))) b!479134))

(assert (= (and b!478974 ((_ is Concat!2063) (regOne!2839 (regOne!2839 r!20230)))) b!479135))

(assert (= (and b!478974 ((_ is Star!1163) (regOne!2839 (regOne!2839 r!20230)))) b!479136))

(assert (= (and b!478974 ((_ is Union!1163) (regOne!2839 (regOne!2839 r!20230)))) b!479137))

(declare-fun b!479138 () Bool)

(declare-fun e!292149 () Bool)

(assert (=> b!479138 (= e!292149 tp_is_empty!2323)))

(declare-fun b!479140 () Bool)

(declare-fun tp!134283 () Bool)

(assert (=> b!479140 (= e!292149 tp!134283)))

(assert (=> b!478974 (= tp!134170 e!292149)))

(declare-fun b!479141 () Bool)

(declare-fun tp!134282 () Bool)

(declare-fun tp!134285 () Bool)

(assert (=> b!479141 (= e!292149 (and tp!134282 tp!134285))))

(declare-fun b!479139 () Bool)

(declare-fun tp!134284 () Bool)

(declare-fun tp!134286 () Bool)

(assert (=> b!479139 (= e!292149 (and tp!134284 tp!134286))))

(assert (= (and b!478974 ((_ is ElementMatch!1163) (regTwo!2839 (regOne!2839 r!20230)))) b!479138))

(assert (= (and b!478974 ((_ is Concat!2063) (regTwo!2839 (regOne!2839 r!20230)))) b!479139))

(assert (= (and b!478974 ((_ is Star!1163) (regTwo!2839 (regOne!2839 r!20230)))) b!479140))

(assert (= (and b!478974 ((_ is Union!1163) (regTwo!2839 (regOne!2839 r!20230)))) b!479141))

(declare-fun b!479142 () Bool)

(declare-fun e!292150 () Bool)

(assert (=> b!479142 (= e!292150 tp_is_empty!2323)))

(declare-fun b!479144 () Bool)

(declare-fun tp!134288 () Bool)

(assert (=> b!479144 (= e!292150 tp!134288)))

(assert (=> b!478965 (= tp!134158 e!292150)))

(declare-fun b!479145 () Bool)

(declare-fun tp!134287 () Bool)

(declare-fun tp!134290 () Bool)

(assert (=> b!479145 (= e!292150 (and tp!134287 tp!134290))))

(declare-fun b!479143 () Bool)

(declare-fun tp!134289 () Bool)

(declare-fun tp!134291 () Bool)

(assert (=> b!479143 (= e!292150 (and tp!134289 tp!134291))))

(assert (= (and b!478965 ((_ is ElementMatch!1163) (reg!1492 (regTwo!2838 r!20230)))) b!479142))

(assert (= (and b!478965 ((_ is Concat!2063) (reg!1492 (regTwo!2838 r!20230)))) b!479143))

(assert (= (and b!478965 ((_ is Star!1163) (reg!1492 (regTwo!2838 r!20230)))) b!479144))

(assert (= (and b!478965 ((_ is Union!1163) (reg!1492 (regTwo!2838 r!20230)))) b!479145))

(declare-fun b!479146 () Bool)

(declare-fun e!292151 () Bool)

(assert (=> b!479146 (= e!292151 tp_is_empty!2323)))

(declare-fun b!479148 () Bool)

(declare-fun tp!134293 () Bool)

(assert (=> b!479148 (= e!292151 tp!134293)))

(assert (=> b!478972 (= tp!134169 e!292151)))

(declare-fun b!479149 () Bool)

(declare-fun tp!134292 () Bool)

(declare-fun tp!134295 () Bool)

(assert (=> b!479149 (= e!292151 (and tp!134292 tp!134295))))

(declare-fun b!479147 () Bool)

(declare-fun tp!134294 () Bool)

(declare-fun tp!134296 () Bool)

(assert (=> b!479147 (= e!292151 (and tp!134294 tp!134296))))

(assert (= (and b!478972 ((_ is ElementMatch!1163) (regOne!2838 (regOne!2839 r!20230)))) b!479146))

(assert (= (and b!478972 ((_ is Concat!2063) (regOne!2838 (regOne!2839 r!20230)))) b!479147))

(assert (= (and b!478972 ((_ is Star!1163) (regOne!2838 (regOne!2839 r!20230)))) b!479148))

(assert (= (and b!478972 ((_ is Union!1163) (regOne!2838 (regOne!2839 r!20230)))) b!479149))

(declare-fun b!479150 () Bool)

(declare-fun e!292152 () Bool)

(assert (=> b!479150 (= e!292152 tp_is_empty!2323)))

(declare-fun b!479152 () Bool)

(declare-fun tp!134298 () Bool)

(assert (=> b!479152 (= e!292152 tp!134298)))

(assert (=> b!478972 (= tp!134171 e!292152)))

(declare-fun b!479153 () Bool)

(declare-fun tp!134297 () Bool)

(declare-fun tp!134300 () Bool)

(assert (=> b!479153 (= e!292152 (and tp!134297 tp!134300))))

(declare-fun b!479151 () Bool)

(declare-fun tp!134299 () Bool)

(declare-fun tp!134301 () Bool)

(assert (=> b!479151 (= e!292152 (and tp!134299 tp!134301))))

(assert (= (and b!478972 ((_ is ElementMatch!1163) (regTwo!2838 (regOne!2839 r!20230)))) b!479150))

(assert (= (and b!478972 ((_ is Concat!2063) (regTwo!2838 (regOne!2839 r!20230)))) b!479151))

(assert (= (and b!478972 ((_ is Star!1163) (regTwo!2838 (regOne!2839 r!20230)))) b!479152))

(assert (= (and b!478972 ((_ is Union!1163) (regTwo!2838 (regOne!2839 r!20230)))) b!479153))

(declare-fun b!479154 () Bool)

(declare-fun e!292153 () Bool)

(assert (=> b!479154 (= e!292153 tp_is_empty!2323)))

(declare-fun b!479156 () Bool)

(declare-fun tp!134303 () Bool)

(assert (=> b!479156 (= e!292153 tp!134303)))

(assert (=> b!478982 (= tp!134177 e!292153)))

(declare-fun b!479157 () Bool)

(declare-fun tp!134302 () Bool)

(declare-fun tp!134305 () Bool)

(assert (=> b!479157 (= e!292153 (and tp!134302 tp!134305))))

(declare-fun b!479155 () Bool)

(declare-fun tp!134304 () Bool)

(declare-fun tp!134306 () Bool)

(assert (=> b!479155 (= e!292153 (and tp!134304 tp!134306))))

(assert (= (and b!478982 ((_ is ElementMatch!1163) (regOne!2839 (regTwo!2839 r!20230)))) b!479154))

(assert (= (and b!478982 ((_ is Concat!2063) (regOne!2839 (regTwo!2839 r!20230)))) b!479155))

(assert (= (and b!478982 ((_ is Star!1163) (regOne!2839 (regTwo!2839 r!20230)))) b!479156))

(assert (= (and b!478982 ((_ is Union!1163) (regOne!2839 (regTwo!2839 r!20230)))) b!479157))

(declare-fun b!479158 () Bool)

(declare-fun e!292154 () Bool)

(assert (=> b!479158 (= e!292154 tp_is_empty!2323)))

(declare-fun b!479160 () Bool)

(declare-fun tp!134308 () Bool)

(assert (=> b!479160 (= e!292154 tp!134308)))

(assert (=> b!478982 (= tp!134180 e!292154)))

(declare-fun b!479161 () Bool)

(declare-fun tp!134307 () Bool)

(declare-fun tp!134310 () Bool)

(assert (=> b!479161 (= e!292154 (and tp!134307 tp!134310))))

(declare-fun b!479159 () Bool)

(declare-fun tp!134309 () Bool)

(declare-fun tp!134311 () Bool)

(assert (=> b!479159 (= e!292154 (and tp!134309 tp!134311))))

(assert (= (and b!478982 ((_ is ElementMatch!1163) (regTwo!2839 (regTwo!2839 r!20230)))) b!479158))

(assert (= (and b!478982 ((_ is Concat!2063) (regTwo!2839 (regTwo!2839 r!20230)))) b!479159))

(assert (= (and b!478982 ((_ is Star!1163) (regTwo!2839 (regTwo!2839 r!20230)))) b!479160))

(assert (= (and b!478982 ((_ is Union!1163) (regTwo!2839 (regTwo!2839 r!20230)))) b!479161))

(declare-fun b!479162 () Bool)

(declare-fun e!292155 () Bool)

(assert (=> b!479162 (= e!292155 tp_is_empty!2323)))

(declare-fun b!479164 () Bool)

(declare-fun tp!134313 () Bool)

(assert (=> b!479164 (= e!292155 tp!134313)))

(assert (=> b!478973 (= tp!134168 e!292155)))

(declare-fun b!479165 () Bool)

(declare-fun tp!134312 () Bool)

(declare-fun tp!134315 () Bool)

(assert (=> b!479165 (= e!292155 (and tp!134312 tp!134315))))

(declare-fun b!479163 () Bool)

(declare-fun tp!134314 () Bool)

(declare-fun tp!134316 () Bool)

(assert (=> b!479163 (= e!292155 (and tp!134314 tp!134316))))

(assert (= (and b!478973 ((_ is ElementMatch!1163) (reg!1492 (regOne!2839 r!20230)))) b!479162))

(assert (= (and b!478973 ((_ is Concat!2063) (reg!1492 (regOne!2839 r!20230)))) b!479163))

(assert (= (and b!478973 ((_ is Star!1163) (reg!1492 (regOne!2839 r!20230)))) b!479164))

(assert (= (and b!478973 ((_ is Union!1163) (reg!1492 (regOne!2839 r!20230)))) b!479165))

(check-sat (not b!479080) (not b!479089) (not b!479144) (not b!479152) (not b!479121) (not b!479139) (not b!479081) (not b!479143) (not b!479087) (not b!479101) (not b!479124) (not b!479135) (not bm!33832) (not b!479075) (not b!479105) (not b!479060) (not bm!33839) (not b!479147) tp_is_empty!2323 (not b!479095) (not b!479083) (not bm!33835) (not b!479071) (not bm!33831) (not d!180336) (not bm!33823) (not b!479149) (not b!479050) (not b!479148) (not b!479117) (not b!479127) (not b!479076) (not b!479164) (not b!479068) (not b!479151) (not b!479091) (not b!479155) (not b!479123) (not b!479132) (not b!479141) (not b!479136) (not b!479108) (not b!479153) (not bm!33836) (not bm!33825) (not b!479159) (not b!479104) (not d!180324) (not b!479165) (not b!479113) (not b!479072) (not b!479038) (not d!180334) (not d!180330) (not b!479133) (not b!479111) (not b!479145) (not d!180322) (not b!479137) (not b!479067) (not b!479109) (not bm!33824) (not b!479120) (not bm!33830) (not bm!33843) (not b!479129) (not b!479131) (not bm!33833) (not b!479013) (not b!479079) (not b!479097) (not b!479022) (not b!479096) (not b!479116) (not b!479088) (not b!479073) (not bm!33828) (not b!479157) (not bm!33840) (not b!479069) (not b!479099) (not bm!33827) (not b!479119) (not b!479112) (not b!479092) (not b!479085) (not b!479084) (not b!479107) (not b!479161) (not b!479128) (not b!479077) (not b!479160) (not b!479100) (not b!479163) (not b!479103) (not b!479093) (not d!180338) (not b!479140) (not b!479115) (not b!479125) (not b!479156))
(check-sat)
