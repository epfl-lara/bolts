; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288100 () Bool)

(assert start!288100)

(declare-fun b!2980923 () Bool)

(assert (=> b!2980923 true))

(assert (=> b!2980923 true))

(assert (=> b!2980923 true))

(declare-fun lambda!111168 () Int)

(declare-fun lambda!111167 () Int)

(assert (=> b!2980923 (not (= lambda!111168 lambda!111167))))

(assert (=> b!2980923 true))

(assert (=> b!2980923 true))

(assert (=> b!2980923 true))

(declare-fun b!2980919 () Bool)

(declare-fun e!1874779 () Bool)

(declare-fun e!1874782 () Bool)

(assert (=> b!2980919 (= e!1874779 e!1874782)))

(declare-fun res!1229260 () Bool)

(assert (=> b!2980919 (=> res!1229260 e!1874782)))

(declare-fun lt!1038061 () Int)

(declare-fun lt!1038071 () Int)

(declare-fun lt!1038065 () Int)

(assert (=> b!2980919 (= res!1229260 (or (not (= (+ lt!1038061 lt!1038071) lt!1038065)) (not (= lt!1038061 0))))))

(declare-datatypes ((C!18792 0))(
  ( (C!18793 (val!11432 Int)) )
))
(declare-datatypes ((List!35168 0))(
  ( (Nil!35044) (Cons!35044 (h!40464 C!18792) (t!234233 List!35168)) )
))
(declare-datatypes ((tuple2!33944 0))(
  ( (tuple2!33945 (_1!20104 List!35168) (_2!20104 List!35168)) )
))
(declare-fun lt!1038068 () tuple2!33944)

(declare-fun size!26475 (List!35168) Int)

(assert (=> b!2980919 (= lt!1038061 (size!26475 (_1!20104 lt!1038068)))))

(declare-fun res!1229270 () Bool)

(declare-fun e!1874789 () Bool)

(assert (=> start!288100 (=> (not res!1229270) (not e!1874789))))

(declare-datatypes ((Regex!9303 0))(
  ( (ElementMatch!9303 (c!489599 C!18792)) (Concat!14624 (regOne!19118 Regex!9303) (regTwo!19118 Regex!9303)) (EmptyExpr!9303) (Star!9303 (reg!9632 Regex!9303)) (EmptyLang!9303) (Union!9303 (regOne!19119 Regex!9303) (regTwo!19119 Regex!9303)) )
))
(declare-fun r!17423 () Regex!9303)

(declare-fun validRegex!4036 (Regex!9303) Bool)

(assert (=> start!288100 (= res!1229270 (validRegex!4036 r!17423))))

(assert (=> start!288100 e!1874789))

(declare-fun e!1874785 () Bool)

(assert (=> start!288100 e!1874785))

(declare-fun e!1874780 () Bool)

(assert (=> start!288100 e!1874780))

(declare-fun b!2980920 () Bool)

(declare-fun res!1229269 () Bool)

(assert (=> b!2980920 (=> res!1229269 e!1874782)))

(declare-fun isEmpty!19301 (List!35168) Bool)

(assert (=> b!2980920 (= res!1229269 (not (isEmpty!19301 (_1!20104 lt!1038068))))))

(declare-fun b!2980921 () Bool)

(declare-fun tp_is_empty!16169 () Bool)

(declare-fun tp!949085 () Bool)

(assert (=> b!2980921 (= e!1874780 (and tp_is_empty!16169 tp!949085))))

(declare-fun b!2980922 () Bool)

(declare-fun e!1874787 () Bool)

(assert (=> b!2980922 (= e!1874787 e!1874779)))

(declare-fun res!1229262 () Bool)

(assert (=> b!2980922 (=> res!1229262 e!1874779)))

(assert (=> b!2980922 (= res!1229262 (not (= lt!1038071 lt!1038065)))))

(declare-fun s!11993 () List!35168)

(assert (=> b!2980922 (= lt!1038065 (size!26475 s!11993))))

(assert (=> b!2980922 (= lt!1038071 (size!26475 (_2!20104 lt!1038068)))))

(declare-fun matchR!4185 (Regex!9303 List!35168) Bool)

(assert (=> b!2980922 (matchR!4185 (reg!9632 r!17423) (_1!20104 lt!1038068))))

(declare-datatypes ((Unit!48985 0))(
  ( (Unit!48986) )
))
(declare-fun lt!1038064 () Unit!48985)

(declare-fun lemmaSimplifySound!168 (Regex!9303 List!35168) Unit!48985)

(assert (=> b!2980922 (= lt!1038064 (lemmaSimplifySound!168 (reg!9632 r!17423) (_1!20104 lt!1038068)))))

(declare-fun e!1874781 () Bool)

(declare-fun e!1874788 () Bool)

(assert (=> b!2980923 (= e!1874781 e!1874788)))

(declare-fun res!1229266 () Bool)

(assert (=> b!2980923 (=> res!1229266 e!1874788)))

(declare-fun lt!1038072 () Bool)

(assert (=> b!2980923 (= res!1229266 (not lt!1038072))))

(declare-fun Exists!1583 (Int) Bool)

(assert (=> b!2980923 (= (Exists!1583 lambda!111167) (Exists!1583 lambda!111168))))

(declare-fun lt!1038074 () Unit!48985)

(declare-fun lt!1038067 () Regex!9303)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!268 (Regex!9303 List!35168) Unit!48985)

(assert (=> b!2980923 (= lt!1038074 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!268 lt!1038067 s!11993))))

(assert (=> b!2980923 (= lt!1038072 (Exists!1583 lambda!111167))))

(declare-datatypes ((Option!6704 0))(
  ( (None!6703) (Some!6703 (v!34837 tuple2!33944)) )
))
(declare-fun lt!1038069 () Option!6704)

(declare-fun isDefined!5255 (Option!6704) Bool)

(assert (=> b!2980923 (= lt!1038072 (isDefined!5255 lt!1038069))))

(declare-fun lt!1038066 () Regex!9303)

(declare-fun findConcatSeparation!1098 (Regex!9303 Regex!9303 List!35168 List!35168 List!35168) Option!6704)

(assert (=> b!2980923 (= lt!1038069 (findConcatSeparation!1098 lt!1038067 lt!1038066 Nil!35044 s!11993 s!11993))))

(declare-fun lt!1038073 () Unit!48985)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!876 (Regex!9303 Regex!9303 List!35168) Unit!48985)

(assert (=> b!2980923 (= lt!1038073 (lemmaFindConcatSeparationEquivalentToExists!876 lt!1038067 lt!1038066 s!11993))))

(declare-fun b!2980924 () Bool)

(declare-fun tp!949084 () Bool)

(declare-fun tp!949080 () Bool)

(assert (=> b!2980924 (= e!1874785 (and tp!949084 tp!949080))))

(declare-fun b!2980925 () Bool)

(declare-fun res!1229267 () Bool)

(assert (=> b!2980925 (=> res!1229267 e!1874779)))

(declare-fun ++!8367 (List!35168 List!35168) List!35168)

(assert (=> b!2980925 (= res!1229267 (not (= (++!8367 (_1!20104 lt!1038068) (_2!20104 lt!1038068)) s!11993)))))

(declare-fun b!2980926 () Bool)

(declare-fun tp!949083 () Bool)

(declare-fun tp!949082 () Bool)

(assert (=> b!2980926 (= e!1874785 (and tp!949083 tp!949082))))

(declare-fun b!2980927 () Bool)

(declare-fun res!1229261 () Bool)

(assert (=> b!2980927 (=> res!1229261 e!1874787)))

(assert (=> b!2980927 (= res!1229261 (not (matchR!4185 lt!1038066 (_2!20104 lt!1038068))))))

(declare-fun b!2980928 () Bool)

(assert (=> b!2980928 (= e!1874785 tp_is_empty!16169)))

(declare-fun b!2980929 () Bool)

(declare-fun e!1874786 () Bool)

(declare-fun e!1874783 () Bool)

(assert (=> b!2980929 (= e!1874786 e!1874783)))

(declare-fun res!1229263 () Bool)

(assert (=> b!2980929 (=> res!1229263 e!1874783)))

(assert (=> b!2980929 (= res!1229263 (not (matchR!4185 lt!1038066 s!11993)))))

(assert (=> b!2980929 (= lt!1038066 (Star!9303 lt!1038067))))

(declare-fun b!2980930 () Bool)

(assert (=> b!2980930 (= e!1874782 (validRegex!4036 (reg!9632 r!17423)))))

(declare-fun b!2980931 () Bool)

(declare-fun e!1874784 () Bool)

(assert (=> b!2980931 (= e!1874784 e!1874786)))

(declare-fun res!1229265 () Bool)

(assert (=> b!2980931 (=> res!1229265 e!1874786)))

(declare-fun isEmptyLang!417 (Regex!9303) Bool)

(assert (=> b!2980931 (= res!1229265 (isEmptyLang!417 lt!1038067))))

(declare-fun simplify!304 (Regex!9303) Regex!9303)

(assert (=> b!2980931 (= lt!1038067 (simplify!304 (reg!9632 r!17423)))))

(declare-fun b!2980932 () Bool)

(declare-fun tp!949081 () Bool)

(assert (=> b!2980932 (= e!1874785 tp!949081)))

(declare-fun b!2980933 () Bool)

(assert (=> b!2980933 (= e!1874788 e!1874787)))

(declare-fun res!1229268 () Bool)

(assert (=> b!2980933 (=> res!1229268 e!1874787)))

(assert (=> b!2980933 (= res!1229268 (not (matchR!4185 lt!1038067 (_1!20104 lt!1038068))))))

(declare-fun get!10823 (Option!6704) tuple2!33944)

(assert (=> b!2980933 (= lt!1038068 (get!10823 lt!1038069))))

(declare-fun b!2980934 () Bool)

(assert (=> b!2980934 (= e!1874783 e!1874781)))

(declare-fun res!1229259 () Bool)

(assert (=> b!2980934 (=> res!1229259 e!1874781)))

(assert (=> b!2980934 (= res!1229259 (isEmpty!19301 s!11993))))

(declare-fun matchRSpec!1440 (Regex!9303 List!35168) Bool)

(assert (=> b!2980934 (matchRSpec!1440 lt!1038066 s!11993)))

(declare-fun lt!1038070 () Unit!48985)

(declare-fun mainMatchTheorem!1440 (Regex!9303 List!35168) Unit!48985)

(assert (=> b!2980934 (= lt!1038070 (mainMatchTheorem!1440 lt!1038066 s!11993))))

(declare-fun b!2980935 () Bool)

(assert (=> b!2980935 (= e!1874789 (not e!1874784))))

(declare-fun res!1229264 () Bool)

(assert (=> b!2980935 (=> res!1229264 e!1874784)))

(declare-fun lt!1038062 () Bool)

(get-info :version)

(assert (=> b!2980935 (= res!1229264 (or lt!1038062 ((_ is Concat!14624) r!17423) ((_ is Union!9303) r!17423) (not ((_ is Star!9303) r!17423))))))

(assert (=> b!2980935 (= lt!1038062 (matchRSpec!1440 r!17423 s!11993))))

(assert (=> b!2980935 (= lt!1038062 (matchR!4185 r!17423 s!11993))))

(declare-fun lt!1038063 () Unit!48985)

(assert (=> b!2980935 (= lt!1038063 (mainMatchTheorem!1440 r!17423 s!11993))))

(assert (= (and start!288100 res!1229270) b!2980935))

(assert (= (and b!2980935 (not res!1229264)) b!2980931))

(assert (= (and b!2980931 (not res!1229265)) b!2980929))

(assert (= (and b!2980929 (not res!1229263)) b!2980934))

(assert (= (and b!2980934 (not res!1229259)) b!2980923))

(assert (= (and b!2980923 (not res!1229266)) b!2980933))

(assert (= (and b!2980933 (not res!1229268)) b!2980927))

(assert (= (and b!2980927 (not res!1229261)) b!2980922))

(assert (= (and b!2980922 (not res!1229262)) b!2980925))

(assert (= (and b!2980925 (not res!1229267)) b!2980919))

(assert (= (and b!2980919 (not res!1229260)) b!2980920))

(assert (= (and b!2980920 (not res!1229269)) b!2980930))

(assert (= (and start!288100 ((_ is ElementMatch!9303) r!17423)) b!2980928))

(assert (= (and start!288100 ((_ is Concat!14624) r!17423)) b!2980926))

(assert (= (and start!288100 ((_ is Star!9303) r!17423)) b!2980932))

(assert (= (and start!288100 ((_ is Union!9303) r!17423)) b!2980924))

(assert (= (and start!288100 ((_ is Cons!35044) s!11993)) b!2980921))

(declare-fun m!3342163 () Bool)

(assert (=> b!2980925 m!3342163))

(declare-fun m!3342165 () Bool)

(assert (=> b!2980931 m!3342165))

(declare-fun m!3342167 () Bool)

(assert (=> b!2980931 m!3342167))

(declare-fun m!3342169 () Bool)

(assert (=> b!2980934 m!3342169))

(declare-fun m!3342171 () Bool)

(assert (=> b!2980934 m!3342171))

(declare-fun m!3342173 () Bool)

(assert (=> b!2980934 m!3342173))

(declare-fun m!3342175 () Bool)

(assert (=> b!2980930 m!3342175))

(declare-fun m!3342177 () Bool)

(assert (=> b!2980919 m!3342177))

(declare-fun m!3342179 () Bool)

(assert (=> b!2980927 m!3342179))

(declare-fun m!3342181 () Bool)

(assert (=> b!2980929 m!3342181))

(declare-fun m!3342183 () Bool)

(assert (=> b!2980933 m!3342183))

(declare-fun m!3342185 () Bool)

(assert (=> b!2980933 m!3342185))

(declare-fun m!3342187 () Bool)

(assert (=> b!2980920 m!3342187))

(declare-fun m!3342189 () Bool)

(assert (=> b!2980935 m!3342189))

(declare-fun m!3342191 () Bool)

(assert (=> b!2980935 m!3342191))

(declare-fun m!3342193 () Bool)

(assert (=> b!2980935 m!3342193))

(declare-fun m!3342195 () Bool)

(assert (=> b!2980923 m!3342195))

(declare-fun m!3342197 () Bool)

(assert (=> b!2980923 m!3342197))

(declare-fun m!3342199 () Bool)

