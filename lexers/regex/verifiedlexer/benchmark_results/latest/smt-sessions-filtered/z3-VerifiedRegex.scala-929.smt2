; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47642 () Bool)

(assert start!47642)

(declare-fun res!220983 () Bool)

(declare-fun e!311872 () Bool)

(assert (=> start!47642 (=> (not res!220983) (not e!311872))))

(declare-datatypes ((B!1153 0))(
  ( (B!1154 (val!1866 Int)) )
))
(declare-datatypes ((List!4814 0))(
  ( (Nil!4804) (Cons!4804 (h!10205 B!1153) (t!73404 List!4814)) )
))
(declare-fun acc!308 () List!4814)

(declare-fun noDuplicate!155 (List!4814) Bool)

(assert (=> start!47642 (= res!220983 (noDuplicate!155 acc!308))))

(assert (=> start!47642 e!311872))

(declare-fun e!311874 () Bool)

(assert (=> start!47642 e!311874))

(declare-fun e!311871 () Bool)

(assert (=> start!47642 e!311871))

(declare-fun b!520435 () Bool)

(declare-fun tp_is_empty!2749 () Bool)

(declare-fun tp!161926 () Bool)

(assert (=> b!520435 (= e!311874 (and tp_is_empty!2749 tp!161926))))

(declare-fun b!520436 () Bool)

(declare-fun res!220981 () Bool)

(assert (=> b!520436 (=> (not res!220981) (not e!311872))))

(declare-fun list!41 () List!4814)

(get-info :version)

(assert (=> b!520436 (= res!220981 ((_ is Cons!4804) list!41))))

(declare-fun b!520437 () Bool)

(assert (=> b!520437 (= e!311872 false)))

(declare-fun lt!216965 () Bool)

(assert (=> b!520437 (= lt!216965 (noDuplicate!155 (Cons!4804 (h!10205 list!41) acc!308)))))

(declare-fun b!520438 () Bool)

(declare-fun e!311873 () Bool)

(declare-fun contains!1152 (List!4814 B!1153) Bool)

(assert (=> b!520438 (= e!311873 (not (contains!1152 acc!308 (h!10205 list!41))))))

(declare-fun b!520439 () Bool)

(declare-fun res!220982 () Bool)

(assert (=> b!520439 (=> (not res!220982) (not e!311872))))

(assert (=> b!520439 (= res!220982 e!311873)))

(declare-fun res!220980 () Bool)

(assert (=> b!520439 (=> res!220980 e!311873)))

(assert (=> b!520439 (= res!220980 (not ((_ is Cons!4804) list!41)))))

(declare-fun b!520440 () Bool)

(declare-fun tp!161927 () Bool)

(assert (=> b!520440 (= e!311871 (and tp_is_empty!2749 tp!161927))))

(assert (= (and start!47642 res!220983) b!520439))

(assert (= (and b!520439 (not res!220980)) b!520438))

(assert (= (and b!520439 res!220982) b!520436))

(assert (= (and b!520436 res!220981) b!520437))

(assert (= (and start!47642 ((_ is Cons!4804) acc!308)) b!520435))

(assert (= (and start!47642 ((_ is Cons!4804) list!41)) b!520440))

(declare-fun m!767131 () Bool)

(assert (=> start!47642 m!767131))

(declare-fun m!767133 () Bool)

(assert (=> b!520437 m!767133))

(declare-fun m!767135 () Bool)

(assert (=> b!520438 m!767135))

(check-sat (not start!47642) (not b!520438) (not b!520440) tp_is_empty!2749 (not b!520435) (not b!520437))
(check-sat)
