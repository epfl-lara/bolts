; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545334 () Bool)

(assert start!545334)

(declare-fun res!2192401 () Bool)

(declare-fun e!3212150 () Bool)

(assert (=> start!545334 (=> (not res!2192401) (not e!3212150))))

(declare-datatypes ((C!29288 0))(
  ( (C!29289 (val!24296 Int)) )
))
(declare-datatypes ((Regex!14511 0))(
  ( (ElementMatch!14511 (c!887116 C!29288)) (Concat!23356 (regOne!29534 Regex!14511) (regTwo!29534 Regex!14511)) (EmptyExpr!14511) (Star!14511 (reg!14840 Regex!14511)) (EmptyLang!14511) (Union!14511 (regOne!29535 Regex!14511) (regTwo!29535 Regex!14511)) )
))
(declare-fun expr!117 () Regex!14511)

(declare-fun validRegex!6366 (Regex!14511) Bool)

(assert (=> start!545334 (= res!2192401 (validRegex!6366 expr!117))))

(assert (=> start!545334 e!3212150))

(declare-fun e!3212148 () Bool)

(assert (=> start!545334 e!3212148))

(declare-datatypes ((List!59942 0))(
  ( (Nil!59818) (Cons!59818 (h!66266 Regex!14511) (t!372997 List!59942)) )
))
(declare-datatypes ((Context!7790 0))(
  ( (Context!7791 (exprs!4395 List!59942)) )
))
(declare-fun ctx!100 () Context!7790)

(declare-fun e!3212152 () Bool)

(declare-fun inv!79458 (Context!7790) Bool)

(assert (=> start!545334 (and (inv!79458 ctx!100) e!3212152)))

(declare-fun tp_is_empty!38171 () Bool)

(assert (=> start!545334 tp_is_empty!38171))

(declare-fun b!5152777 () Bool)

(declare-fun tp!1441144 () Bool)

(declare-fun tp!1441149 () Bool)

(assert (=> b!5152777 (= e!3212148 (and tp!1441144 tp!1441149))))

(declare-fun b!5152778 () Bool)

(declare-fun res!2192404 () Bool)

(assert (=> b!5152778 (=> (not res!2192404) (not e!3212150))))

(get-info :version)

(assert (=> b!5152778 (= res!2192404 ((_ is Concat!23356) expr!117))))

(declare-fun b!5152779 () Bool)

(declare-fun $colon$colon!1231 (List!59942 Regex!14511) List!59942)

(assert (=> b!5152779 (= e!3212150 (not (inv!79458 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117))))))))

(declare-fun b!5152780 () Bool)

(declare-fun res!2192402 () Bool)

(assert (=> b!5152780 (=> (not res!2192402) (not e!3212150))))

(declare-fun e!3212149 () Bool)

(assert (=> b!5152780 (= res!2192402 e!3212149)))

(declare-fun res!2192403 () Bool)

(assert (=> b!5152780 (=> res!2192403 e!3212149)))

(assert (=> b!5152780 (= res!2192403 (not ((_ is Concat!23356) expr!117)))))

(declare-fun b!5152781 () Bool)

(declare-fun tp!1441145 () Bool)

(assert (=> b!5152781 (= e!3212152 tp!1441145)))

(declare-fun b!5152782 () Bool)

(declare-fun e!3212151 () Bool)

(declare-fun lostCause!1574 (Context!7790) Bool)

(assert (=> b!5152782 (= e!3212151 (lostCause!1574 ctx!100))))

(declare-fun b!5152783 () Bool)

(assert (=> b!5152783 (= e!3212148 tp_is_empty!38171)))

(declare-fun b!5152784 () Bool)

(declare-fun tp!1441147 () Bool)

(declare-fun tp!1441146 () Bool)

(assert (=> b!5152784 (= e!3212148 (and tp!1441147 tp!1441146))))

(declare-fun b!5152785 () Bool)

(declare-fun res!2192405 () Bool)

(assert (=> b!5152785 (=> (not res!2192405) (not e!3212150))))

(assert (=> b!5152785 (= res!2192405 (validRegex!6366 (regTwo!29534 expr!117)))))

(declare-fun b!5152786 () Bool)

(declare-fun res!2192406 () Bool)

(assert (=> b!5152786 (=> (not res!2192406) (not e!3212150))))

(declare-fun a!1296 () C!29288)

(assert (=> b!5152786 (= res!2192406 (and (or (not ((_ is ElementMatch!14511) expr!117)) (not (= (c!887116 expr!117) a!1296))) (not ((_ is Union!14511) expr!117))))))

(declare-fun b!5152787 () Bool)

(declare-fun res!2192399 () Bool)

(assert (=> b!5152787 (=> (not res!2192399) (not e!3212150))))

(assert (=> b!5152787 (= res!2192399 e!3212151)))

(declare-fun res!2192400 () Bool)

(assert (=> b!5152787 (=> res!2192400 e!3212151)))

(declare-fun lostCause!1575 (Regex!14511) Bool)

(assert (=> b!5152787 (= res!2192400 (lostCause!1575 expr!117))))

(declare-fun b!5152788 () Bool)

(declare-fun tp!1441148 () Bool)

(assert (=> b!5152788 (= e!3212148 tp!1441148)))

(declare-fun b!5152789 () Bool)

(declare-fun nullable!4867 (Regex!14511) Bool)

(assert (=> b!5152789 (= e!3212149 (not (nullable!4867 (regOne!29534 expr!117))))))

(assert (= (and start!545334 res!2192401) b!5152787))

(assert (= (and b!5152787 (not res!2192400)) b!5152782))

(assert (= (and b!5152787 res!2192399) b!5152786))

(assert (= (and b!5152786 res!2192406) b!5152780))

(assert (= (and b!5152780 (not res!2192403)) b!5152789))

(assert (= (and b!5152780 res!2192402) b!5152778))

(assert (= (and b!5152778 res!2192404) b!5152785))

(assert (= (and b!5152785 res!2192405) b!5152779))

(assert (= (and start!545334 ((_ is ElementMatch!14511) expr!117)) b!5152783))

(assert (= (and start!545334 ((_ is Concat!23356) expr!117)) b!5152777))

(assert (= (and start!545334 ((_ is Star!14511) expr!117)) b!5152788))

(assert (= (and start!545334 ((_ is Union!14511) expr!117)) b!5152784))

(assert (= start!545334 b!5152781))

(declare-fun m!6209800 () Bool)

(assert (=> b!5152785 m!6209800))

(declare-fun m!6209802 () Bool)

(assert (=> b!5152779 m!6209802))

(declare-fun m!6209804 () Bool)

(assert (=> b!5152779 m!6209804))

(declare-fun m!6209806 () Bool)

(assert (=> b!5152787 m!6209806))

(declare-fun m!6209808 () Bool)

(assert (=> b!5152782 m!6209808))

(declare-fun m!6209810 () Bool)

(assert (=> start!545334 m!6209810))

(declare-fun m!6209812 () Bool)

(assert (=> start!545334 m!6209812))

(declare-fun m!6209814 () Bool)

(assert (=> b!5152789 m!6209814))

(check-sat tp_is_empty!38171 (not b!5152788) (not b!5152781) (not b!5152782) (not b!5152787) (not b!5152777) (not b!5152789) (not b!5152785) (not b!5152779) (not start!545334) (not b!5152784))
(check-sat)
(get-model)

(declare-fun d!1664593 () Bool)

(declare-fun nullableFct!1345 (Regex!14511) Bool)

(assert (=> d!1664593 (= (nullable!4867 (regOne!29534 expr!117)) (nullableFct!1345 (regOne!29534 expr!117)))))

(declare-fun bs!1202044 () Bool)

(assert (= bs!1202044 d!1664593))

(declare-fun m!6209818 () Bool)

(assert (=> bs!1202044 m!6209818))

(assert (=> b!5152789 d!1664593))

(declare-fun d!1664597 () Bool)

(declare-fun lostCauseFct!385 (Regex!14511) Bool)

(assert (=> d!1664597 (= (lostCause!1575 expr!117) (lostCauseFct!385 expr!117))))

(declare-fun bs!1202045 () Bool)

(assert (= bs!1202045 d!1664597))

(declare-fun m!6209820 () Bool)

(assert (=> bs!1202045 m!6209820))

(assert (=> b!5152787 d!1664597))

(declare-fun b!5152808 () Bool)

(declare-fun e!3212168 () Bool)

(declare-fun call!360918 () Bool)

(assert (=> b!5152808 (= e!3212168 call!360918)))

(declare-fun b!5152809 () Bool)

(declare-fun e!3212167 () Bool)

(assert (=> b!5152809 (= e!3212167 call!360918)))

(declare-fun b!5152810 () Bool)

(declare-fun e!3212169 () Bool)

(declare-fun e!3212171 () Bool)

(assert (=> b!5152810 (= e!3212169 e!3212171)))

(declare-fun c!887121 () Bool)

(assert (=> b!5152810 (= c!887121 ((_ is Star!14511) expr!117))))

(declare-fun b!5152811 () Bool)

(declare-fun e!3212173 () Bool)

(assert (=> b!5152811 (= e!3212171 e!3212173)))

(declare-fun c!887122 () Bool)

(assert (=> b!5152811 (= c!887122 ((_ is Union!14511) expr!117))))

(declare-fun b!5152812 () Bool)

(declare-fun e!3212170 () Bool)

(assert (=> b!5152812 (= e!3212170 e!3212167)))

(declare-fun res!2192421 () Bool)

(assert (=> b!5152812 (=> (not res!2192421) (not e!3212167))))

(declare-fun call!360916 () Bool)

(assert (=> b!5152812 (= res!2192421 call!360916)))

(declare-fun bm!360912 () Bool)

(assert (=> bm!360912 (= call!360918 (validRegex!6366 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))

(declare-fun bm!360913 () Bool)

(declare-fun call!360917 () Bool)

(assert (=> bm!360913 (= call!360916 call!360917)))

(declare-fun b!5152813 () Bool)

(declare-fun e!3212172 () Bool)

(assert (=> b!5152813 (= e!3212171 e!3212172)))

(declare-fun res!2192419 () Bool)

(assert (=> b!5152813 (= res!2192419 (not (nullable!4867 (reg!14840 expr!117))))))

(assert (=> b!5152813 (=> (not res!2192419) (not e!3212172))))

(declare-fun b!5152814 () Bool)

(assert (=> b!5152814 (= e!3212172 call!360917)))

(declare-fun b!5152815 () Bool)

(declare-fun res!2192417 () Bool)

(assert (=> b!5152815 (=> res!2192417 e!3212170)))

(assert (=> b!5152815 (= res!2192417 (not ((_ is Concat!23356) expr!117)))))

(assert (=> b!5152815 (= e!3212173 e!3212170)))

(declare-fun b!5152816 () Bool)

(declare-fun res!2192418 () Bool)

(assert (=> b!5152816 (=> (not res!2192418) (not e!3212168))))

(assert (=> b!5152816 (= res!2192418 call!360916)))

(assert (=> b!5152816 (= e!3212173 e!3212168)))

(declare-fun bm!360911 () Bool)

(assert (=> bm!360911 (= call!360917 (validRegex!6366 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))))))

(declare-fun d!1664599 () Bool)

(declare-fun res!2192420 () Bool)

(assert (=> d!1664599 (=> res!2192420 e!3212169)))

(assert (=> d!1664599 (= res!2192420 ((_ is ElementMatch!14511) expr!117))))

(assert (=> d!1664599 (= (validRegex!6366 expr!117) e!3212169)))

(assert (= (and d!1664599 (not res!2192420)) b!5152810))

(assert (= (and b!5152810 c!887121) b!5152813))

(assert (= (and b!5152810 (not c!887121)) b!5152811))

(assert (= (and b!5152813 res!2192419) b!5152814))

(assert (= (and b!5152811 c!887122) b!5152816))

(assert (= (and b!5152811 (not c!887122)) b!5152815))

(assert (= (and b!5152816 res!2192418) b!5152808))

(assert (= (and b!5152815 (not res!2192417)) b!5152812))

(assert (= (and b!5152812 res!2192421) b!5152809))

(assert (= (or b!5152808 b!5152809) bm!360912))

(assert (= (or b!5152816 b!5152812) bm!360913))

(assert (= (or b!5152814 bm!360913) bm!360911))

(declare-fun m!6209822 () Bool)

(assert (=> bm!360912 m!6209822))

(declare-fun m!6209824 () Bool)

(assert (=> b!5152813 m!6209824))

(declare-fun m!6209826 () Bool)

(assert (=> bm!360911 m!6209826))

