; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754692 () Bool)

(assert start!754692)

(declare-fun res!3170484 () Bool)

(declare-fun e!4723514 () Bool)

(assert (=> start!754692 (=> (not res!3170484) (not e!4723514))))

(declare-datatypes ((B!4093 0))(
  ( (B!4094 (val!32436 Int)) )
))
(declare-datatypes ((List!74948 0))(
  ( (Nil!74824) (Cons!74824 (h!81272 B!4093) (t!390691 List!74948)) )
))
(declare-fun p!2009 () List!74948)

(declare-fun l!3435 () List!74948)

(declare-fun isPrefix!6771 (List!74948 List!74948) Bool)

(assert (=> start!754692 (= res!3170484 (isPrefix!6771 p!2009 l!3435))))

(assert (=> start!754692 e!4723514))

(declare-fun e!4723515 () Bool)

(assert (=> start!754692 e!4723515))

(declare-fun e!4723513 () Bool)

(assert (=> start!754692 e!4723513))

(declare-fun b!8018640 () Bool)

(declare-fun lt!2719363 () Int)

(declare-fun lt!2719362 () Int)

(get-info :version)

(assert (=> b!8018640 (= e!4723514 (and (< lt!2719363 lt!2719362) (not ((_ is Cons!74824) p!2009)) (< lt!2719362 lt!2719363)))))

(declare-fun size!43615 (List!74948) Int)

(assert (=> b!8018640 (= lt!2719362 (size!43615 l!3435))))

(assert (=> b!8018640 (= lt!2719363 (size!43615 p!2009))))

(declare-fun b!8018641 () Bool)

(declare-fun tp_is_empty!53981 () Bool)

(declare-fun tp!2400109 () Bool)

(assert (=> b!8018641 (= e!4723515 (and tp_is_empty!53981 tp!2400109))))

(declare-fun b!8018642 () Bool)

(declare-fun tp!2400110 () Bool)

(assert (=> b!8018642 (= e!4723513 (and tp_is_empty!53981 tp!2400110))))

(assert (= (and start!754692 res!3170484) b!8018640))

(assert (= (and start!754692 ((_ is Cons!74824) p!2009)) b!8018641))

(assert (= (and start!754692 ((_ is Cons!74824) l!3435)) b!8018642))

(declare-fun m!8381708 () Bool)

(assert (=> start!754692 m!8381708))

(declare-fun m!8381710 () Bool)

(assert (=> b!8018640 m!8381710))

(declare-fun m!8381712 () Bool)

(assert (=> b!8018640 m!8381712))

(check-sat (not b!8018641) (not b!8018640) (not start!754692) (not b!8018642) tp_is_empty!53981)
(check-sat)
