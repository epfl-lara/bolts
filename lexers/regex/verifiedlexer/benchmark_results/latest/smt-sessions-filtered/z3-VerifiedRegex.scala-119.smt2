; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!908 () Bool)

(assert start!908)

(declare-fun res!25724 () Bool)

(declare-fun e!11170 () Bool)

(assert (=> start!908 (=> (not res!25724) (not e!11170))))

(declare-datatypes ((C!1320 0))(
  ( (C!1321 (val!151 Int)) )
))
(declare-datatypes ((Regex!123 0))(
  ( (ElementMatch!123 (c!14769 C!1320)) (Concat!203 (regOne!758 Regex!123) (regTwo!758 Regex!123)) (EmptyExpr!123) (Star!123 (reg!452 Regex!123)) (EmptyLang!123) (Union!123 (regOne!759 Regex!123) (regTwo!759 Regex!123)) )
))
(declare-datatypes ((List!132 0))(
  ( (Nil!130) (Cons!130 (h!5526 Regex!123) (t!14613 List!132)) )
))
(declare-datatypes ((Context!10 0))(
  ( (Context!11 (exprs!505 List!132)) )
))
(declare-fun thiss!29357 () Context!10)

(declare-fun isEmpty!38 (List!132) Bool)

(assert (=> start!908 (= res!25724 (not (isEmpty!38 (exprs!505 thiss!29357))))))

(assert (=> start!908 e!11170))

(declare-fun e!11171 () Bool)

(declare-fun inv!386 (Context!10) Bool)

(assert (=> start!908 (and (inv!386 thiss!29357) e!11171)))

(declare-fun b!27887 () Bool)

(assert (=> b!27887 (= e!11170 (= (exprs!505 thiss!29357) Nil!130))))

(declare-fun b!27888 () Bool)

(declare-fun tp!19268 () Bool)

(assert (=> b!27888 (= e!11171 tp!19268)))

(assert (= (and start!908 res!25724) b!27887))

(assert (= start!908 b!27888))

(declare-fun m!4303 () Bool)

(assert (=> start!908 m!4303))

(declare-fun m!4305 () Bool)

(assert (=> start!908 m!4305))

(check-sat (not start!908) (not b!27888))
(check-sat)
(get-model)

(declare-fun d!1892 () Bool)

(get-info :version)

(assert (=> d!1892 (= (isEmpty!38 (exprs!505 thiss!29357)) ((_ is Nil!130) (exprs!505 thiss!29357)))))

(assert (=> start!908 d!1892))

(declare-fun d!1896 () Bool)

(declare-fun lambda!15 () Int)

(declare-fun forall!14 (List!132 Int) Bool)

(assert (=> d!1896 (= (inv!386 thiss!29357) (forall!14 (exprs!505 thiss!29357) lambda!15))))

(declare-fun bs!402 () Bool)

(assert (= bs!402 d!1896))

(declare-fun m!4307 () Bool)

(assert (=> bs!402 m!4307))

(assert (=> start!908 d!1896))

(declare-fun b!27893 () Bool)

(declare-fun e!11174 () Bool)

(declare-fun tp!19273 () Bool)

(declare-fun tp!19274 () Bool)

(assert (=> b!27893 (= e!11174 (and tp!19273 tp!19274))))

(assert (=> b!27888 (= tp!19268 e!11174)))

(assert (= (and b!27888 ((_ is Cons!130) (exprs!505 thiss!29357))) b!27893))

(check-sat (not d!1896) (not b!27893))
(check-sat)