(assert (=> start!545334 d!1664599))

(declare-fun d!1664601 () Bool)

(declare-fun lambda!257351 () Int)

(declare-fun forall!14003 (List!59942 Int) Bool)

(assert (=> d!1664601 (= (inv!79458 ctx!100) (forall!14003 (exprs!4395 ctx!100) lambda!257351))))

(declare-fun bs!1202053 () Bool)

(assert (= bs!1202053 d!1664601))

(declare-fun m!6209848 () Bool)

(assert (=> bs!1202053 m!6209848))

(assert (=> start!545334 d!1664601))

(declare-fun bs!1202054 () Bool)

(declare-fun d!1664615 () Bool)

(assert (= bs!1202054 (and d!1664615 d!1664601)))

(declare-fun lambda!257354 () Int)

(assert (=> bs!1202054 (not (= lambda!257354 lambda!257351))))

(declare-fun exists!1852 (List!59942 Int) Bool)

(assert (=> d!1664615 (= (lostCause!1574 ctx!100) (exists!1852 (exprs!4395 ctx!100) lambda!257354))))

(declare-fun bs!1202055 () Bool)

(assert (= bs!1202055 d!1664615))

(declare-fun m!6209850 () Bool)

(assert (=> bs!1202055 m!6209850))

(assert (=> b!5152782 d!1664615))

(declare-fun bs!1202056 () Bool)

(declare-fun d!1664617 () Bool)

(assert (= bs!1202056 (and d!1664617 d!1664601)))

(declare-fun lambda!257355 () Int)

(assert (=> bs!1202056 (= lambda!257355 lambda!257351)))

(declare-fun bs!1202057 () Bool)

(assert (= bs!1202057 (and d!1664617 d!1664615)))

(assert (=> bs!1202057 (not (= lambda!257355 lambda!257354))))

(assert (=> d!1664617 (= (inv!79458 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)))) (forall!14003 (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)))) lambda!257355))))

(declare-fun bs!1202058 () Bool)

(assert (= bs!1202058 d!1664617))

(declare-fun m!6209852 () Bool)

(assert (=> bs!1202058 m!6209852))

(assert (=> b!5152779 d!1664617))

(declare-fun d!1664619 () Bool)

(assert (=> d!1664619 (= ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)) (Cons!59818 (regTwo!29534 expr!117) (exprs!4395 ctx!100)))))

(assert (=> b!5152779 d!1664619))

(declare-fun b!5152888 () Bool)

(declare-fun e!3212213 () Bool)

(declare-fun call!360933 () Bool)

(assert (=> b!5152888 (= e!3212213 call!360933)))

(declare-fun b!5152889 () Bool)

(declare-fun e!3212212 () Bool)

(assert (=> b!5152889 (= e!3212212 call!360933)))

(declare-fun b!5152890 () Bool)

(declare-fun e!3212214 () Bool)

(declare-fun e!3212216 () Bool)

(assert (=> b!5152890 (= e!3212214 e!3212216)))

(declare-fun c!887131 () Bool)

(assert (=> b!5152890 (= c!887131 ((_ is Star!14511) (regTwo!29534 expr!117)))))

(declare-fun b!5152891 () Bool)

(declare-fun e!3212218 () Bool)

(assert (=> b!5152891 (= e!3212216 e!3212218)))

(declare-fun c!887132 () Bool)

(assert (=> b!5152891 (= c!887132 ((_ is Union!14511) (regTwo!29534 expr!117)))))

(declare-fun b!5152892 () Bool)

(declare-fun e!3212215 () Bool)

(assert (=> b!5152892 (= e!3212215 e!3212212)))

(declare-fun res!2192446 () Bool)

(assert (=> b!5152892 (=> (not res!2192446) (not e!3212212))))

(declare-fun call!360931 () Bool)

(assert (=> b!5152892 (= res!2192446 call!360931)))

(declare-fun bm!360927 () Bool)

(assert (=> bm!360927 (= call!360933 (validRegex!6366 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))))))

(declare-fun bm!360928 () Bool)

(declare-fun call!360932 () Bool)

(assert (=> bm!360928 (= call!360931 call!360932)))

(declare-fun b!5152893 () Bool)

(declare-fun e!3212217 () Bool)

(assert (=> b!5152893 (= e!3212216 e!3212217)))

(declare-fun res!2192444 () Bool)

(assert (=> b!5152893 (= res!2192444 (not (nullable!4867 (reg!14840 (regTwo!29534 expr!117)))))))

(assert (=> b!5152893 (=> (not res!2192444) (not e!3212217))))

(declare-fun b!5152894 () Bool)

(assert (=> b!5152894 (= e!3212217 call!360932)))

(declare-fun b!5152895 () Bool)

(declare-fun res!2192442 () Bool)

(assert (=> b!5152895 (=> res!2192442 e!3212215)))

(assert (=> b!5152895 (= res!2192442 (not ((_ is Concat!23356) (regTwo!29534 expr!117))))))

(assert (=> b!5152895 (= e!3212218 e!3212215)))

(declare-fun b!5152896 () Bool)

(declare-fun res!2192443 () Bool)

(assert (=> b!5152896 (=> (not res!2192443) (not e!3212213))))

(assert (=> b!5152896 (= res!2192443 call!360931)))

(assert (=> b!5152896 (= e!3212218 e!3212213)))

(declare-fun bm!360926 () Bool)

(assert (=> bm!360926 (= call!360932 (validRegex!6366 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))))))

(declare-fun d!1664621 () Bool)

(declare-fun res!2192445 () Bool)

(assert (=> d!1664621 (=> res!2192445 e!3212214)))

(assert (=> d!1664621 (= res!2192445 ((_ is ElementMatch!14511) (regTwo!29534 expr!117)))))

(assert (=> d!1664621 (= (validRegex!6366 (regTwo!29534 expr!117)) e!3212214)))

(assert (= (and d!1664621 (not res!2192445)) b!5152890))

(assert (= (and b!5152890 c!887131) b!5152893))

(assert (= (and b!5152890 (not c!887131)) b!5152891))

(assert (= (and b!5152893 res!2192444) b!5152894))

(assert (= (and b!5152891 c!887132) b!5152896))

(assert (= (and b!5152891 (not c!887132)) b!5152895))

(assert (= (and b!5152896 res!2192443) b!5152888))

(assert (= (and b!5152895 (not res!2192442)) b!5152892))

(assert (= (and b!5152892 res!2192446) b!5152889))

(assert (= (or b!5152888 b!5152889) bm!360927))

(assert (= (or b!5152896 b!5152892) bm!360928))

(assert (= (or b!5152894 bm!360928) bm!360926))

(declare-fun m!6209854 () Bool)

(assert (=> bm!360927 m!6209854))

(declare-fun m!6209856 () Bool)

(assert (=> b!5152893 m!6209856))

(declare-fun m!6209858 () Bool)

(assert (=> bm!360926 m!6209858))

(assert (=> b!5152785 d!1664621))

(declare-fun b!5152910 () Bool)

(declare-fun e!3212221 () Bool)

(declare-fun tp!1441203 () Bool)

(declare-fun tp!1441202 () Bool)

(assert (=> b!5152910 (= e!3212221 (and tp!1441203 tp!1441202))))

(assert (=> b!5152788 (= tp!1441148 e!3212221)))

(declare-fun b!5152908 () Bool)

(declare-fun tp!1441201 () Bool)

(declare-fun tp!1441205 () Bool)

(assert (=> b!5152908 (= e!3212221 (and tp!1441201 tp!1441205))))

(declare-fun b!5152909 () Bool)

(declare-fun tp!1441204 () Bool)

(assert (=> b!5152909 (= e!3212221 tp!1441204)))

(declare-fun b!5152907 () Bool)

(assert (=> b!5152907 (= e!3212221 tp_is_empty!38171)))

(assert (= (and b!5152788 ((_ is ElementMatch!14511) (reg!14840 expr!117))) b!5152907))

(assert (= (and b!5152788 ((_ is Concat!23356) (reg!14840 expr!117))) b!5152908))

(assert (= (and b!5152788 ((_ is Star!14511) (reg!14840 expr!117))) b!5152909))

(assert (= (and b!5152788 ((_ is Union!14511) (reg!14840 expr!117))) b!5152910))

(declare-fun b!5152914 () Bool)

(declare-fun e!3212222 () Bool)

(declare-fun tp!1441208 () Bool)

(declare-fun tp!1441207 () Bool)

(assert (=> b!5152914 (= e!3212222 (and tp!1441208 tp!1441207))))

(assert (=> b!5152777 (= tp!1441144 e!3212222)))

(declare-fun b!5152912 () Bool)

(declare-fun tp!1441206 () Bool)

(declare-fun tp!1441210 () Bool)

(assert (=> b!5152912 (= e!3212222 (and tp!1441206 tp!1441210))))

(declare-fun b!5152913 () Bool)

(declare-fun tp!1441209 () Bool)

(assert (=> b!5152913 (= e!3212222 tp!1441209)))

(declare-fun b!5152911 () Bool)

(assert (=> b!5152911 (= e!3212222 tp_is_empty!38171)))

(assert (= (and b!5152777 ((_ is ElementMatch!14511) (regOne!29534 expr!117))) b!5152911))

(assert (= (and b!5152777 ((_ is Concat!23356) (regOne!29534 expr!117))) b!5152912))

(assert (= (and b!5152777 ((_ is Star!14511) (regOne!29534 expr!117))) b!5152913))

(assert (= (and b!5152777 ((_ is Union!14511) (regOne!29534 expr!117))) b!5152914))

(declare-fun b!5152918 () Bool)

(declare-fun e!3212223 () Bool)

(declare-fun tp!1441213 () Bool)

(declare-fun tp!1441212 () Bool)

(assert (=> b!5152918 (= e!3212223 (and tp!1441213 tp!1441212))))

(assert (=> b!5152777 (= tp!1441149 e!3212223)))

(declare-fun b!5152916 () Bool)

(declare-fun tp!1441211 () Bool)

(declare-fun tp!1441215 () Bool)

(assert (=> b!5152916 (= e!3212223 (and tp!1441211 tp!1441215))))

(declare-fun b!5152917 () Bool)

(declare-fun tp!1441214 () Bool)

(assert (=> b!5152917 (= e!3212223 tp!1441214)))

(declare-fun b!5152915 () Bool)

(assert (=> b!5152915 (= e!3212223 tp_is_empty!38171)))

(assert (= (and b!5152777 ((_ is ElementMatch!14511) (regTwo!29534 expr!117))) b!5152915))

(assert (= (and b!5152777 ((_ is Concat!23356) (regTwo!29534 expr!117))) b!5152916))

(assert (= (and b!5152777 ((_ is Star!14511) (regTwo!29534 expr!117))) b!5152917))

(assert (= (and b!5152777 ((_ is Union!14511) (regTwo!29534 expr!117))) b!5152918))

(declare-fun b!5152923 () Bool)

(declare-fun e!3212226 () Bool)

(declare-fun tp!1441220 () Bool)

(declare-fun tp!1441221 () Bool)

(assert (=> b!5152923 (= e!3212226 (and tp!1441220 tp!1441221))))

(assert (=> b!5152781 (= tp!1441145 e!3212226)))

(assert (= (and b!5152781 ((_ is Cons!59818) (exprs!4395 ctx!100))) b!5152923))

(declare-fun b!5152927 () Bool)

(declare-fun e!3212227 () Bool)

(declare-fun tp!1441224 () Bool)

(declare-fun tp!1441223 () Bool)

(assert (=> b!5152927 (= e!3212227 (and tp!1441224 tp!1441223))))

(assert (=> b!5152784 (= tp!1441147 e!3212227)))

(declare-fun b!5152925 () Bool)

(declare-fun tp!1441222 () Bool)

(declare-fun tp!1441226 () Bool)

(assert (=> b!5152925 (= e!3212227 (and tp!1441222 tp!1441226))))

(declare-fun b!5152926 () Bool)

(declare-fun tp!1441225 () Bool)

(assert (=> b!5152926 (= e!3212227 tp!1441225)))

(declare-fun b!5152924 () Bool)

(assert (=> b!5152924 (= e!3212227 tp_is_empty!38171)))

(assert (= (and b!5152784 ((_ is ElementMatch!14511) (regOne!29535 expr!117))) b!5152924))

(assert (= (and b!5152784 ((_ is Concat!23356) (regOne!29535 expr!117))) b!5152925))

(assert (= (and b!5152784 ((_ is Star!14511) (regOne!29535 expr!117))) b!5152926))

(assert (= (and b!5152784 ((_ is Union!14511) (regOne!29535 expr!117))) b!5152927))

