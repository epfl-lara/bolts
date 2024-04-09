; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62514 () Bool)

(assert start!62514)

(declare-fun b!703437 () Bool)

(declare-fun e!397521 () Bool)

(assert (=> b!703437 (= e!397521 false)))

(declare-datatypes ((array!40149 0))(
  ( (array!40150 (arr!19227 (Array (_ BitVec 32) (_ BitVec 64))) (size!19610 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40149)

(declare-fun lt!317742 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13321 0))(
  ( (Nil!13318) (Cons!13317 (h!14362 (_ BitVec 64)) (t!19611 List!13321)) )
))
(declare-fun acc!652 () List!13321)

(declare-fun arrayNoDuplicates!0 (array!40149 (_ BitVec 32) List!13321) Bool)

(assert (=> b!703437 (= lt!317742 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703439 () Bool)

(declare-fun res!467423 () Bool)

(assert (=> b!703439 (=> (not res!467423) (not e!397521))))

(declare-fun contains!3864 (List!13321 (_ BitVec 64)) Bool)

(assert (=> b!703439 (= res!467423 (not (contains!3864 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703440 () Bool)

(declare-fun res!467432 () Bool)

(assert (=> b!703440 (=> (not res!467432) (not e!397521))))

(assert (=> b!703440 (= res!467432 (not (contains!3864 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703441 () Bool)

(declare-fun res!467434 () Bool)

(assert (=> b!703441 (=> (not res!467434) (not e!397521))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703441 (= res!467434 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703442 () Bool)

(declare-fun res!467431 () Bool)

(assert (=> b!703442 (=> (not res!467431) (not e!397521))))

(assert (=> b!703442 (= res!467431 (not (contains!3864 acc!652 k!2824)))))

(declare-fun b!703443 () Bool)

(declare-fun res!467438 () Bool)

(assert (=> b!703443 (=> (not res!467438) (not e!397521))))

(declare-fun newAcc!49 () List!13321)

(assert (=> b!703443 (= res!467438 (not (contains!3864 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703444 () Bool)

(declare-fun res!467425 () Bool)

(assert (=> b!703444 (=> (not res!467425) (not e!397521))))

(assert (=> b!703444 (= res!467425 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703445 () Bool)

(declare-fun res!467430 () Bool)

(assert (=> b!703445 (=> (not res!467430) (not e!397521))))

(assert (=> b!703445 (= res!467430 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703446 () Bool)

(declare-fun res!467435 () Bool)

(assert (=> b!703446 (=> (not res!467435) (not e!397521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703446 (= res!467435 (validKeyInArray!0 k!2824))))

(declare-fun b!703447 () Bool)

(declare-fun res!467427 () Bool)

(assert (=> b!703447 (=> (not res!467427) (not e!397521))))

(assert (=> b!703447 (= res!467427 (contains!3864 newAcc!49 k!2824))))

(declare-fun b!703448 () Bool)

(declare-fun res!467437 () Bool)

(assert (=> b!703448 (=> (not res!467437) (not e!397521))))

(declare-fun noDuplicate!1111 (List!13321) Bool)

(assert (=> b!703448 (= res!467437 (noDuplicate!1111 newAcc!49))))

(declare-fun b!703449 () Bool)

(declare-fun res!467421 () Bool)

(assert (=> b!703449 (=> (not res!467421) (not e!397521))))

(assert (=> b!703449 (= res!467421 (not (contains!3864 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703450 () Bool)

(declare-fun res!467436 () Bool)

(assert (=> b!703450 (=> (not res!467436) (not e!397521))))

(assert (=> b!703450 (= res!467436 (not (validKeyInArray!0 (select (arr!19227 a!3591) from!2969))))))

(declare-fun b!703438 () Bool)

(declare-fun res!467426 () Bool)

(assert (=> b!703438 (=> (not res!467426) (not e!397521))))

(assert (=> b!703438 (= res!467426 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!467424 () Bool)

(assert (=> start!62514 (=> (not res!467424) (not e!397521))))

(assert (=> start!62514 (= res!467424 (and (bvslt (size!19610 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19610 a!3591))))))

(assert (=> start!62514 e!397521))

(assert (=> start!62514 true))

(declare-fun array_inv!15001 (array!40149) Bool)

(assert (=> start!62514 (array_inv!15001 a!3591)))

(declare-fun b!703451 () Bool)

(declare-fun res!467428 () Bool)

(assert (=> b!703451 (=> (not res!467428) (not e!397521))))

(assert (=> b!703451 (= res!467428 (noDuplicate!1111 acc!652))))

(declare-fun b!703452 () Bool)

(declare-fun res!467433 () Bool)

(assert (=> b!703452 (=> (not res!467433) (not e!397521))))

(assert (=> b!703452 (= res!467433 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19610 a!3591)))))

(declare-fun b!703453 () Bool)

(declare-fun res!467429 () Bool)

(assert (=> b!703453 (=> (not res!467429) (not e!397521))))

(declare-fun subseq!308 (List!13321 List!13321) Bool)

(assert (=> b!703453 (= res!467429 (subseq!308 acc!652 newAcc!49))))

(declare-fun b!703454 () Bool)

(declare-fun res!467422 () Bool)

(assert (=> b!703454 (=> (not res!467422) (not e!397521))))

(declare-fun -!273 (List!13321 (_ BitVec 64)) List!13321)

(assert (=> b!703454 (= res!467422 (= (-!273 newAcc!49 k!2824) acc!652))))

(assert (= (and start!62514 res!467424) b!703451))

(assert (= (and b!703451 res!467428) b!703448))

(assert (= (and b!703448 res!467437) b!703440))

(assert (= (and b!703440 res!467432) b!703439))

(assert (= (and b!703439 res!467423) b!703441))

(assert (= (and b!703441 res!467434) b!703442))

(assert (= (and b!703442 res!467431) b!703446))

(assert (= (and b!703446 res!467435) b!703438))

(assert (= (and b!703438 res!467426) b!703453))

(assert (= (and b!703453 res!467429) b!703447))

(assert (= (and b!703447 res!467427) b!703454))

(assert (= (and b!703454 res!467422) b!703449))

(assert (= (and b!703449 res!467421) b!703443))

(assert (= (and b!703443 res!467438) b!703452))

(assert (= (and b!703452 res!467433) b!703450))

(assert (= (and b!703450 res!467436) b!703444))

(assert (= (and b!703444 res!467425) b!703445))

(assert (= (and b!703445 res!467430) b!703437))

(declare-fun m!662283 () Bool)

(assert (=> b!703446 m!662283))

(declare-fun m!662285 () Bool)

(assert (=> b!703453 m!662285))

(declare-fun m!662287 () Bool)

(assert (=> b!703443 m!662287))

(declare-fun m!662289 () Bool)

(assert (=> b!703449 m!662289))

(declare-fun m!662291 () Bool)

(assert (=> b!703442 m!662291))

(declare-fun m!662293 () Bool)

(assert (=> b!703451 m!662293))

(declare-fun m!662295 () Bool)

(assert (=> b!703454 m!662295))

(declare-fun m!662297 () Bool)

(assert (=> b!703437 m!662297))

(declare-fun m!662299 () Bool)

(assert (=> b!703438 m!662299))

(declare-fun m!662301 () Bool)

(assert (=> b!703447 m!662301))

(declare-fun m!662303 () Bool)

(assert (=> b!703441 m!662303))

(declare-fun m!662305 () Bool)

(assert (=> b!703445 m!662305))

(declare-fun m!662307 () Bool)

(assert (=> b!703440 m!662307))

(declare-fun m!662309 () Bool)

(assert (=> b!703450 m!662309))

(assert (=> b!703450 m!662309))

(declare-fun m!662311 () Bool)

(assert (=> b!703450 m!662311))

(declare-fun m!662313 () Bool)

(assert (=> start!62514 m!662313))

(declare-fun m!662315 () Bool)

(assert (=> b!703439 m!662315))

(declare-fun m!662317 () Bool)

(assert (=> b!703448 m!662317))

(push 1)

(assert (not b!703440))

(assert (not b!703441))

(assert (not b!703445))

(assert (not b!703443))

(assert (not b!703439))

(assert (not b!703449))

(assert (not start!62514))

(assert (not b!703437))

(assert (not b!703438))

(assert (not b!703442))

(assert (not b!703454))

(assert (not b!703447))

(assert (not b!703446))

(assert (not b!703451))

(assert (not b!703450))

(assert (not b!703453))

(assert (not b!703448))

(check-sat)

(pop 1)

