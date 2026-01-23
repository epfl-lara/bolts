; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46068 () Bool)

(assert start!46068)

(declare-fun b!510383 () Bool)

(declare-fun res!216531 () Bool)

(declare-fun e!304872 () Bool)

(assert (=> b!510383 (=> (not res!216531) (not e!304872))))

(declare-datatypes ((B!993 0))(
  ( (B!994 (val!1638 Int)) )
))
(declare-datatypes ((List!4611 0))(
  ( (Nil!4601) (Cons!4601 (h!9998 B!993) (t!73129 List!4611)) )
))
(declare-fun p!1985 () List!4611)

(get-info :version)

(assert (=> b!510383 (= res!216531 ((_ is Cons!4601) p!1985))))

(declare-fun b!510384 () Bool)

(declare-fun e!304874 () Bool)

(declare-fun tp_is_empty!2379 () Bool)

(declare-fun tp!158782 () Bool)

(assert (=> b!510384 (= e!304874 (and tp_is_empty!2379 tp!158782))))

(declare-fun b!510385 () Bool)

(declare-fun e!304875 () Bool)

(assert (=> b!510385 (= e!304875 false)))

(declare-fun lt!211735 () Int)

(declare-fun lt!211734 () List!4611)

(declare-fun size!3707 (List!4611) Int)

(assert (=> b!510385 (= lt!211735 (size!3707 lt!211734))))

(declare-fun lt!211736 () Int)

(assert (=> b!510385 (= lt!211736 (size!3707 (t!73129 p!1985)))))

(declare-fun res!216530 () Bool)

(assert (=> start!46068 (=> (not res!216530) (not e!304872))))

(declare-fun l!3306 () List!4611)

(declare-fun isEmpty!3555 (List!4611) Bool)

(assert (=> start!46068 (= res!216530 (not (isEmpty!3555 l!3306)))))

(assert (=> start!46068 e!304872))

(assert (=> start!46068 e!304874))

(declare-fun e!304873 () Bool)

(assert (=> start!46068 e!304873))

(declare-fun b!510386 () Bool)

(declare-fun res!216526 () Bool)

(assert (=> b!510386 (=> (not res!216526) (not e!304872))))

(assert (=> b!510386 (= res!216526 (< (size!3707 p!1985) (size!3707 l!3306)))))

(declare-fun b!510387 () Bool)

(declare-fun tp!158783 () Bool)

(assert (=> b!510387 (= e!304873 (and tp_is_empty!2379 tp!158783))))

(declare-fun b!510388 () Bool)

(declare-fun res!216528 () Bool)

(assert (=> b!510388 (=> (not res!216528) (not e!304875))))

(declare-fun isPrefix!533 (List!4611 List!4611) Bool)

(assert (=> b!510388 (= res!216528 (isPrefix!533 (t!73129 p!1985) lt!211734))))

(declare-fun b!510389 () Bool)

(declare-fun res!216527 () Bool)

(assert (=> b!510389 (=> (not res!216527) (not e!304872))))

(assert (=> b!510389 (= res!216527 (isPrefix!533 p!1985 l!3306))))

(declare-fun b!510390 () Bool)

(assert (=> b!510390 (= e!304872 e!304875)))

(declare-fun res!216529 () Bool)

(assert (=> b!510390 (=> (not res!216529) (not e!304875))))

(assert (=> b!510390 (= res!216529 (not (isEmpty!3555 lt!211734)))))

(declare-fun tail!670 (List!4611) List!4611)

(assert (=> b!510390 (= lt!211734 (tail!670 l!3306))))

(assert (= (and start!46068 res!216530) b!510389))

(assert (= (and b!510389 res!216527) b!510386))

(assert (= (and b!510386 res!216526) b!510383))

(assert (= (and b!510383 res!216531) b!510390))

(assert (= (and b!510390 res!216529) b!510388))

(assert (= (and b!510388 res!216528) b!510385))

(assert (= (and start!46068 ((_ is Cons!4601) l!3306)) b!510384))

(assert (= (and start!46068 ((_ is Cons!4601) p!1985)) b!510387))

(declare-fun m!757265 () Bool)

(assert (=> b!510386 m!757265))

(declare-fun m!757267 () Bool)

(assert (=> b!510386 m!757267))

(declare-fun m!757269 () Bool)

(assert (=> b!510390 m!757269))

(declare-fun m!757271 () Bool)

(assert (=> b!510390 m!757271))

(declare-fun m!757273 () Bool)

(assert (=> start!46068 m!757273))

(declare-fun m!757275 () Bool)

(assert (=> b!510389 m!757275))

(declare-fun m!757277 () Bool)

(assert (=> b!510388 m!757277))

(declare-fun m!757279 () Bool)

(assert (=> b!510385 m!757279))

(declare-fun m!757281 () Bool)

(assert (=> b!510385 m!757281))

(check-sat (not b!510387) (not b!510390) (not start!46068) (not b!510386) (not b!510385) (not b!510389) (not b!510384) tp_is_empty!2379 (not b!510388))
(check-sat)