(assert (=> b!2980923 m!3342199))

(declare-fun m!3342201 () Bool)

(assert (=> b!2980923 m!3342201))

(assert (=> b!2980923 m!3342199))

(declare-fun m!3342203 () Bool)

(assert (=> b!2980923 m!3342203))

(declare-fun m!3342205 () Bool)

(assert (=> b!2980923 m!3342205))

(declare-fun m!3342207 () Bool)

(assert (=> start!288100 m!3342207))

(declare-fun m!3342209 () Bool)

(assert (=> b!2980922 m!3342209))

(declare-fun m!3342211 () Bool)

(assert (=> b!2980922 m!3342211))

(declare-fun m!3342213 () Bool)

(assert (=> b!2980922 m!3342213))

(declare-fun m!3342215 () Bool)

(assert (=> b!2980922 m!3342215))

(check-sat (not b!2980920) (not b!2980929) (not b!2980923) (not b!2980930) (not b!2980933) (not b!2980927) (not b!2980935) (not b!2980926) (not b!2980919) (not start!288100) (not b!2980925) (not b!2980934) (not b!2980924) (not b!2980932) (not b!2980922) (not b!2980931) (not b!2980921) tp_is_empty!16169)
(check-sat)
(get-model)

(declare-fun b!2981013 () Bool)

(declare-fun e!1874842 () Bool)

(declare-fun e!1874841 () Bool)

(assert (=> b!2981013 (= e!1874842 e!1874841)))

(declare-fun c!489616 () Bool)

(assert (=> b!2981013 (= c!489616 ((_ is Union!9303) r!17423))))

(declare-fun b!2981014 () Bool)

(declare-fun e!1874839 () Bool)

(declare-fun e!1874844 () Bool)

(assert (=> b!2981014 (= e!1874839 e!1874844)))

(declare-fun res!1229314 () Bool)

(assert (=> b!2981014 (=> (not res!1229314) (not e!1874844))))

(declare-fun call!199082 () Bool)

(assert (=> b!2981014 (= res!1229314 call!199082)))

(declare-fun b!2981015 () Bool)

(declare-fun call!199080 () Bool)

(assert (=> b!2981015 (= e!1874844 call!199080)))

(declare-fun b!2981016 () Bool)

(declare-fun e!1874843 () Bool)

(assert (=> b!2981016 (= e!1874843 call!199082)))

(declare-fun b!2981017 () Bool)

(declare-fun e!1874840 () Bool)

(assert (=> b!2981017 (= e!1874842 e!1874840)))

(declare-fun res!1229316 () Bool)

(declare-fun nullable!2992 (Regex!9303) Bool)

(assert (=> b!2981017 (= res!1229316 (not (nullable!2992 (reg!9632 r!17423))))))

(assert (=> b!2981017 (=> (not res!1229316) (not e!1874840))))

(declare-fun b!2981018 () Bool)

(declare-fun res!1229315 () Bool)

(assert (=> b!2981018 (=> res!1229315 e!1874839)))

(assert (=> b!2981018 (= res!1229315 (not ((_ is Concat!14624) r!17423)))))

(assert (=> b!2981018 (= e!1874841 e!1874839)))

(declare-fun b!2981019 () Bool)

(declare-fun res!1229312 () Bool)

(assert (=> b!2981019 (=> (not res!1229312) (not e!1874843))))

(assert (=> b!2981019 (= res!1229312 call!199080)))

(assert (=> b!2981019 (= e!1874841 e!1874843)))

(declare-fun b!2981020 () Bool)

(declare-fun e!1874845 () Bool)

(assert (=> b!2981020 (= e!1874845 e!1874842)))

(declare-fun c!489617 () Bool)

(assert (=> b!2981020 (= c!489617 ((_ is Star!9303) r!17423))))

(declare-fun b!2981021 () Bool)

(declare-fun call!199081 () Bool)

(assert (=> b!2981021 (= e!1874840 call!199081)))

(declare-fun bm!199076 () Bool)

(assert (=> bm!199076 (= call!199080 call!199081)))

(declare-fun bm!199077 () Bool)

(assert (=> bm!199077 (= call!199082 (validRegex!4036 (ite c!489616 (regTwo!19119 r!17423) (regOne!19118 r!17423))))))

(declare-fun d!843579 () Bool)

(declare-fun res!1229313 () Bool)

(assert (=> d!843579 (=> res!1229313 e!1874845)))

(assert (=> d!843579 (= res!1229313 ((_ is ElementMatch!9303) r!17423))))

(assert (=> d!843579 (= (validRegex!4036 r!17423) e!1874845)))

(declare-fun bm!199075 () Bool)

(assert (=> bm!199075 (= call!199081 (validRegex!4036 (ite c!489617 (reg!9632 r!17423) (ite c!489616 (regOne!19119 r!17423) (regTwo!19118 r!17423)))))))

(assert (= (and d!843579 (not res!1229313)) b!2981020))

(assert (= (and b!2981020 c!489617) b!2981017))

(assert (= (and b!2981020 (not c!489617)) b!2981013))

(assert (= (and b!2981017 res!1229316) b!2981021))

(assert (= (and b!2981013 c!489616) b!2981019))

(assert (= (and b!2981013 (not c!489616)) b!2981018))

(assert (= (and b!2981019 res!1229312) b!2981016))

(assert (= (and b!2981018 (not res!1229315)) b!2981014))

(assert (= (and b!2981014 res!1229314) b!2981015))

(assert (= (or b!2981019 b!2981015) bm!199076))

(assert (= (or b!2981016 b!2981014) bm!199077))

(assert (= (or b!2981021 bm!199076) bm!199075))

(declare-fun m!3342223 () Bool)

(assert (=> b!2981017 m!3342223))

(declare-fun m!3342225 () Bool)

(assert (=> bm!199077 m!3342225))

(declare-fun m!3342227 () Bool)

(assert (=> bm!199075 m!3342227))

(assert (=> start!288100 d!843579))

(declare-fun bm!199088 () Bool)

(declare-fun call!199093 () Bool)

(assert (=> bm!199088 (= call!199093 (isEmpty!19301 (_2!20104 lt!1038068)))))

(declare-fun b!2981129 () Bool)

(declare-fun e!1874905 () Bool)

(assert (=> b!2981129 (= e!1874905 (nullable!2992 lt!1038066))))

(declare-fun d!843585 () Bool)

(declare-fun e!1874904 () Bool)

(assert (=> d!843585 e!1874904))

(declare-fun c!489648 () Bool)

(assert (=> d!843585 (= c!489648 ((_ is EmptyExpr!9303) lt!1038066))))

(declare-fun lt!1038088 () Bool)

(assert (=> d!843585 (= lt!1038088 e!1874905)))

(declare-fun c!489646 () Bool)

(assert (=> d!843585 (= c!489646 (isEmpty!19301 (_2!20104 lt!1038068)))))

(assert (=> d!843585 (validRegex!4036 lt!1038066)))

(assert (=> d!843585 (= (matchR!4185 lt!1038066 (_2!20104 lt!1038068)) lt!1038088)))

(declare-fun b!2981130 () Bool)

(declare-fun e!1874906 () Bool)

(declare-fun e!1874907 () Bool)

(assert (=> b!2981130 (= e!1874906 e!1874907)))

(declare-fun res!1229372 () Bool)

(assert (=> b!2981130 (=> res!1229372 e!1874907)))

(assert (=> b!2981130 (= res!1229372 call!199093)))

(declare-fun b!2981131 () Bool)

(declare-fun e!1874908 () Bool)

(declare-fun head!6651 (List!35168) C!18792)

(assert (=> b!2981131 (= e!1874908 (= (head!6651 (_2!20104 lt!1038068)) (c!489599 lt!1038066)))))

(declare-fun b!2981132 () Bool)

(declare-fun res!1229368 () Bool)

(assert (=> b!2981132 (=> (not res!1229368) (not e!1874908))))

(assert (=> b!2981132 (= res!1229368 (not call!199093))))

(declare-fun b!2981133 () Bool)

(assert (=> b!2981133 (= e!1874904 (= lt!1038088 call!199093))))

(declare-fun b!2981134 () Bool)

(declare-fun res!1229369 () Bool)

(declare-fun e!1874909 () Bool)

(assert (=> b!2981134 (=> res!1229369 e!1874909)))

(assert (=> b!2981134 (= res!1229369 (not ((_ is ElementMatch!9303) lt!1038066)))))

(declare-fun e!1874903 () Bool)

(assert (=> b!2981134 (= e!1874903 e!1874909)))

(declare-fun b!2981135 () Bool)

(assert (=> b!2981135 (= e!1874903 (not lt!1038088))))

(declare-fun b!2981136 () Bool)

(declare-fun res!1229370 () Bool)

(assert (=> b!2981136 (=> (not res!1229370) (not e!1874908))))

(declare-fun tail!4877 (List!35168) List!35168)

(assert (=> b!2981136 (= res!1229370 (isEmpty!19301 (tail!4877 (_2!20104 lt!1038068))))))

(declare-fun b!2981137 () Bool)

(assert (=> b!2981137 (= e!1874909 e!1874906)))

(declare-fun res!1229371 () Bool)

(assert (=> b!2981137 (=> (not res!1229371) (not e!1874906))))

(assert (=> b!2981137 (= res!1229371 (not lt!1038088))))

(declare-fun b!2981138 () Bool)

(declare-fun derivativeStep!2592 (Regex!9303 C!18792) Regex!9303)

(assert (=> b!2981138 (= e!1874905 (matchR!4185 (derivativeStep!2592 lt!1038066 (head!6651 (_2!20104 lt!1038068))) (tail!4877 (_2!20104 lt!1038068))))))

(declare-fun b!2981139 () Bool)

(declare-fun res!1229374 () Bool)

(assert (=> b!2981139 (=> res!1229374 e!1874909)))

(assert (=> b!2981139 (= res!1229374 e!1874908)))

(declare-fun res!1229375 () Bool)

(assert (=> b!2981139 (=> (not res!1229375) (not e!1874908))))

(assert (=> b!2981139 (= res!1229375 lt!1038088)))

(declare-fun b!2981140 () Bool)

(assert (=> b!2981140 (= e!1874907 (not (= (head!6651 (_2!20104 lt!1038068)) (c!489599 lt!1038066))))))

(declare-fun b!2981141 () Bool)

(declare-fun res!1229373 () Bool)

(assert (=> b!2981141 (=> res!1229373 e!1874907)))

(assert (=> b!2981141 (= res!1229373 (not (isEmpty!19301 (tail!4877 (_2!20104 lt!1038068)))))))

(declare-fun b!2981142 () Bool)

(assert (=> b!2981142 (= e!1874904 e!1874903)))

(declare-fun c!489647 () Bool)

(assert (=> b!2981142 (= c!489647 ((_ is EmptyLang!9303) lt!1038066))))

(assert (= (and d!843585 c!489646) b!2981129))

(assert (= (and d!843585 (not c!489646)) b!2981138))

(assert (= (and d!843585 c!489648) b!2981133))

(assert (= (and d!843585 (not c!489648)) b!2981142))

(assert (= (and b!2981142 c!489647) b!2981135))

(assert (= (and b!2981142 (not c!489647)) b!2981134))

(assert (= (and b!2981134 (not res!1229369)) b!2981139))

(assert (= (and b!2981139 res!1229375) b!2981132))

(assert (= (and b!2981132 res!1229368) b!2981136))

(assert (= (and b!2981136 res!1229370) b!2981131))

(assert (= (and b!2981139 (not res!1229374)) b!2981137))

(assert (= (and b!2981137 res!1229371) b!2981130))

(assert (= (and b!2981130 (not res!1229372)) b!2981141))

(assert (= (and b!2981141 (not res!1229373)) b!2981140))

(assert (= (or b!2981133 b!2981130 b!2981132) bm!199088))

(declare-fun m!3342271 () Bool)

(assert (=> d!843585 m!3342271))

(declare-fun m!3342275 () Bool)

(assert (=> d!843585 m!3342275))

(declare-fun m!3342279 () Bool)

(assert (=> b!2981138 m!3342279))

(assert (=> b!2981138 m!3342279))

(declare-fun m!3342283 () Bool)

(assert (=> b!2981138 m!3342283))

(declare-fun m!3342285 () Bool)

(assert (=> b!2981138 m!3342285))

(assert (=> b!2981138 m!3342283))

(assert (=> b!2981138 m!3342285))

(declare-fun m!3342287 () Bool)

(assert (=> b!2981138 m!3342287))

(assert (=> b!2981141 m!3342285))

(assert (=> b!2981141 m!3342285))

(declare-fun m!3342289 () Bool)

(assert (=> b!2981141 m!3342289))

(assert (=> bm!199088 m!3342271))

(declare-fun m!3342291 () Bool)

(assert (=> b!2981129 m!3342291))

(assert (=> b!2981140 m!3342279))

(assert (=> b!2981136 m!3342285))

(assert (=> b!2981136 m!3342285))

(assert (=> b!2981136 m!3342289))

(assert (=> b!2981131 m!3342279))

(assert (=> b!2980927 d!843585))

(declare-fun bm!199091 () Bool)

(declare-fun call!199096 () Bool)

(assert (=> bm!199091 (= call!199096 (isEmpty!19301 s!11993))))

(declare-fun b!2981171 () Bool)

(declare-fun e!1874926 () Bool)

(assert (=> b!2981171 (= e!1874926 (nullable!2992 lt!1038066))))

(declare-fun d!843607 () Bool)

(declare-fun e!1874925 () Bool)

(assert (=> d!843607 e!1874925))

(declare-fun c!489657 () Bool)

(assert (=> d!843607 (= c!489657 ((_ is EmptyExpr!9303) lt!1038066))))

(declare-fun lt!1038094 () Bool)

(assert (=> d!843607 (= lt!1038094 e!1874926)))

(declare-fun c!489655 () Bool)

(assert (=> d!843607 (= c!489655 (isEmpty!19301 s!11993))))

(assert (=> d!843607 (validRegex!4036 lt!1038066)))

(assert (=> d!843607 (= (matchR!4185 lt!1038066 s!11993) lt!1038094)))

(declare-fun b!2981172 () Bool)

(declare-fun e!1874927 () Bool)

(declare-fun e!1874928 () Bool)

(assert (=> b!2981172 (= e!1874927 e!1874928)))

(declare-fun res!1229396 () Bool)