(declare-fun b!5152931 () Bool)

(declare-fun e!3212228 () Bool)

(declare-fun tp!1441229 () Bool)

(declare-fun tp!1441228 () Bool)

(assert (=> b!5152931 (= e!3212228 (and tp!1441229 tp!1441228))))

(assert (=> b!5152784 (= tp!1441146 e!3212228)))

(declare-fun b!5152929 () Bool)

(declare-fun tp!1441227 () Bool)

(declare-fun tp!1441231 () Bool)

(assert (=> b!5152929 (= e!3212228 (and tp!1441227 tp!1441231))))

(declare-fun b!5152930 () Bool)

(declare-fun tp!1441230 () Bool)

(assert (=> b!5152930 (= e!3212228 tp!1441230)))

(declare-fun b!5152928 () Bool)

(assert (=> b!5152928 (= e!3212228 tp_is_empty!38171)))

(assert (= (and b!5152784 ((_ is ElementMatch!14511) (regTwo!29535 expr!117))) b!5152928))

(assert (= (and b!5152784 ((_ is Concat!23356) (regTwo!29535 expr!117))) b!5152929))

(assert (= (and b!5152784 ((_ is Star!14511) (regTwo!29535 expr!117))) b!5152930))

(assert (= (and b!5152784 ((_ is Union!14511) (regTwo!29535 expr!117))) b!5152931))

(check-sat (not b!5152912) tp_is_empty!38171 (not b!5152926) (not bm!360912) (not b!5152925) (not b!5152813) (not d!1664601) (not b!5152923) (not b!5152893) (not b!5152908) (not b!5152930) (not b!5152929) (not b!5152916) (not b!5152931) (not bm!360927) (not bm!360911) (not b!5152927) (not d!1664597) (not d!1664617) (not b!5152910) (not d!1664593) (not b!5152909) (not b!5152913) (not d!1664615) (not b!5152918) (not b!5152917) (not b!5152914) (not bm!360926))
(check-sat)
(get-model)

(declare-fun b!5152932 () Bool)

(declare-fun e!3212230 () Bool)

(declare-fun call!360936 () Bool)

(assert (=> b!5152932 (= e!3212230 call!360936)))

(declare-fun b!5152933 () Bool)

(declare-fun e!3212229 () Bool)

(assert (=> b!5152933 (= e!3212229 call!360936)))

(declare-fun b!5152934 () Bool)

(declare-fun e!3212231 () Bool)

(declare-fun e!3212233 () Bool)

(assert (=> b!5152934 (= e!3212231 e!3212233)))

(declare-fun c!887133 () Bool)

(assert (=> b!5152934 (= c!887133 ((_ is Star!14511) (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))))))

(declare-fun b!5152935 () Bool)

(declare-fun e!3212235 () Bool)

(assert (=> b!5152935 (= e!3212233 e!3212235)))

(declare-fun c!887134 () Bool)

(assert (=> b!5152935 (= c!887134 ((_ is Union!14511) (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))))))

(declare-fun b!5152936 () Bool)

(declare-fun e!3212232 () Bool)

(assert (=> b!5152936 (= e!3212232 e!3212229)))

(declare-fun res!2192451 () Bool)

(assert (=> b!5152936 (=> (not res!2192451) (not e!3212229))))

(declare-fun call!360934 () Bool)

(assert (=> b!5152936 (= res!2192451 call!360934)))

(declare-fun bm!360930 () Bool)

(assert (=> bm!360930 (= call!360936 (validRegex!6366 (ite c!887134 (regTwo!29535 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))) (regTwo!29534 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))))))))

(declare-fun bm!360931 () Bool)

(declare-fun call!360935 () Bool)

(assert (=> bm!360931 (= call!360934 call!360935)))

(declare-fun b!5152937 () Bool)

(declare-fun e!3212234 () Bool)

(assert (=> b!5152937 (= e!3212233 e!3212234)))

(declare-fun res!2192449 () Bool)

(assert (=> b!5152937 (= res!2192449 (not (nullable!4867 (reg!14840 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))))))))

(assert (=> b!5152937 (=> (not res!2192449) (not e!3212234))))

(declare-fun b!5152938 () Bool)

(assert (=> b!5152938 (= e!3212234 call!360935)))

(declare-fun b!5152939 () Bool)

(declare-fun res!2192447 () Bool)

(assert (=> b!5152939 (=> res!2192447 e!3212232)))

(assert (=> b!5152939 (= res!2192447 (not ((_ is Concat!23356) (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117)))))))))

(assert (=> b!5152939 (= e!3212235 e!3212232)))

(declare-fun b!5152940 () Bool)

(declare-fun res!2192448 () Bool)

(assert (=> b!5152940 (=> (not res!2192448) (not e!3212230))))

(assert (=> b!5152940 (= res!2192448 call!360934)))

(assert (=> b!5152940 (= e!3212235 e!3212230)))

(declare-fun bm!360929 () Bool)

(assert (=> bm!360929 (= call!360935 (validRegex!6366 (ite c!887133 (reg!14840 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))) (ite c!887134 (regOne!29535 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))) (regOne!29534 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117)))))))))))

(declare-fun d!1664623 () Bool)

(declare-fun res!2192450 () Bool)

(assert (=> d!1664623 (=> res!2192450 e!3212231)))

(assert (=> d!1664623 (= res!2192450 ((_ is ElementMatch!14511) (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))))))

(assert (=> d!1664623 (= (validRegex!6366 (ite c!887131 (reg!14840 (regTwo!29534 expr!117)) (ite c!887132 (regOne!29535 (regTwo!29534 expr!117)) (regOne!29534 (regTwo!29534 expr!117))))) e!3212231)))

(assert (= (and d!1664623 (not res!2192450)) b!5152934))

(assert (= (and b!5152934 c!887133) b!5152937))

(assert (= (and b!5152934 (not c!887133)) b!5152935))

(assert (= (and b!5152937 res!2192449) b!5152938))

(assert (= (and b!5152935 c!887134) b!5152940))

(assert (= (and b!5152935 (not c!887134)) b!5152939))

(assert (= (and b!5152940 res!2192448) b!5152932))

(assert (= (and b!5152939 (not res!2192447)) b!5152936))

(assert (= (and b!5152936 res!2192451) b!5152933))

(assert (= (or b!5152932 b!5152933) bm!360930))

(assert (= (or b!5152940 b!5152936) bm!360931))

(assert (= (or b!5152938 bm!360931) bm!360929))

(declare-fun m!6209860 () Bool)

(assert (=> bm!360930 m!6209860))

(declare-fun m!6209862 () Bool)

(assert (=> b!5152937 m!6209862))

(declare-fun m!6209864 () Bool)

(assert (=> bm!360929 m!6209864))

(assert (=> bm!360926 d!1664623))

(declare-fun d!1664625 () Bool)

(declare-fun res!2192456 () Bool)

(declare-fun e!3212240 () Bool)

(assert (=> d!1664625 (=> res!2192456 e!3212240)))

(assert (=> d!1664625 (= res!2192456 ((_ is Nil!59818) (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117))))))))

(assert (=> d!1664625 (= (forall!14003 (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)))) lambda!257355) e!3212240)))

(declare-fun b!5152945 () Bool)

(declare-fun e!3212241 () Bool)

(assert (=> b!5152945 (= e!3212240 e!3212241)))

(declare-fun res!2192457 () Bool)

(assert (=> b!5152945 (=> (not res!2192457) (not e!3212241))))

(declare-fun dynLambda!23801 (Int Regex!14511) Bool)

(assert (=> b!5152945 (= res!2192457 (dynLambda!23801 lambda!257355 (h!66266 (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)))))))))

(declare-fun b!5152946 () Bool)

(assert (=> b!5152946 (= e!3212241 (forall!14003 (t!372997 (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117))))) lambda!257355))))

(assert (= (and d!1664625 (not res!2192456)) b!5152945))

(assert (= (and b!5152945 res!2192457) b!5152946))

(declare-fun b_lambda!200401 () Bool)

(assert (=> (not b_lambda!200401) (not b!5152945)))

(declare-fun m!6209866 () Bool)

(assert (=> b!5152945 m!6209866))

(declare-fun m!6209868 () Bool)

(assert (=> b!5152946 m!6209868))

(assert (=> d!1664617 d!1664625))

(declare-fun b!5152947 () Bool)

(declare-fun e!3212243 () Bool)

(declare-fun call!360939 () Bool)

(assert (=> b!5152947 (= e!3212243 call!360939)))

(declare-fun b!5152948 () Bool)

(declare-fun e!3212242 () Bool)

(assert (=> b!5152948 (= e!3212242 call!360939)))

(declare-fun b!5152949 () Bool)

(declare-fun e!3212244 () Bool)

(declare-fun e!3212246 () Bool)

(assert (=> b!5152949 (= e!3212244 e!3212246)))

(declare-fun c!887135 () Bool)

(assert (=> b!5152949 (= c!887135 ((_ is Star!14511) (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))))))

(declare-fun b!5152950 () Bool)

(declare-fun e!3212248 () Bool)

(assert (=> b!5152950 (= e!3212246 e!3212248)))

(declare-fun c!887136 () Bool)

(assert (=> b!5152950 (= c!887136 ((_ is Union!14511) (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))))))

(declare-fun b!5152951 () Bool)

(declare-fun e!3212245 () Bool)

(assert (=> b!5152951 (= e!3212245 e!3212242)))

(declare-fun res!2192462 () Bool)

(assert (=> b!5152951 (=> (not res!2192462) (not e!3212242))))

(declare-fun call!360937 () Bool)

(assert (=> b!5152951 (= res!2192462 call!360937)))

(declare-fun bm!360933 () Bool)

(assert (=> bm!360933 (= call!360939 (validRegex!6366 (ite c!887136 (regTwo!29535 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))) (regTwo!29534 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))))))))

(declare-fun bm!360934 () Bool)

(declare-fun call!360938 () Bool)

(assert (=> bm!360934 (= call!360937 call!360938)))

(declare-fun b!5152952 () Bool)

(declare-fun e!3212247 () Bool)

(assert (=> b!5152952 (= e!3212246 e!3212247)))

(declare-fun res!2192460 () Bool)

(assert (=> b!5152952 (= res!2192460 (not (nullable!4867 (reg!14840 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))))))))

(assert (=> b!5152952 (=> (not res!2192460) (not e!3212247))))

(declare-fun b!5152953 () Bool)

(assert (=> b!5152953 (= e!3212247 call!360938)))

(declare-fun b!5152954 () Bool)

(declare-fun res!2192458 () Bool)

(assert (=> b!5152954 (=> res!2192458 e!3212245)))

(assert (=> b!5152954 (= res!2192458 (not ((_ is Concat!23356) (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117))))))))

(assert (=> b!5152954 (= e!3212248 e!3212245)))

(declare-fun b!5152955 () Bool)

(declare-fun res!2192459 () Bool)

(assert (=> b!5152955 (=> (not res!2192459) (not e!3212243))))

(assert (=> b!5152955 (= res!2192459 call!360937)))

(assert (=> b!5152955 (= e!3212248 e!3212243)))

(declare-fun bm!360932 () Bool)

(assert (=> bm!360932 (= call!360938 (validRegex!6366 (ite c!887135 (reg!14840 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))) (ite c!887136 (regOne!29535 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))) (regOne!29534 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117))))))))))

(declare-fun d!1664627 () Bool)

(declare-fun res!2192461 () Bool)

(assert (=> d!1664627 (=> res!2192461 e!3212244)))

(assert (=> d!1664627 (= res!2192461 ((_ is ElementMatch!14511) (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))))))

(assert (=> d!1664627 (= (validRegex!6366 (ite c!887121 (reg!14840 expr!117) (ite c!887122 (regOne!29535 expr!117) (regOne!29534 expr!117)))) e!3212244)))

(assert (= (and d!1664627 (not res!2192461)) b!5152949))

(assert (= (and b!5152949 c!887135) b!5152952))

(assert (= (and b!5152949 (not c!887135)) b!5152950))

(assert (= (and b!5152952 res!2192460) b!5152953))

(assert (= (and b!5152950 c!887136) b!5152955))

(assert (= (and b!5152950 (not c!887136)) b!5152954))

(assert (= (and b!5152955 res!2192459) b!5152947))

(assert (= (and b!5152954 (not res!2192458)) b!5152951))

(assert (= (and b!5152951 res!2192462) b!5152948))

(assert (= (or b!5152947 b!5152948) bm!360933))

(assert (= (or b!5152955 b!5152951) bm!360934))

