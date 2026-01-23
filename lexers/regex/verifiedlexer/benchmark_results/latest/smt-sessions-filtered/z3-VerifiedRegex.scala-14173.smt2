; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743570 () Bool)

(assert start!743570)

(declare-fun b!7860016 () Bool)

(declare-fun res!3124709 () Bool)

(declare-fun e!4645020 () Bool)

(assert (=> b!7860016 (=> (not res!3124709) (not e!4645020))))

(declare-datatypes ((C!42564 0))(
  ( (C!42565 (val!31744 Int)) )
))
(declare-datatypes ((Regex!21119 0))(
  ( (ElementMatch!21119 (c!1444385 C!42564)) (Concat!29964 (regOne!42750 Regex!21119) (regTwo!42750 Regex!21119)) (EmptyExpr!21119) (Star!21119 (reg!21448 Regex!21119)) (EmptyLang!21119) (Union!21119 (regOne!42751 Regex!21119) (regTwo!42751 Regex!21119)) )
))
(declare-fun r1!6218 () Regex!21119)

(declare-datatypes ((List!73978 0))(
  ( (Nil!73854) (Cons!73854 (h!80302 C!42564) (t!388713 List!73978)) )
))
(declare-fun s!14237 () List!73978)

(declare-fun matchR!10555 (Regex!21119 List!73978) Bool)

(assert (=> b!7860016 (= res!3124709 (matchR!10555 r1!6218 s!14237))))

(declare-fun b!7860017 () Bool)

(declare-fun e!4645023 () Bool)

(declare-fun tp!2329366 () Bool)

(declare-fun tp!2329359 () Bool)

(assert (=> b!7860017 (= e!4645023 (and tp!2329366 tp!2329359))))

(declare-fun b!7860018 () Bool)

(declare-fun tp_is_empty!52637 () Bool)

(assert (=> b!7860018 (= e!4645023 tp_is_empty!52637)))

(declare-fun b!7860019 () Bool)

(declare-fun e!4645022 () Bool)

(declare-fun tp!2329361 () Bool)

(declare-fun tp!2329358 () Bool)

(assert (=> b!7860019 (= e!4645022 (and tp!2329361 tp!2329358))))

(declare-fun b!7860020 () Bool)

(declare-fun tp!2329367 () Bool)

(assert (=> b!7860020 (= e!4645023 tp!2329367)))

(declare-fun b!7860021 () Bool)

(declare-fun e!4645021 () Bool)

(declare-fun nullable!9389 (Regex!21119) Bool)

(assert (=> b!7860021 (= e!4645021 (nullable!9389 r1!6218))))

(declare-fun b!7860022 () Bool)

(declare-fun e!4645025 () Bool)

(declare-fun tp!2329362 () Bool)

(assert (=> b!7860022 (= e!4645025 (and tp_is_empty!52637 tp!2329362))))

(declare-fun res!3124713 () Bool)

(assert (=> start!743570 (=> (not res!3124713) (not e!4645020))))

(declare-fun validRegex!11529 (Regex!21119) Bool)

(assert (=> start!743570 (= res!3124713 (validRegex!11529 r1!6218))))

(assert (=> start!743570 e!4645020))

(assert (=> start!743570 e!4645023))

(assert (=> start!743570 e!4645022))

(assert (=> start!743570 e!4645025))

(declare-fun b!7860023 () Bool)

(declare-fun e!4645024 () Bool)

(assert (=> b!7860023 (= e!4645020 e!4645024)))

(declare-fun res!3124711 () Bool)

(assert (=> b!7860023 (=> (not res!3124711) (not e!4645024))))

(declare-fun lt!2680288 () Regex!21119)

(declare-fun lt!2680289 () Regex!21119)

(declare-fun r2!6156 () Regex!21119)

(declare-fun derivativeStep!6352 (Regex!21119 C!42564) Regex!21119)

(assert (=> b!7860023 (= res!3124711 (= (derivativeStep!6352 (Concat!29964 r2!6156 r1!6218) (h!80302 s!14237)) (Union!21119 lt!2680288 lt!2680289)))))

(assert (=> b!7860023 (= lt!2680289 (derivativeStep!6352 r1!6218 (h!80302 s!14237)))))

(assert (=> b!7860023 (= lt!2680288 (Concat!29964 (derivativeStep!6352 r2!6156 (h!80302 s!14237)) r1!6218))))

(declare-fun b!7860024 () Bool)

(assert (=> b!7860024 (= e!4645024 (not true))))

(assert (=> b!7860024 (matchR!10555 (Union!21119 lt!2680289 lt!2680288) (t!388713 s!14237))))

(declare-datatypes ((Unit!168944 0))(
  ( (Unit!168945) )
))
(declare-fun lt!2680286 () Unit!168944)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!132 (Regex!21119 Regex!21119 List!73978) Unit!168944)

(assert (=> b!7860024 (= lt!2680286 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!132 lt!2680289 lt!2680288 (t!388713 s!14237)))))

(assert (=> b!7860024 e!4645021))

(declare-fun c!1444384 () Bool)

(declare-fun isEmpty!42357 (List!73978) Bool)

(assert (=> b!7860024 (= c!1444384 (isEmpty!42357 s!14237))))

(declare-fun lt!2680287 () Unit!168944)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!6 (Regex!21119 List!73978) Unit!168944)