(assert (=> b!2981172 (=> res!1229396 e!1874928)))

(assert (=> b!2981172 (= res!1229396 call!199096)))

(declare-fun b!2981173 () Bool)

(declare-fun e!1874929 () Bool)

(assert (=> b!2981173 (= e!1874929 (= (head!6651 s!11993) (c!489599 lt!1038066)))))

(declare-fun b!2981174 () Bool)

(declare-fun res!1229392 () Bool)

(assert (=> b!2981174 (=> (not res!1229392) (not e!1874929))))

(assert (=> b!2981174 (= res!1229392 (not call!199096))))

(declare-fun b!2981175 () Bool)

(assert (=> b!2981175 (= e!1874925 (= lt!1038094 call!199096))))

(declare-fun b!2981176 () Bool)

(declare-fun res!1229393 () Bool)

(declare-fun e!1874930 () Bool)

(assert (=> b!2981176 (=> res!1229393 e!1874930)))

(assert (=> b!2981176 (= res!1229393 (not ((_ is ElementMatch!9303) lt!1038066)))))

(declare-fun e!1874924 () Bool)

(assert (=> b!2981176 (= e!1874924 e!1874930)))

(declare-fun b!2981177 () Bool)

(assert (=> b!2981177 (= e!1874924 (not lt!1038094))))

(declare-fun b!2981178 () Bool)

(declare-fun res!1229394 () Bool)

(assert (=> b!2981178 (=> (not res!1229394) (not e!1874929))))

(assert (=> b!2981178 (= res!1229394 (isEmpty!19301 (tail!4877 s!11993)))))

(declare-fun b!2981179 () Bool)

(assert (=> b!2981179 (= e!1874930 e!1874927)))

(declare-fun res!1229395 () Bool)

(assert (=> b!2981179 (=> (not res!1229395) (not e!1874927))))

(assert (=> b!2981179 (= res!1229395 (not lt!1038094))))

(declare-fun b!2981180 () Bool)

(assert (=> b!2981180 (= e!1874926 (matchR!4185 (derivativeStep!2592 lt!1038066 (head!6651 s!11993)) (tail!4877 s!11993)))))

(declare-fun b!2981181 () Bool)

(declare-fun res!1229398 () Bool)

(assert (=> b!2981181 (=> res!1229398 e!1874930)))

(assert (=> b!2981181 (= res!1229398 e!1874929)))

(declare-fun res!1229399 () Bool)

(assert (=> b!2981181 (=> (not res!1229399) (not e!1874929))))

(assert (=> b!2981181 (= res!1229399 lt!1038094)))

(declare-fun b!2981182 () Bool)

(assert (=> b!2981182 (= e!1874928 (not (= (head!6651 s!11993) (c!489599 lt!1038066))))))

(declare-fun b!2981183 () Bool)

(declare-fun res!1229397 () Bool)

(assert (=> b!2981183 (=> res!1229397 e!1874928)))

(assert (=> b!2981183 (= res!1229397 (not (isEmpty!19301 (tail!4877 s!11993))))))

(declare-fun b!2981184 () Bool)

(assert (=> b!2981184 (= e!1874925 e!1874924)))

(declare-fun c!489656 () Bool)

(assert (=> b!2981184 (= c!489656 ((_ is EmptyLang!9303) lt!1038066))))

(assert (= (and d!843607 c!489655) b!2981171))

(assert (= (and d!843607 (not c!489655)) b!2981180))

(assert (= (and d!843607 c!489657) b!2981175))

(assert (= (and d!843607 (not c!489657)) b!2981184))

(assert (= (and b!2981184 c!489656) b!2981177))

(assert (= (and b!2981184 (not c!489656)) b!2981176))

(assert (= (and b!2981176 (not res!1229393)) b!2981181))

(assert (= (and b!2981181 res!1229399) b!2981174))

(assert (= (and b!2981174 res!1229392) b!2981178))

(assert (= (and b!2981178 res!1229394) b!2981173))

(assert (= (and b!2981181 (not res!1229398)) b!2981179))

(assert (= (and b!2981179 res!1229395) b!2981172))

(assert (= (and b!2981172 (not res!1229396)) b!2981183))

(assert (= (and b!2981183 (not res!1229397)) b!2981182))

(assert (= (or b!2981175 b!2981172 b!2981174) bm!199091))

(assert (=> d!843607 m!3342169))

(assert (=> d!843607 m!3342275))

(declare-fun m!3342309 () Bool)

(assert (=> b!2981180 m!3342309))

(assert (=> b!2981180 m!3342309))

(declare-fun m!3342311 () Bool)

(assert (=> b!2981180 m!3342311))

(declare-fun m!3342313 () Bool)

(assert (=> b!2981180 m!3342313))

(assert (=> b!2981180 m!3342311))

(assert (=> b!2981180 m!3342313))

(declare-fun m!3342315 () Bool)

(assert (=> b!2981180 m!3342315))

(assert (=> b!2981183 m!3342313))

(assert (=> b!2981183 m!3342313))

(declare-fun m!3342317 () Bool)

(assert (=> b!2981183 m!3342317))

(assert (=> bm!199091 m!3342169))

(assert (=> b!2981171 m!3342291))

(assert (=> b!2981182 m!3342309))

(assert (=> b!2981178 m!3342313))

(assert (=> b!2981178 m!3342313))

(assert (=> b!2981178 m!3342317))

(assert (=> b!2981173 m!3342309))

(assert (=> b!2980929 d!843607))

(declare-fun d!843615 () Bool)

(assert (=> d!843615 (= (isEmpty!19301 (_1!20104 lt!1038068)) ((_ is Nil!35044) (_1!20104 lt!1038068)))))

(assert (=> b!2980920 d!843615))

(declare-fun b!2981185 () Bool)

(declare-fun e!1874934 () Bool)

(declare-fun e!1874933 () Bool)

(assert (=> b!2981185 (= e!1874934 e!1874933)))

(declare-fun c!489658 () Bool)

(assert (=> b!2981185 (= c!489658 ((_ is Union!9303) (reg!9632 r!17423)))))

(declare-fun b!2981186 () Bool)

(declare-fun e!1874931 () Bool)

(declare-fun e!1874936 () Bool)

(assert (=> b!2981186 (= e!1874931 e!1874936)))

(declare-fun res!1229402 () Bool)

(assert (=> b!2981186 (=> (not res!1229402) (not e!1874936))))

(declare-fun call!199099 () Bool)

(assert (=> b!2981186 (= res!1229402 call!199099)))

(declare-fun b!2981187 () Bool)

(declare-fun call!199097 () Bool)

(assert (=> b!2981187 (= e!1874936 call!199097)))

(declare-fun b!2981188 () Bool)

(declare-fun e!1874935 () Bool)

(assert (=> b!2981188 (= e!1874935 call!199099)))

(declare-fun b!2981189 () Bool)

(declare-fun e!1874932 () Bool)

(assert (=> b!2981189 (= e!1874934 e!1874932)))

(declare-fun res!1229404 () Bool)

(assert (=> b!2981189 (= res!1229404 (not (nullable!2992 (reg!9632 (reg!9632 r!17423)))))))

(assert (=> b!2981189 (=> (not res!1229404) (not e!1874932))))

(declare-fun b!2981190 () Bool)

(declare-fun res!1229403 () Bool)

(assert (=> b!2981190 (=> res!1229403 e!1874931)))

(assert (=> b!2981190 (= res!1229403 (not ((_ is Concat!14624) (reg!9632 r!17423))))))

(assert (=> b!2981190 (= e!1874933 e!1874931)))

(declare-fun b!2981191 () Bool)

(declare-fun res!1229400 () Bool)

(assert (=> b!2981191 (=> (not res!1229400) (not e!1874935))))

(assert (=> b!2981191 (= res!1229400 call!199097)))

(assert (=> b!2981191 (= e!1874933 e!1874935)))

(declare-fun b!2981192 () Bool)

(declare-fun e!1874937 () Bool)

(assert (=> b!2981192 (= e!1874937 e!1874934)))

(declare-fun c!489659 () Bool)

(assert (=> b!2981192 (= c!489659 ((_ is Star!9303) (reg!9632 r!17423)))))

(declare-fun b!2981193 () Bool)

(declare-fun call!199098 () Bool)

(assert (=> b!2981193 (= e!1874932 call!199098)))

(declare-fun bm!199093 () Bool)

(assert (=> bm!199093 (= call!199097 call!199098)))

(declare-fun bm!199094 () Bool)

(assert (=> bm!199094 (= call!199099 (validRegex!4036 (ite c!489658 (regTwo!19119 (reg!9632 r!17423)) (regOne!19118 (reg!9632 r!17423)))))))

(declare-fun d!843617 () Bool)

(declare-fun res!1229401 () Bool)

(assert (=> d!843617 (=> res!1229401 e!1874937)))

(assert (=> d!843617 (= res!1229401 ((_ is ElementMatch!9303) (reg!9632 r!17423)))))

(assert (=> d!843617 (= (validRegex!4036 (reg!9632 r!17423)) e!1874937)))

(declare-fun bm!199092 () Bool)

(assert (=> bm!199092 (= call!199098 (validRegex!4036 (ite c!489659 (reg!9632 (reg!9632 r!17423)) (ite c!489658 (regOne!19119 (reg!9632 r!17423)) (regTwo!19118 (reg!9632 r!17423))))))))

(assert (= (and d!843617 (not res!1229401)) b!2981192))

(assert (= (and b!2981192 c!489659) b!2981189))

(assert (= (and b!2981192 (not c!489659)) b!2981185))

(assert (= (and b!2981189 res!1229404) b!2981193))

(assert (= (and b!2981185 c!489658) b!2981191))

(assert (= (and b!2981185 (not c!489658)) b!2981190))

(assert (= (and b!2981191 res!1229400) b!2981188))

(assert (= (and b!2981190 (not res!1229403)) b!2981186))

(assert (= (and b!2981186 res!1229402) b!2981187))

(assert (= (or b!2981191 b!2981187) bm!199093))

(assert (= (or b!2981188 b!2981186) bm!199094))

(assert (= (or b!2981193 bm!199093) bm!199092))

(declare-fun m!3342319 () Bool)

(assert (=> b!2981189 m!3342319))

(declare-fun m!3342321 () Bool)

(assert (=> bm!199094 m!3342321))

(declare-fun m!3342323 () Bool)

(assert (=> bm!199092 m!3342323))

(assert (=> b!2980930 d!843617))

(declare-fun d!843619 () Bool)

(declare-fun lt!1038099 () Int)

(assert (=> d!843619 (>= lt!1038099 0)))

(declare-fun e!1874944 () Int)

(assert (=> d!843619 (= lt!1038099 e!1874944)))

(declare-fun c!489662 () Bool)

(assert (=> d!843619 (= c!489662 ((_ is Nil!35044) (_1!20104 lt!1038068)))))

(assert (=> d!843619 (= (size!26475 (_1!20104 lt!1038068)) lt!1038099)))

(declare-fun b!2981204 () Bool)

(assert (=> b!2981204 (= e!1874944 0)))

(declare-fun b!2981205 () Bool)

(assert (=> b!2981205 (= e!1874944 (+ 1 (size!26475 (t!234233 (_1!20104 lt!1038068)))))))

(assert (= (and d!843619 c!489662) b!2981204))

(assert (= (and d!843619 (not c!489662)) b!2981205))

(declare-fun m!3342325 () Bool)

(assert (=> b!2981205 m!3342325))

(assert (=> b!2980919 d!843619))

(declare-fun d!843621 () Bool)

(assert (=> d!843621 (= (isEmptyLang!417 lt!1038067) ((_ is EmptyLang!9303) lt!1038067))))

(assert (=> b!2980931 d!843621))

(declare-fun b!2981449 () Bool)

(declare-fun c!489739 () Bool)

(declare-fun call!199144 () Bool)

(assert (=> b!2981449 (= c!489739 call!199144)))

(declare-fun e!1875071 () Regex!9303)

(declare-fun e!1875076 () Regex!9303)

(assert (=> b!2981449 (= e!1875071 e!1875076)))

(declare-fun b!2981450 () Bool)

(declare-fun c!489746 () Bool)

(declare-fun call!199145 () Bool)

(assert (=> b!2981450 (= c!489746 call!199145)))

(declare-fun e!1875077 () Regex!9303)

(declare-fun e!1875074 () Regex!9303)

(assert (=> b!2981450 (= e!1875077 e!1875074)))

(declare-fun bm!199136 () Bool)

(declare-fun call!199146 () Regex!9303)

(declare-fun c!489738 () Bool)

(assert (=> bm!199136 (= call!199146 (simplify!304 (ite c!489738 (regTwo!19119 (reg!9632 r!17423)) (regOne!19118 (reg!9632 r!17423)))))))

(declare-fun bm!199137 () Bool)

(declare-fun call!199147 () Bool)

(assert (=> bm!199137 (= call!199144 call!199147)))

(declare-fun b!2981451 () Bool)

(declare-fun e!1875083 () Regex!9303)

(declare-fun e!1875075 () Regex!9303)

(assert (=> b!2981451 (= e!1875083 e!1875075)))

(declare-fun c!489744 () Bool)

(assert (=> b!2981451 (= c!489744 ((_ is ElementMatch!9303) (reg!9632 r!17423)))))

(declare-fun b!2981452 () Bool)

(declare-fun e!1875080 () Regex!9303)

(declare-fun lt!1038154 () Regex!9303)

(declare-fun lt!1038151 () Regex!9303)

(assert (=> b!2981452 (= e!1875080 (Concat!14624 lt!1038154 lt!1038151))))

(declare-fun bm!199138 () Bool)

(declare-fun c!489742 () Bool)

(declare-fun lt!1038152 () Regex!9303)

(declare-fun lt!1038153 () Regex!9303)

(assert (=> bm!199138 (= call!199147 (isEmptyLang!417 (ite c!489742 lt!1038153 (ite c!489738 lt!1038152 lt!1038154))))))

(declare-fun b!2981453 () Bool)

(declare-fun lt!1038149 () Regex!9303)

(assert (=> b!2981453 (= e!1875076 (Union!9303 lt!1038149 lt!1038152))))

(declare-fun d!843623 () Bool)

(declare-fun e!1875082 () Bool)

(assert (=> d!843623 e!1875082))

(declare-fun res!1229471 () Bool)

(assert (=> d!843623 (=> (not res!1229471) (not e!1875082))))