(assert (= (or b!5152953 bm!360934) bm!360932))

(declare-fun m!6209870 () Bool)

(assert (=> bm!360933 m!6209870))

(declare-fun m!6209872 () Bool)

(assert (=> b!5152952 m!6209872))

(declare-fun m!6209874 () Bool)

(assert (=> bm!360932 m!6209874))

(assert (=> bm!360911 d!1664627))

(declare-fun b!5152956 () Bool)

(declare-fun e!3212250 () Bool)

(declare-fun call!360942 () Bool)

(assert (=> b!5152956 (= e!3212250 call!360942)))

(declare-fun b!5152957 () Bool)

(declare-fun e!3212249 () Bool)

(assert (=> b!5152957 (= e!3212249 call!360942)))

(declare-fun b!5152958 () Bool)

(declare-fun e!3212251 () Bool)

(declare-fun e!3212253 () Bool)

(assert (=> b!5152958 (= e!3212251 e!3212253)))

(declare-fun c!887137 () Bool)

(assert (=> b!5152958 (= c!887137 ((_ is Star!14511) (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))

(declare-fun b!5152959 () Bool)

(declare-fun e!3212255 () Bool)

(assert (=> b!5152959 (= e!3212253 e!3212255)))

(declare-fun c!887138 () Bool)

(assert (=> b!5152959 (= c!887138 ((_ is Union!14511) (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))

(declare-fun b!5152960 () Bool)

(declare-fun e!3212252 () Bool)

(assert (=> b!5152960 (= e!3212252 e!3212249)))

(declare-fun res!2192467 () Bool)

(assert (=> b!5152960 (=> (not res!2192467) (not e!3212249))))

(declare-fun call!360940 () Bool)

(assert (=> b!5152960 (= res!2192467 call!360940)))

(declare-fun bm!360936 () Bool)

(assert (=> bm!360936 (= call!360942 (validRegex!6366 (ite c!887138 (regTwo!29535 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))) (regTwo!29534 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))))

(declare-fun bm!360937 () Bool)

(declare-fun call!360941 () Bool)

(assert (=> bm!360937 (= call!360940 call!360941)))

(declare-fun b!5152961 () Bool)

(declare-fun e!3212254 () Bool)

(assert (=> b!5152961 (= e!3212253 e!3212254)))

(declare-fun res!2192465 () Bool)

(assert (=> b!5152961 (= res!2192465 (not (nullable!4867 (reg!14840 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))))

(assert (=> b!5152961 (=> (not res!2192465) (not e!3212254))))

(declare-fun b!5152962 () Bool)

(assert (=> b!5152962 (= e!3212254 call!360941)))

(declare-fun b!5152963 () Bool)

(declare-fun res!2192463 () Bool)

(assert (=> b!5152963 (=> res!2192463 e!3212252)))

(assert (=> b!5152963 (= res!2192463 (not ((_ is Concat!23356) (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117)))))))

(assert (=> b!5152963 (= e!3212255 e!3212252)))

(declare-fun b!5152964 () Bool)

(declare-fun res!2192464 () Bool)

(assert (=> b!5152964 (=> (not res!2192464) (not e!3212250))))

(assert (=> b!5152964 (= res!2192464 call!360940)))

(assert (=> b!5152964 (= e!3212255 e!3212250)))

(declare-fun bm!360935 () Bool)

(assert (=> bm!360935 (= call!360941 (validRegex!6366 (ite c!887137 (reg!14840 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))) (ite c!887138 (regOne!29535 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))) (regOne!29534 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117)))))))))

(declare-fun d!1664629 () Bool)

(declare-fun res!2192466 () Bool)

(assert (=> d!1664629 (=> res!2192466 e!3212251)))

(assert (=> d!1664629 (= res!2192466 ((_ is ElementMatch!14511) (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))

(assert (=> d!1664629 (= (validRegex!6366 (ite c!887122 (regTwo!29535 expr!117) (regTwo!29534 expr!117))) e!3212251)))

(assert (= (and d!1664629 (not res!2192466)) b!5152958))

(assert (= (and b!5152958 c!887137) b!5152961))

(assert (= (and b!5152958 (not c!887137)) b!5152959))

(assert (= (and b!5152961 res!2192465) b!5152962))

(assert (= (and b!5152959 c!887138) b!5152964))

(assert (= (and b!5152959 (not c!887138)) b!5152963))

(assert (= (and b!5152964 res!2192464) b!5152956))

(assert (= (and b!5152963 (not res!2192463)) b!5152960))

(assert (= (and b!5152960 res!2192467) b!5152957))

(assert (= (or b!5152956 b!5152957) bm!360936))

(assert (= (or b!5152964 b!5152960) bm!360937))

(assert (= (or b!5152962 bm!360937) bm!360935))

(declare-fun m!6209876 () Bool)

(assert (=> bm!360936 m!6209876))

(declare-fun m!6209878 () Bool)

(assert (=> b!5152961 m!6209878))

(declare-fun m!6209882 () Bool)

(assert (=> bm!360935 m!6209882))

(assert (=> bm!360912 d!1664629))

(declare-fun b!5153023 () Bool)

(declare-fun e!3212308 () Bool)

(declare-fun e!3212305 () Bool)

(assert (=> b!5153023 (= e!3212308 e!3212305)))

(declare-fun res!2192511 () Bool)

(declare-fun call!360960 () Bool)

(assert (=> b!5153023 (= res!2192511 call!360960)))

(assert (=> b!5153023 (=> (not res!2192511) (not e!3212305))))

(declare-fun bm!360955 () Bool)

(declare-fun c!887148 () Bool)

(assert (=> bm!360955 (= call!360960 (lostCause!1575 (ite c!887148 (regOne!29535 expr!117) (regOne!29534 expr!117))))))

(declare-fun b!5153024 () Bool)

(declare-fun e!3212307 () Bool)

(declare-fun call!360961 () Bool)

(assert (=> b!5153024 (= e!3212307 call!360961)))

(declare-fun b!5153025 () Bool)

(declare-fun e!3212309 () Bool)

(declare-fun e!3212306 () Bool)

(assert (=> b!5153025 (= e!3212309 e!3212306)))

(declare-fun res!2192512 () Bool)

(assert (=> b!5153025 (=> (not res!2192512) (not e!3212306))))

(assert (=> b!5153025 (= res!2192512 (and (not ((_ is ElementMatch!14511) expr!117)) (not ((_ is Star!14511) expr!117))))))

(declare-fun d!1664633 () Bool)

(declare-fun lt!2121936 () Bool)

(declare-datatypes ((List!59944 0))(
  ( (Nil!59820) (Cons!59820 (h!66268 C!29288) (t!373001 List!59944)) )
))
(declare-datatypes ((Option!14812 0))(
  ( (None!14811) (Some!14811 (v!50840 List!59944)) )
))
(declare-fun isEmpty!32073 (Option!14812) Bool)

(declare-fun getLanguageWitness!977 (Regex!14511) Option!14812)

(assert (=> d!1664633 (= lt!2121936 (isEmpty!32073 (getLanguageWitness!977 expr!117)))))

(declare-fun e!3212310 () Bool)

(assert (=> d!1664633 (= lt!2121936 e!3212310)))

(declare-fun res!2192509 () Bool)

(assert (=> d!1664633 (=> (not res!2192509) (not e!3212310))))

(assert (=> d!1664633 (= res!2192509 (not ((_ is EmptyExpr!14511) expr!117)))))

(assert (=> d!1664633 (= (lostCauseFct!385 expr!117) lt!2121936)))

(declare-fun b!5153026 () Bool)

(assert (=> b!5153026 (= e!3212306 e!3212308)))

(assert (=> b!5153026 (= c!887148 ((_ is Union!14511) expr!117))))

(declare-fun bm!360956 () Bool)

(assert (=> bm!360956 (= call!360961 (lostCause!1575 (ite c!887148 (regTwo!29535 expr!117) (regTwo!29534 expr!117))))))

(declare-fun b!5153027 () Bool)

(assert (=> b!5153027 (= e!3212310 e!3212309)))

(declare-fun res!2192510 () Bool)

(assert (=> b!5153027 (=> res!2192510 e!3212309)))

(assert (=> b!5153027 (= res!2192510 ((_ is EmptyLang!14511) expr!117))))

(declare-fun b!5153028 () Bool)

(assert (=> b!5153028 (= e!3212308 e!3212307)))

(declare-fun res!2192508 () Bool)

(assert (=> b!5153028 (= res!2192508 call!360960)))

(assert (=> b!5153028 (=> res!2192508 e!3212307)))

(declare-fun b!5153029 () Bool)

(assert (=> b!5153029 (= e!3212305 call!360961)))

(assert (= (and d!1664633 res!2192509) b!5153027))

(assert (= (and b!5153027 (not res!2192510)) b!5153025))

(assert (= (and b!5153025 res!2192512) b!5153026))

(assert (= (and b!5153026 c!887148) b!5153023))

(assert (= (and b!5153026 (not c!887148)) b!5153028))

(assert (= (and b!5153023 res!2192511) b!5153029))

(assert (= (and b!5153028 (not res!2192508)) b!5153024))

(assert (= (or b!5153023 b!5153028) bm!360955))

(assert (= (or b!5153029 b!5153024) bm!360956))

(declare-fun m!6209900 () Bool)

(assert (=> bm!360955 m!6209900))

(declare-fun m!6209902 () Bool)

(assert (=> d!1664633 m!6209902))

(assert (=> d!1664633 m!6209902))

(declare-fun m!6209904 () Bool)

(assert (=> d!1664633 m!6209904))

(declare-fun m!6209906 () Bool)

(assert (=> bm!360956 m!6209906))

(assert (=> d!1664597 d!1664633))

(declare-fun b!5153070 () Bool)

(declare-fun e!3212348 () Bool)

(declare-fun e!3212346 () Bool)

(assert (=> b!5153070 (= e!3212348 e!3212346)))

(declare-fun c!887154 () Bool)

(assert (=> b!5153070 (= c!887154 ((_ is Union!14511) (regOne!29534 expr!117)))))

(declare-fun bm!360966 () Bool)

(declare-fun call!360972 () Bool)

(assert (=> bm!360966 (= call!360972 (nullable!4867 (ite c!887154 (regTwo!29535 (regOne!29534 expr!117)) (regOne!29534 (regOne!29534 expr!117)))))))

(declare-fun b!5153072 () Bool)

(declare-fun e!3212347 () Bool)

(assert (=> b!5153072 (= e!3212347 call!360972)))

(declare-fun b!5153073 () Bool)

(declare-fun e!3212344 () Bool)

(declare-fun e!3212349 () Bool)

(assert (=> b!5153073 (= e!3212344 e!3212349)))

(declare-fun res!2192543 () Bool)

(assert (=> b!5153073 (=> (not res!2192543) (not e!3212349))))

(assert (=> b!5153073 (= res!2192543 (and (not ((_ is EmptyLang!14511) (regOne!29534 expr!117))) (not ((_ is ElementMatch!14511) (regOne!29534 expr!117)))))))

(declare-fun b!5153074 () Bool)

(declare-fun e!3212345 () Bool)

(assert (=> b!5153074 (= e!3212346 e!3212345)))

(declare-fun res!2192544 () Bool)

(assert (=> b!5153074 (= res!2192544 call!360972)))

(assert (=> b!5153074 (=> (not res!2192544) (not e!3212345))))

(declare-fun bm!360967 () Bool)

(declare-fun call!360971 () Bool)

(assert (=> bm!360967 (= call!360971 (nullable!4867 (ite c!887154 (regOne!29535 (regOne!29534 expr!117)) (regTwo!29534 (regOne!29534 expr!117)))))))

(declare-fun d!1664641 () Bool)

(declare-fun res!2192541 () Bool)

(assert (=> d!1664641 (=> res!2192541 e!3212344)))

(assert (=> d!1664641 (= res!2192541 ((_ is EmptyExpr!14511) (regOne!29534 expr!117)))))

(assert (=> d!1664641 (= (nullableFct!1345 (regOne!29534 expr!117)) e!3212344)))

(declare-fun b!5153071 () Bool)

(assert (=> b!5153071 (= e!3212346 e!3212347)))

(declare-fun res!2192545 () Bool)

(assert (=> b!5153071 (= res!2192545 call!360971)))

(assert (=> b!5153071 (=> res!2192545 e!3212347)))

(declare-fun b!5153075 () Bool)

(assert (=> b!5153075 (= e!3212345 call!360971)))

(declare-fun b!5153076 () Bool)

(assert (=> b!5153076 (= e!3212349 e!3212348)))

(declare-fun res!2192542 () Bool)

(assert (=> b!5153076 (=> res!2192542 e!3212348)))

(assert (=> b!5153076 (= res!2192542 ((_ is Star!14511) (regOne!29534 expr!117)))))

(assert (= (and d!1664641 (not res!2192541)) b!5153073))

(assert (= (and b!5153073 res!2192543) b!5153076))

(assert (= (and b!5153076 (not res!2192542)) b!5153070))

(assert (= (and b!5153070 c!887154) b!5153071))

(assert (= (and b!5153070 (not c!887154)) b!5153074))

(assert (= (and b!5153071 (not res!2192545)) b!5153072))

(assert (= (and b!5153074 res!2192544) b!5153075))

(assert (= (or b!5153072 b!5153074) bm!360966))

(assert (= (or b!5153071 b!5153075) bm!360967))

(declare-fun m!6209926 () Bool)

(assert (=> bm!360966 m!6209926))

(declare-fun m!6209928 () Bool)

(assert (=> bm!360967 m!6209928))

(assert (=> d!1664593 d!1664641))

(declare-fun bs!1202065 () Bool)

(declare-fun d!1664653 () Bool)

(assert (= bs!1202065 (and d!1664653 d!1664601)))

(declare-fun lambda!257361 () Int)

(assert (=> bs!1202065 (not (= lambda!257361 lambda!257351))))

(declare-fun bs!1202066 () Bool)

(assert (= bs!1202066 (and d!1664653 d!1664615)))

(assert (=> bs!1202066 (not (= lambda!257361 lambda!257354))))

(declare-fun bs!1202067 () Bool)

(assert (= bs!1202067 (and d!1664653 d!1664617)))

(assert (=> bs!1202067 (not (= lambda!257361 lambda!257355))))

(assert (=> d!1664653 true))

(declare-fun order!26993 () Int)

(declare-fun dynLambda!23804 (Int Int) Int)

(assert (=> d!1664653 (< (dynLambda!23804 order!26993 lambda!257354) (dynLambda!23804 order!26993 lambda!257361))))

(assert (=> d!1664653 (= (exists!1852 (exprs!4395 ctx!100) lambda!257354) (not (forall!14003 (exprs!4395 ctx!100) lambda!257361)))))

(declare-fun bs!1202068 () Bool)

(assert (= bs!1202068 d!1664653))

(declare-fun m!6209944 () Bool)

(assert (=> bs!1202068 m!6209944))

(assert (=> d!1664615 d!1664653))

(declare-fun d!1664659 () Bool)

(assert (=> d!1664659 (= (nullable!4867 (reg!14840 (regTwo!29534 expr!117))) (nullableFct!1345 (reg!14840 (regTwo!29534 expr!117))))))

(declare-fun bs!1202069 () Bool)

(assert (= bs!1202069 d!1664659))

(declare-fun m!6209946 () Bool)

(assert (=> bs!1202069 m!6209946))

(assert (=> b!5152893 d!1664659))

(declare-fun d!1664661 () Bool)

(assert (=> d!1664661 (= (nullable!4867 (reg!14840 expr!117)) (nullableFct!1345 (reg!14840 expr!117)))))

(declare-fun bs!1202070 () Bool)

(assert (= bs!1202070 d!1664661))

(declare-fun m!6209948 () Bool)

(assert (=> bs!1202070 m!6209948))

(assert (=> b!5152813 d!1664661))

(declare-fun b!5153122 () Bool)

(declare-fun e!3212372 () Bool)

(declare-fun call!360981 () Bool)

(assert (=> b!5153122 (= e!3212372 call!360981)))

(declare-fun b!5153123 () Bool)

(declare-fun e!3212371 () Bool)

(assert (=> b!5153123 (= e!3212371 call!360981)))

(declare-fun b!5153124 () Bool)

(declare-fun e!3212373 () Bool)

(declare-fun e!3212375 () Bool)

(assert (=> b!5153124 (= e!3212373 e!3212375)))

(declare-fun c!887159 () Bool)

(assert (=> b!5153124 (= c!887159 ((_ is Star!14511) (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))))))

(declare-fun b!5153125 () Bool)

(declare-fun e!3212377 () Bool)

(assert (=> b!5153125 (= e!3212375 e!3212377)))

(declare-fun c!887160 () Bool)

(assert (=> b!5153125 (= c!887160 ((_ is Union!14511) (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))))))

(declare-fun b!5153126 () Bool)

(declare-fun e!3212374 () Bool)

(assert (=> b!5153126 (= e!3212374 e!3212371)))

(declare-fun res!2192560 () Bool)

(assert (=> b!5153126 (=> (not res!2192560) (not e!3212371))))

(declare-fun call!360979 () Bool)

(assert (=> b!5153126 (= res!2192560 call!360979)))

(declare-fun bm!360975 () Bool)

(assert (=> bm!360975 (= call!360981 (validRegex!6366 (ite c!887160 (regTwo!29535 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))) (regTwo!29534 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))))))))

