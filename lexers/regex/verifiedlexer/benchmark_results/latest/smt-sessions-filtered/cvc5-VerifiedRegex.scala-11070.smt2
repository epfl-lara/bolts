; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573568 () Bool)

(assert start!573568)

(declare-fun b!5484949 () Bool)

(declare-fun e!3394235 () Bool)

(declare-fun tp!1507074 () Bool)

(assert (=> b!5484949 (= e!3394235 tp!1507074)))

(declare-fun res!2338928 () Bool)

(declare-fun e!3394236 () Bool)

(assert (=> start!573568 (=> (not res!2338928) (not e!3394236))))

(declare-datatypes ((C!31042 0))(
  ( (C!31043 (val!25223 Int)) )
))
(declare-datatypes ((Regex!15386 0))(
  ( (ElementMatch!15386 (c!958326 C!31042)) (Concat!24231 (regOne!31284 Regex!15386) (regTwo!31284 Regex!15386)) (EmptyExpr!15386) (Star!15386 (reg!15715 Regex!15386)) (EmptyLang!15386) (Union!15386 (regOne!31285 Regex!15386) (regTwo!31285 Regex!15386)) )
))
(declare-fun r!7292 () Regex!15386)

(declare-fun validRegex!7122 (Regex!15386) Bool)

(assert (=> start!573568 (= res!2338928 (validRegex!7122 r!7292))))

(assert (=> start!573568 e!3394236))

(assert (=> start!573568 e!3394235))

(declare-fun condSetEmpty!36114 () Bool)

(declare-datatypes ((List!62457 0))(
  ( (Nil!62333) (Cons!62333 (h!68781 Regex!15386) (t!375688 List!62457)) )
))
(declare-datatypes ((Context!9540 0))(
  ( (Context!9541 (exprs!5270 List!62457)) )
))
(declare-fun z!1189 () (Set Context!9540))

(assert (=> start!573568 (= condSetEmpty!36114 (= z!1189 (as set.empty (Set Context!9540))))))

(declare-fun setRes!36114 () Bool)

(assert (=> start!573568 setRes!36114))

(declare-fun e!3394239 () Bool)

(assert (=> start!573568 e!3394239))

(declare-fun e!3394234 () Bool)

(assert (=> start!573568 e!3394234))

(declare-fun b!5484950 () Bool)

(declare-fun res!2338930 () Bool)

(assert (=> b!5484950 (=> (not res!2338930) (not e!3394236))))

(declare-datatypes ((List!62458 0))(
  ( (Nil!62334) (Cons!62334 (h!68782 Context!9540) (t!375689 List!62458)) )
))
(declare-fun zl!343 () List!62458)

(declare-fun unfocusZipper!1128 (List!62458) Regex!15386)

(assert (=> b!5484950 (= res!2338930 (= r!7292 (unfocusZipper!1128 zl!343)))))

(declare-fun b!5484951 () Bool)

(declare-fun res!2338929 () Bool)

(assert (=> b!5484951 (=> (not res!2338929) (not e!3394236))))

(declare-fun toList!9170 ((Set Context!9540)) List!62458)

(assert (=> b!5484951 (= res!2338929 (= (toList!9170 z!1189) zl!343))))

(declare-fun b!5484952 () Bool)

(declare-fun e!3394238 () Bool)

(assert (=> b!5484952 (= e!3394238 true)))

(declare-datatypes ((List!62459 0))(
  ( (Nil!62335) (Cons!62335 (h!68783 C!31042) (t!375690 List!62459)) )
))
(declare-fun s!2326 () List!62459)

(declare-fun matchZipper!1602 ((Set Context!9540) List!62459) Bool)

(declare-fun isEmpty!34270 (List!62459) Bool)

(assert (=> b!5484952 (= (matchZipper!1602 z!1189 s!2326) (isEmpty!34270 s!2326))))

(declare-datatypes ((Unit!155226 0))(
  ( (Unit!155227) )
))
(declare-fun lt!2240705 () Unit!155226)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!5 ((Set Context!9540) List!62459) Unit!155226)

(assert (=> b!5484952 (= lt!2240705 (lemmaZipperOfEmptyContextMatchesEmptyString!5 z!1189 s!2326))))

(declare-fun e!3394237 () Bool)

(declare-fun setNonEmpty!36114 () Bool)

(declare-fun tp!1507068 () Bool)

(declare-fun setElem!36114 () Context!9540)

(declare-fun inv!81713 (Context!9540) Bool)

(assert (=> setNonEmpty!36114 (= setRes!36114 (and tp!1507068 (inv!81713 setElem!36114) e!3394237))))

(declare-fun setRest!36114 () (Set Context!9540))

(assert (=> setNonEmpty!36114 (= z!1189 (set.union (set.insert setElem!36114 (as set.empty (Set Context!9540))) setRest!36114))))

(declare-fun b!5484953 () Bool)

(assert (=> b!5484953 (= e!3394236 (not e!3394238))))

(declare-fun res!2338933 () Bool)

(assert (=> b!5484953 (=> res!2338933 e!3394238)))

(assert (=> b!5484953 (= res!2338933 (not (is-Cons!62334 zl!343)))))

(declare-fun matchR!7571 (Regex!15386 List!62459) Bool)

(declare-fun matchRSpec!2489 (Regex!15386 List!62459) Bool)

(assert (=> b!5484953 (= (matchR!7571 r!7292 s!2326) (matchRSpec!2489 r!7292 s!2326))))

(declare-fun lt!2240704 () Unit!155226)

(declare-fun mainMatchTheorem!2489 (Regex!15386 List!62459) Unit!155226)

(assert (=> b!5484953 (= lt!2240704 (mainMatchTheorem!2489 r!7292 s!2326))))

(declare-fun b!5484954 () Bool)