(declare-fun lt!1038150 () Regex!9303)

(assert (=> d!843623 (= res!1229471 (validRegex!4036 lt!1038150))))

(assert (=> d!843623 (= lt!1038150 e!1875083)))

(declare-fun c!489745 () Bool)

(assert (=> d!843623 (= c!489745 ((_ is EmptyLang!9303) (reg!9632 r!17423)))))

(assert (=> d!843623 (validRegex!4036 (reg!9632 r!17423))))

(assert (=> d!843623 (= (simplify!304 (reg!9632 r!17423)) lt!1038150)))

(declare-fun b!2981454 () Bool)

(assert (=> b!2981454 (= e!1875082 (= (nullable!2992 lt!1038150) (nullable!2992 (reg!9632 r!17423))))))

(declare-fun b!2981455 () Bool)

(assert (=> b!2981455 (= e!1875074 e!1875080)))

(declare-fun c!489740 () Bool)

(declare-fun isEmptyExpr!446 (Regex!9303) Bool)

(assert (=> b!2981455 (= c!489740 (isEmptyExpr!446 lt!1038151))))

(declare-fun b!2981456 () Bool)

(declare-fun e!1875073 () Bool)

(assert (=> b!2981456 (= e!1875073 call!199145)))

(declare-fun b!2981457 () Bool)

(assert (=> b!2981457 (= e!1875071 lt!1038152)))

(declare-fun bm!199139 () Bool)

(declare-fun call!199143 () Regex!9303)

(declare-fun call!199141 () Regex!9303)

(assert (=> bm!199139 (= call!199143 call!199141)))

(declare-fun b!2981458 () Bool)

(declare-fun e!1875070 () Bool)

(declare-fun call!199142 () Bool)

(assert (=> b!2981458 (= e!1875070 call!199142)))

(declare-fun b!2981459 () Bool)

(assert (=> b!2981459 (= e!1875074 lt!1038151)))

(declare-fun b!2981460 () Bool)

(declare-fun e!1875079 () Regex!9303)

(assert (=> b!2981460 (= e!1875079 EmptyExpr!9303)))

(declare-fun bm!199140 () Bool)

(assert (=> bm!199140 (= call!199141 (simplify!304 (ite c!489742 (reg!9632 (reg!9632 r!17423)) (ite c!489738 (regOne!19119 (reg!9632 r!17423)) (regTwo!19118 (reg!9632 r!17423))))))))

(declare-fun b!2981461 () Bool)

(declare-fun e!1875078 () Regex!9303)

(assert (=> b!2981461 (= e!1875078 e!1875077)))

(assert (=> b!2981461 (= lt!1038154 call!199146)))

(assert (=> b!2981461 (= lt!1038151 call!199143)))

(declare-fun res!1229472 () Bool)

(assert (=> b!2981461 (= res!1229472 call!199144)))

(assert (=> b!2981461 (=> res!1229472 e!1875070)))

(declare-fun c!489743 () Bool)

(assert (=> b!2981461 (= c!489743 e!1875070)))

(declare-fun b!2981462 () Bool)

(declare-fun e!1875072 () Regex!9303)

(assert (=> b!2981462 (= e!1875079 e!1875072)))

(assert (=> b!2981462 (= c!489742 ((_ is Star!9303) (reg!9632 r!17423)))))

(declare-fun b!2981463 () Bool)

(declare-fun e!1875081 () Regex!9303)

(assert (=> b!2981463 (= e!1875081 EmptyExpr!9303)))

(declare-fun b!2981464 () Bool)

(assert (=> b!2981464 (= e!1875081 (Star!9303 lt!1038153))))

(declare-fun b!2981465 () Bool)

(assert (=> b!2981465 (= e!1875077 EmptyLang!9303)))

(declare-fun b!2981466 () Bool)

(declare-fun c!489737 () Bool)

(assert (=> b!2981466 (= c!489737 ((_ is EmptyExpr!9303) (reg!9632 r!17423)))))

(assert (=> b!2981466 (= e!1875075 e!1875079)))

(declare-fun b!2981467 () Bool)

(assert (=> b!2981467 (= e!1875078 e!1875071)))

(assert (=> b!2981467 (= lt!1038149 call!199143)))

(assert (=> b!2981467 (= lt!1038152 call!199146)))

(declare-fun c!489741 () Bool)

(assert (=> b!2981467 (= c!489741 call!199142)))

(declare-fun b!2981468 () Bool)

(declare-fun c!489747 () Bool)

(assert (=> b!2981468 (= c!489747 e!1875073)))

(declare-fun res!1229473 () Bool)

(assert (=> b!2981468 (=> res!1229473 e!1875073)))

(assert (=> b!2981468 (= res!1229473 call!199147)))

(assert (=> b!2981468 (= lt!1038153 call!199141)))

(assert (=> b!2981468 (= e!1875072 e!1875081)))

(declare-fun b!2981469 () Bool)

(assert (=> b!2981469 (= e!1875075 (reg!9632 r!17423))))

(declare-fun b!2981470 () Bool)

(assert (=> b!2981470 (= e!1875083 EmptyLang!9303)))

(declare-fun b!2981471 () Bool)

(assert (=> b!2981471 (= e!1875076 lt!1038149)))

(declare-fun b!2981472 () Bool)

(assert (=> b!2981472 (= c!489738 ((_ is Union!9303) (reg!9632 r!17423)))))

(assert (=> b!2981472 (= e!1875072 e!1875078)))

(declare-fun bm!199141 () Bool)

(assert (=> bm!199141 (= call!199142 (isEmptyLang!417 (ite c!489738 lt!1038149 lt!1038151)))))

(declare-fun bm!199142 () Bool)

(assert (=> bm!199142 (= call!199145 (isEmptyExpr!446 (ite c!489742 lt!1038153 lt!1038154)))))

(declare-fun b!2981473 () Bool)

(assert (=> b!2981473 (= e!1875080 lt!1038154)))

(assert (= (and d!843623 c!489745) b!2981470))

(assert (= (and d!843623 (not c!489745)) b!2981451))

(assert (= (and b!2981451 c!489744) b!2981469))

(assert (= (and b!2981451 (not c!489744)) b!2981466))

(assert (= (and b!2981466 c!489737) b!2981460))

(assert (= (and b!2981466 (not c!489737)) b!2981462))

(assert (= (and b!2981462 c!489742) b!2981468))

(assert (= (and b!2981462 (not c!489742)) b!2981472))

(assert (= (and b!2981468 (not res!1229473)) b!2981456))

(assert (= (and b!2981468 c!489747) b!2981463))

(assert (= (and b!2981468 (not c!489747)) b!2981464))

(assert (= (and b!2981472 c!489738) b!2981467))

(assert (= (and b!2981472 (not c!489738)) b!2981461))

(assert (= (and b!2981467 c!489741) b!2981457))

(assert (= (and b!2981467 (not c!489741)) b!2981449))

(assert (= (and b!2981449 c!489739) b!2981471))

(assert (= (and b!2981449 (not c!489739)) b!2981453))

(assert (= (and b!2981461 (not res!1229472)) b!2981458))

(assert (= (and b!2981461 c!489743) b!2981465))

(assert (= (and b!2981461 (not c!489743)) b!2981450))

(assert (= (and b!2981450 c!489746) b!2981459))

(assert (= (and b!2981450 (not c!489746)) b!2981455))

(assert (= (and b!2981455 c!489740) b!2981473))

(assert (= (and b!2981455 (not c!489740)) b!2981452))

(assert (= (or b!2981467 b!2981461) bm!199139))

(assert (= (or b!2981467 b!2981461) bm!199136))

(assert (= (or b!2981467 b!2981458) bm!199141))

(assert (= (or b!2981449 b!2981461) bm!199137))

(assert (= (or b!2981456 b!2981450) bm!199142))

(assert (= (or b!2981468 bm!199139) bm!199140))

(assert (= (or b!2981468 bm!199137) bm!199138))

(assert (= (and d!843623 res!1229471) b!2981454))

(declare-fun m!3342409 () Bool)

(assert (=> bm!199140 m!3342409))

(declare-fun m!3342411 () Bool)

(assert (=> b!2981454 m!3342411))

(assert (=> b!2981454 m!3342223))

(declare-fun m!3342413 () Bool)

(assert (=> bm!199136 m!3342413))

(declare-fun m!3342415 () Bool)

(assert (=> bm!199138 m!3342415))

(declare-fun m!3342417 () Bool)

(assert (=> bm!199141 m!3342417))

(declare-fun m!3342419 () Bool)

(assert (=> d!843623 m!3342419))

(assert (=> d!843623 m!3342175))

(declare-fun m!3342421 () Bool)

(assert (=> b!2981455 m!3342421))

(declare-fun m!3342423 () Bool)

(assert (=> bm!199142 m!3342423))

(assert (=> b!2980931 d!843623))

(declare-fun bm!199143 () Bool)

(declare-fun call!199148 () Bool)

(assert (=> bm!199143 (= call!199148 (isEmpty!19301 (_1!20104 lt!1038068)))))

(declare-fun b!2981474 () Bool)

(declare-fun e!1875086 () Bool)

(assert (=> b!2981474 (= e!1875086 (nullable!2992 lt!1038067))))

(declare-fun d!843649 () Bool)

(declare-fun e!1875085 () Bool)

(assert (=> d!843649 e!1875085))

(declare-fun c!489750 () Bool)

(assert (=> d!843649 (= c!489750 ((_ is EmptyExpr!9303) lt!1038067))))

(declare-fun lt!1038155 () Bool)

(assert (=> d!843649 (= lt!1038155 e!1875086)))

(declare-fun c!489748 () Bool)

(assert (=> d!843649 (= c!489748 (isEmpty!19301 (_1!20104 lt!1038068)))))

(assert (=> d!843649 (validRegex!4036 lt!1038067)))

(assert (=> d!843649 (= (matchR!4185 lt!1038067 (_1!20104 lt!1038068)) lt!1038155)))

(declare-fun b!2981475 () Bool)

(declare-fun e!1875087 () Bool)

(declare-fun e!1875088 () Bool)

(assert (=> b!2981475 (= e!1875087 e!1875088)))

(declare-fun res!1229478 () Bool)

(assert (=> b!2981475 (=> res!1229478 e!1875088)))

(assert (=> b!2981475 (= res!1229478 call!199148)))

(declare-fun b!2981476 () Bool)

(declare-fun e!1875089 () Bool)

(assert (=> b!2981476 (= e!1875089 (= (head!6651 (_1!20104 lt!1038068)) (c!489599 lt!1038067)))))

(declare-fun b!2981477 () Bool)

(declare-fun res!1229474 () Bool)

(assert (=> b!2981477 (=> (not res!1229474) (not e!1875089))))

(assert (=> b!2981477 (= res!1229474 (not call!199148))))

(declare-fun b!2981478 () Bool)

(assert (=> b!2981478 (= e!1875085 (= lt!1038155 call!199148))))

(declare-fun b!2981479 () Bool)

(declare-fun res!1229475 () Bool)

(declare-fun e!1875090 () Bool)

(assert (=> b!2981479 (=> res!1229475 e!1875090)))

(assert (=> b!2981479 (= res!1229475 (not ((_ is ElementMatch!9303) lt!1038067)))))

(declare-fun e!1875084 () Bool)

(assert (=> b!2981479 (= e!1875084 e!1875090)))

(declare-fun b!2981480 () Bool)

(assert (=> b!2981480 (= e!1875084 (not lt!1038155))))

(declare-fun b!2981481 () Bool)

(declare-fun res!1229476 () Bool)

(assert (=> b!2981481 (=> (not res!1229476) (not e!1875089))))

(assert (=> b!2981481 (= res!1229476 (isEmpty!19301 (tail!4877 (_1!20104 lt!1038068))))))

(declare-fun b!2981482 () Bool)

(assert (=> b!2981482 (= e!1875090 e!1875087)))

(declare-fun res!1229477 () Bool)

(assert (=> b!2981482 (=> (not res!1229477) (not e!1875087))))

(assert (=> b!2981482 (= res!1229477 (not lt!1038155))))

(declare-fun b!2981483 () Bool)

(assert (=> b!2981483 (= e!1875086 (matchR!4185 (derivativeStep!2592 lt!1038067 (head!6651 (_1!20104 lt!1038068))) (tail!4877 (_1!20104 lt!1038068))))))

(declare-fun b!2981484 () Bool)

(declare-fun res!1229480 () Bool)

(assert (=> b!2981484 (=> res!1229480 e!1875090)))

(assert (=> b!2981484 (= res!1229480 e!1875089)))

(declare-fun res!1229481 () Bool)

(assert (=> b!2981484 (=> (not res!1229481) (not e!1875089))))

(assert (=> b!2981484 (= res!1229481 lt!1038155)))

(declare-fun b!2981485 () Bool)

(assert (=> b!2981485 (= e!1875088 (not (= (head!6651 (_1!20104 lt!1038068)) (c!489599 lt!1038067))))))

(declare-fun b!2981486 () Bool)

(declare-fun res!1229479 () Bool)

(assert (=> b!2981486 (=> res!1229479 e!1875088)))

(assert (=> b!2981486 (= res!1229479 (not (isEmpty!19301 (tail!4877 (_1!20104 lt!1038068)))))))

(declare-fun b!2981487 () Bool)

(assert (=> b!2981487 (= e!1875085 e!1875084)))

(declare-fun c!489749 () Bool)

(assert (=> b!2981487 (= c!489749 ((_ is EmptyLang!9303) lt!1038067))))

(assert (= (and d!843649 c!489748) b!2981474))

(assert (= (and d!843649 (not c!489748)) b!2981483))

(assert (= (and d!843649 c!489750) b!2981478))

(assert (= (and d!843649 (not c!489750)) b!2981487))

(assert (= (and b!2981487 c!489749) b!2981480))

(assert (= (and b!2981487 (not c!489749)) b!2981479))

(assert (= (and b!2981479 (not res!1229475)) b!2981484))

(assert (= (and b!2981484 res!1229481) b!2981477))

(assert (= (and b!2981477 res!1229474) b!2981481))

(assert (= (and b!2981481 res!1229476) b!2981476))

(assert (= (and b!2981484 (not res!1229480)) b!2981482))

(assert (= (and b!2981482 res!1229477) b!2981475))

(assert (= (and b!2981475 (not res!1229478)) b!2981486))

