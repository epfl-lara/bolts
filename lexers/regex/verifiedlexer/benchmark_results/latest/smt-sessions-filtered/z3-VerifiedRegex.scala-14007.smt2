; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740422 () Bool)

(assert start!740422)

(declare-fun b!7778944 () Bool)

(declare-fun e!4608207 () Bool)

(declare-fun e!4608210 () Bool)

(assert (=> b!7778944 (= e!4608207 e!4608210)))

(declare-fun res!3100717 () Bool)

(assert (=> b!7778944 (=> (not res!3100717) (not e!4608210))))

(declare-datatypes ((C!41944 0))(
  ( (C!41945 (val!31412 Int)) )
))
(declare-datatypes ((Regex!20809 0))(
  ( (ElementMatch!20809 (c!1433454 C!41944)) (Concat!29654 (regOne!42130 Regex!20809) (regTwo!42130 Regex!20809)) (EmptyExpr!20809) (Star!20809 (reg!21138 Regex!20809)) (EmptyLang!20809) (Union!20809 (regOne!42131 Regex!20809) (regTwo!42131 Regex!20809)) )
))
(declare-fun lt!2672568 () Regex!20809)

(declare-datatypes ((List!73648 0))(
  ( (Nil!73524) (Cons!73524 (h!79972 C!41944) (t!388383 List!73648)) )
))
(declare-fun s!14292 () List!73648)

(declare-fun matchR!10269 (Regex!20809 List!73648) Bool)

(assert (=> b!7778944 (= res!3100717 (matchR!10269 lt!2672568 (t!388383 s!14292)))))

(declare-fun lt!2672572 () Regex!20809)

(declare-fun derivativeStep!6152 (Regex!20809 C!41944) Regex!20809)

(assert (=> b!7778944 (= lt!2672568 (derivativeStep!6152 lt!2672572 (h!79972 s!14292)))))

(declare-fun b!7778945 () Bool)

(declare-fun e!4608211 () Bool)

(assert (=> b!7778945 (= e!4608211 e!4608207)))

(declare-fun res!3100712 () Bool)

(assert (=> b!7778945 (=> (not res!3100712) (not e!4608207))))

(assert (=> b!7778945 (= res!3100712 (matchR!10269 lt!2672572 s!14292))))

(declare-fun r1!6279 () Regex!20809)

(declare-fun r2!6217 () Regex!20809)

(assert (=> b!7778945 (= lt!2672572 (Concat!29654 r1!6279 r2!6217))))

(declare-fun b!7778946 () Bool)

(declare-fun e!4608208 () Bool)

(assert (=> b!7778946 (= e!4608208 false)))

(declare-fun lt!2672571 () Bool)

(declare-fun lt!2672570 () Regex!20809)

(assert (=> b!7778946 (= lt!2672571 (matchR!10269 lt!2672570 (t!388383 s!14292)))))

(declare-fun b!7778947 () Bool)

(declare-fun res!3100715 () Bool)

(assert (=> b!7778947 (=> (not res!3100715) (not e!4608208))))

(assert (=> b!7778947 (= res!3100715 true)))

(declare-fun res!3100714 () Bool)

(assert (=> start!740422 (=> (not res!3100714) (not e!4608211))))

(declare-fun validRegex!11223 (Regex!20809) Bool)

(assert (=> start!740422 (= res!3100714 (validRegex!11223 r1!6279))))

(assert (=> start!740422 e!4608211))

(declare-fun e!4608209 () Bool)

(assert (=> start!740422 e!4608209))

(declare-fun e!4608213 () Bool)

(assert (=> start!740422 e!4608213))

(declare-fun e!4608212 () Bool)

(assert (=> start!740422 e!4608212))

(declare-fun b!7778948 () Bool)

(declare-fun tp_is_empty!51973 () Bool)

(assert (=> b!7778948 (= e!4608213 tp_is_empty!51973)))

(declare-fun b!7778949 () Bool)

(declare-fun tp!2286186 () Bool)

(assert (=> b!7778949 (= e!4608209 tp!2286186)))

(declare-fun b!7778950 () Bool)

(declare-fun tp!2286181 () Bool)

(assert (=> b!7778950 (= e!4608212 (and tp_is_empty!51973 tp!2286181))))

(declare-fun b!7778951 () Bool)

(declare-fun tp!2286188 () Bool)

(declare-fun tp!2286184 () Bool)

(assert (=> b!7778951 (= e!4608209 (and tp!2286188 tp!2286184))))

(declare-fun b!7778952 () Bool)

(declare-fun tp!2286189 () Bool)

(declare-fun tp!2286183 () Bool)

(assert (=> b!7778952 (= e!4608209 (and tp!2286189 tp!2286183))))

(declare-fun b!7778953 () Bool)

(declare-fun res!3100716 () Bool)

(assert (=> b!7778953 (=> (not res!3100716) (not e!4608211))))

(assert (=> b!7778953 (= res!3100716 (validRegex!11223 r2!6217))))

