; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62132 () Bool)

(assert start!62132)

(declare-fun b!695172 () Bool)

(declare-fun res!459296 () Bool)

(declare-fun e!395413 () Bool)

(assert (=> b!695172 (=> (not res!459296) (not e!395413))))

(declare-datatypes ((List!13190 0))(
  ( (Nil!13187) (Cons!13186 (h!14231 (_ BitVec 64)) (t!19480 List!13190)) )
))
(declare-fun acc!681 () List!13190)

(declare-fun contains!3733 (List!13190 (_ BitVec 64)) Bool)

(assert (=> b!695172 (= res!459296 (not (contains!3733 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695173 () Bool)

(declare-fun res!459299 () Bool)

(assert (=> b!695173 (=> (not res!459299) (not e!395413))))

(declare-datatypes ((array!39878 0))(
  ( (array!39879 (arr!19096 (Array (_ BitVec 32) (_ BitVec 64))) (size!19479 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39878)

(declare-fun arrayNoDuplicates!0 (array!39878 (_ BitVec 32) List!13190) Bool)

(assert (=> b!695173 (= res!459299 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13187))))

(declare-fun b!695174 () Bool)

(declare-fun res!459295 () Bool)

(assert (=> b!695174 (=> (not res!459295) (not e!395413))))

(declare-fun e!395415 () Bool)

(assert (=> b!695174 (= res!459295 e!395415)))

(declare-fun res!459300 () Bool)

(assert (=> b!695174 (=> res!459300 e!395415)))

(declare-fun e!395416 () Bool)

(assert (=> b!695174 (= res!459300 e!395416)))

(declare-fun res!459294 () Bool)

(assert (=> b!695174 (=> (not res!459294) (not e!395416))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695174 (= res!459294 (bvsgt from!3004 i!1382))))

(declare-fun res!459297 () Bool)

(assert (=> start!62132 (=> (not res!459297) (not e!395413))))

(assert (=> start!62132 (= res!459297 (and (bvslt (size!19479 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19479 a!3626))))))

(assert (=> start!62132 e!395413))

(assert (=> start!62132 true))

(declare-fun array_inv!14870 (array!39878) Bool)

(assert (=> start!62132 (array_inv!14870 a!3626)))

(declare-fun b!695175 () Bool)

(assert (=> b!695175 (= e!395413 false)))

(declare-fun lt!316995 () Bool)

(assert (=> b!695175 (= lt!316995 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695176 () Bool)

(declare-fun e!395414 () Bool)

(assert (=> b!695176 (= e!395415 e!395414)))

(declare-fun res!459302 () Bool)

(assert (=> b!695176 (=> (not res!459302) (not e!395414))))

(assert (=> b!695176 (= res!459302 (bvsle from!3004 i!1382))))

(declare-fun b!695177 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!695177 (= e!395416 (contains!3733 acc!681 k0!2843))))

(declare-fun b!695178 () Bool)

(declare-fun res!459301 () Bool)

(assert (=> b!695178 (=> (not res!459301) (not e!395413))))

(assert (=> b!695178 (= res!459301 (not (contains!3733 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695179 () Bool)

(declare-fun res!459298 () Bool)

(assert (=> b!695179 (=> (not res!459298) (not e!395413))))

(declare-fun noDuplicate!980 (List!13190) Bool)

(assert (=> b!695179 (= res!459298 (noDuplicate!980 acc!681))))

(declare-fun b!695180 () Bool)

(assert (=> b!695180 (= e!395414 (not (contains!3733 acc!681 k0!2843)))))

(assert (= (and start!62132 res!459297) b!695179))

(assert (= (and b!695179 res!459298) b!695178))

(assert (= (and b!695178 res!459301) b!695172))

(assert (= (and b!695172 res!459296) b!695174))

(assert (= (and b!695174 res!459294) b!695177))

(assert (= (and b!695174 (not res!459300)) b!695176))

(assert (= (and b!695176 res!459302) b!695180))

(assert (= (and b!695174 res!459295) b!695173))

(assert (= (and b!695173 res!459299) b!695175))

(declare-fun m!656777 () Bool)

(assert (=> b!695172 m!656777))

(declare-fun m!656779 () Bool)

(assert (=> b!695175 m!656779))

(declare-fun m!656781 () Bool)

(assert (=> start!62132 m!656781))

(declare-fun m!656783 () Bool)

(assert (=> b!695180 m!656783))

(declare-fun m!656785 () Bool)

(assert (=> b!695178 m!656785))

(declare-fun m!656787 () Bool)

(assert (=> b!695173 m!656787))

(assert (=> b!695177 m!656783))

(declare-fun m!656789 () Bool)

(assert (=> b!695179 m!656789))

(check-sat (not b!695172) (not b!695180) (not start!62132) (not b!695177) (not b!695175) (not b!695173) (not b!695178) (not b!695179))
(check-sat)