(assert (= (and b!2981486 (not res!1229479)) b!2981485))

(assert (= (or b!2981478 b!2981475 b!2981477) bm!199143))

(assert (=> d!843649 m!3342187))

(declare-fun m!3342425 () Bool)

(assert (=> d!843649 m!3342425))

(declare-fun m!3342427 () Bool)

(assert (=> b!2981483 m!3342427))

(assert (=> b!2981483 m!3342427))

(declare-fun m!3342429 () Bool)

(assert (=> b!2981483 m!3342429))

(declare-fun m!3342431 () Bool)

(assert (=> b!2981483 m!3342431))

(assert (=> b!2981483 m!3342429))

(assert (=> b!2981483 m!3342431))

(declare-fun m!3342433 () Bool)

(assert (=> b!2981483 m!3342433))

(assert (=> b!2981486 m!3342431))

(assert (=> b!2981486 m!3342431))

(declare-fun m!3342435 () Bool)

(assert (=> b!2981486 m!3342435))

(assert (=> bm!199143 m!3342187))

(declare-fun m!3342437 () Bool)

(assert (=> b!2981474 m!3342437))

(assert (=> b!2981485 m!3342427))

(assert (=> b!2981481 m!3342431))

(assert (=> b!2981481 m!3342431))

(assert (=> b!2981481 m!3342435))

(assert (=> b!2981476 m!3342427))

(assert (=> b!2980933 d!843649))

(declare-fun d!843651 () Bool)

(assert (=> d!843651 (= (get!10823 lt!1038069) (v!34837 lt!1038069))))

(assert (=> b!2980933 d!843651))

(declare-fun d!843653 () Bool)

(declare-fun lt!1038156 () Int)

(assert (=> d!843653 (>= lt!1038156 0)))

(declare-fun e!1875091 () Int)

(assert (=> d!843653 (= lt!1038156 e!1875091)))

(declare-fun c!489751 () Bool)

(assert (=> d!843653 (= c!489751 ((_ is Nil!35044) s!11993))))

(assert (=> d!843653 (= (size!26475 s!11993) lt!1038156)))

(declare-fun b!2981488 () Bool)

(assert (=> b!2981488 (= e!1875091 0)))

(declare-fun b!2981489 () Bool)

(assert (=> b!2981489 (= e!1875091 (+ 1 (size!26475 (t!234233 s!11993))))))

(assert (= (and d!843653 c!489751) b!2981488))

(assert (= (and d!843653 (not c!489751)) b!2981489))

(declare-fun m!3342439 () Bool)

(assert (=> b!2981489 m!3342439))

(assert (=> b!2980922 d!843653))

(declare-fun d!843655 () Bool)

(declare-fun lt!1038157 () Int)

(assert (=> d!843655 (>= lt!1038157 0)))

(declare-fun e!1875092 () Int)

(assert (=> d!843655 (= lt!1038157 e!1875092)))

(declare-fun c!489752 () Bool)

(assert (=> d!843655 (= c!489752 ((_ is Nil!35044) (_2!20104 lt!1038068)))))

(assert (=> d!843655 (= (size!26475 (_2!20104 lt!1038068)) lt!1038157)))

(declare-fun b!2981490 () Bool)

(assert (=> b!2981490 (= e!1875092 0)))

(declare-fun b!2981491 () Bool)

(assert (=> b!2981491 (= e!1875092 (+ 1 (size!26475 (t!234233 (_2!20104 lt!1038068)))))))

(assert (= (and d!843655 c!489752) b!2981490))

(assert (= (and d!843655 (not c!489752)) b!2981491))

(declare-fun m!3342441 () Bool)

(assert (=> b!2981491 m!3342441))

(assert (=> b!2980922 d!843655))

(declare-fun bm!199144 () Bool)

(declare-fun call!199149 () Bool)

(assert (=> bm!199144 (= call!199149 (isEmpty!19301 (_1!20104 lt!1038068)))))

(declare-fun b!2981492 () Bool)

(declare-fun e!1875095 () Bool)

(assert (=> b!2981492 (= e!1875095 (nullable!2992 (reg!9632 r!17423)))))

(declare-fun d!843657 () Bool)

(declare-fun e!1875094 () Bool)

(assert (=> d!843657 e!1875094))

(declare-fun c!489755 () Bool)

(assert (=> d!843657 (= c!489755 ((_ is EmptyExpr!9303) (reg!9632 r!17423)))))

(declare-fun lt!1038158 () Bool)

(assert (=> d!843657 (= lt!1038158 e!1875095)))

(declare-fun c!489753 () Bool)

(assert (=> d!843657 (= c!489753 (isEmpty!19301 (_1!20104 lt!1038068)))))

(assert (=> d!843657 (validRegex!4036 (reg!9632 r!17423))))

(assert (=> d!843657 (= (matchR!4185 (reg!9632 r!17423) (_1!20104 lt!1038068)) lt!1038158)))

(declare-fun b!2981493 () Bool)

(declare-fun e!1875096 () Bool)

(declare-fun e!1875097 () Bool)

(assert (=> b!2981493 (= e!1875096 e!1875097)))

(declare-fun res!1229486 () Bool)

(assert (=> b!2981493 (=> res!1229486 e!1875097)))

(assert (=> b!2981493 (= res!1229486 call!199149)))

(declare-fun b!2981494 () Bool)

(declare-fun e!1875098 () Bool)

(assert (=> b!2981494 (= e!1875098 (= (head!6651 (_1!20104 lt!1038068)) (c!489599 (reg!9632 r!17423))))))

(declare-fun b!2981495 () Bool)

(declare-fun res!1229482 () Bool)

(assert (=> b!2981495 (=> (not res!1229482) (not e!1875098))))

(assert (=> b!2981495 (= res!1229482 (not call!199149))))

(declare-fun b!2981496 () Bool)

(assert (=> b!2981496 (= e!1875094 (= lt!1038158 call!199149))))

(declare-fun b!2981497 () Bool)

(declare-fun res!1229483 () Bool)

(declare-fun e!1875099 () Bool)

(assert (=> b!2981497 (=> res!1229483 e!1875099)))

(assert (=> b!2981497 (= res!1229483 (not ((_ is ElementMatch!9303) (reg!9632 r!17423))))))

(declare-fun e!1875093 () Bool)

(assert (=> b!2981497 (= e!1875093 e!1875099)))

(declare-fun b!2981498 () Bool)

(assert (=> b!2981498 (= e!1875093 (not lt!1038158))))

(declare-fun b!2981499 () Bool)

(declare-fun res!1229484 () Bool)

(assert (=> b!2981499 (=> (not res!1229484) (not e!1875098))))

(assert (=> b!2981499 (= res!1229484 (isEmpty!19301 (tail!4877 (_1!20104 lt!1038068))))))

(declare-fun b!2981500 () Bool)

(assert (=> b!2981500 (= e!1875099 e!1875096)))

(declare-fun res!1229485 () Bool)

(assert (=> b!2981500 (=> (not res!1229485) (not e!1875096))))

(assert (=> b!2981500 (= res!1229485 (not lt!1038158))))

(declare-fun b!2981501 () Bool)

(assert (=> b!2981501 (= e!1875095 (matchR!4185 (derivativeStep!2592 (reg!9632 r!17423) (head!6651 (_1!20104 lt!1038068))) (tail!4877 (_1!20104 lt!1038068))))))

(declare-fun b!2981502 () Bool)

(declare-fun res!1229488 () Bool)

(assert (=> b!2981502 (=> res!1229488 e!1875099)))

(assert (=> b!2981502 (= res!1229488 e!1875098)))

(declare-fun res!1229489 () Bool)

(assert (=> b!2981502 (=> (not res!1229489) (not e!1875098))))

(assert (=> b!2981502 (= res!1229489 lt!1038158)))

(declare-fun b!2981503 () Bool)

(assert (=> b!2981503 (= e!1875097 (not (= (head!6651 (_1!20104 lt!1038068)) (c!489599 (reg!9632 r!17423)))))))

(declare-fun b!2981504 () Bool)

(declare-fun res!1229487 () Bool)

(assert (=> b!2981504 (=> res!1229487 e!1875097)))

(assert (=> b!2981504 (= res!1229487 (not (isEmpty!19301 (tail!4877 (_1!20104 lt!1038068)))))))

(declare-fun b!2981505 () Bool)

(assert (=> b!2981505 (= e!1875094 e!1875093)))

(declare-fun c!489754 () Bool)

(assert (=> b!2981505 (= c!489754 ((_ is EmptyLang!9303) (reg!9632 r!17423)))))

(assert (= (and d!843657 c!489753) b!2981492))

(assert (= (and d!843657 (not c!489753)) b!2981501))

(assert (= (and d!843657 c!489755) b!2981496))

(assert (= (and d!843657 (not c!489755)) b!2981505))

(assert (= (and b!2981505 c!489754) b!2981498))

(assert (= (and b!2981505 (not c!489754)) b!2981497))

(assert (= (and b!2981497 (not res!1229483)) b!2981502))

(assert (= (and b!2981502 res!1229489) b!2981495))

(assert (= (and b!2981495 res!1229482) b!2981499))

(assert (= (and b!2981499 res!1229484) b!2981494))

(assert (= (and b!2981502 (not res!1229488)) b!2981500))

(assert (= (and b!2981500 res!1229485) b!2981493))

(assert (= (and b!2981493 (not res!1229486)) b!2981504))

(assert (= (and b!2981504 (not res!1229487)) b!2981503))

(assert (= (or b!2981496 b!2981493 b!2981495) bm!199144))

(assert (=> d!843657 m!3342187))

(assert (=> d!843657 m!3342175))

(assert (=> b!2981501 m!3342427))

(assert (=> b!2981501 m!3342427))

(declare-fun m!3342443 () Bool)

(assert (=> b!2981501 m!3342443))

(assert (=> b!2981501 m!3342431))

(assert (=> b!2981501 m!3342443))

(assert (=> b!2981501 m!3342431))

(declare-fun m!3342445 () Bool)

(assert (=> b!2981501 m!3342445))

(assert (=> b!2981504 m!3342431))

(assert (=> b!2981504 m!3342431))

(assert (=> b!2981504 m!3342435))

(assert (=> bm!199144 m!3342187))

(assert (=> b!2981492 m!3342223))

(assert (=> b!2981503 m!3342427))

(assert (=> b!2981499 m!3342431))

(assert (=> b!2981499 m!3342431))

(assert (=> b!2981499 m!3342435))

(assert (=> b!2981494 m!3342427))

(assert (=> b!2980922 d!843657))

(declare-fun d!843659 () Bool)

(assert (=> d!843659 (= (matchR!4185 (reg!9632 r!17423) (_1!20104 lt!1038068)) (matchR!4185 (simplify!304 (reg!9632 r!17423)) (_1!20104 lt!1038068)))))

(declare-fun lt!1038161 () Unit!48985)

(declare-fun choose!17661 (Regex!9303 List!35168) Unit!48985)

(assert (=> d!843659 (= lt!1038161 (choose!17661 (reg!9632 r!17423) (_1!20104 lt!1038068)))))

(assert (=> d!843659 (validRegex!4036 (reg!9632 r!17423))))

(assert (=> d!843659 (= (lemmaSimplifySound!168 (reg!9632 r!17423) (_1!20104 lt!1038068)) lt!1038161)))

(declare-fun bs!527185 () Bool)

(assert (= bs!527185 d!843659))

(assert (=> bs!527185 m!3342175))

(assert (=> bs!527185 m!3342167))

(declare-fun m!3342447 () Bool)

(assert (=> bs!527185 m!3342447))

(assert (=> bs!527185 m!3342167))

(declare-fun m!3342449 () Bool)

(assert (=> bs!527185 m!3342449))

(assert (=> bs!527185 m!3342213))

(assert (=> b!2980922 d!843659))

(declare-fun d!843661 () Bool)

(assert (=> d!843661 (= (isEmpty!19301 s!11993) ((_ is Nil!35044) s!11993))))

(assert (=> b!2980934 d!843661))

(declare-fun bs!527186 () Bool)

(declare-fun b!2981540 () Bool)

(assert (= bs!527186 (and b!2981540 b!2980923)))

(declare-fun lambda!111190 () Int)

(assert (=> bs!527186 (not (= lambda!111190 lambda!111167))))

(assert (=> bs!527186 (= (= (reg!9632 lt!1038066) lt!1038067) (= lambda!111190 lambda!111168))))

(assert (=> b!2981540 true))

(assert (=> b!2981540 true))

(declare-fun bs!527187 () Bool)

(declare-fun b!2981548 () Bool)

(assert (= bs!527187 (and b!2981548 b!2980923)))

(declare-fun lambda!111191 () Int)

(assert (=> bs!527187 (not (= lambda!111191 lambda!111167))))

(assert (=> bs!527187 (not (= lambda!111191 lambda!111168))))

(declare-fun bs!527188 () Bool)

(assert (= bs!527188 (and b!2981548 b!2981540)))

(assert (=> bs!527188 (not (= lambda!111191 lambda!111190))))

(assert (=> b!2981548 true))

(assert (=> b!2981548 true))

(declare-fun bm!199149 () Bool)

(declare-fun call!199155 () Bool)

(assert (=> bm!199149 (= call!199155 (isEmpty!19301 s!11993))))

(declare-fun b!2981538 () Bool)

(declare-fun c!489765 () Bool)

(assert (=> b!2981538 (= c!489765 ((_ is Union!9303) lt!1038066))))

(declare-fun e!1875122 () Bool)

(declare-fun e!1875118 () Bool)

(assert (=> b!2981538 (= e!1875122 e!1875118)))

(declare-fun b!2981539 () Bool)

(declare-fun e!1875120 () Bool)

(assert (=> b!2981539 (= e!1875118 e!1875120)))

(declare-fun c!489766 () Bool)

(assert (=> b!2981539 (= c!489766 ((_ is Star!9303) lt!1038066))))

(declare-fun e!1875124 () Bool)

(declare-fun call!199154 () Bool)

(assert (=> b!2981540 (= e!1875124 call!199154)))

(declare-fun b!2981541 () Bool)

(declare-fun e!1875123 () Bool)

(assert (=> b!2981541 (= e!1875118 e!1875123)))

(declare-fun res!1229506 () Bool)

(assert (=> b!2981541 (= res!1229506 (matchRSpec!1440 (regOne!19119 lt!1038066) s!11993))))

