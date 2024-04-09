; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62142 () Bool)

(assert start!62142)

(declare-fun b!695361 () Bool)

(declare-fun res!459491 () Bool)

(declare-fun e!395487 () Bool)

(assert (=> b!695361 (=> (not res!459491) (not e!395487))))

(declare-datatypes ((List!13195 0))(
  ( (Nil!13192) (Cons!13191 (h!14236 (_ BitVec 64)) (t!19485 List!13195)) )
))
(declare-fun acc!681 () List!13195)

(declare-fun contains!3738 (List!13195 (_ BitVec 64)) Bool)

(assert (=> b!695361 (= res!459491 (not (contains!3738 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695362 () Bool)

(declare-fun e!395489 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!695362 (= e!395489 (not (contains!3738 acc!681 k!2843)))))

(declare-fun b!695363 () Bool)

(declare-fun e!395488 () Bool)

(assert (=> b!695363 (= e!395488 e!395489)))

(declare-fun res!459489 () Bool)

(assert (=> b!695363 (=> (not res!459489) (not e!395489))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695363 (= res!459489 (bvsle from!3004 i!1382))))

(declare-fun res!459483 () Bool)

(assert (=> start!62142 (=> (not res!459483) (not e!395487))))

(declare-datatypes ((array!39888 0))(
  ( (array!39889 (arr!19101 (Array (_ BitVec 32) (_ BitVec 64))) (size!19484 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39888)

(assert (=> start!62142 (= res!459483 (and (bvslt (size!19484 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19484 a!3626))))))

(assert (=> start!62142 e!395487))

(assert (=> start!62142 true))

(declare-fun array_inv!14875 (array!39888) Bool)

(assert (=> start!62142 (array_inv!14875 a!3626)))

(declare-fun b!695364 () Bool)

(declare-fun res!459488 () Bool)

(assert (=> b!695364 (=> (not res!459488) (not e!395487))))

(assert (=> b!695364 (= res!459488 (not (contains!3738 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695365 () Bool)

(declare-fun res!459485 () Bool)

(assert (=> b!695365 (=> (not res!459485) (not e!395487))))

(declare-fun arrayNoDuplicates!0 (array!39888 (_ BitVec 32) List!13195) Bool)

(assert (=> b!695365 (= res!459485 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13192))))

(declare-fun b!695366 () Bool)

(assert (=> b!695366 (= e!395487 false)))

(declare-fun lt!317001 () Bool)

(assert (=> b!695366 (= lt!317001 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695367 () Bool)

(declare-fun res!459484 () Bool)

(assert (=> b!695367 (=> (not res!459484) (not e!395487))))

(declare-fun noDuplicate!985 (List!13195) Bool)

(assert (=> b!695367 (= res!459484 (noDuplicate!985 acc!681))))

(declare-fun b!695368 () Bool)

(declare-fun e!395490 () Bool)

(assert (=> b!695368 (= e!395490 (contains!3738 acc!681 k!2843))))

(declare-fun b!695369 () Bool)

(declare-fun res!459487 () Bool)

(assert (=> b!695369 (=> (not res!459487) (not e!395487))))

(assert (=> b!695369 (= res!459487 e!395488)))

(declare-fun res!459490 () Bool)

(assert (=> b!695369 (=> res!459490 e!395488)))

(assert (=> b!695369 (= res!459490 e!395490)))

(declare-fun res!459486 () Bool)

(assert (=> b!695369 (=> (not res!459486) (not e!395490))))

(assert (=> b!695369 (= res!459486 (bvsgt from!3004 i!1382))))

(assert (= (and start!62142 res!459483) b!695367))

(assert (= (and b!695367 res!459484) b!695361))

(assert (= (and b!695361 res!459491) b!695364))

(assert (= (and b!695364 res!459488) b!695369))

(assert (= (and b!695369 res!459486) b!695368))

(assert (= (and b!695369 (not res!459490)) b!695363))

(assert (= (and b!695363 res!459489) b!695362))

(assert (= (and b!695369 res!459487) b!695365))

(assert (= (and b!695365 res!459485) b!695366))

(declare-fun m!656871 () Bool)

(assert (=> b!695368 m!656871))

(declare-fun m!656873 () Bool)

(assert (=> b!695366 m!656873))

(declare-fun m!656875 () Bool)

(assert (=> b!695361 m!656875))

(declare-fun m!656877 () Bool)

(assert (=> b!695365 m!656877))

(declare-fun m!656879 () Bool)

(assert (=> b!695364 m!656879))

(assert (=> b!695362 m!656871))

(declare-fun m!656881 () Bool)

(assert (=> b!695367 m!656881))

(declare-fun m!656883 () Bool)

(assert (=> start!62142 m!656883))

(push 1)

(assert (not b!695368))

(assert (not start!62142))

(assert (not b!695367))

(assert (not b!695365))

(assert (not b!695366))

(assert (not b!695362))

(assert (not b!695364))

(assert (not b!695361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

