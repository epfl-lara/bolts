; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62382 () Bool)

(assert start!62382)

(declare-fun b!698301 () Bool)

(declare-fun res!462287 () Bool)

(declare-fun e!396963 () Bool)

(assert (=> b!698301 (=> (not res!462287) (not e!396963))))

(declare-datatypes ((List!13255 0))(
  ( (Nil!13252) (Cons!13251 (h!14296 (_ BitVec 64)) (t!19545 List!13255)) )
))
(declare-fun acc!652 () List!13255)

(declare-fun contains!3798 (List!13255 (_ BitVec 64)) Bool)

(assert (=> b!698301 (= res!462287 (not (contains!3798 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698302 () Bool)

(declare-fun res!462285 () Bool)

(assert (=> b!698302 (=> (not res!462285) (not e!396963))))

(assert (=> b!698302 (= res!462285 (not (contains!3798 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698303 () Bool)

(declare-fun res!462289 () Bool)

(assert (=> b!698303 (=> (not res!462289) (not e!396963))))

(declare-fun noDuplicate!1045 (List!13255) Bool)

(assert (=> b!698303 (= res!462289 (noDuplicate!1045 acc!652))))

(declare-fun b!698304 () Bool)

(declare-fun res!462286 () Bool)

(assert (=> b!698304 (=> (not res!462286) (not e!396963))))

(declare-datatypes ((array!40017 0))(
  ( (array!40018 (arr!19161 (Array (_ BitVec 32) (_ BitVec 64))) (size!19544 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40017)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698304 (= res!462286 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!698305 () Bool)

(assert (=> b!698305 (= e!396963 false)))

(declare-fun lt!317220 () Bool)

(assert (=> b!698305 (= lt!317220 (contains!3798 acc!652 k!2824))))

(declare-fun b!698306 () Bool)

(declare-fun res!462288 () Bool)

(assert (=> b!698306 (=> (not res!462288) (not e!396963))))

(declare-fun newAcc!49 () List!13255)

(assert (=> b!698306 (= res!462288 (noDuplicate!1045 newAcc!49))))

(declare-fun res!462290 () Bool)

(assert (=> start!62382 (=> (not res!462290) (not e!396963))))

(assert (=> start!62382 (= res!462290 (and (bvslt (size!19544 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19544 a!3591))))))

(assert (=> start!62382 e!396963))

(assert (=> start!62382 true))

(declare-fun array_inv!14935 (array!40017) Bool)

(assert (=> start!62382 (array_inv!14935 a!3591)))

(assert (= (and start!62382 res!462290) b!698303))

(assert (= (and b!698303 res!462289) b!698306))

(assert (= (and b!698306 res!462288) b!698301))

(assert (= (and b!698301 res!462287) b!698302))

(assert (= (and b!698302 res!462285) b!698304))

(assert (= (and b!698304 res!462286) b!698305))

(declare-fun m!658629 () Bool)

(assert (=> b!698303 m!658629))

(declare-fun m!658631 () Bool)

(assert (=> start!62382 m!658631))

(declare-fun m!658633 () Bool)

(assert (=> b!698304 m!658633))

(declare-fun m!658635 () Bool)

(assert (=> b!698302 m!658635))

(declare-fun m!658637 () Bool)

(assert (=> b!698306 m!658637))

(declare-fun m!658639 () Bool)

(assert (=> b!698305 m!658639))

(declare-fun m!658641 () Bool)

(assert (=> b!698301 m!658641))

(push 1)

(assert (not b!698304))

(assert (not b!698306))

(assert (not b!698302))

(assert (not start!62382))

(assert (not b!698301))

(assert (not b!698305))

(assert (not b!698303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

