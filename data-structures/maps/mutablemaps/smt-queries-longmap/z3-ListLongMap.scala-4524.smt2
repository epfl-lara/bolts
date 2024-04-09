; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62630 () Bool)

(assert start!62630)

(declare-fun b!706414 () Bool)

(declare-fun res!470404 () Bool)

(declare-fun e!397870 () Bool)

(assert (=> b!706414 (=> (not res!470404) (not e!397870))))

(declare-datatypes ((List!13379 0))(
  ( (Nil!13376) (Cons!13375 (h!14420 (_ BitVec 64)) (t!19669 List!13379)) )
))
(declare-fun newAcc!49 () List!13379)

(declare-fun contains!3922 (List!13379 (_ BitVec 64)) Bool)

(assert (=> b!706414 (= res!470404 (not (contains!3922 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706416 () Bool)

(declare-fun res!470401 () Bool)

(assert (=> b!706416 (=> (not res!470401) (not e!397870))))

(declare-fun acc!652 () List!13379)

(assert (=> b!706416 (= res!470401 (not (contains!3922 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706417 () Bool)

(declare-fun res!470407 () Bool)

(assert (=> b!706417 (=> (not res!470407) (not e!397870))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun -!331 (List!13379 (_ BitVec 64)) List!13379)

(assert (=> b!706417 (= res!470407 (= (-!331 newAcc!49 k0!2824) acc!652))))

(declare-fun b!706418 () Bool)

(declare-fun res!470405 () Bool)

(assert (=> b!706418 (=> (not res!470405) (not e!397870))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40265 0))(
  ( (array!40266 (arr!19285 (Array (_ BitVec 32) (_ BitVec 64))) (size!19668 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40265)

(declare-fun arrayContainsKey!0 (array!40265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706418 (= res!470405 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706419 () Bool)

(declare-fun res!470403 () Bool)

(assert (=> b!706419 (=> (not res!470403) (not e!397870))))

(assert (=> b!706419 (= res!470403 (not (contains!3922 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706420 () Bool)

(declare-fun res!470398 () Bool)

(assert (=> b!706420 (=> (not res!470398) (not e!397870))))

(assert (=> b!706420 (= res!470398 (not (contains!3922 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706421 () Bool)

(declare-fun res!470408 () Bool)

(assert (=> b!706421 (=> (not res!470408) (not e!397870))))

(assert (=> b!706421 (= res!470408 (contains!3922 newAcc!49 k0!2824))))

(declare-fun b!706422 () Bool)

(declare-fun res!470409 () Bool)

(assert (=> b!706422 (=> (not res!470409) (not e!397870))))

(declare-fun arrayNoDuplicates!0 (array!40265 (_ BitVec 32) List!13379) Bool)

(assert (=> b!706422 (= res!470409 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706423 () Bool)

(declare-fun res!470410 () Bool)

(assert (=> b!706423 (=> (not res!470410) (not e!397870))))

(assert (=> b!706423 (= res!470410 (not (contains!3922 acc!652 k0!2824)))))

(declare-fun b!706415 () Bool)

(declare-fun res!470411 () Bool)

(assert (=> b!706415 (=> (not res!470411) (not e!397870))))

(declare-fun subseq!366 (List!13379 List!13379) Bool)

(assert (=> b!706415 (= res!470411 (subseq!366 acc!652 newAcc!49))))

(declare-fun res!470399 () Bool)

(assert (=> start!62630 (=> (not res!470399) (not e!397870))))

(assert (=> start!62630 (= res!470399 (and (bvslt (size!19668 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19668 a!3591))))))

(assert (=> start!62630 e!397870))

(assert (=> start!62630 true))

(declare-fun array_inv!15059 (array!40265) Bool)

(assert (=> start!62630 (array_inv!15059 a!3591)))

(declare-fun b!706424 () Bool)

(declare-fun res!470406 () Bool)

(assert (=> b!706424 (=> (not res!470406) (not e!397870))))

(declare-fun noDuplicate!1169 (List!13379) Bool)

(assert (=> b!706424 (= res!470406 (noDuplicate!1169 newAcc!49))))

(declare-fun b!706425 () Bool)

(assert (=> b!706425 (= e!397870 (bvslt (bvsub (size!19668 a!3591) from!2969) #b00000000000000000000000000000000))))

(declare-fun b!706426 () Bool)

(declare-fun res!470400 () Bool)

(assert (=> b!706426 (=> (not res!470400) (not e!397870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706426 (= res!470400 (validKeyInArray!0 k0!2824))))

(declare-fun b!706427 () Bool)

(declare-fun res!470402 () Bool)

(assert (=> b!706427 (=> (not res!470402) (not e!397870))))

(assert (=> b!706427 (= res!470402 (noDuplicate!1169 acc!652))))

(assert (= (and start!62630 res!470399) b!706427))

(assert (= (and b!706427 res!470402) b!706424))

(assert (= (and b!706424 res!470406) b!706416))

(assert (= (and b!706416 res!470401) b!706420))

(assert (= (and b!706420 res!470398) b!706418))

(assert (= (and b!706418 res!470405) b!706423))

(assert (= (and b!706423 res!470410) b!706426))

(assert (= (and b!706426 res!470400) b!706422))

(assert (= (and b!706422 res!470409) b!706415))

(assert (= (and b!706415 res!470411) b!706421))

(assert (= (and b!706421 res!470408) b!706417))

(assert (= (and b!706417 res!470407) b!706419))

(assert (= (and b!706419 res!470403) b!706414))

(assert (= (and b!706414 res!470404) b!706425))

(declare-fun m!664315 () Bool)

(assert (=> b!706427 m!664315))

(declare-fun m!664317 () Bool)

(assert (=> b!706416 m!664317))

(declare-fun m!664319 () Bool)

(assert (=> b!706420 m!664319))

(declare-fun m!664321 () Bool)

(assert (=> b!706414 m!664321))

(declare-fun m!664323 () Bool)

(assert (=> b!706418 m!664323))

(declare-fun m!664325 () Bool)

(assert (=> b!706419 m!664325))

(declare-fun m!664327 () Bool)

(assert (=> start!62630 m!664327))

(declare-fun m!664329 () Bool)

(assert (=> b!706422 m!664329))

(declare-fun m!664331 () Bool)

(assert (=> b!706424 m!664331))

(declare-fun m!664333 () Bool)

(assert (=> b!706421 m!664333))

(declare-fun m!664335 () Bool)

(assert (=> b!706415 m!664335))

(declare-fun m!664337 () Bool)

(assert (=> b!706423 m!664337))

(declare-fun m!664339 () Bool)

(assert (=> b!706417 m!664339))

(declare-fun m!664341 () Bool)

(assert (=> b!706426 m!664341))

(check-sat (not b!706427) (not start!62630) (not b!706419) (not b!706422) (not b!706416) (not b!706414) (not b!706424) (not b!706417) (not b!706420) (not b!706418) (not b!706415) (not b!706421) (not b!706423) (not b!706426))
(check-sat)