(declare-fun bm!360976 () Bool)

(declare-fun call!360980 () Bool)

(assert (=> bm!360976 (= call!360979 call!360980)))

(declare-fun b!5153127 () Bool)

(declare-fun e!3212376 () Bool)

(assert (=> b!5153127 (= e!3212375 e!3212376)))

(declare-fun res!2192558 () Bool)

(assert (=> b!5153127 (= res!2192558 (not (nullable!4867 (reg!14840 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))))))))

(assert (=> b!5153127 (=> (not res!2192558) (not e!3212376))))

(declare-fun b!5153128 () Bool)

(assert (=> b!5153128 (= e!3212376 call!360980)))

(declare-fun b!5153129 () Bool)

(declare-fun res!2192556 () Bool)

(assert (=> b!5153129 (=> res!2192556 e!3212374)))

(assert (=> b!5153129 (= res!2192556 (not ((_ is Concat!23356) (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117))))))))

(assert (=> b!5153129 (= e!3212377 e!3212374)))

(declare-fun b!5153130 () Bool)

(declare-fun res!2192557 () Bool)

(assert (=> b!5153130 (=> (not res!2192557) (not e!3212372))))

(assert (=> b!5153130 (= res!2192557 call!360979)))

(assert (=> b!5153130 (= e!3212377 e!3212372)))

(declare-fun bm!360974 () Bool)

(assert (=> bm!360974 (= call!360980 (validRegex!6366 (ite c!887159 (reg!14840 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))) (ite c!887160 (regOne!29535 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))) (regOne!29534 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117))))))))))

(declare-fun d!1664663 () Bool)

(declare-fun res!2192559 () Bool)

(assert (=> d!1664663 (=> res!2192559 e!3212373)))

(assert (=> d!1664663 (= res!2192559 ((_ is ElementMatch!14511) (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))))))

(assert (=> d!1664663 (= (validRegex!6366 (ite c!887132 (regTwo!29535 (regTwo!29534 expr!117)) (regTwo!29534 (regTwo!29534 expr!117)))) e!3212373)))

(assert (= (and d!1664663 (not res!2192559)) b!5153124))

(assert (= (and b!5153124 c!887159) b!5153127))

(assert (= (and b!5153124 (not c!887159)) b!5153125))

(assert (= (and b!5153127 res!2192558) b!5153128))

(assert (= (and b!5153125 c!887160) b!5153130))

(assert (= (and b!5153125 (not c!887160)) b!5153129))

(assert (= (and b!5153130 res!2192557) b!5153122))

(assert (= (and b!5153129 (not res!2192556)) b!5153126))

(assert (= (and b!5153126 res!2192560) b!5153123))

(assert (= (or b!5153122 b!5153123) bm!360975))

(assert (= (or b!5153130 b!5153126) bm!360976))

(assert (= (or b!5153128 bm!360976) bm!360974))

(declare-fun m!6209950 () Bool)

(assert (=> bm!360975 m!6209950))

(declare-fun m!6209952 () Bool)

(assert (=> b!5153127 m!6209952))

(declare-fun m!6209954 () Bool)

(assert (=> bm!360974 m!6209954))

(assert (=> bm!360927 d!1664663))

(declare-fun d!1664665 () Bool)

(declare-fun res!2192561 () Bool)

(declare-fun e!3212382 () Bool)

(assert (=> d!1664665 (=> res!2192561 e!3212382)))

(assert (=> d!1664665 (= res!2192561 ((_ is Nil!59818) (exprs!4395 ctx!100)))))

(assert (=> d!1664665 (= (forall!14003 (exprs!4395 ctx!100) lambda!257351) e!3212382)))

(declare-fun b!5153147 () Bool)

(declare-fun e!3212383 () Bool)

(assert (=> b!5153147 (= e!3212382 e!3212383)))

(declare-fun res!2192562 () Bool)

(assert (=> b!5153147 (=> (not res!2192562) (not e!3212383))))

(assert (=> b!5153147 (= res!2192562 (dynLambda!23801 lambda!257351 (h!66266 (exprs!4395 ctx!100))))))

(declare-fun b!5153148 () Bool)

(assert (=> b!5153148 (= e!3212383 (forall!14003 (t!372997 (exprs!4395 ctx!100)) lambda!257351))))

(assert (= (and d!1664665 (not res!2192561)) b!5153147))

(assert (= (and b!5153147 res!2192562) b!5153148))

(declare-fun b_lambda!200407 () Bool)

(assert (=> (not b_lambda!200407) (not b!5153147)))

(declare-fun m!6209956 () Bool)

(assert (=> b!5153147 m!6209956))

(declare-fun m!6209958 () Bool)

(assert (=> b!5153148 m!6209958))

(assert (=> d!1664601 d!1664665))

(declare-fun b!5153161 () Bool)

(declare-fun e!3212386 () Bool)

(declare-fun tp!1441296 () Bool)

(declare-fun tp!1441295 () Bool)

(assert (=> b!5153161 (= e!3212386 (and tp!1441296 tp!1441295))))

(assert (=> b!5152927 (= tp!1441224 e!3212386)))

(declare-fun b!5153158 () Bool)

(declare-fun tp!1441294 () Bool)

(declare-fun tp!1441298 () Bool)

(assert (=> b!5153158 (= e!3212386 (and tp!1441294 tp!1441298))))

(declare-fun b!5153159 () Bool)

(declare-fun tp!1441297 () Bool)

(assert (=> b!5153159 (= e!3212386 tp!1441297)))

(declare-fun b!5153157 () Bool)

(assert (=> b!5153157 (= e!3212386 tp_is_empty!38171)))

(assert (= (and b!5152927 ((_ is ElementMatch!14511) (regOne!29535 (regOne!29535 expr!117)))) b!5153157))

(assert (= (and b!5152927 ((_ is Concat!23356) (regOne!29535 (regOne!29535 expr!117)))) b!5153158))

(assert (= (and b!5152927 ((_ is Star!14511) (regOne!29535 (regOne!29535 expr!117)))) b!5153159))

(assert (= (and b!5152927 ((_ is Union!14511) (regOne!29535 (regOne!29535 expr!117)))) b!5153161))

(declare-fun b!5153172 () Bool)

(declare-fun e!3212389 () Bool)

(declare-fun tp!1441311 () Bool)

(declare-fun tp!1441310 () Bool)

(assert (=> b!5153172 (= e!3212389 (and tp!1441311 tp!1441310))))

(assert (=> b!5152927 (= tp!1441223 e!3212389)))

(declare-fun b!5153170 () Bool)

(declare-fun tp!1441309 () Bool)

(declare-fun tp!1441313 () Bool)

(assert (=> b!5153170 (= e!3212389 (and tp!1441309 tp!1441313))))

(declare-fun b!5153171 () Bool)

(declare-fun tp!1441312 () Bool)

(assert (=> b!5153171 (= e!3212389 tp!1441312)))

(declare-fun b!5153169 () Bool)

(assert (=> b!5153169 (= e!3212389 tp_is_empty!38171)))

(assert (= (and b!5152927 ((_ is ElementMatch!14511) (regTwo!29535 (regOne!29535 expr!117)))) b!5153169))

(assert (= (and b!5152927 ((_ is Concat!23356) (regTwo!29535 (regOne!29535 expr!117)))) b!5153170))

(assert (= (and b!5152927 ((_ is Star!14511) (regTwo!29535 (regOne!29535 expr!117)))) b!5153171))

(assert (= (and b!5152927 ((_ is Union!14511) (regTwo!29535 (regOne!29535 expr!117)))) b!5153172))

(declare-fun b!5153180 () Bool)

(declare-fun e!3212391 () Bool)

(declare-fun tp!1441321 () Bool)

(declare-fun tp!1441320 () Bool)

