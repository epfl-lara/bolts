; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728264 () Bool)

(assert start!728264)

(declare-fun b!7524817 () Bool)

(declare-fun e!4485353 () Bool)

(declare-fun tp!2186502 () Bool)

(assert (=> b!7524817 (= e!4485353 tp!2186502)))

(declare-fun b!7524818 () Bool)

(declare-fun tp!2186500 () Bool)

(declare-fun tp!2186501 () Bool)

(assert (=> b!7524818 (= e!4485353 (and tp!2186500 tp!2186501))))

(declare-fun b!7524819 () Bool)

(declare-fun res!3015928 () Bool)

(declare-fun e!4485355 () Bool)

(assert (=> b!7524819 (=> (not res!3015928) (not e!4485355))))

(declare-datatypes ((C!39932 0))(
  ( (C!39933 (val!30406 Int)) )
))
(declare-datatypes ((Regex!19803 0))(
  ( (ElementMatch!19803 (c!1390128 C!39932)) (Concat!28648 (regOne!40118 Regex!19803) (regTwo!40118 Regex!19803)) (EmptyExpr!19803) (Star!19803 (reg!20132 Regex!19803)) (EmptyLang!19803) (Union!19803 (regOne!40119 Regex!19803) (regTwo!40119 Regex!19803)) )
))
(declare-fun expr!41 () Regex!19803)

(declare-fun a!1106 () C!39932)

(get-info :version)

(assert (=> b!7524819 (= res!3015928 (and (or (not ((_ is ElementMatch!19803) expr!41)) (not (= (c!1390128 expr!41) a!1106))) (not ((_ is Union!19803) expr!41))))))

(declare-fun b!7524820 () Bool)

(declare-fun res!3015927 () Bool)

(assert (=> b!7524820 (=> (not res!3015927) (not e!4485355))))

(declare-fun e!4485354 () Bool)

(assert (=> b!7524820 (= res!3015927 e!4485354)))

(declare-fun res!3015930 () Bool)

(assert (=> b!7524820 (=> res!3015930 e!4485354)))

(assert (=> b!7524820 (= res!3015930 (not ((_ is Concat!28648) expr!41)))))

(declare-fun b!7524821 () Bool)

(declare-fun nullable!8637 (Regex!19803) Bool)

(assert (=> b!7524821 (= e!4485354 (not (nullable!8637 (regOne!40118 expr!41))))))

(declare-fun b!7524823 () Bool)

(declare-fun tp_is_empty!49961 () Bool)

(assert (=> b!7524823 (= e!4485353 tp_is_empty!49961)))

(declare-fun b!7524824 () Bool)

(declare-fun validRegex!10231 (Regex!19803) Bool)

(assert (=> b!7524824 (= e!4485355 (not (validRegex!10231 expr!41)))))

(declare-fun b!7524825 () Bool)

(declare-fun res!3015926 () Bool)

(assert (=> b!7524825 (=> (not res!3015926) (not e!4485355))))

(assert (=> b!7524825 (= res!3015926 (and (not ((_ is Concat!28648) expr!41)) ((_ is Star!19803) expr!41)))))

(declare-fun b!7524822 () Bool)

(declare-fun tp!2186499 () Bool)

(declare-fun tp!2186503 () Bool)

(assert (=> b!7524822 (= e!4485353 (and tp!2186499 tp!2186503))))

(declare-fun res!3015929 () Bool)

(assert (=> start!728264 (=> (not res!3015929) (not e!4485355))))

(assert (=> start!728264 (= res!3015929 (validRegex!10231 expr!41))))

(assert (=> start!728264 e!4485355))

(assert (=> start!728264 e!4485353))

(assert (=> start!728264 tp_is_empty!49961))

(assert (= (and start!728264 res!3015929) b!7524819))

(assert (= (and b!7524819 res!3015928) b!7524820))

(assert (= (and b!7524820 (not res!3015930)) b!7524821))

(assert (= (and b!7524820 res!3015927) b!7524825))

(assert (= (and b!7524825 res!3015926) b!7524824))

(assert (= (and start!728264 ((_ is ElementMatch!19803) expr!41)) b!7524823))

(assert (= (and start!728264 ((_ is Concat!28648) expr!41)) b!7524818))

(assert (= (and start!728264 ((_ is Star!19803) expr!41)) b!7524817))

(assert (= (and start!728264 ((_ is Union!19803) expr!41)) b!7524822))

(declare-fun m!8101186 () Bool)

(assert (=> b!7524821 m!8101186))

(declare-fun m!8101188 () Bool)

(assert (=> b!7524824 m!8101188))

(assert (=> start!728264 m!8101188))

(check-sat (not b!7524824) tp_is_empty!49961 (not b!7524818) (not b!7524821) (not start!728264) (not b!7524817) (not b!7524822))
(check-sat)