(assert (=> b!2981541 (=> res!1229506 e!1875123)))

(declare-fun bm!199150 () Bool)

(assert (=> bm!199150 (= call!199154 (Exists!1583 (ite c!489766 lambda!111190 lambda!111191)))))

(declare-fun b!2981542 () Bool)

(assert (=> b!2981542 (= e!1875122 (= s!11993 (Cons!35044 (c!489599 lt!1038066) Nil!35044)))))

(declare-fun b!2981543 () Bool)

(declare-fun e!1875121 () Bool)

(declare-fun e!1875119 () Bool)

(assert (=> b!2981543 (= e!1875121 e!1875119)))

(declare-fun res!1229507 () Bool)

(assert (=> b!2981543 (= res!1229507 (not ((_ is EmptyLang!9303) lt!1038066)))))

(assert (=> b!2981543 (=> (not res!1229507) (not e!1875119))))

(declare-fun b!2981544 () Bool)

(assert (=> b!2981544 (= e!1875123 (matchRSpec!1440 (regTwo!19119 lt!1038066) s!11993))))

(declare-fun b!2981545 () Bool)

(declare-fun res!1229508 () Bool)

(assert (=> b!2981545 (=> res!1229508 e!1875124)))

(assert (=> b!2981545 (= res!1229508 call!199155)))

(assert (=> b!2981545 (= e!1875120 e!1875124)))

(declare-fun b!2981546 () Bool)

(assert (=> b!2981546 (= e!1875121 call!199155)))

(declare-fun d!843663 () Bool)

(declare-fun c!489764 () Bool)

(assert (=> d!843663 (= c!489764 ((_ is EmptyExpr!9303) lt!1038066))))

(assert (=> d!843663 (= (matchRSpec!1440 lt!1038066 s!11993) e!1875121)))

(declare-fun b!2981547 () Bool)

(declare-fun c!489767 () Bool)

(assert (=> b!2981547 (= c!489767 ((_ is ElementMatch!9303) lt!1038066))))

(assert (=> b!2981547 (= e!1875119 e!1875122)))

(assert (=> b!2981548 (= e!1875120 call!199154)))

(assert (= (and d!843663 c!489764) b!2981546))

(assert (= (and d!843663 (not c!489764)) b!2981543))

(assert (= (and b!2981543 res!1229507) b!2981547))

(assert (= (and b!2981547 c!489767) b!2981542))

(assert (= (and b!2981547 (not c!489767)) b!2981538))

(assert (= (and b!2981538 c!489765) b!2981541))

(assert (= (and b!2981538 (not c!489765)) b!2981539))

(assert (= (and b!2981541 (not res!1229506)) b!2981544))

(assert (= (and b!2981539 c!489766) b!2981545))

(assert (= (and b!2981539 (not c!489766)) b!2981548))

(assert (= (and b!2981545 (not res!1229508)) b!2981540))

(assert (= (or b!2981540 b!2981548) bm!199150))

(assert (= (or b!2981546 b!2981545) bm!199149))

(assert (=> bm!199149 m!3342169))

(declare-fun m!3342451 () Bool)

(assert (=> b!2981541 m!3342451))

(declare-fun m!3342453 () Bool)

(assert (=> bm!199150 m!3342453))

(declare-fun m!3342455 () Bool)

(assert (=> b!2981544 m!3342455))

(assert (=> b!2980934 d!843663))

(declare-fun d!843665 () Bool)

(assert (=> d!843665 (= (matchR!4185 lt!1038066 s!11993) (matchRSpec!1440 lt!1038066 s!11993))))

(declare-fun lt!1038164 () Unit!48985)

(declare-fun choose!17662 (Regex!9303 List!35168) Unit!48985)

(assert (=> d!843665 (= lt!1038164 (choose!17662 lt!1038066 s!11993))))

(assert (=> d!843665 (validRegex!4036 lt!1038066)))

(assert (=> d!843665 (= (mainMatchTheorem!1440 lt!1038066 s!11993) lt!1038164)))

(declare-fun bs!527189 () Bool)

(assert (= bs!527189 d!843665))

(assert (=> bs!527189 m!3342181))

(assert (=> bs!527189 m!3342171))

(declare-fun m!3342457 () Bool)

(assert (=> bs!527189 m!3342457))

(assert (=> bs!527189 m!3342275))

(assert (=> b!2980934 d!843665))

(declare-fun d!843667 () Bool)

(declare-fun isEmpty!19303 (Option!6704) Bool)

(assert (=> d!843667 (= (isDefined!5255 lt!1038069) (not (isEmpty!19303 lt!1038069)))))

(declare-fun bs!527190 () Bool)

(assert (= bs!527190 d!843667))

(declare-fun m!3342459 () Bool)

(assert (=> bs!527190 m!3342459))

(assert (=> b!2980923 d!843667))

(declare-fun d!843669 () Bool)

(declare-fun choose!17663 (Int) Bool)

(assert (=> d!843669 (= (Exists!1583 lambda!111168) (choose!17663 lambda!111168))))

(declare-fun bs!527191 () Bool)

(assert (= bs!527191 d!843669))

(declare-fun m!3342461 () Bool)

(assert (=> bs!527191 m!3342461))

(assert (=> b!2980923 d!843669))

(declare-fun bs!527192 () Bool)

(declare-fun d!843671 () Bool)

(assert (= bs!527192 (and d!843671 b!2980923)))

(declare-fun lambda!111194 () Int)

(assert (=> bs!527192 (= lambda!111194 lambda!111167)))

(assert (=> bs!527192 (not (= lambda!111194 lambda!111168))))

(declare-fun bs!527193 () Bool)

(assert (= bs!527193 (and d!843671 b!2981540)))

(assert (=> bs!527193 (not (= lambda!111194 lambda!111190))))

(declare-fun bs!527194 () Bool)

(assert (= bs!527194 (and d!843671 b!2981548)))

(assert (=> bs!527194 (not (= lambda!111194 lambda!111191))))

(assert (=> d!843671 true))

(assert (=> d!843671 true))

(assert (=> d!843671 true))

(assert (=> d!843671 (= (isDefined!5255 (findConcatSeparation!1098 lt!1038067 lt!1038066 Nil!35044 s!11993 s!11993)) (Exists!1583 lambda!111194))))

(declare-fun lt!1038167 () Unit!48985)

(declare-fun choose!17664 (Regex!9303 Regex!9303 List!35168) Unit!48985)

(assert (=> d!843671 (= lt!1038167 (choose!17664 lt!1038067 lt!1038066 s!11993))))

(assert (=> d!843671 (validRegex!4036 lt!1038067)))

(assert (=> d!843671 (= (lemmaFindConcatSeparationEquivalentToExists!876 lt!1038067 lt!1038066 s!11993) lt!1038167)))

(declare-fun bs!527195 () Bool)

(assert (= bs!527195 d!843671))

(declare-fun m!3342463 () Bool)

(assert (=> bs!527195 m!3342463))

(assert (=> bs!527195 m!3342201))

(declare-fun m!3342465 () Bool)

(assert (=> bs!527195 m!3342465))

(declare-fun m!3342467 () Bool)

(assert (=> bs!527195 m!3342467))

(assert (=> bs!527195 m!3342425))

(assert (=> bs!527195 m!3342201))

(assert (=> b!2980923 d!843671))

(declare-fun d!843673 () Bool)

(assert (=> d!843673 (= (Exists!1583 lambda!111167) (choose!17663 lambda!111167))))

(declare-fun bs!527196 () Bool)

(assert (= bs!527196 d!843673))

(declare-fun m!3342469 () Bool)

(assert (=> bs!527196 m!3342469))

(assert (=> b!2980923 d!843673))

(declare-fun bs!527197 () Bool)

(declare-fun d!843675 () Bool)

(assert (= bs!527197 (and d!843675 d!843671)))

(declare-fun lambda!111199 () Int)

(assert (=> bs!527197 (= (= (Star!9303 lt!1038067) lt!1038066) (= lambda!111199 lambda!111194))))

(declare-fun bs!527198 () Bool)

(assert (= bs!527198 (and d!843675 b!2980923)))

(assert (=> bs!527198 (not (= lambda!111199 lambda!111168))))

(declare-fun bs!527199 () Bool)

(assert (= bs!527199 (and d!843675 b!2981540)))

(assert (=> bs!527199 (not (= lambda!111199 lambda!111190))))

(assert (=> bs!527198 (= (= (Star!9303 lt!1038067) lt!1038066) (= lambda!111199 lambda!111167))))

(declare-fun bs!527200 () Bool)

(assert (= bs!527200 (and d!843675 b!2981548)))

(assert (=> bs!527200 (not (= lambda!111199 lambda!111191))))

(assert (=> d!843675 true))

(assert (=> d!843675 true))

(declare-fun lambda!111200 () Int)

(assert (=> bs!527197 (not (= lambda!111200 lambda!111194))))

(assert (=> bs!527199 (= (and (= lt!1038067 (reg!9632 lt!1038066)) (= (Star!9303 lt!1038067) lt!1038066)) (= lambda!111200 lambda!111190))))

(assert (=> bs!527198 (not (= lambda!111200 lambda!111167))))

(assert (=> bs!527200 (not (= lambda!111200 lambda!111191))))

(declare-fun bs!527201 () Bool)

(assert (= bs!527201 d!843675))

(assert (=> bs!527201 (not (= lambda!111200 lambda!111199))))

(assert (=> bs!527198 (= (= (Star!9303 lt!1038067) lt!1038066) (= lambda!111200 lambda!111168))))

(assert (=> d!843675 true))

(assert (=> d!843675 true))

(assert (=> d!843675 (= (Exists!1583 lambda!111199) (Exists!1583 lambda!111200))))

(declare-fun lt!1038170 () Unit!48985)

(declare-fun choose!17665 (Regex!9303 List!35168) Unit!48985)

(assert (=> d!843675 (= lt!1038170 (choose!17665 lt!1038067 s!11993))))

(assert (=> d!843675 (validRegex!4036 lt!1038067)))

(assert (=> d!843675 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!268 lt!1038067 s!11993) lt!1038170)))

(declare-fun m!3342471 () Bool)

(assert (=> bs!527201 m!3342471))

(declare-fun m!3342473 () Bool)

(assert (=> bs!527201 m!3342473))

(declare-fun m!3342475 () Bool)

(assert (=> bs!527201 m!3342475))

(assert (=> bs!527201 m!3342425))

(assert (=> b!2980923 d!843675))

(declare-fun b!2981581 () Bool)

(declare-fun res!1229534 () Bool)

(declare-fun e!1875141 () Bool)

(assert (=> b!2981581 (=> (not res!1229534) (not e!1875141))))

(declare-fun lt!1038179 () Option!6704)

(assert (=> b!2981581 (= res!1229534 (matchR!4185 lt!1038067 (_1!20104 (get!10823 lt!1038179))))))

(declare-fun b!2981582 () Bool)

(declare-fun e!1875144 () Option!6704)

(assert (=> b!2981582 (= e!1875144 None!6703)))

(declare-fun b!2981583 () Bool)

(declare-fun e!1875142 () Option!6704)

(assert (=> b!2981583 (= e!1875142 e!1875144)))

(declare-fun c!489772 () Bool)

(assert (=> b!2981583 (= c!489772 ((_ is Nil!35044) s!11993))))

(declare-fun b!2981584 () Bool)

(declare-fun e!1875143 () Bool)

(assert (=> b!2981584 (= e!1875143 (not (isDefined!5255 lt!1038179)))))

(declare-fun b!2981585 () Bool)

(assert (=> b!2981585 (= e!1875142 (Some!6703 (tuple2!33945 Nil!35044 s!11993)))))

(declare-fun b!2981586 () Bool)

(declare-fun e!1875145 () Bool)

(assert (=> b!2981586 (= e!1875145 (matchR!4185 lt!1038066 s!11993))))

(declare-fun d!843677 () Bool)

(assert (=> d!843677 e!1875143))

(declare-fun res!1229535 () Bool)

(assert (=> d!843677 (=> res!1229535 e!1875143)))

(assert (=> d!843677 (= res!1229535 e!1875141)))

(declare-fun res!1229533 () Bool)

(assert (=> d!843677 (=> (not res!1229533) (not e!1875141))))

(assert (=> d!843677 (= res!1229533 (isDefined!5255 lt!1038179))))

(assert (=> d!843677 (= lt!1038179 e!1875142)))

(declare-fun c!489773 () Bool)

(assert (=> d!843677 (= c!489773 e!1875145)))

(declare-fun res!1229536 () Bool)

(assert (=> d!843677 (=> (not res!1229536) (not e!1875145))))

(assert (=> d!843677 (= res!1229536 (matchR!4185 lt!1038067 Nil!35044))))

(assert (=> d!843677 (validRegex!4036 lt!1038067)))

(assert (=> d!843677 (= (findConcatSeparation!1098 lt!1038067 lt!1038066 Nil!35044 s!11993 s!11993) lt!1038179)))

(declare-fun b!2981587 () Bool)

(declare-fun lt!1038177 () Unit!48985)

(declare-fun lt!1038178 () Unit!48985)

(assert (=> b!2981587 (= lt!1038177 lt!1038178)))