(assert (=> b!5153180 (= e!3212391 (and tp!1441321 tp!1441320))))

(assert (=> b!5152923 (= tp!1441220 e!3212391)))

(declare-fun b!5153178 () Bool)

(declare-fun tp!1441319 () Bool)

(declare-fun tp!1441323 () Bool)

(assert (=> b!5153178 (= e!3212391 (and tp!1441319 tp!1441323))))

(declare-fun b!5153179 () Bool)

(declare-fun tp!1441322 () Bool)

(assert (=> b!5153179 (= e!3212391 tp!1441322)))

(declare-fun b!5153177 () Bool)

(assert (=> b!5153177 (= e!3212391 tp_is_empty!38171)))

(assert (= (and b!5152923 ((_ is ElementMatch!14511) (h!66266 (exprs!4395 ctx!100)))) b!5153177))

(assert (= (and b!5152923 ((_ is Concat!23356) (h!66266 (exprs!4395 ctx!100)))) b!5153178))

(assert (= (and b!5152923 ((_ is Star!14511) (h!66266 (exprs!4395 ctx!100)))) b!5153179))

(assert (= (and b!5152923 ((_ is Union!14511) (h!66266 (exprs!4395 ctx!100)))) b!5153180))

(declare-fun b!5153185 () Bool)

(declare-fun e!3212393 () Bool)

(declare-fun tp!1441329 () Bool)

(declare-fun tp!1441330 () Bool)

(assert (=> b!5153185 (= e!3212393 (and tp!1441329 tp!1441330))))

(assert (=> b!5152923 (= tp!1441221 e!3212393)))

(assert (= (and b!5152923 ((_ is Cons!59818) (t!372997 (exprs!4395 ctx!100)))) b!5153185))

(declare-fun b!5153189 () Bool)

(declare-fun e!3212394 () Bool)

(declare-fun tp!1441333 () Bool)

(declare-fun tp!1441332 () Bool)

(assert (=> b!5153189 (= e!3212394 (and tp!1441333 tp!1441332))))

(assert (=> b!5152930 (= tp!1441230 e!3212394)))

(declare-fun b!5153187 () Bool)

(declare-fun tp!1441331 () Bool)

(declare-fun tp!1441335 () Bool)

(assert (=> b!5153187 (= e!3212394 (and tp!1441331 tp!1441335))))

(declare-fun b!5153188 () Bool)

(declare-fun tp!1441334 () Bool)

(assert (=> b!5153188 (= e!3212394 tp!1441334)))

(declare-fun b!5153186 () Bool)

(assert (=> b!5153186 (= e!3212394 tp_is_empty!38171)))

(assert (= (and b!5152930 ((_ is ElementMatch!14511) (reg!14840 (regTwo!29535 expr!117)))) b!5153186))

(assert (= (and b!5152930 ((_ is Concat!23356) (reg!14840 (regTwo!29535 expr!117)))) b!5153187))

(assert (= (and b!5152930 ((_ is Star!14511) (reg!14840 (regTwo!29535 expr!117)))) b!5153188))

(assert (= (and b!5152930 ((_ is Union!14511) (reg!14840 (regTwo!29535 expr!117)))) b!5153189))

(declare-fun b!5153197 () Bool)

(declare-fun e!3212396 () Bool)

(declare-fun tp!1441343 () Bool)

(declare-fun tp!1441342 () Bool)

(assert (=> b!5153197 (= e!3212396 (and tp!1441343 tp!1441342))))

(assert (=> b!5152931 (= tp!1441229 e!3212396)))

(declare-fun b!5153195 () Bool)

(declare-fun tp!1441341 () Bool)

(declare-fun tp!1441345 () Bool)

(assert (=> b!5153195 (= e!3212396 (and tp!1441341 tp!1441345))))

(declare-fun b!5153196 () Bool)

(declare-fun tp!1441344 () Bool)

(assert (=> b!5153196 (= e!3212396 tp!1441344)))

(declare-fun b!5153194 () Bool)

(assert (=> b!5153194 (= e!3212396 tp_is_empty!38171)))

(assert (= (and b!5152931 ((_ is ElementMatch!14511) (regOne!29535 (regTwo!29535 expr!117)))) b!5153194))

(assert (= (and b!5152931 ((_ is Concat!23356) (regOne!29535 (regTwo!29535 expr!117)))) b!5153195))

(assert (= (and b!5152931 ((_ is Star!14511) (regOne!29535 (regTwo!29535 expr!117)))) b!5153196))

(assert (= (and b!5152931 ((_ is Union!14511) (regOne!29535 (regTwo!29535 expr!117)))) b!5153197))

(declare-fun b!5153205 () Bool)

(declare-fun e!3212398 () Bool)

(declare-fun tp!1441353 () Bool)

(declare-fun tp!1441352 () Bool)

(assert (=> b!5153205 (= e!3212398 (and tp!1441353 tp!1441352))))

(assert (=> b!5152931 (= tp!1441228 e!3212398)))

(declare-fun b!5153203 () Bool)

(declare-fun tp!1441351 () Bool)

(declare-fun tp!1441355 () Bool)

(assert (=> b!5153203 (= e!3212398 (and tp!1441351 tp!1441355))))

(declare-fun b!5153204 () Bool)

(declare-fun tp!1441354 () Bool)

(assert (=> b!5153204 (= e!3212398 tp!1441354)))

(declare-fun b!5153202 () Bool)

(assert (=> b!5153202 (= e!3212398 tp_is_empty!38171)))

(assert (= (and b!5152931 ((_ is ElementMatch!14511) (regTwo!29535 (regTwo!29535 expr!117)))) b!5153202))

(assert (= (and b!5152931 ((_ is Concat!23356) (regTwo!29535 (regTwo!29535 expr!117)))) b!5153203))

(assert (= (and b!5152931 ((_ is Star!14511) (regTwo!29535 (regTwo!29535 expr!117)))) b!5153204))

(assert (= (and b!5152931 ((_ is Union!14511) (regTwo!29535 (regTwo!29535 expr!117)))) b!5153205))

(declare-fun b!5153213 () Bool)

(declare-fun e!3212400 () Bool)

(declare-fun tp!1441363 () Bool)

(declare-fun tp!1441362 () Bool)

(assert (=> b!5153213 (= e!3212400 (and tp!1441363 tp!1441362))))

(assert (=> b!5152926 (= tp!1441225 e!3212400)))

(declare-fun b!5153211 () Bool)

(declare-fun tp!1441361 () Bool)

(declare-fun tp!1441366 () Bool)

(assert (=> b!5153211 (= e!3212400 (and tp!1441361 tp!1441366))))

(declare-fun b!5153212 () Bool)

(declare-fun tp!1441364 () Bool)

(assert (=> b!5153212 (= e!3212400 tp!1441364)))

(declare-fun b!5153210 () Bool)

(assert (=> b!5153210 (= e!3212400 tp_is_empty!38171)))

(assert (= (and b!5152926 ((_ is ElementMatch!14511) (reg!14840 (regOne!29535 expr!117)))) b!5153210))

(assert (= (and b!5152926 ((_ is Concat!23356) (reg!14840 (regOne!29535 expr!117)))) b!5153211))

(assert (= (and b!5152926 ((_ is Star!14511) (reg!14840 (regOne!29535 expr!117)))) b!5153212))

(assert (= (and b!5152926 ((_ is Union!14511) (reg!14840 (regOne!29535 expr!117)))) b!5153213))

(declare-fun b!5153224 () Bool)

(declare-fun e!3212403 () Bool)

(declare-fun tp!1441375 () Bool)

(declare-fun tp!1441373 () Bool)

(assert (=> b!5153224 (= e!3212403 (and tp!1441375 tp!1441373))))

(assert (=> b!5152929 (= tp!1441227 e!3212403)))

(declare-fun b!5153220 () Bool)

(declare-fun tp!1441371 () Bool)

(declare-fun tp!1441378 () Bool)

(assert (=> b!5153220 (= e!3212403 (and tp!1441371 tp!1441378))))

(declare-fun b!5153222 () Bool)

(declare-fun tp!1441377 () Bool)

(assert (=> b!5153222 (= e!3212403 tp!1441377)))

(declare-fun b!5153218 () Bool)

(assert (=> b!5153218 (= e!3212403 tp_is_empty!38171)))

(assert (= (and b!5152929 ((_ is ElementMatch!14511) (regOne!29534 (regTwo!29535 expr!117)))) b!5153218))

(assert (= (and b!5152929 ((_ is Concat!23356) (regOne!29534 (regTwo!29535 expr!117)))) b!5153220))

(assert (= (and b!5152929 ((_ is Star!14511) (regOne!29534 (regTwo!29535 expr!117)))) b!5153222))

(assert (= (and b!5152929 ((_ is Union!14511) (regOne!29534 (regTwo!29535 expr!117)))) b!5153224))

(declare-fun b!5153233 () Bool)

(declare-fun e!3212405 () Bool)

(declare-fun tp!1441388 () Bool)

(declare-fun tp!1441386 () Bool)

(assert (=> b!5153233 (= e!3212405 (and tp!1441388 tp!1441386))))

(assert (=> b!5152929 (= tp!1441231 e!3212405)))

(declare-fun b!5153231 () Bool)

(declare-fun tp!1441384 () Bool)

(declare-fun tp!1441390 () Bool)

(assert (=> b!5153231 (= e!3212405 (and tp!1441384 tp!1441390))))

(declare-fun b!5153232 () Bool)

(declare-fun tp!1441389 () Bool)

(assert (=> b!5153232 (= e!3212405 tp!1441389)))

(declare-fun b!5153230 () Bool)

(assert (=> b!5153230 (= e!3212405 tp_is_empty!38171)))

(assert (= (and b!5152929 ((_ is ElementMatch!14511) (regTwo!29534 (regTwo!29535 expr!117)))) b!5153230))

(assert (= (and b!5152929 ((_ is Concat!23356) (regTwo!29534 (regTwo!29535 expr!117)))) b!5153231))

(assert (= (and b!5152929 ((_ is Star!14511) (regTwo!29534 (regTwo!29535 expr!117)))) b!5153232))

(assert (= (and b!5152929 ((_ is Union!14511) (regTwo!29534 (regTwo!29535 expr!117)))) b!5153233))

(declare-fun b!5153241 () Bool)

(declare-fun e!3212407 () Bool)

(declare-fun tp!1441396 () Bool)

(declare-fun tp!1441394 () Bool)

(assert (=> b!5153241 (= e!3212407 (and tp!1441396 tp!1441394))))

(assert (=> b!5152925 (= tp!1441222 e!3212407)))

(declare-fun b!5153239 () Bool)

(declare-fun tp!1441392 () Bool)

(declare-fun tp!1441400 () Bool)

(assert (=> b!5153239 (= e!3212407 (and tp!1441392 tp!1441400))))

(declare-fun b!5153240 () Bool)

(declare-fun tp!1441399 () Bool)

(assert (=> b!5153240 (= e!3212407 tp!1441399)))

(declare-fun b!5153237 () Bool)

(assert (=> b!5153237 (= e!3212407 tp_is_empty!38171)))

(assert (= (and b!5152925 ((_ is ElementMatch!14511) (regOne!29534 (regOne!29535 expr!117)))) b!5153237))

(assert (= (and b!5152925 ((_ is Concat!23356) (regOne!29534 (regOne!29535 expr!117)))) b!5153239))

(assert (= (and b!5152925 ((_ is Star!14511) (regOne!29534 (regOne!29535 expr!117)))) b!5153240))

(assert (= (and b!5152925 ((_ is Union!14511) (regOne!29534 (regOne!29535 expr!117)))) b!5153241))

(declare-fun b!5153249 () Bool)

(declare-fun e!3212409 () Bool)

(declare-fun tp!1441408 () Bool)

(declare-fun tp!1441406 () Bool)

(assert (=> b!5153249 (= e!3212409 (and tp!1441408 tp!1441406))))

(assert (=> b!5152925 (= tp!1441226 e!3212409)))

(declare-fun b!5153247 () Bool)

(declare-fun tp!1441404 () Bool)

(declare-fun tp!1441410 () Bool)

(assert (=> b!5153247 (= e!3212409 (and tp!1441404 tp!1441410))))

(declare-fun b!5153248 () Bool)

(declare-fun tp!1441409 () Bool)

(assert (=> b!5153248 (= e!3212409 tp!1441409)))

(declare-fun b!5153246 () Bool)

(assert (=> b!5153246 (= e!3212409 tp_is_empty!38171)))

(assert (= (and b!5152925 ((_ is ElementMatch!14511) (regTwo!29534 (regOne!29535 expr!117)))) b!5153246))

