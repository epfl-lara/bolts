; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62384 () Bool)

(assert start!62384)

(declare-fun b!698319 () Bool)

(declare-fun res!462303 () Bool)

(declare-fun e!396969 () Bool)

(assert (=> b!698319 (=> (not res!462303) (not e!396969))))

(declare-datatypes ((List!13256 0))(
  ( (Nil!13253) (Cons!13252 (h!14297 (_ BitVec 64)) (t!19546 List!13256)) )
))
(declare-fun acc!652 () List!13256)

(declare-fun noDuplicate!1046 (List!13256) Bool)

(assert (=> b!698319 (= res!462303 (noDuplicate!1046 acc!652))))

(declare-fun res!462304 () Bool)

(assert (=> start!62384 (=> (not res!462304) (not e!396969))))

(declare-datatypes ((array!40019 0))(
  ( (array!40020 (arr!19162 (Array (_ BitVec 32) (_ BitVec 64))) (size!19545 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40019)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62384 (= res!462304 (and (bvslt (size!19545 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19545 a!3591))))))

(assert (=> start!62384 e!396969))

(assert (=> start!62384 true))

(declare-fun array_inv!14936 (array!40019) Bool)

(assert (=> start!62384 (array_inv!14936 a!3591)))

(declare-fun b!698320 () Bool)

(assert (=> b!698320 (= e!396969 false)))

(declare-fun lt!317223 () Bool)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3799 (List!13256 (_ BitVec 64)) Bool)

(assert (=> b!698320 (= lt!317223 (contains!3799 acc!652 k0!2824))))

(declare-fun b!698321 () Bool)

(declare-fun res!462305 () Bool)

(assert (=> b!698321 (=> (not res!462305) (not e!396969))))

(declare-fun newAcc!49 () List!13256)

(assert (=> b!698321 (= res!462305 (noDuplicate!1046 newAcc!49))))

(declare-fun b!698322 () Bool)

(declare-fun res!462307 () Bool)

(assert (=> b!698322 (=> (not res!462307) (not e!396969))))

(declare-fun arrayContainsKey!0 (array!40019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698322 (= res!462307 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!698323 () Bool)

(declare-fun res!462306 () Bool)

(assert (=> b!698323 (=> (not res!462306) (not e!396969))))

(assert (=> b!698323 (= res!462306 (not (contains!3799 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698324 () Bool)

(declare-fun res!462308 () Bool)

(assert (=> b!698324 (=> (not res!462308) (not e!396969))))

(assert (=> b!698324 (= res!462308 (not (contains!3799 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62384 res!462304) b!698319))

(assert (= (and b!698319 res!462303) b!698321))

(assert (= (and b!698321 res!462305) b!698323))

(assert (= (and b!698323 res!462306) b!698324))

(assert (= (and b!698324 res!462308) b!698322))

(assert (= (and b!698322 res!462307) b!698320))

(declare-fun m!658643 () Bool)

(assert (=> b!698320 m!658643))

(declare-fun m!658645 () Bool)

(assert (=> b!698322 m!658645))

(declare-fun m!658647 () Bool)

(assert (=> b!698323 m!658647))

(declare-fun m!658649 () Bool)

(assert (=> b!698319 m!658649))

(declare-fun m!658651 () Bool)

(assert (=> start!62384 m!658651))

(declare-fun m!658653 () Bool)

(assert (=> b!698324 m!658653))

(declare-fun m!658655 () Bool)

(assert (=> b!698321 m!658655))

(check-sat (not start!62384) (not b!698323) (not b!698324) (not b!698322) (not b!698320) (not b!698319) (not b!698321))
(check-sat)
