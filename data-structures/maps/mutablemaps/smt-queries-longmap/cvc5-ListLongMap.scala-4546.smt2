; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63370 () Bool)

(assert start!63370)

(declare-fun b!713345 () Bool)

(declare-fun res!476605 () Bool)

(declare-fun e!401166 () Bool)

(assert (=> b!713345 (=> (not res!476605) (not e!401166))))

(declare-datatypes ((List!13444 0))(
  ( (Nil!13441) (Cons!13440 (h!14485 (_ BitVec 64)) (t!19767 List!13444)) )
))
(declare-fun acc!652 () List!13444)

(declare-fun newAcc!49 () List!13444)

(declare-fun subseq!431 (List!13444 List!13444) Bool)

(assert (=> b!713345 (= res!476605 (subseq!431 acc!652 newAcc!49))))

(declare-fun b!713346 () Bool)

(declare-fun res!476602 () Bool)

(assert (=> b!713346 (=> (not res!476602) (not e!401166))))

(declare-fun contains!3987 (List!13444 (_ BitVec 64)) Bool)

(assert (=> b!713346 (= res!476602 (not (contains!3987 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713347 () Bool)

(declare-fun res!476600 () Bool)

(assert (=> b!713347 (=> (not res!476600) (not e!401166))))

(declare-fun noDuplicate!1234 (List!13444) Bool)

(assert (=> b!713347 (= res!476600 (noDuplicate!1234 acc!652))))

(declare-fun b!713348 () Bool)

(assert (=> b!713348 (= e!401166 false)))

(declare-fun lt!318644 () Bool)

(assert (=> b!713348 (= lt!318644 (contains!3987 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713349 () Bool)

(declare-fun res!476596 () Bool)

(assert (=> b!713349 (=> (not res!476596) (not e!401166))))

(declare-datatypes ((array!40428 0))(
  ( (array!40429 (arr!19350 (Array (_ BitVec 32) (_ BitVec 64))) (size!19762 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40428)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713349 (= res!476596 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713350 () Bool)

(declare-fun res!476597 () Bool)

(assert (=> b!713350 (=> (not res!476597) (not e!401166))))

(assert (=> b!713350 (= res!476597 (noDuplicate!1234 newAcc!49))))

(declare-fun b!713351 () Bool)

(declare-fun res!476604 () Bool)

(assert (=> b!713351 (=> (not res!476604) (not e!401166))))

(assert (=> b!713351 (= res!476604 (not (contains!3987 acc!652 k!2824)))))

(declare-fun res!476607 () Bool)

(assert (=> start!63370 (=> (not res!476607) (not e!401166))))

(assert (=> start!63370 (= res!476607 (and (bvslt (size!19762 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19762 a!3591))))))

(assert (=> start!63370 e!401166))

(assert (=> start!63370 true))

(declare-fun array_inv!15124 (array!40428) Bool)

(assert (=> start!63370 (array_inv!15124 a!3591)))

(declare-fun b!713352 () Bool)

(declare-fun res!476595 () Bool)

(assert (=> b!713352 (=> (not res!476595) (not e!401166))))

(assert (=> b!713352 (= res!476595 (not (contains!3987 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713353 () Bool)

(declare-fun res!476603 () Bool)

(assert (=> b!713353 (=> (not res!476603) (not e!401166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713353 (= res!476603 (validKeyInArray!0 k!2824))))

(declare-fun b!713354 () Bool)

(declare-fun res!476598 () Bool)

(assert (=> b!713354 (=> (not res!476598) (not e!401166))))

(assert (=> b!713354 (= res!476598 (contains!3987 newAcc!49 k!2824))))

(declare-fun b!713355 () Bool)

(declare-fun res!476606 () Bool)

(assert (=> b!713355 (=> (not res!476606) (not e!401166))))

(assert (=> b!713355 (= res!476606 (not (contains!3987 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713356 () Bool)

(declare-fun res!476601 () Bool)

(assert (=> b!713356 (=> (not res!476601) (not e!401166))))

(declare-fun arrayNoDuplicates!0 (array!40428 (_ BitVec 32) List!13444) Bool)

(assert (=> b!713356 (= res!476601 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713357 () Bool)

(declare-fun res!476599 () Bool)

(assert (=> b!713357 (=> (not res!476599) (not e!401166))))

(declare-fun -!396 (List!13444 (_ BitVec 64)) List!13444)

(assert (=> b!713357 (= res!476599 (= (-!396 newAcc!49 k!2824) acc!652))))

(assert (= (and start!63370 res!476607) b!713347))

(assert (= (and b!713347 res!476600) b!713350))

(assert (= (and b!713350 res!476597) b!713346))

(assert (= (and b!713346 res!476602) b!713352))

(assert (= (and b!713352 res!476595) b!713349))

(assert (= (and b!713349 res!476596) b!713351))

(assert (= (and b!713351 res!476604) b!713353))

(assert (= (and b!713353 res!476603) b!713356))

(assert (= (and b!713356 res!476601) b!713345))

(assert (= (and b!713345 res!476605) b!713354))

(assert (= (and b!713354 res!476598) b!713357))

(assert (= (and b!713357 res!476599) b!713355))

(assert (= (and b!713355 res!476606) b!713348))

(declare-fun m!670209 () Bool)

(assert (=> b!713351 m!670209))

(declare-fun m!670211 () Bool)

(assert (=> b!713346 m!670211))

(declare-fun m!670213 () Bool)

(assert (=> b!713357 m!670213))

(declare-fun m!670215 () Bool)

(assert (=> b!713352 m!670215))

(declare-fun m!670217 () Bool)

(assert (=> start!63370 m!670217))

(declare-fun m!670219 () Bool)

(assert (=> b!713354 m!670219))

(declare-fun m!670221 () Bool)

(assert (=> b!713349 m!670221))

(declare-fun m!670223 () Bool)

(assert (=> b!713345 m!670223))

(declare-fun m!670225 () Bool)

(assert (=> b!713355 m!670225))

(declare-fun m!670227 () Bool)

(assert (=> b!713353 m!670227))

(declare-fun m!670229 () Bool)

(assert (=> b!713347 m!670229))

(declare-fun m!670231 () Bool)

(assert (=> b!713356 m!670231))

(declare-fun m!670233 () Bool)

(assert (=> b!713348 m!670233))

(declare-fun m!670235 () Bool)

(assert (=> b!713350 m!670235))

(push 1)

(assert (not b!713355))

(assert (not b!713347))

(assert (not b!713346))

(assert (not b!713352))

(assert (not b!713349))

(assert (not b!713357))

(assert (not b!713351))

(assert (not b!713354))

(assert (not b!713356))

(assert (not b!713345))

(assert (not b!713350))

(assert (not b!713348))

(assert (not start!63370))

(assert (not b!713353))

(check-sat)