(assert (= (and b!5152925 ((_ is Concat!23356) (regTwo!29534 (regOne!29535 expr!117)))) b!5153247))

(assert (= (and b!5152925 ((_ is Star!14511) (regTwo!29534 (regOne!29535 expr!117)))) b!5153248))

(assert (= (and b!5152925 ((_ is Union!14511) (regTwo!29534 (regOne!29535 expr!117)))) b!5153249))

(declare-fun b!5153257 () Bool)

(declare-fun e!3212411 () Bool)

(declare-fun tp!1441417 () Bool)

(declare-fun tp!1441415 () Bool)

(assert (=> b!5153257 (= e!3212411 (and tp!1441417 tp!1441415))))

(assert (=> b!5152910 (= tp!1441203 e!3212411)))

(declare-fun b!5153255 () Bool)

(declare-fun tp!1441414 () Bool)

(declare-fun tp!1441420 () Bool)

(assert (=> b!5153255 (= e!3212411 (and tp!1441414 tp!1441420))))

(declare-fun b!5153256 () Bool)

(declare-fun tp!1441419 () Bool)

(assert (=> b!5153256 (= e!3212411 tp!1441419)))

(declare-fun b!5153253 () Bool)

(assert (=> b!5153253 (= e!3212411 tp_is_empty!38171)))

(assert (= (and b!5152910 ((_ is ElementMatch!14511) (regOne!29535 (reg!14840 expr!117)))) b!5153253))

(assert (= (and b!5152910 ((_ is Concat!23356) (regOne!29535 (reg!14840 expr!117)))) b!5153255))

(assert (= (and b!5152910 ((_ is Star!14511) (regOne!29535 (reg!14840 expr!117)))) b!5153256))

(assert (= (and b!5152910 ((_ is Union!14511) (regOne!29535 (reg!14840 expr!117)))) b!5153257))

(declare-fun b!5153265 () Bool)

(declare-fun e!3212413 () Bool)

(declare-fun tp!1441428 () Bool)

(declare-fun tp!1441427 () Bool)

(assert (=> b!5153265 (= e!3212413 (and tp!1441428 tp!1441427))))

(assert (=> b!5152910 (= tp!1441202 e!3212413)))

(declare-fun b!5153263 () Bool)

(declare-fun tp!1441425 () Bool)

(declare-fun tp!1441430 () Bool)

(assert (=> b!5153263 (= e!3212413 (and tp!1441425 tp!1441430))))

(declare-fun b!5153264 () Bool)

(declare-fun tp!1441429 () Bool)

(assert (=> b!5153264 (= e!3212413 tp!1441429)))

(declare-fun b!5153262 () Bool)

(assert (=> b!5153262 (= e!3212413 tp_is_empty!38171)))

(assert (= (and b!5152910 ((_ is ElementMatch!14511) (regTwo!29535 (reg!14840 expr!117)))) b!5153262))

(assert (= (and b!5152910 ((_ is Concat!23356) (regTwo!29535 (reg!14840 expr!117)))) b!5153263))

(assert (= (and b!5152910 ((_ is Star!14511) (regTwo!29535 (reg!14840 expr!117)))) b!5153264))

(assert (= (and b!5152910 ((_ is Union!14511) (regTwo!29535 (reg!14840 expr!117)))) b!5153265))

(declare-fun b!5153269 () Bool)

(declare-fun e!3212414 () Bool)

(declare-fun tp!1441433 () Bool)

(declare-fun tp!1441432 () Bool)

(assert (=> b!5153269 (= e!3212414 (and tp!1441433 tp!1441432))))

(assert (=> b!5152918 (= tp!1441213 e!3212414)))

(declare-fun b!5153267 () Bool)

(declare-fun tp!1441431 () Bool)

(declare-fun tp!1441435 () Bool)

(assert (=> b!5153267 (= e!3212414 (and tp!1441431 tp!1441435))))

(declare-fun b!5153268 () Bool)

(declare-fun tp!1441434 () Bool)

(assert (=> b!5153268 (= e!3212414 tp!1441434)))

(declare-fun b!5153266 () Bool)

(assert (=> b!5153266 (= e!3212414 tp_is_empty!38171)))

(assert (= (and b!5152918 ((_ is ElementMatch!14511) (regOne!29535 (regTwo!29534 expr!117)))) b!5153266))

(assert (= (and b!5152918 ((_ is Concat!23356) (regOne!29535 (regTwo!29534 expr!117)))) b!5153267))

(assert (= (and b!5152918 ((_ is Star!14511) (regOne!29535 (regTwo!29534 expr!117)))) b!5153268))

(assert (= (and b!5152918 ((_ is Union!14511) (regOne!29535 (regTwo!29534 expr!117)))) b!5153269))

(declare-fun b!5153273 () Bool)

(declare-fun e!3212415 () Bool)

(declare-fun tp!1441438 () Bool)

(declare-fun tp!1441437 () Bool)

(assert (=> b!5153273 (= e!3212415 (and tp!1441438 tp!1441437))))

(assert (=> b!5152918 (= tp!1441212 e!3212415)))

(declare-fun b!5153271 () Bool)

(declare-fun tp!1441436 () Bool)

(declare-fun tp!1441440 () Bool)

(assert (=> b!5153271 (= e!3212415 (and tp!1441436 tp!1441440))))

(declare-fun b!5153272 () Bool)

(declare-fun tp!1441439 () Bool)

(assert (=> b!5153272 (= e!3212415 tp!1441439)))

(declare-fun b!5153270 () Bool)

(assert (=> b!5153270 (= e!3212415 tp_is_empty!38171)))

(assert (= (and b!5152918 ((_ is ElementMatch!14511) (regTwo!29535 (regTwo!29534 expr!117)))) b!5153270))

(assert (= (and b!5152918 ((_ is Concat!23356) (regTwo!29535 (regTwo!29534 expr!117)))) b!5153271))

(assert (= (and b!5152918 ((_ is Star!14511) (regTwo!29535 (regTwo!29534 expr!117)))) b!5153272))

(assert (= (and b!5152918 ((_ is Union!14511) (regTwo!29535 (regTwo!29534 expr!117)))) b!5153273))

(declare-fun b!5153277 () Bool)

(declare-fun e!3212416 () Bool)

(declare-fun tp!1441443 () Bool)

(declare-fun tp!1441442 () Bool)

(assert (=> b!5153277 (= e!3212416 (and tp!1441443 tp!1441442))))

(assert (=> b!5152913 (= tp!1441209 e!3212416)))

(declare-fun b!5153275 () Bool)

(declare-fun tp!1441441 () Bool)

(declare-fun tp!1441445 () Bool)

(assert (=> b!5153275 (= e!3212416 (and tp!1441441 tp!1441445))))

(declare-fun b!5153276 () Bool)

(declare-fun tp!1441444 () Bool)

(assert (=> b!5153276 (= e!3212416 tp!1441444)))

(declare-fun b!5153274 () Bool)

(assert (=> b!5153274 (= e!3212416 tp_is_empty!38171)))

(assert (= (and b!5152913 ((_ is ElementMatch!14511) (reg!14840 (regOne!29534 expr!117)))) b!5153274))

(assert (= (and b!5152913 ((_ is Concat!23356) (reg!14840 (regOne!29534 expr!117)))) b!5153275))

(assert (= (and b!5152913 ((_ is Star!14511) (reg!14840 (regOne!29534 expr!117)))) b!5153276))

(assert (= (and b!5152913 ((_ is Union!14511) (reg!14840 (regOne!29534 expr!117)))) b!5153277))

(declare-fun b!5153281 () Bool)

(declare-fun e!3212417 () Bool)

(declare-fun tp!1441448 () Bool)

(declare-fun tp!1441447 () Bool)

(assert (=> b!5153281 (= e!3212417 (and tp!1441448 tp!1441447))))

(assert (=> b!5152914 (= tp!1441208 e!3212417)))

(declare-fun b!5153279 () Bool)

(declare-fun tp!1441446 () Bool)

(declare-fun tp!1441450 () Bool)

(assert (=> b!5153279 (= e!3212417 (and tp!1441446 tp!1441450))))

(declare-fun b!5153280 () Bool)

(declare-fun tp!1441449 () Bool)

(assert (=> b!5153280 (= e!3212417 tp!1441449)))

(declare-fun b!5153278 () Bool)

(assert (=> b!5153278 (= e!3212417 tp_is_empty!38171)))

(assert (= (and b!5152914 ((_ is ElementMatch!14511) (regOne!29535 (regOne!29534 expr!117)))) b!5153278))

(assert (= (and b!5152914 ((_ is Concat!23356) (regOne!29535 (regOne!29534 expr!117)))) b!5153279))

(assert (= (and b!5152914 ((_ is Star!14511) (regOne!29535 (regOne!29534 expr!117)))) b!5153280))

(assert (= (and b!5152914 ((_ is Union!14511) (regOne!29535 (regOne!29534 expr!117)))) b!5153281))

(declare-fun b!5153285 () Bool)

(declare-fun e!3212418 () Bool)

(declare-fun tp!1441453 () Bool)

(declare-fun tp!1441452 () Bool)

(assert (=> b!5153285 (= e!3212418 (and tp!1441453 tp!1441452))))

(assert (=> b!5152914 (= tp!1441207 e!3212418)))

(declare-fun b!5153283 () Bool)

(declare-fun tp!1441451 () Bool)

(declare-fun tp!1441455 () Bool)

(assert (=> b!5153283 (= e!3212418 (and tp!1441451 tp!1441455))))

(declare-fun b!5153284 () Bool)

(declare-fun tp!1441454 () Bool)

(assert (=> b!5153284 (= e!3212418 tp!1441454)))

(declare-fun b!5153282 () Bool)

(assert (=> b!5153282 (= e!3212418 tp_is_empty!38171)))

(assert (= (and b!5152914 ((_ is ElementMatch!14511) (regTwo!29535 (regOne!29534 expr!117)))) b!5153282))

(assert (= (and b!5152914 ((_ is Concat!23356) (regTwo!29535 (regOne!29534 expr!117)))) b!5153283))

(assert (= (and b!5152914 ((_ is Star!14511) (regTwo!29535 (regOne!29534 expr!117)))) b!5153284))

(assert (= (and b!5152914 ((_ is Union!14511) (regTwo!29535 (regOne!29534 expr!117)))) b!5153285))

(declare-fun b!5153289 () Bool)

(declare-fun e!3212419 () Bool)

(declare-fun tp!1441458 () Bool)

(declare-fun tp!1441457 () Bool)

(assert (=> b!5153289 (= e!3212419 (and tp!1441458 tp!1441457))))

(assert (=> b!5152909 (= tp!1441204 e!3212419)))

(declare-fun b!5153287 () Bool)

(declare-fun tp!1441456 () Bool)

(declare-fun tp!1441460 () Bool)

(assert (=> b!5153287 (= e!3212419 (and tp!1441456 tp!1441460))))

(declare-fun b!5153288 () Bool)

(declare-fun tp!1441459 () Bool)

(assert (=> b!5153288 (= e!3212419 tp!1441459)))

(declare-fun b!5153286 () Bool)

(assert (=> b!5153286 (= e!3212419 tp_is_empty!38171)))

(assert (= (and b!5152909 ((_ is ElementMatch!14511) (reg!14840 (reg!14840 expr!117)))) b!5153286))

(assert (= (and b!5152909 ((_ is Concat!23356) (reg!14840 (reg!14840 expr!117)))) b!5153287))

(assert (= (and b!5152909 ((_ is Star!14511) (reg!14840 (reg!14840 expr!117)))) b!5153288))

(assert (= (and b!5152909 ((_ is Union!14511) (reg!14840 (reg!14840 expr!117)))) b!5153289))

(declare-fun b!5153293 () Bool)

(declare-fun e!3212420 () Bool)

(declare-fun tp!1441463 () Bool)

(declare-fun tp!1441462 () Bool)

(assert (=> b!5153293 (= e!3212420 (and tp!1441463 tp!1441462))))

(assert (=> b!5152912 (= tp!1441206 e!3212420)))

(declare-fun b!5153291 () Bool)

(declare-fun tp!1441461 () Bool)

(declare-fun tp!1441465 () Bool)

(assert (=> b!5153291 (= e!3212420 (and tp!1441461 tp!1441465))))

(declare-fun b!5153292 () Bool)

(declare-fun tp!1441464 () Bool)

(assert (=> b!5153292 (= e!3212420 tp!1441464)))

(declare-fun b!5153290 () Bool)

(assert (=> b!5153290 (= e!3212420 tp_is_empty!38171)))

