; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62296 () Bool)

(assert start!62296)

(declare-fun res!461659 () Bool)

(declare-fun e!396577 () Bool)

(assert (=> start!62296 (=> (not res!461659) (not e!396577))))

(declare-datatypes ((array!39970 0))(
  ( (array!39971 (arr!19139 (Array (_ BitVec 32) (_ BitVec 64))) (size!19522 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39970)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62296 (= res!461659 (and (bvslt (size!19522 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19522 a!3626))))))

(assert (=> start!62296 e!396577))

(assert (=> start!62296 true))

(declare-fun array_inv!14913 (array!39970) Bool)

(assert (=> start!62296 (array_inv!14913 a!3626)))

(declare-fun b!697608 () Bool)

(declare-fun res!461665 () Bool)

(assert (=> b!697608 (=> (not res!461665) (not e!396577))))

(declare-datatypes ((List!13233 0))(
  ( (Nil!13230) (Cons!13229 (h!14274 (_ BitVec 64)) (t!19523 List!13233)) )
))
(declare-fun acc!681 () List!13233)

(declare-fun noDuplicate!1023 (List!13233) Bool)

(assert (=> b!697608 (= res!461665 (noDuplicate!1023 acc!681))))

(declare-fun b!697609 () Bool)

(declare-fun res!461662 () Bool)

(assert (=> b!697609 (=> (not res!461662) (not e!396577))))

(declare-fun contains!3776 (List!13233 (_ BitVec 64)) Bool)

(assert (=> b!697609 (= res!461662 (not (contains!3776 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697610 () Bool)

(declare-fun e!396579 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!697610 (= e!396579 (contains!3776 acc!681 k!2843))))

(declare-fun b!697611 () Bool)

(declare-fun res!461660 () Bool)

(assert (=> b!697611 (=> (not res!461660) (not e!396577))))

(declare-fun e!396576 () Bool)

(assert (=> b!697611 (= res!461660 e!396576)))

(declare-fun res!461663 () Bool)

(assert (=> b!697611 (=> res!461663 e!396576)))

(assert (=> b!697611 (= res!461663 e!396579)))

(declare-fun res!461661 () Bool)

(assert (=> b!697611 (=> (not res!461661) (not e!396579))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697611 (= res!461661 (bvsgt from!3004 i!1382))))

(declare-fun b!697612 () Bool)

(assert (=> b!697612 (= e!396577 false)))

(declare-fun lt!317136 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39970 (_ BitVec 32) List!13233) Bool)

(assert (=> b!697612 (= lt!317136 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697613 () Bool)

(declare-fun e!396578 () Bool)

(assert (=> b!697613 (= e!396576 e!396578)))

(declare-fun res!461658 () Bool)

(assert (=> b!697613 (=> (not res!461658) (not e!396578))))

(assert (=> b!697613 (= res!461658 (bvsle from!3004 i!1382))))

(declare-fun b!697614 () Bool)

(assert (=> b!697614 (= e!396578 (not (contains!3776 acc!681 k!2843)))))

(declare-fun b!697615 () Bool)

(declare-fun res!461666 () Bool)

(assert (=> b!697615 (=> (not res!461666) (not e!396577))))

(assert (=> b!697615 (= res!461666 (not (contains!3776 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697616 () Bool)

(declare-fun res!461664 () Bool)

(assert (=> b!697616 (=> (not res!461664) (not e!396577))))

(assert (=> b!697616 (= res!461664 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13230))))

(assert (= (and start!62296 res!461659) b!697608))

(assert (= (and b!697608 res!461665) b!697609))

(assert (= (and b!697609 res!461662) b!697615))

(assert (= (and b!697615 res!461666) b!697611))

(assert (= (and b!697611 res!461661) b!697610))

(assert (= (and b!697611 (not res!461663)) b!697613))

(assert (= (and b!697613 res!461658) b!697614))

(assert (= (and b!697611 res!461660) b!697616))

(assert (= (and b!697616 res!461664) b!697612))

(declare-fun m!658003 () Bool)

(assert (=> b!697609 m!658003))

(declare-fun m!658005 () Bool)

(assert (=> b!697614 m!658005))

(declare-fun m!658007 () Bool)

(assert (=> start!62296 m!658007))

(declare-fun m!658009 () Bool)

(assert (=> b!697615 m!658009))

(declare-fun m!658011 () Bool)

(assert (=> b!697608 m!658011))

(declare-fun m!658013 () Bool)

(assert (=> b!697616 m!658013))

(assert (=> b!697610 m!658005))

(declare-fun m!658015 () Bool)

(assert (=> b!697612 m!658015))

(push 1)

(assert (not b!697610))

(assert (not b!697614))

(assert (not b!697609))

(assert (not start!62296))

(assert (not b!697616))

(assert (not b!697608))

(assert (not b!697615))

(assert (not b!697612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

