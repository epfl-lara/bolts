; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727948 () Bool)

(assert start!727948)

(declare-fun b_free!134437 () Bool)

(declare-fun b_next!135227 () Bool)

(assert (=> start!727948 (= b_free!134437 (not b_next!135227))))

(declare-fun tp!2184281 () Bool)

(declare-fun b_and!352277 () Bool)

(assert (=> start!727948 (= tp!2184281 b_and!352277)))

(declare-fun b!7520296 () Bool)

(declare-fun res!3014444 () Bool)

(declare-fun e!4483005 () Bool)

(assert (=> b!7520296 (=> (not res!3014444) (not e!4483005))))

(declare-fun e!4483007 () Bool)

(assert (=> b!7520296 (= res!3014444 e!4483007)))

(declare-fun res!3014445 () Bool)

(assert (=> b!7520296 (=> res!3014445 e!4483007)))

(declare-datatypes ((B!3973 0))(
  ( (B!3974 (val!30362 Int)) )
))
(declare-datatypes ((List!72670 0))(
  ( (Nil!72546) (Cons!72546 (h!78994 B!3973) (t!387367 List!72670)) )
))
(declare-fun l!3837 () List!72670)

(get-info :version)

(assert (=> b!7520296 (= res!3014445 (not ((_ is Cons!72546) l!3837)))))

(declare-fun b!7520297 () Bool)

(declare-fun res!3014442 () Bool)

(assert (=> b!7520297 (=> (not res!3014442) (not e!4483005))))

(declare-fun e!4483006 () Bool)

(assert (=> b!7520297 (= res!3014442 e!4483006)))

(declare-fun res!3014443 () Bool)

(assert (=> b!7520297 (=> res!3014443 e!4483006)))

(assert (=> b!7520297 (= res!3014443 (not ((_ is Cons!72546) l!3837)))))

(declare-fun res!3014441 () Bool)

(assert (=> start!727948 (=> (not res!3014441) (not e!4483005))))

(declare-fun p!2194 () Int)

(declare-fun forall!18400 (List!72670 Int) Bool)

(assert (=> start!727948 (= res!3014441 (not (forall!18400 l!3837 p!2194)))))

(assert (=> start!727948 e!4483005))

(declare-fun e!4483004 () Bool)

(assert (=> start!727948 e!4483004))

(assert (=> start!727948 tp!2184281))

(declare-fun b!7520298 () Bool)

(declare-fun dynLambda!29880 (Int B!3973) Bool)

(assert (=> b!7520298 (= e!4483007 (dynLambda!29880 p!2194 (h!78994 l!3837)))))

(declare-fun b!7520299 () Bool)

(assert (=> b!7520299 (= e!4483006 (not (dynLambda!29880 p!2194 (h!78994 l!3837))))))

(declare-fun b!7520300 () Bool)

(assert (=> b!7520300 (= e!4483005 (not ((_ is Nil!72546) l!3837)))))

(declare-fun b!7520301 () Bool)

(declare-fun tp_is_empty!49883 () Bool)

(declare-fun tp!2184282 () Bool)

(assert (=> b!7520301 (= e!4483004 (and tp_is_empty!49883 tp!2184282))))

(assert (= (and start!727948 res!3014441) b!7520296))

(assert (= (and b!7520296 (not res!3014445)) b!7520298))

(assert (= (and b!7520296 res!3014444) b!7520297))

(assert (= (and b!7520297 (not res!3014443)) b!7520299))

(assert (= (and b!7520297 res!3014442) b!7520300))

(assert (= (and start!727948 ((_ is Cons!72546) l!3837)) b!7520301))

(declare-fun b_lambda!288803 () Bool)

(assert (=> (not b_lambda!288803) (not b!7520298)))

(declare-fun t!387366 () Bool)

(declare-fun tb!262577 () Bool)

(assert (=> (and start!727948 (= p!2194 p!2194) t!387366) tb!262577))

(declare-fun result!356438 () Bool)

(assert (=> tb!262577 (= result!356438 true)))

(assert (=> b!7520298 t!387366))

(declare-fun b_and!352279 () Bool)

(assert (= b_and!352277 (and (=> t!387366 result!356438) b_and!352279)))

(declare-fun b_lambda!288805 () Bool)

(assert (=> (not b_lambda!288805) (not b!7520299)))

(assert (=> b!7520299 t!387366))

(declare-fun b_and!352281 () Bool)

(assert (= b_and!352279 (and (=> t!387366 result!356438) b_and!352281)))

(declare-fun m!8099990 () Bool)

(assert (=> start!727948 m!8099990))

(declare-fun m!8099992 () Bool)

(assert (=> b!7520298 m!8099992))

(assert (=> b!7520299 m!8099992))

(check-sat (not b_lambda!288803) tp_is_empty!49883 (not b_lambda!288805) b_and!352281 (not b!7520301) (not b_next!135227) (not start!727948))
(check-sat b_and!352281 (not b_next!135227))