(assert (=> b!2981587 (= (++!8367 (++!8367 Nil!35044 (Cons!35044 (h!40464 s!11993) Nil!35044)) (t!234233 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!986 (List!35168 C!18792 List!35168 List!35168) Unit!48985)

(assert (=> b!2981587 (= lt!1038178 (lemmaMoveElementToOtherListKeepsConcatEq!986 Nil!35044 (h!40464 s!11993) (t!234233 s!11993) s!11993))))

(assert (=> b!2981587 (= e!1875144 (findConcatSeparation!1098 lt!1038067 lt!1038066 (++!8367 Nil!35044 (Cons!35044 (h!40464 s!11993) Nil!35044)) (t!234233 s!11993) s!11993))))

(declare-fun b!2981588 () Bool)

(assert (=> b!2981588 (= e!1875141 (= (++!8367 (_1!20104 (get!10823 lt!1038179)) (_2!20104 (get!10823 lt!1038179))) s!11993))))

(declare-fun b!2981589 () Bool)

(declare-fun res!1229537 () Bool)

(assert (=> b!2981589 (=> (not res!1229537) (not e!1875141))))

(assert (=> b!2981589 (= res!1229537 (matchR!4185 lt!1038066 (_2!20104 (get!10823 lt!1038179))))))

(assert (= (and d!843677 res!1229536) b!2981586))

(assert (= (and d!843677 c!489773) b!2981585))

(assert (= (and d!843677 (not c!489773)) b!2981583))

(assert (= (and b!2981583 c!489772) b!2981582))

(assert (= (and b!2981583 (not c!489772)) b!2981587))

(assert (= (and d!843677 res!1229533) b!2981581))

(assert (= (and b!2981581 res!1229534) b!2981589))

(assert (= (and b!2981589 res!1229537) b!2981588))

(assert (= (and d!843677 (not res!1229535)) b!2981584))

(declare-fun m!3342477 () Bool)

(assert (=> b!2981587 m!3342477))

(assert (=> b!2981587 m!3342477))

(declare-fun m!3342479 () Bool)

(assert (=> b!2981587 m!3342479))

(declare-fun m!3342481 () Bool)

(assert (=> b!2981587 m!3342481))

(assert (=> b!2981587 m!3342477))

(declare-fun m!3342483 () Bool)

(assert (=> b!2981587 m!3342483))

(declare-fun m!3342485 () Bool)

(assert (=> b!2981581 m!3342485))

(declare-fun m!3342487 () Bool)

(assert (=> b!2981581 m!3342487))

(declare-fun m!3342489 () Bool)

(assert (=> d!843677 m!3342489))

(declare-fun m!3342491 () Bool)

(assert (=> d!843677 m!3342491))

(assert (=> d!843677 m!3342425))

(assert (=> b!2981589 m!3342485))

(declare-fun m!3342493 () Bool)

(assert (=> b!2981589 m!3342493))

(assert (=> b!2981586 m!3342181))

(assert (=> b!2981584 m!3342489))

(assert (=> b!2981588 m!3342485))

(declare-fun m!3342495 () Bool)

(assert (=> b!2981588 m!3342495))

(assert (=> b!2980923 d!843677))

(declare-fun b!2981601 () Bool)

(declare-fun e!1875150 () Bool)

(declare-fun lt!1038182 () List!35168)

(assert (=> b!2981601 (= e!1875150 (or (not (= (_2!20104 lt!1038068) Nil!35044)) (= lt!1038182 (_1!20104 lt!1038068))))))

(declare-fun b!2981600 () Bool)

(declare-fun res!1229542 () Bool)

(assert (=> b!2981600 (=> (not res!1229542) (not e!1875150))))

(assert (=> b!2981600 (= res!1229542 (= (size!26475 lt!1038182) (+ (size!26475 (_1!20104 lt!1038068)) (size!26475 (_2!20104 lt!1038068)))))))

(declare-fun b!2981599 () Bool)

(declare-fun e!1875151 () List!35168)

(assert (=> b!2981599 (= e!1875151 (Cons!35044 (h!40464 (_1!20104 lt!1038068)) (++!8367 (t!234233 (_1!20104 lt!1038068)) (_2!20104 lt!1038068))))))

(declare-fun d!843679 () Bool)

(assert (=> d!843679 e!1875150))

(declare-fun res!1229543 () Bool)

(assert (=> d!843679 (=> (not res!1229543) (not e!1875150))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4764 (List!35168) (InoxSet C!18792))

(assert (=> d!843679 (= res!1229543 (= (content!4764 lt!1038182) ((_ map or) (content!4764 (_1!20104 lt!1038068)) (content!4764 (_2!20104 lt!1038068)))))))

(assert (=> d!843679 (= lt!1038182 e!1875151)))

(declare-fun c!489776 () Bool)

(assert (=> d!843679 (= c!489776 ((_ is Nil!35044) (_1!20104 lt!1038068)))))

(assert (=> d!843679 (= (++!8367 (_1!20104 lt!1038068) (_2!20104 lt!1038068)) lt!1038182)))

(declare-fun b!2981598 () Bool)

(assert (=> b!2981598 (= e!1875151 (_2!20104 lt!1038068))))

(assert (= (and d!843679 c!489776) b!2981598))

(assert (= (and d!843679 (not c!489776)) b!2981599))

(assert (= (and d!843679 res!1229543) b!2981600))

(assert (= (and b!2981600 res!1229542) b!2981601))

(declare-fun m!3342497 () Bool)

(assert (=> b!2981600 m!3342497))

(assert (=> b!2981600 m!3342177))

(assert (=> b!2981600 m!3342211))

(declare-fun m!3342499 () Bool)

(assert (=> b!2981599 m!3342499))

(declare-fun m!3342501 () Bool)

(assert (=> d!843679 m!3342501))

(declare-fun m!3342503 () Bool)

(assert (=> d!843679 m!3342503))

(declare-fun m!3342505 () Bool)

(assert (=> d!843679 m!3342505))

(assert (=> b!2980925 d!843679))

(declare-fun bs!527202 () Bool)

(declare-fun b!2981604 () Bool)

(assert (= bs!527202 (and b!2981604 d!843671)))

(declare-fun lambda!111201 () Int)

(assert (=> bs!527202 (not (= lambda!111201 lambda!111194))))

(declare-fun bs!527203 () Bool)

(assert (= bs!527203 (and b!2981604 b!2981540)))

(assert (=> bs!527203 (= (and (= (reg!9632 r!17423) (reg!9632 lt!1038066)) (= r!17423 lt!1038066)) (= lambda!111201 lambda!111190))))

(declare-fun bs!527204 () Bool)

(assert (= bs!527204 (and b!2981604 b!2980923)))

(assert (=> bs!527204 (not (= lambda!111201 lambda!111167))))

(declare-fun bs!527205 () Bool)

(assert (= bs!527205 (and b!2981604 b!2981548)))

(assert (=> bs!527205 (not (= lambda!111201 lambda!111191))))

(declare-fun bs!527206 () Bool)

(assert (= bs!527206 (and b!2981604 d!843675)))

(assert (=> bs!527206 (not (= lambda!111201 lambda!111199))))

(assert (=> bs!527206 (= (and (= (reg!9632 r!17423) lt!1038067) (= r!17423 (Star!9303 lt!1038067))) (= lambda!111201 lambda!111200))))

(assert (=> bs!527204 (= (and (= (reg!9632 r!17423) lt!1038067) (= r!17423 lt!1038066)) (= lambda!111201 lambda!111168))))

(assert (=> b!2981604 true))

(assert (=> b!2981604 true))

(declare-fun bs!527207 () Bool)

(declare-fun b!2981612 () Bool)

(assert (= bs!527207 (and b!2981612 d!843671)))

(declare-fun lambda!111202 () Int)

(assert (=> bs!527207 (not (= lambda!111202 lambda!111194))))

(declare-fun bs!527208 () Bool)

(assert (= bs!527208 (and b!2981612 b!2981604)))

(assert (=> bs!527208 (not (= lambda!111202 lambda!111201))))

(declare-fun bs!527209 () Bool)

(assert (= bs!527209 (and b!2981612 b!2981540)))

(assert (=> bs!527209 (not (= lambda!111202 lambda!111190))))

(declare-fun bs!527210 () Bool)

(assert (= bs!527210 (and b!2981612 b!2980923)))

(assert (=> bs!527210 (not (= lambda!111202 lambda!111167))))

(declare-fun bs!527211 () Bool)

(assert (= bs!527211 (and b!2981612 b!2981548)))

(assert (=> bs!527211 (= (and (= (regOne!19118 r!17423) (regOne!19118 lt!1038066)) (= (regTwo!19118 r!17423) (regTwo!19118 lt!1038066))) (= lambda!111202 lambda!111191))))

(declare-fun bs!527212 () Bool)

(assert (= bs!527212 (and b!2981612 d!843675)))

(assert (=> bs!527212 (not (= lambda!111202 lambda!111199))))

(assert (=> bs!527212 (not (= lambda!111202 lambda!111200))))

(assert (=> bs!527210 (not (= lambda!111202 lambda!111168))))

(assert (=> b!2981612 true))

(assert (=> b!2981612 true))

(declare-fun bm!199151 () Bool)

(declare-fun call!199157 () Bool)

(assert (=> bm!199151 (= call!199157 (isEmpty!19301 s!11993))))

(declare-fun b!2981602 () Bool)

(declare-fun c!489778 () Bool)

(assert (=> b!2981602 (= c!489778 ((_ is Union!9303) r!17423))))

(declare-fun e!1875156 () Bool)

(declare-fun e!1875152 () Bool)

(assert (=> b!2981602 (= e!1875156 e!1875152)))

(declare-fun b!2981603 () Bool)

(declare-fun e!1875154 () Bool)

(assert (=> b!2981603 (= e!1875152 e!1875154)))

(declare-fun c!489779 () Bool)

(assert (=> b!2981603 (= c!489779 ((_ is Star!9303) r!17423))))

(declare-fun e!1875158 () Bool)

(declare-fun call!199156 () Bool)

(assert (=> b!2981604 (= e!1875158 call!199156)))

(declare-fun b!2981605 () Bool)

(declare-fun e!1875157 () Bool)

(assert (=> b!2981605 (= e!1875152 e!1875157)))

(declare-fun res!1229544 () Bool)

(assert (=> b!2981605 (= res!1229544 (matchRSpec!1440 (regOne!19119 r!17423) s!11993))))

(assert (=> b!2981605 (=> res!1229544 e!1875157)))

(declare-fun bm!199152 () Bool)

(assert (=> bm!199152 (= call!199156 (Exists!1583 (ite c!489779 lambda!111201 lambda!111202)))))

(declare-fun b!2981606 () Bool)

(assert (=> b!2981606 (= e!1875156 (= s!11993 (Cons!35044 (c!489599 r!17423) Nil!35044)))))

(declare-fun b!2981607 () Bool)

(declare-fun e!1875155 () Bool)

(declare-fun e!1875153 () Bool)

(assert (=> b!2981607 (= e!1875155 e!1875153)))

(declare-fun res!1229545 () Bool)

(assert (=> b!2981607 (= res!1229545 (not ((_ is EmptyLang!9303) r!17423)))))

(assert (=> b!2981607 (=> (not res!1229545) (not e!1875153))))

(declare-fun b!2981608 () Bool)

(assert (=> b!2981608 (= e!1875157 (matchRSpec!1440 (regTwo!19119 r!17423) s!11993))))

(declare-fun b!2981609 () Bool)

(declare-fun res!1229546 () Bool)

(assert (=> b!2981609 (=> res!1229546 e!1875158)))

(assert (=> b!2981609 (= res!1229546 call!199157)))

(assert (=> b!2981609 (= e!1875154 e!1875158)))

(declare-fun b!2981610 () Bool)

(assert (=> b!2981610 (= e!1875155 call!199157)))

(declare-fun d!843681 () Bool)

(declare-fun c!489777 () Bool)

(assert (=> d!843681 (= c!489777 ((_ is EmptyExpr!9303) r!17423))))

(assert (=> d!843681 (= (matchRSpec!1440 r!17423 s!11993) e!1875155)))

(declare-fun b!2981611 () Bool)

(declare-fun c!489780 () Bool)

(assert (=> b!2981611 (= c!489780 ((_ is ElementMatch!9303) r!17423))))

(assert (=> b!2981611 (= e!1875153 e!1875156)))

(assert (=> b!2981612 (= e!1875154 call!199156)))

(assert (= (and d!843681 c!489777) b!2981610))

(assert (= (and d!843681 (not c!489777)) b!2981607))

(assert (= (and b!2981607 res!1229545) b!2981611))

(assert (= (and b!2981611 c!489780) b!2981606))

(assert (= (and b!2981611 (not c!489780)) b!2981602))

(assert (= (and b!2981602 c!489778) b!2981605))

(assert (= (and b!2981602 (not c!489778)) b!2981603))

(assert (= (and b!2981605 (not res!1229544)) b!2981608))

(assert (= (and b!2981603 c!489779) b!2981609))

(assert (= (and b!2981603 (not c!489779)) b!2981612))

(assert (= (and b!2981609 (not res!1229546)) b!2981604))

(assert (= (or b!2981604 b!2981612) bm!199152))

(assert (= (or b!2981610 b!2981609) bm!199151))

(assert (=> bm!199151 m!3342169))

(declare-fun m!3342507 () Bool)

(assert (=> b!2981605 m!3342507))

(declare-fun m!3342509 () Bool)

(assert (=> bm!199152 m!3342509))

(declare-fun m!3342511 () Bool)

(assert (=> b!2981608 m!3342511))

(assert (=> b!2980935 d!843681))

(declare-fun bm!199153 () Bool)

(declare-fun call!199158 () Bool)

(assert (=> bm!199153 (= call!199158 (isEmpty!19301 s!11993))))

(declare-fun b!2981613 () Bool)

(declare-fun e!1875161 () Bool)

(assert (=> b!2981613 (= e!1875161 (nullable!2992 r!17423))))

(declare-fun d!843683 () Bool)

(declare-fun e!1875160 () Bool)

(assert (=> d!843683 e!1875160))

(declare-fun c!489783 () Bool)

(assert (=> d!843683 (= c!489783 ((_ is EmptyExpr!9303) r!17423))))

(declare-fun lt!1038183 () Bool)

(assert (=> d!843683 (= lt!1038183 e!1875161)))

(declare-fun c!489781 () Bool)

(assert (=> d!843683 (= c!489781 (isEmpty!19301 s!11993))))

(assert (=> d!843683 (validRegex!4036 r!17423)))

(assert (=> d!843683 (= (matchR!4185 r!17423 s!11993) lt!1038183)))

(declare-fun b!2981614 () Bool)

(declare-fun e!1875162 () Bool)

(declare-fun e!1875163 () Bool)

(assert (=> b!2981614 (= e!1875162 e!1875163)))

(declare-fun res!1229551 () Bool)

(assert (=> b!2981614 (=> res!1229551 e!1875163)))

(assert (=> b!2981614 (= res!1229551 call!199158)))

(declare-fun b!2981615 () Bool)

(declare-fun e!1875164 () Bool)

(assert (=> b!2981615 (= e!1875164 (= (head!6651 s!11993) (c!489599 r!17423)))))

(declare-fun b!2981616 () Bool)

(declare-fun res!1229547 () Bool)

(assert (=> b!2981616 (=> (not res!1229547) (not e!1875164))))

(assert (=> b!2981616 (= res!1229547 (not call!199158))))

(declare-fun b!2981617 () Bool)

(assert (=> b!2981617 (= e!1875160 (= lt!1038183 call!199158))))

(declare-fun b!2981618 () Bool)

(declare-fun res!1229548 () Bool)

(declare-fun e!1875165 () Bool)

(assert (=> b!2981618 (=> res!1229548 e!1875165)))

(assert (=> b!2981618 (= res!1229548 (not ((_ is ElementMatch!9303) r!17423)))))

(declare-fun e!1875159 () Bool)

(assert (=> b!2981618 (= e!1875159 e!1875165)))

(declare-fun b!2981619 () Bool)

(assert (=> b!2981619 (= e!1875159 (not lt!1038183))))

(declare-fun b!2981620 () Bool)

(declare-fun res!1229549 () Bool)

(assert (=> b!2981620 (=> (not res!1229549) (not e!1875164))))

(assert (=> b!2981620 (= res!1229549 (isEmpty!19301 (tail!4877 s!11993)))))

(declare-fun b!2981621 () Bool)

(assert (=> b!2981621 (= e!1875165 e!1875162)))

(declare-fun res!1229550 () Bool)

(assert (=> b!2981621 (=> (not res!1229550) (not e!1875162))))

(assert (=> b!2981621 (= res!1229550 (not lt!1038183))))

(declare-fun b!2981622 () Bool)

(assert (=> b!2981622 (= e!1875161 (matchR!4185 (derivativeStep!2592 r!17423 (head!6651 s!11993)) (tail!4877 s!11993)))))

(declare-fun b!2981623 () Bool)

(declare-fun res!1229553 () Bool)

(assert (=> b!2981623 (=> res!1229553 e!1875165)))

(assert (=> b!2981623 (= res!1229553 e!1875164)))

(declare-fun res!1229554 () Bool)

(assert (=> b!2981623 (=> (not res!1229554) (not e!1875164))))

(assert (=> b!2981623 (= res!1229554 lt!1038183)))

(declare-fun b!2981624 () Bool)

(assert (=> b!2981624 (= e!1875163 (not (= (head!6651 s!11993) (c!489599 r!17423))))))

(declare-fun b!2981625 () Bool)

(declare-fun res!1229552 () Bool)

(assert (=> b!2981625 (=> res!1229552 e!1875163)))

(assert (=> b!2981625 (= res!1229552 (not (isEmpty!19301 (tail!4877 s!11993))))))

(declare-fun b!2981626 () Bool)

(assert (=> b!2981626 (= e!1875160 e!1875159)))

(declare-fun c!489782 () Bool)

(assert (=> b!2981626 (= c!489782 ((_ is EmptyLang!9303) r!17423))))

(assert (= (and d!843683 c!489781) b!2981613))

(assert (= (and d!843683 (not c!489781)) b!2981622))

(assert (= (and d!843683 c!489783) b!2981617))

(assert (= (and d!843683 (not c!489783)) b!2981626))

(assert (= (and b!2981626 c!489782) b!2981619))

(assert (= (and b!2981626 (not c!489782)) b!2981618))

(assert (= (and b!2981618 (not res!1229548)) b!2981623))

(assert (= (and b!2981623 res!1229554) b!2981616))

(assert (= (and b!2981616 res!1229547) b!2981620))

(assert (= (and b!2981620 res!1229549) b!2981615))

(assert (= (and b!2981623 (not res!1229553)) b!2981621))

(assert (= (and b!2981621 res!1229550) b!2981614))

(assert (= (and b!2981614 (not res!1229551)) b!2981625))

(assert (= (and b!2981625 (not res!1229552)) b!2981624))

(assert (= (or b!2981617 b!2981614 b!2981616) bm!199153))

(assert (=> d!843683 m!3342169))

(assert (=> d!843683 m!3342207))

(assert (=> b!2981622 m!3342309))

(assert (=> b!2981622 m!3342309))

(declare-fun m!3342513 () Bool)

(assert (=> b!2981622 m!3342513))

(assert (=> b!2981622 m!3342313))

(assert (=> b!2981622 m!3342513))

(assert (=> b!2981622 m!3342313))

(declare-fun m!3342515 () Bool)

(assert (=> b!2981622 m!3342515))

(assert (=> b!2981625 m!3342313))

(assert (=> b!2981625 m!3342313))

(assert (=> b!2981625 m!3342317))

(assert (=> bm!199153 m!3342169))

(declare-fun m!3342517 () Bool)

(assert (=> b!2981613 m!3342517))

(assert (=> b!2981624 m!3342309))

(assert (=> b!2981620 m!3342313))

(assert (=> b!2981620 m!3342313))

(assert (=> b!2981620 m!3342317))

(assert (=> b!2981615 m!3342309))

(assert (=> b!2980935 d!843683))

(declare-fun d!843685 () Bool)

(assert (=> d!843685 (= (matchR!4185 r!17423 s!11993) (matchRSpec!1440 r!17423 s!11993))))

(declare-fun lt!1038184 () Unit!48985)

(assert (=> d!843685 (= lt!1038184 (choose!17662 r!17423 s!11993))))

(assert (=> d!843685 (validRegex!4036 r!17423)))

(assert (=> d!843685 (= (mainMatchTheorem!1440 r!17423 s!11993) lt!1038184)))

(declare-fun bs!527213 () Bool)

(assert (= bs!527213 d!843685))

(assert (=> bs!527213 m!3342191))

(assert (=> bs!527213 m!3342189))

(declare-fun m!3342519 () Bool)

(assert (=> bs!527213 m!3342519))

(assert (=> bs!527213 m!3342207))

(assert (=> b!2980935 d!843685))

(declare-fun b!2981638 () Bool)

(declare-fun e!1875168 () Bool)

(declare-fun tp!949138 () Bool)

(declare-fun tp!949134 () Bool)

(assert (=> b!2981638 (= e!1875168 (and tp!949138 tp!949134))))

(declare-fun b!2981640 () Bool)

(declare-fun tp!949137 () Bool)

(declare-fun tp!949136 () Bool)

(assert (=> b!2981640 (= e!1875168 (and tp!949137 tp!949136))))

(declare-fun b!2981639 () Bool)

(declare-fun tp!949135 () Bool)

(assert (=> b!2981639 (= e!1875168 tp!949135)))

(assert (=> b!2980924 (= tp!949084 e!1875168)))

(declare-fun b!2981637 () Bool)

(assert (=> b!2981637 (= e!1875168 tp_is_empty!16169)))

(assert (= (and b!2980924 ((_ is ElementMatch!9303) (regOne!19119 r!17423))) b!2981637))

(assert (= (and b!2980924 ((_ is Concat!14624) (regOne!19119 r!17423))) b!2981638))

(assert (= (and b!2980924 ((_ is Star!9303) (regOne!19119 r!17423))) b!2981639))

(assert (= (and b!2980924 ((_ is Union!9303) (regOne!19119 r!17423))) b!2981640))

(declare-fun b!2981642 () Bool)

(declare-fun e!1875169 () Bool)

(declare-fun tp!949143 () Bool)

(declare-fun tp!949139 () Bool)

(assert (=> b!2981642 (= e!1875169 (and tp!949143 tp!949139))))

(declare-fun b!2981644 () Bool)

(declare-fun tp!949142 () Bool)

(declare-fun tp!949141 () Bool)

(assert (=> b!2981644 (= e!1875169 (and tp!949142 tp!949141))))

(declare-fun b!2981643 () Bool)

(declare-fun tp!949140 () Bool)

(assert (=> b!2981643 (= e!1875169 tp!949140)))

(assert (=> b!2980924 (= tp!949080 e!1875169)))

(declare-fun b!2981641 () Bool)

(assert (=> b!2981641 (= e!1875169 tp_is_empty!16169)))

(assert (= (and b!2980924 ((_ is ElementMatch!9303) (regTwo!19119 r!17423))) b!2981641))

(assert (= (and b!2980924 ((_ is Concat!14624) (regTwo!19119 r!17423))) b!2981642))

(assert (= (and b!2980924 ((_ is Star!9303) (regTwo!19119 r!17423))) b!2981643))

(assert (= (and b!2980924 ((_ is Union!9303) (regTwo!19119 r!17423))) b!2981644))

(declare-fun b!2981646 () Bool)

(declare-fun e!1875170 () Bool)

(declare-fun tp!949148 () Bool)

(declare-fun tp!949144 () Bool)

(assert (=> b!2981646 (= e!1875170 (and tp!949148 tp!949144))))

(declare-fun b!2981648 () Bool)

(declare-fun tp!949147 () Bool)

(declare-fun tp!949146 () Bool)

(assert (=> b!2981648 (= e!1875170 (and tp!949147 tp!949146))))

(declare-fun b!2981647 () Bool)

(declare-fun tp!949145 () Bool)

(assert (=> b!2981647 (= e!1875170 tp!949145)))

(assert (=> b!2980932 (= tp!949081 e!1875170)))

(declare-fun b!2981645 () Bool)

(assert (=> b!2981645 (= e!1875170 tp_is_empty!16169)))

(assert (= (and b!2980932 ((_ is ElementMatch!9303) (reg!9632 r!17423))) b!2981645))

(assert (= (and b!2980932 ((_ is Concat!14624) (reg!9632 r!17423))) b!2981646))

(assert (= (and b!2980932 ((_ is Star!9303) (reg!9632 r!17423))) b!2981647))

(assert (= (and b!2980932 ((_ is Union!9303) (reg!9632 r!17423))) b!2981648))

(declare-fun b!2981653 () Bool)

(declare-fun e!1875173 () Bool)

(declare-fun tp!949151 () Bool)

(assert (=> b!2981653 (= e!1875173 (and tp_is_empty!16169 tp!949151))))

(assert (=> b!2980921 (= tp!949085 e!1875173)))

(assert (= (and b!2980921 ((_ is Cons!35044) (t!234233 s!11993))) b!2981653))

(declare-fun b!2981655 () Bool)

(declare-fun e!1875174 () Bool)

(declare-fun tp!949156 () Bool)

(declare-fun tp!949152 () Bool)

(assert (=> b!2981655 (= e!1875174 (and tp!949156 tp!949152))))

(declare-fun b!2981657 () Bool)

(declare-fun tp!949155 () Bool)

(declare-fun tp!949154 () Bool)

(assert (=> b!2981657 (= e!1875174 (and tp!949155 tp!949154))))

(declare-fun b!2981656 () Bool)

(declare-fun tp!949153 () Bool)

(assert (=> b!2981656 (= e!1875174 tp!949153)))

(assert (=> b!2980926 (= tp!949083 e!1875174)))

(declare-fun b!2981654 () Bool)

(assert (=> b!2981654 (= e!1875174 tp_is_empty!16169)))

(assert (= (and b!2980926 ((_ is ElementMatch!9303) (regOne!19118 r!17423))) b!2981654))

(assert (= (and b!2980926 ((_ is Concat!14624) (regOne!19118 r!17423))) b!2981655))

(assert (= (and b!2980926 ((_ is Star!9303) (regOne!19118 r!17423))) b!2981656))

(assert (= (and b!2980926 ((_ is Union!9303) (regOne!19118 r!17423))) b!2981657))

(declare-fun b!2981659 () Bool)

(declare-fun e!1875175 () Bool)

(declare-fun tp!949161 () Bool)

(declare-fun tp!949157 () Bool)

(assert (=> b!2981659 (= e!1875175 (and tp!949161 tp!949157))))

(declare-fun b!2981661 () Bool)

(declare-fun tp!949160 () Bool)

(declare-fun tp!949159 () Bool)

(assert (=> b!2981661 (= e!1875175 (and tp!949160 tp!949159))))

(declare-fun b!2981660 () Bool)

(declare-fun tp!949158 () Bool)

(assert (=> b!2981660 (= e!1875175 tp!949158)))

(assert (=> b!2980926 (= tp!949082 e!1875175)))

(declare-fun b!2981658 () Bool)

(assert (=> b!2981658 (= e!1875175 tp_is_empty!16169)))

(assert (= (and b!2980926 ((_ is ElementMatch!9303) (regTwo!19118 r!17423))) b!2981658))

(assert (= (and b!2980926 ((_ is Concat!14624) (regTwo!19118 r!17423))) b!2981659))

(assert (= (and b!2980926 ((_ is Star!9303) (regTwo!19118 r!17423))) b!2981660))

(assert (= (and b!2980926 ((_ is Union!9303) (regTwo!19118 r!17423))) b!2981661))

(check-sat (not d!843673) (not bm!199075) (not b!2981205) (not b!2981173) (not b!2981639) (not b!2981503) (not bm!199150) (not bm!199152) (not b!2981640) (not d!843685) (not b!2981180) (not bm!199088) (not b!2981644) (not b!2981643) (not b!2981486) (not b!2981613) (not bm!199142) (not b!2981136) (not bm!199153) (not b!2981605) (not bm!199091) (not bm!199140) (not d!843665) (not b!2981455) (not b!2981608) (not b!2981589) (not b!2981494) (not d!843667) (not b!2981182) (not b!2981544) (not b!2981183) (not d!843669) (not b!2981586) (not d!843671) (not b!2981620) (not b!2981660) (not b!2981648) (not b!2981541) (not b!2981489) (not bm!199138) (not b!2981600) (not bm!199094) (not b!2981587) (not b!2981622) (not b!2981474) (not b!2981657) (not b!2981647) (not b!2981499) (not bm!199151) (not b!2981501) (not d!843679) (not b!2981659) (not b!2981481) (not d!843649) (not bm!199141) (not b!2981017) (not bm!199092) (not b!2981646) (not b!2981638) (not b!2981485) (not b!2981624) (not b!2981491) (not b!2981178) (not b!2981140) (not d!843675) (not d!843677) (not b!2981129) tp_is_empty!16169 (not d!843659) (not b!2981599) (not b!2981581) (not bm!199149) (not d!843607) (not d!843623) (not b!2981584) (not b!2981642) (not bm!199144) (not b!2981492) (not b!2981171) (not b!2981504) (not bm!199143) (not b!2981661) (not b!2981625) (not b!2981655) (not b!2981476) (not bm!199136) (not b!2981615) (not b!2981138) (not b!2981483) (not b!2981454) (not b!2981189) (not d!843683) (not b!2981131) (not b!2981141) (not d!843657) (not b!2981653) (not bm!199077) (not b!2981656) (not d!843585) (not b!2981588))
(check-sat)