(declare-fun b!7778954 () Bool)

(assert (=> b!7778954 (= e!4608209 tp_is_empty!51973)))

(declare-fun b!7778955 () Bool)

(declare-fun tp!2286191 () Bool)

(declare-fun tp!2286182 () Bool)

(assert (=> b!7778955 (= e!4608213 (and tp!2286191 tp!2286182))))

(declare-fun b!7778956 () Bool)

(declare-fun res!3100719 () Bool)

(assert (=> b!7778956 (=> (not res!3100719) (not e!4608207))))

(get-info :version)

(assert (=> b!7778956 (= res!3100719 ((_ is Cons!73524) s!14292))))

(declare-fun b!7778957 () Bool)

(declare-fun res!3100720 () Bool)

(assert (=> b!7778957 (=> (not res!3100720) (not e!4608208))))

(declare-fun lt!2672569 () Regex!20809)

(assert (=> b!7778957 (= res!3100720 (validRegex!11223 lt!2672569))))

(declare-fun b!7778958 () Bool)

(assert (=> b!7778958 (= e!4608210 e!4608208)))

(declare-fun res!3100713 () Bool)

(assert (=> b!7778958 (=> (not res!3100713) (not e!4608208))))

(assert (=> b!7778958 (= res!3100713 (= lt!2672568 lt!2672570))))

(assert (=> b!7778958 (= lt!2672570 (Union!20809 lt!2672569 EmptyLang!20809))))

(assert (=> b!7778958 (= lt!2672569 (Concat!29654 (derivativeStep!6152 r1!6279 (h!79972 s!14292)) r2!6217))))

(declare-fun b!7778959 () Bool)

(declare-fun tp!2286187 () Bool)

(assert (=> b!7778959 (= e!4608213 tp!2286187)))

(declare-fun b!7778960 () Bool)

(declare-fun res!3100718 () Bool)

(assert (=> b!7778960 (=> (not res!3100718) (not e!4608210))))

(declare-fun nullable!9197 (Regex!20809) Bool)

(assert (=> b!7778960 (= res!3100718 (not (nullable!9197 r1!6279)))))

(declare-fun b!7778961 () Bool)

(declare-fun tp!2286185 () Bool)

(declare-fun tp!2286190 () Bool)

(assert (=> b!7778961 (= e!4608213 (and tp!2286185 tp!2286190))))

(assert (= (and start!740422 res!3100714) b!7778953))

(assert (= (and b!7778953 res!3100716) b!7778945))

(assert (= (and b!7778945 res!3100712) b!7778956))

(assert (= (and b!7778956 res!3100719) b!7778944))

(assert (= (and b!7778944 res!3100717) b!7778960))

(assert (= (and b!7778960 res!3100718) b!7778958))

(assert (= (and b!7778958 res!3100713) b!7778957))

(assert (= (and b!7778957 res!3100720) b!7778947))

(assert (= (and b!7778947 res!3100715) b!7778946))

(assert (= (and start!740422 ((_ is ElementMatch!20809) r1!6279)) b!7778954))

(assert (= (and start!740422 ((_ is Concat!29654) r1!6279)) b!7778952))

(assert (= (and start!740422 ((_ is Star!20809) r1!6279)) b!7778949))

(assert (= (and start!740422 ((_ is Union!20809) r1!6279)) b!7778951))

(assert (= (and start!740422 ((_ is ElementMatch!20809) r2!6217)) b!7778948))

(assert (= (and start!740422 ((_ is Concat!29654) r2!6217)) b!7778955))

(assert (= (and start!740422 ((_ is Star!20809) r2!6217)) b!7778959))

(assert (= (and start!740422 ((_ is Union!20809) r2!6217)) b!7778961))

(assert (= (and start!740422 ((_ is Cons!73524) s!14292)) b!7778950))

(declare-fun m!8228140 () Bool)

(assert (=> b!7778953 m!8228140))

(declare-fun m!8228142 () Bool)

(assert (=> b!7778957 m!8228142))

(declare-fun m!8228144 () Bool)

(assert (=> b!7778946 m!8228144))

(declare-fun m!8228146 () Bool)

(assert (=> b!7778945 m!8228146))

(declare-fun m!8228148 () Bool)

(assert (=> b!7778958 m!8228148))

(declare-fun m!8228150 () Bool)

(assert (=> b!7778944 m!8228150))

(declare-fun m!8228152 () Bool)

(assert (=> b!7778944 m!8228152))

(declare-fun m!8228154 () Bool)

(assert (=> b!7778960 m!8228154))

(declare-fun m!8228156 () Bool)

(assert (=> start!740422 m!8228156))

(check-sat (not b!7778958) (not b!7778955) (not b!7778949) (not b!7778957) (not b!7778960) (not b!7778944) (not b!7778950) tp_is_empty!51973 (not b!7778951) (not b!7778959) (not b!7778945) (not b!7778953) (not b!7778952) (not b!7778946) (not start!740422) (not b!7778961))
(check-sat)