(assert (=> b!7860024 (= lt!2680287 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!6 r1!6218 s!14237))))

(declare-fun b!7860025 () Bool)

(declare-fun head!16068 (List!73978) C!42564)

(declare-fun tail!15611 (List!73978) List!73978)

(assert (=> b!7860025 (= e!4645021 (matchR!10555 (derivativeStep!6352 r1!6218 (head!16068 s!14237)) (tail!15611 s!14237)))))

(declare-fun b!7860026 () Bool)

(declare-fun res!3124712 () Bool)

(assert (=> b!7860026 (=> (not res!3124712) (not e!4645020))))

(assert (=> b!7860026 (= res!3124712 (nullable!9389 r2!6156))))

(declare-fun b!7860027 () Bool)

(declare-fun tp!2329365 () Bool)

(declare-fun tp!2329360 () Bool)

(assert (=> b!7860027 (= e!4645022 (and tp!2329365 tp!2329360))))

(declare-fun b!7860028 () Bool)

(declare-fun tp!2329363 () Bool)

(assert (=> b!7860028 (= e!4645022 tp!2329363)))

(declare-fun b!7860029 () Bool)

(assert (=> b!7860029 (= e!4645022 tp_is_empty!52637)))

(declare-fun b!7860030 () Bool)

(declare-fun res!3124714 () Bool)

(assert (=> b!7860030 (=> (not res!3124714) (not e!4645020))))

(get-info :version)

(assert (=> b!7860030 (= res!3124714 ((_ is Cons!73854) s!14237))))

(declare-fun b!7860031 () Bool)

(declare-fun tp!2329368 () Bool)

(declare-fun tp!2329364 () Bool)

(assert (=> b!7860031 (= e!4645023 (and tp!2329368 tp!2329364))))

(declare-fun b!7860032 () Bool)

(declare-fun res!3124710 () Bool)

(assert (=> b!7860032 (=> (not res!3124710) (not e!4645020))))

(assert (=> b!7860032 (= res!3124710 (validRegex!11529 r2!6156))))

(assert (= (and start!743570 res!3124713) b!7860032))

(assert (= (and b!7860032 res!3124710) b!7860016))

(assert (= (and b!7860016 res!3124709) b!7860026))

(assert (= (and b!7860026 res!3124712) b!7860030))

(assert (= (and b!7860030 res!3124714) b!7860023))

(assert (= (and b!7860023 res!3124711) b!7860024))

(assert (= (and b!7860024 c!1444384) b!7860021))

(assert (= (and b!7860024 (not c!1444384)) b!7860025))

(assert (= (and start!743570 ((_ is ElementMatch!21119) r1!6218)) b!7860018))

(assert (= (and start!743570 ((_ is Concat!29964) r1!6218)) b!7860017))

(assert (= (and start!743570 ((_ is Star!21119) r1!6218)) b!7860020))

(assert (= (and start!743570 ((_ is Union!21119) r1!6218)) b!7860031))

(assert (= (and start!743570 ((_ is ElementMatch!21119) r2!6156)) b!7860029))

(assert (= (and start!743570 ((_ is Concat!29964) r2!6156)) b!7860019))

(assert (= (and start!743570 ((_ is Star!21119) r2!6156)) b!7860028))

(assert (= (and start!743570 ((_ is Union!21119) r2!6156)) b!7860027))

(assert (= (and start!743570 ((_ is Cons!73854) s!14237)) b!7860022))

(declare-fun m!8261912 () Bool)

(assert (=> b!7860025 m!8261912))

(assert (=> b!7860025 m!8261912))

(declare-fun m!8261914 () Bool)

(assert (=> b!7860025 m!8261914))

(declare-fun m!8261916 () Bool)

(assert (=> b!7860025 m!8261916))

(assert (=> b!7860025 m!8261914))

(assert (=> b!7860025 m!8261916))

(declare-fun m!8261918 () Bool)

(assert (=> b!7860025 m!8261918))

(declare-fun m!8261920 () Bool)

(assert (=> b!7860024 m!8261920))

(declare-fun m!8261922 () Bool)

(assert (=> b!7860024 m!8261922))

(declare-fun m!8261924 () Bool)

(assert (=> b!7860024 m!8261924))

(declare-fun m!8261926 () Bool)

(assert (=> b!7860024 m!8261926))

(declare-fun m!8261928 () Bool)

(assert (=> start!743570 m!8261928))

(declare-fun m!8261930 () Bool)

(assert (=> b!7860023 m!8261930))

(declare-fun m!8261932 () Bool)

(assert (=> b!7860023 m!8261932))

(declare-fun m!8261934 () Bool)

(assert (=> b!7860023 m!8261934))

(declare-fun m!8261936 () Bool)

(assert (=> b!7860016 m!8261936))

(declare-fun m!8261938 () Bool)

(assert (=> b!7860026 m!8261938))

(declare-fun m!8261940 () Bool)

(assert (=> b!7860021 m!8261940))

(declare-fun m!8261942 () Bool)

(assert (=> b!7860032 m!8261942))

(check-sat tp_is_empty!52637 (not b!7860016) (not b!7860017) (not b!7860028) (not b!7860020) (not start!743570) (not b!7860024) (not b!7860022) (not b!7860031) (not b!7860023) (not b!7860025) (not b!7860021) (not b!7860019) (not b!7860027) (not b!7860026) (not b!7860032))
(check-sat)
