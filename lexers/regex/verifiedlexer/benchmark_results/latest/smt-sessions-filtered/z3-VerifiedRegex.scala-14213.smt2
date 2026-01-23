; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744390 () Bool)

(assert start!744390)

(declare-fun b!7886142 () Bool)

(declare-fun res!3130722 () Bool)

(declare-fun e!4656119 () Bool)

(assert (=> b!7886142 (=> (not res!3130722) (not e!4656119))))

(declare-datatypes ((C!42724 0))(
  ( (C!42725 (val!31824 Int)) )
))
(declare-datatypes ((List!74056 0))(
  ( (Nil!73932) (Cons!73932 (h!80380 C!42724) (t!388791 List!74056)) )
))
(declare-fun s!9586 () List!74056)

(declare-fun isEmpty!42421 (List!74056) Bool)

(assert (=> b!7886142 (= res!3130722 (not (isEmpty!42421 s!9586)))))

(declare-fun b!7886143 () Bool)

(declare-fun e!4656117 () Bool)

(declare-fun tp_is_empty!52797 () Bool)

(declare-fun tp!2345947 () Bool)

(assert (=> b!7886143 (= e!4656117 (and tp_is_empty!52797 tp!2345947))))

(declare-fun b!7886144 () Bool)

(declare-fun e!4656118 () Bool)

(declare-fun tp!2345948 () Bool)

(assert (=> b!7886144 (= e!4656118 tp!2345948)))

(declare-fun b!7886145 () Bool)

(declare-fun res!3130721 () Bool)

(assert (=> b!7886145 (=> (not res!3130721) (not e!4656119))))

(declare-datatypes ((tuple2!70044 0))(
  ( (tuple2!70045 (_1!38325 List!74056) (_2!38325 List!74056)) )
))
(declare-fun cut!2 () tuple2!70044)

(declare-fun ++!18107 (List!74056 List!74056) List!74056)

(assert (=> b!7886145 (= res!3130721 (= (++!18107 (_1!38325 cut!2) (_2!38325 cut!2)) s!9586))))

(declare-fun b!7886146 () Bool)

(declare-fun res!3130725 () Bool)

(assert (=> b!7886146 (=> (not res!3130725) (not e!4656119))))

(declare-datatypes ((Regex!21199 0))(
  ( (ElementMatch!21199 (c!1447709 C!42724)) (Concat!30044 (regOne!42910 Regex!21199) (regTwo!42910 Regex!21199)) (EmptyExpr!21199) (Star!21199 (reg!21528 Regex!21199)) (EmptyLang!21199) (Union!21199 (regOne!42911 Regex!21199) (regTwo!42911 Regex!21199)) )
))
(declare-fun r!14100 () Regex!21199)

(get-info :version)

(assert (=> b!7886146 (= res!3130725 (and (not ((_ is EmptyExpr!21199) r!14100)) (not ((_ is EmptyLang!21199) r!14100)) (not ((_ is ElementMatch!21199) r!14100)) (not ((_ is Union!21199) r!14100)) ((_ is Star!21199) r!14100)))))

(declare-fun b!7886147 () Bool)

(declare-fun res!3130723 () Bool)

(assert (=> b!7886147 (=> (not res!3130723) (not e!4656119))))

(declare-fun matchRSpec!4668 (Regex!21199 List!74056) Bool)

(assert (=> b!7886147 (= res!3130723 (matchRSpec!4668 (reg!21528 r!14100) (_1!38325 cut!2)))))

(declare-fun b!7886148 () Bool)

(assert (=> b!7886148 (= e!4656118 tp_is_empty!52797)))

(declare-fun b!7886149 () Bool)

(declare-fun res!3130724 () Bool)

(assert (=> b!7886149 (=> (not res!3130724) (not e!4656119))))

(assert (=> b!7886149 (= res!3130724 (not (isEmpty!42421 (_1!38325 cut!2))))))

(declare-fun b!7886150 () Bool)

(declare-fun e!4656121 () Bool)

(declare-fun tp!2345952 () Bool)

(assert (=> b!7886150 (= e!4656121 (and tp_is_empty!52797 tp!2345952))))

(declare-fun b!7886151 () Bool)

(declare-fun tp!2345949 () Bool)

(declare-fun tp!2345950 () Bool)

(assert (=> b!7886151 (= e!4656118 (and tp!2345949 tp!2345950))))

(declare-fun res!3130726 () Bool)

(assert (=> start!744390 (=> (not res!3130726) (not e!4656119))))

(declare-fun validRegex!11609 (Regex!21199) Bool)

(assert (=> start!744390 (= res!3130726 (validRegex!11609 r!14100))))

(assert (=> start!744390 e!4656119))

(assert (=> start!744390 e!4656118))

(declare-fun e!4656120 () Bool)

(assert (=> start!744390 e!4656120))

(assert (=> start!744390 (and e!4656117 e!4656121)))

(declare-fun b!7886152 () Bool)

(declare-fun tp!2345951 () Bool)

(assert (=> b!7886152 (= e!4656120 (and tp_is_empty!52797 tp!2345951))))

(declare-fun b!7886153 () Bool)

(declare-fun tp!2345954 () Bool)

(declare-fun tp!2345953 () Bool)

(assert (=> b!7886153 (= e!4656118 (and tp!2345954 tp!2345953))))

(declare-fun b!7886154 () Bool)

(assert (=> b!7886154 (= e!4656119 (not (validRegex!11609 r!14100)))))

(assert (= (and start!744390 res!3130726) b!7886146))

(assert (= (and b!7886146 res!3130725) b!7886142))

(assert (= (and b!7886142 res!3130722) b!7886145))

(assert (= (and b!7886145 res!3130721) b!7886149))

(assert (= (and b!7886149 res!3130724) b!7886147))

(assert (= (and b!7886147 res!3130723) b!7886154))

(assert (= (and start!744390 ((_ is ElementMatch!21199) r!14100)) b!7886148))

(assert (= (and start!744390 ((_ is Concat!30044) r!14100)) b!7886153))

(assert (= (and start!744390 ((_ is Star!21199) r!14100)) b!7886144))

(assert (= (and start!744390 ((_ is Union!21199) r!14100)) b!7886151))

(assert (= (and start!744390 ((_ is Cons!73932) s!9586)) b!7886152))

(assert (= (and start!744390 ((_ is Cons!73932) (_1!38325 cut!2))) b!7886143))

(assert (= (and start!744390 ((_ is Cons!73932) (_2!38325 cut!2))) b!7886150))

(declare-fun m!8269202 () Bool)

(assert (=> b!7886154 m!8269202))

(declare-fun m!8269204 () Bool)

(assert (=> b!7886149 m!8269204))

(declare-fun m!8269206 () Bool)

(assert (=> b!7886147 m!8269206))

(declare-fun m!8269208 () Bool)

(assert (=> b!7886145 m!8269208))

(assert (=> start!744390 m!8269202))

(declare-fun m!8269210 () Bool)

(assert (=> b!7886142 m!8269210))

(check-sat (not b!7886153) (not b!7886144) (not b!7886142) (not b!7886149) (not b!7886150) (not b!7886143) (not b!7886152) (not b!7886147) (not b!7886154) (not b!7886151) (not start!744390) tp_is_empty!52797 (not b!7886145))
(check-sat)