(declare-fun res!2338932 () Bool)

(assert (=> b!5484954 (=> res!2338932 e!3394238)))

(declare-fun generalisedConcat!1055 (List!62457) Regex!15386)

(assert (=> b!5484954 (= res!2338932 (not (= r!7292 (generalisedConcat!1055 (exprs!5270 (h!68782 zl!343))))))))

(declare-fun b!5484955 () Bool)

(declare-fun tp!1507071 () Bool)

(declare-fun e!3394233 () Bool)

(assert (=> b!5484955 (= e!3394239 (and (inv!81713 (h!68782 zl!343)) e!3394233 tp!1507071))))

(declare-fun b!5484956 () Bool)

(declare-fun tp_is_empty!40025 () Bool)

(declare-fun tp!1507073 () Bool)

(assert (=> b!5484956 (= e!3394234 (and tp_is_empty!40025 tp!1507073))))

(declare-fun b!5484957 () Bool)

(declare-fun res!2338927 () Bool)

(assert (=> b!5484957 (=> res!2338927 e!3394238)))

(declare-fun isEmpty!34271 (List!62458) Bool)

(assert (=> b!5484957 (= res!2338927 (not (isEmpty!34271 (t!375689 zl!343))))))

(declare-fun b!5484958 () Bool)

(declare-fun tp!1507076 () Bool)

(declare-fun tp!1507077 () Bool)

(assert (=> b!5484958 (= e!3394235 (and tp!1507076 tp!1507077))))

(declare-fun b!5484959 () Bool)

(assert (=> b!5484959 (= e!3394235 tp_is_empty!40025)))

(declare-fun b!5484960 () Bool)

(declare-fun tp!1507069 () Bool)

(assert (=> b!5484960 (= e!3394237 tp!1507069)))

(declare-fun b!5484961 () Bool)

(declare-fun res!2338931 () Bool)

(assert (=> b!5484961 (=> res!2338931 e!3394238)))

(assert (=> b!5484961 (= res!2338931 (or (is-Cons!62333 (exprs!5270 (h!68782 zl!343))) (not (= r!7292 EmptyExpr!15386)) (not (= z!1189 (set.singleton (Context!9541 Nil!62333))))))))

(declare-fun setIsEmpty!36114 () Bool)

(assert (=> setIsEmpty!36114 setRes!36114))

(declare-fun b!5484962 () Bool)

(declare-fun tp!1507070 () Bool)

(declare-fun tp!1507072 () Bool)

(assert (=> b!5484962 (= e!3394235 (and tp!1507070 tp!1507072))))

(declare-fun b!5484963 () Bool)

(declare-fun tp!1507075 () Bool)

(assert (=> b!5484963 (= e!3394233 tp!1507075)))

(assert (= (and start!573568 res!2338928) b!5484951))

(assert (= (and b!5484951 res!2338929) b!5484950))

(assert (= (and b!5484950 res!2338930) b!5484953))

(assert (= (and b!5484953 (not res!2338933)) b!5484957))

(assert (= (and b!5484957 (not res!2338927)) b!5484954))

(assert (= (and b!5484954 (not res!2338932)) b!5484961))

(assert (= (and b!5484961 (not res!2338931)) b!5484952))

(assert (= (and start!573568 (is-ElementMatch!15386 r!7292)) b!5484959))

(assert (= (and start!573568 (is-Concat!24231 r!7292)) b!5484958))

(assert (= (and start!573568 (is-Star!15386 r!7292)) b!5484949))

(assert (= (and start!573568 (is-Union!15386 r!7292)) b!5484962))

(assert (= (and start!573568 condSetEmpty!36114) setIsEmpty!36114))

(assert (= (and start!573568 (not condSetEmpty!36114)) setNonEmpty!36114))

(assert (= setNonEmpty!36114 b!5484960))

(assert (= b!5484955 b!5484963))

(assert (= (and start!573568 (is-Cons!62334 zl!343)) b!5484955))

(assert (= (and start!573568 (is-Cons!62335 s!2326)) b!5484956))

(declare-fun m!6500488 () Bool)

(assert (=> setNonEmpty!36114 m!6500488))

(declare-fun m!6500490 () Bool)

(assert (=> b!5484950 m!6500490))

(declare-fun m!6500492 () Bool)

(assert (=> b!5484951 m!6500492))

(declare-fun m!6500494 () Bool)

(assert (=> b!5484957 m!6500494))

(declare-fun m!6500496 () Bool)

(assert (=> start!573568 m!6500496))

(declare-fun m!6500498 () Bool)

(assert (=> b!5484953 m!6500498))

(declare-fun m!6500500 () Bool)

(assert (=> b!5484953 m!6500500))

(declare-fun m!6500502 () Bool)

(assert (=> b!5484953 m!6500502))

(declare-fun m!6500504 () Bool)

(assert (=> b!5484954 m!6500504))

(declare-fun m!6500506 () Bool)

(assert (=> b!5484952 m!6500506))

(declare-fun m!6500508 () Bool)

(assert (=> b!5484952 m!6500508))

(declare-fun m!6500510 () Bool)

(assert (=> b!5484952 m!6500510))

(declare-fun m!6500512 () Bool)

(assert (=> b!5484955 m!6500512))

(push 1)

(assert (not b!5484951))

(assert (not b!5484952))

(assert (not b!5484953))

(assert (not b!5484960))

(assert (not b!5484957))

(assert (not b!5484956))

(assert (not start!573568))

(assert (not b!5484955))

(assert (not b!5484954))

(assert (not b!5484949))

(assert (not b!5484963))

(assert tp_is_empty!40025)

(assert (not b!5484950))

(assert (not b!5484962))

(assert (not setNonEmpty!36114))

(assert (not b!5484958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

