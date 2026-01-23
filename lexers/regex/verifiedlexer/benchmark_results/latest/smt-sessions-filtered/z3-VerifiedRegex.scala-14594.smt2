; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755872 () Bool)

(assert start!755872)

(declare-fun res!3174233 () Bool)

(declare-fun e!4728656 () Bool)

(assert (=> start!755872 (=> (not res!3174233) (not e!4728656))))

(declare-datatypes ((B!4373 0))(
  ( (B!4374 (val!32586 Int)) )
))
(declare-datatypes ((List!75102 0))(
  ( (Nil!74976) (Cons!74976 (h!81424 B!4373) (t!390858 List!75102)) )
))
(declare-fun l!2938 () List!75102)

(declare-fun e!9235 () B!4373)

(declare-fun contains!20940 (List!75102 B!4373) Bool)

(assert (=> start!755872 (= res!3174233 (contains!20940 l!2938 e!9235))))

(assert (=> start!755872 e!4728656))

(declare-fun e!4728657 () Bool)

(assert (=> start!755872 e!4728657))

(declare-fun tp_is_empty!54277 () Bool)

(assert (=> start!755872 tp_is_empty!54277))

(declare-fun b!8026720 () Bool)

(get-info :version)

(assert (=> b!8026720 (= e!4728656 (and (or (not ((_ is Cons!74976) l!2938)) (not (= (h!81424 l!2938) e!9235))) (or (not ((_ is Cons!74976) l!2938)) (= (h!81424 l!2938) e!9235)) (not ((_ is Nil!74976) l!2938))))))

(declare-fun b!8026721 () Bool)

(declare-fun tp!2402105 () Bool)

(assert (=> b!8026721 (= e!4728657 (and tp_is_empty!54277 tp!2402105))))

(assert (= (and start!755872 res!3174233) b!8026720))

(assert (= (and start!755872 ((_ is Cons!74976) l!2938)) b!8026721))

(declare-fun m!8389004 () Bool)

(assert (=> start!755872 m!8389004))

(check-sat (not start!755872) (not b!8026721) tp_is_empty!54277)
(check-sat)