(assert (= (and b!5152912 ((_ is ElementMatch!14511) (regOne!29534 (regOne!29534 expr!117)))) b!5153290))

(assert (= (and b!5152912 ((_ is Concat!23356) (regOne!29534 (regOne!29534 expr!117)))) b!5153291))

(assert (= (and b!5152912 ((_ is Star!14511) (regOne!29534 (regOne!29534 expr!117)))) b!5153292))

(assert (= (and b!5152912 ((_ is Union!14511) (regOne!29534 (regOne!29534 expr!117)))) b!5153293))

(declare-fun b!5153297 () Bool)

(declare-fun e!3212421 () Bool)

(declare-fun tp!1441468 () Bool)

(declare-fun tp!1441467 () Bool)

(assert (=> b!5153297 (= e!3212421 (and tp!1441468 tp!1441467))))

(assert (=> b!5152912 (= tp!1441210 e!3212421)))

(declare-fun b!5153295 () Bool)

(declare-fun tp!1441466 () Bool)

(declare-fun tp!1441470 () Bool)

(assert (=> b!5153295 (= e!3212421 (and tp!1441466 tp!1441470))))

(declare-fun b!5153296 () Bool)

(declare-fun tp!1441469 () Bool)

(assert (=> b!5153296 (= e!3212421 tp!1441469)))

(declare-fun b!5153294 () Bool)

(assert (=> b!5153294 (= e!3212421 tp_is_empty!38171)))

(assert (= (and b!5152912 ((_ is ElementMatch!14511) (regTwo!29534 (regOne!29534 expr!117)))) b!5153294))

(assert (= (and b!5152912 ((_ is Concat!23356) (regTwo!29534 (regOne!29534 expr!117)))) b!5153295))

(assert (= (and b!5152912 ((_ is Star!14511) (regTwo!29534 (regOne!29534 expr!117)))) b!5153296))

(assert (= (and b!5152912 ((_ is Union!14511) (regTwo!29534 (regOne!29534 expr!117)))) b!5153297))

(declare-fun b!5153301 () Bool)

(declare-fun e!3212422 () Bool)

(declare-fun tp!1441473 () Bool)

(declare-fun tp!1441472 () Bool)

(assert (=> b!5153301 (= e!3212422 (and tp!1441473 tp!1441472))))

(assert (=> b!5152908 (= tp!1441201 e!3212422)))

(declare-fun b!5153299 () Bool)

(declare-fun tp!1441471 () Bool)

(declare-fun tp!1441475 () Bool)

(assert (=> b!5153299 (= e!3212422 (and tp!1441471 tp!1441475))))

(declare-fun b!5153300 () Bool)

(declare-fun tp!1441474 () Bool)

(assert (=> b!5153300 (= e!3212422 tp!1441474)))

(declare-fun b!5153298 () Bool)

(assert (=> b!5153298 (= e!3212422 tp_is_empty!38171)))

(assert (= (and b!5152908 ((_ is ElementMatch!14511) (regOne!29534 (reg!14840 expr!117)))) b!5153298))

(assert (= (and b!5152908 ((_ is Concat!23356) (regOne!29534 (reg!14840 expr!117)))) b!5153299))

(assert (= (and b!5152908 ((_ is Star!14511) (regOne!29534 (reg!14840 expr!117)))) b!5153300))

(assert (= (and b!5152908 ((_ is Union!14511) (regOne!29534 (reg!14840 expr!117)))) b!5153301))

(declare-fun b!5153305 () Bool)

(declare-fun e!3212423 () Bool)

(declare-fun tp!1441478 () Bool)

(declare-fun tp!1441477 () Bool)

(assert (=> b!5153305 (= e!3212423 (and tp!1441478 tp!1441477))))

(assert (=> b!5152908 (= tp!1441205 e!3212423)))

(declare-fun b!5153303 () Bool)

(declare-fun tp!1441476 () Bool)

(declare-fun tp!1441480 () Bool)

(assert (=> b!5153303 (= e!3212423 (and tp!1441476 tp!1441480))))

(declare-fun b!5153304 () Bool)

(declare-fun tp!1441479 () Bool)

(assert (=> b!5153304 (= e!3212423 tp!1441479)))

(declare-fun b!5153302 () Bool)

(assert (=> b!5153302 (= e!3212423 tp_is_empty!38171)))

(assert (= (and b!5152908 ((_ is ElementMatch!14511) (regTwo!29534 (reg!14840 expr!117)))) b!5153302))

(assert (= (and b!5152908 ((_ is Concat!23356) (regTwo!29534 (reg!14840 expr!117)))) b!5153303))

(assert (= (and b!5152908 ((_ is Star!14511) (regTwo!29534 (reg!14840 expr!117)))) b!5153304))

(assert (= (and b!5152908 ((_ is Union!14511) (regTwo!29534 (reg!14840 expr!117)))) b!5153305))

(declare-fun b!5153309 () Bool)

(declare-fun e!3212424 () Bool)

(declare-fun tp!1441483 () Bool)

(declare-fun tp!1441482 () Bool)

(assert (=> b!5153309 (= e!3212424 (and tp!1441483 tp!1441482))))

(assert (=> b!5152917 (= tp!1441214 e!3212424)))

(declare-fun b!5153307 () Bool)

(declare-fun tp!1441481 () Bool)

(declare-fun tp!1441485 () Bool)

(assert (=> b!5153307 (= e!3212424 (and tp!1441481 tp!1441485))))

(declare-fun b!5153308 () Bool)

(declare-fun tp!1441484 () Bool)

(assert (=> b!5153308 (= e!3212424 tp!1441484)))

(declare-fun b!5153306 () Bool)

(assert (=> b!5153306 (= e!3212424 tp_is_empty!38171)))

(assert (= (and b!5152917 ((_ is ElementMatch!14511) (reg!14840 (regTwo!29534 expr!117)))) b!5153306))

(assert (= (and b!5152917 ((_ is Concat!23356) (reg!14840 (regTwo!29534 expr!117)))) b!5153307))

(assert (= (and b!5152917 ((_ is Star!14511) (reg!14840 (regTwo!29534 expr!117)))) b!5153308))

(assert (= (and b!5152917 ((_ is Union!14511) (reg!14840 (regTwo!29534 expr!117)))) b!5153309))

(declare-fun b!5153313 () Bool)

(declare-fun e!3212425 () Bool)

(declare-fun tp!1441488 () Bool)

(declare-fun tp!1441487 () Bool)

(assert (=> b!5153313 (= e!3212425 (and tp!1441488 tp!1441487))))

(assert (=> b!5152916 (= tp!1441211 e!3212425)))

(declare-fun b!5153311 () Bool)

(declare-fun tp!1441486 () Bool)

(declare-fun tp!1441490 () Bool)

(assert (=> b!5153311 (= e!3212425 (and tp!1441486 tp!1441490))))

(declare-fun b!5153312 () Bool)

(declare-fun tp!1441489 () Bool)

(assert (=> b!5153312 (= e!3212425 tp!1441489)))

(declare-fun b!5153310 () Bool)

(assert (=> b!5153310 (= e!3212425 tp_is_empty!38171)))

(assert (= (and b!5152916 ((_ is ElementMatch!14511) (regOne!29534 (regTwo!29534 expr!117)))) b!5153310))

(assert (= (and b!5152916 ((_ is Concat!23356) (regOne!29534 (regTwo!29534 expr!117)))) b!5153311))

(assert (= (and b!5152916 ((_ is Star!14511) (regOne!29534 (regTwo!29534 expr!117)))) b!5153312))

(assert (= (and b!5152916 ((_ is Union!14511) (regOne!29534 (regTwo!29534 expr!117)))) b!5153313))

(declare-fun b!5153317 () Bool)

(declare-fun e!3212426 () Bool)

(declare-fun tp!1441493 () Bool)

(declare-fun tp!1441492 () Bool)

(assert (=> b!5153317 (= e!3212426 (and tp!1441493 tp!1441492))))

(assert (=> b!5152916 (= tp!1441215 e!3212426)))

(declare-fun b!5153315 () Bool)

(declare-fun tp!1441491 () Bool)

(declare-fun tp!1441495 () Bool)

(assert (=> b!5153315 (= e!3212426 (and tp!1441491 tp!1441495))))

(declare-fun b!5153316 () Bool)

(declare-fun tp!1441494 () Bool)

(assert (=> b!5153316 (= e!3212426 tp!1441494)))

(declare-fun b!5153314 () Bool)

(assert (=> b!5153314 (= e!3212426 tp_is_empty!38171)))

(assert (= (and b!5152916 ((_ is ElementMatch!14511) (regTwo!29534 (regTwo!29534 expr!117)))) b!5153314))

(assert (= (and b!5152916 ((_ is Concat!23356) (regTwo!29534 (regTwo!29534 expr!117)))) b!5153315))

(assert (= (and b!5152916 ((_ is Star!14511) (regTwo!29534 (regTwo!29534 expr!117)))) b!5153316))

(assert (= (and b!5152916 ((_ is Union!14511) (regTwo!29534 (regTwo!29534 expr!117)))) b!5153317))

(declare-fun b_lambda!200413 () Bool)

(assert (= b_lambda!200407 (or d!1664601 b_lambda!200413)))

(declare-fun bs!1202073 () Bool)

(declare-fun d!1664671 () Bool)

(assert (= bs!1202073 (and d!1664671 d!1664601)))

(assert (=> bs!1202073 (= (dynLambda!23801 lambda!257351 (h!66266 (exprs!4395 ctx!100))) (validRegex!6366 (h!66266 (exprs!4395 ctx!100))))))

(declare-fun m!6209964 () Bool)

(assert (=> bs!1202073 m!6209964))

(assert (=> b!5153147 d!1664671))

(declare-fun b_lambda!200415 () Bool)

(assert (= b_lambda!200401 (or d!1664617 b_lambda!200415)))

(declare-fun bs!1202074 () Bool)

(declare-fun d!1664673 () Bool)

(assert (= bs!1202074 (and d!1664673 d!1664617)))

(assert (=> bs!1202074 (= (dynLambda!23801 lambda!257355 (h!66266 (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)))))) (validRegex!6366 (h!66266 (exprs!4395 (Context!7791 ($colon$colon!1231 (exprs!4395 ctx!100) (regTwo!29534 expr!117)))))))))

(declare-fun m!6209966 () Bool)

(assert (=> bs!1202074 m!6209966))

(assert (=> b!5152945 d!1664673))

(check-sat (not b!5153280) (not b!5153159) (not b!5153285) (not b!5153303) (not b!5153267) (not bm!360936) (not b_lambda!200413) (not bs!1202073) (not b!5153233) (not b!5153317) (not b!5153213) (not b!5153299) (not b!5153257) tp_is_empty!38171 (not b!5153309) (not d!1664633) (not b!5153281) (not b!5153307) (not b!5153197) (not b!5153301) (not b!5153205) (not b!5153212) (not b!5152961) (not b!5153279) (not b!5153196) (not b!5153255) (not d!1664661) (not b!5153249) (not b!5153295) (not b!5152946) (not b!5153287) (not b!5153188) (not b!5153312) (not b!5153148) (not b!5153158) (not b!5153313) (not bm!360932) (not bm!360930) (not b!5153284) (not b!5153265) (not bm!360956) (not b!5153272) (not b!5153171) (not b!5153288) (not b!5153291) (not b!5153297) (not d!1664653) (not b!5153283) (not b!5153304) (not b!5153239) (not b!5153308) (not b!5153231) (not b_lambda!200415) (not b!5153178) (not b!5153172) (not b!5153275) (not b!5153300) (not b!5153316) (not bm!360974) (not bm!360933) (not b!5153185) (not b!5153305) (not bm!360929) (not b!5153271) (not b!5153276) (not bm!360975) (not bm!360967) (not b!5153264) (not bs!1202074) (not b!5153240) (not b!5153277) (not b!5152937) (not bm!360966) (not b!5153224) (not b!5153180) (not b!5153179) (not b!5153269) (not b!5153248) (not b!5153204) (not b!5153203) (not b!5153293) (not b!5153263) (not bm!360955) (not d!1664659) (not b!5153189) (not b!5153296) (not b!5153268) (not b!5153232) (not b!5153127) (not b!5153273) (not b!5153211) (not b!5152952) (not b!5153161) (not b!5153222) (not b!5153292) (not b!5153241) (not b!5153247) (not b!5153289) (not bm!360935) (not b!5153311) (not b!5153187) (not b!5153256) (not b!5153195) (not b!5153170) (not b!5153220) (not b!5153315))
(check-sat)
