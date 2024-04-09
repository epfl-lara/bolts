; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62144 () Bool)

(assert start!62144)

(declare-fun b!695388 () Bool)

(declare-fun e!395503 () Bool)

(assert (=> b!695388 (= e!395503 false)))

(declare-datatypes ((array!39890 0))(
  ( (array!39891 (arr!19102 (Array (_ BitVec 32) (_ BitVec 64))) (size!19485 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39890)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!317004 () Bool)

(declare-datatypes ((List!13196 0))(
  ( (Nil!13193) (Cons!13192 (h!14237 (_ BitVec 64)) (t!19486 List!13196)) )
))
(declare-fun acc!681 () List!13196)

(declare-fun arrayNoDuplicates!0 (array!39890 (_ BitVec 32) List!13196) Bool)

(assert (=> b!695388 (= lt!317004 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695389 () Bool)

(declare-fun res!459510 () Bool)

(assert (=> b!695389 (=> (not res!459510) (not e!395503))))

(declare-fun contains!3739 (List!13196 (_ BitVec 64)) Bool)

(assert (=> b!695389 (= res!459510 (not (contains!3739 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!459515 () Bool)

(assert (=> start!62144 (=> (not res!459515) (not e!395503))))

(assert (=> start!62144 (= res!459515 (and (bvslt (size!19485 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19485 a!3626))))))

(assert (=> start!62144 e!395503))

(assert (=> start!62144 true))

(declare-fun array_inv!14876 (array!39890) Bool)

(assert (=> start!62144 (array_inv!14876 a!3626)))

(declare-fun b!695390 () Bool)

(declare-fun res!459517 () Bool)

(assert (=> b!695390 (=> (not res!459517) (not e!395503))))

(declare-fun e!395504 () Bool)

(assert (=> b!695390 (= res!459517 e!395504)))

(declare-fun res!459511 () Bool)

(assert (=> b!695390 (=> res!459511 e!395504)))

(declare-fun e!395505 () Bool)

(assert (=> b!695390 (= res!459511 e!395505)))

(declare-fun res!459513 () Bool)

(assert (=> b!695390 (=> (not res!459513) (not e!395505))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695390 (= res!459513 (bvsgt from!3004 i!1382))))

(declare-fun b!695391 () Bool)

(declare-fun e!395502 () Bool)

(assert (=> b!695391 (= e!395504 e!395502)))

(declare-fun res!459512 () Bool)

(assert (=> b!695391 (=> (not res!459512) (not e!395502))))

(assert (=> b!695391 (= res!459512 (bvsle from!3004 i!1382))))

(declare-fun b!695392 () Bool)

(declare-fun res!459518 () Bool)

(assert (=> b!695392 (=> (not res!459518) (not e!395503))))

(assert (=> b!695392 (= res!459518 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13193))))

(declare-fun b!695393 () Bool)

(declare-fun res!459514 () Bool)

(assert (=> b!695393 (=> (not res!459514) (not e!395503))))

(declare-fun noDuplicate!986 (List!13196) Bool)

(assert (=> b!695393 (= res!459514 (noDuplicate!986 acc!681))))

(declare-fun b!695394 () Bool)

(declare-fun res!459516 () Bool)

(assert (=> b!695394 (=> (not res!459516) (not e!395503))))

(assert (=> b!695394 (= res!459516 (not (contains!3739 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695395 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!695395 (= e!395505 (contains!3739 acc!681 k0!2843))))

(declare-fun b!695396 () Bool)

(assert (=> b!695396 (= e!395502 (not (contains!3739 acc!681 k0!2843)))))

(assert (= (and start!62144 res!459515) b!695393))

(assert (= (and b!695393 res!459514) b!695394))

(assert (= (and b!695394 res!459516) b!695389))

(assert (= (and b!695389 res!459510) b!695390))

(assert (= (and b!695390 res!459513) b!695395))

(assert (= (and b!695390 (not res!459511)) b!695391))

(assert (= (and b!695391 res!459512) b!695396))

(assert (= (and b!695390 res!459517) b!695392))

(assert (= (and b!695392 res!459518) b!695388))

(declare-fun m!656885 () Bool)

(assert (=> b!695388 m!656885))

(declare-fun m!656887 () Bool)

(assert (=> b!695393 m!656887))

(declare-fun m!656889 () Bool)

(assert (=> b!695392 m!656889))

(declare-fun m!656891 () Bool)

(assert (=> b!695394 m!656891))

(declare-fun m!656893 () Bool)

(assert (=> b!695395 m!656893))

(declare-fun m!656895 () Bool)

(assert (=> b!695389 m!656895))

(declare-fun m!656897 () Bool)

(assert (=> start!62144 m!656897))

(assert (=> b!695396 m!656893))

(check-sat (not b!695389) (not b!695394) (not start!62144) (not b!695393) (not b!695396) (not b!695392) (not b!695388) (not b!695395))
