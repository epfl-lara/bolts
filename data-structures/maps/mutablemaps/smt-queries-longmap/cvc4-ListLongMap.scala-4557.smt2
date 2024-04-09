; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63536 () Bool)

(assert start!63536)

(declare-fun b!715425 () Bool)

(declare-fun res!478569 () Bool)

(declare-fun e!401784 () Bool)

(assert (=> b!715425 (=> (not res!478569) (not e!401784))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715425 (= res!478569 (validKeyInArray!0 k!2824))))

(declare-fun b!715427 () Bool)

(declare-fun res!478574 () Bool)

(assert (=> b!715427 (=> (not res!478574) (not e!401784))))

(declare-datatypes ((List!13479 0))(
  ( (Nil!13476) (Cons!13475 (h!14520 (_ BitVec 64)) (t!19802 List!13479)) )
))
(declare-fun newAcc!49 () List!13479)

(declare-fun contains!4022 (List!13479 (_ BitVec 64)) Bool)

(assert (=> b!715427 (= res!478574 (not (contains!4022 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715428 () Bool)

(declare-fun res!478566 () Bool)

(assert (=> b!715428 (=> (not res!478566) (not e!401784))))

(declare-fun acc!652 () List!13479)

(assert (=> b!715428 (= res!478566 (not (contains!4022 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715429 () Bool)

(declare-fun res!478577 () Bool)

(assert (=> b!715429 (=> (not res!478577) (not e!401784))))

(assert (=> b!715429 (= res!478577 (not (contains!4022 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715430 () Bool)

(declare-fun res!478567 () Bool)

(assert (=> b!715430 (=> (not res!478567) (not e!401784))))

(declare-datatypes ((array!40504 0))(
  ( (array!40505 (arr!19385 (Array (_ BitVec 32) (_ BitVec 64))) (size!19801 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40504)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!715430 (= res!478567 (not (validKeyInArray!0 (select (arr!19385 a!3591) from!2969))))))

(declare-fun b!715431 () Bool)

(declare-fun res!478561 () Bool)

(assert (=> b!715431 (=> (not res!478561) (not e!401784))))

(declare-fun noDuplicate!1269 (List!13479) Bool)

(assert (=> b!715431 (= res!478561 (noDuplicate!1269 acc!652))))

(declare-fun b!715432 () Bool)

(declare-fun res!478575 () Bool)

(assert (=> b!715432 (=> (not res!478575) (not e!401784))))

(declare-fun arrayContainsKey!0 (array!40504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715432 (= res!478575 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715433 () Bool)

(declare-fun res!478578 () Bool)

(assert (=> b!715433 (=> (not res!478578) (not e!401784))))

(declare-fun subseq!466 (List!13479 List!13479) Bool)

(assert (=> b!715433 (= res!478578 (subseq!466 acc!652 newAcc!49))))

(declare-fun b!715434 () Bool)

(declare-fun res!478562 () Bool)

(assert (=> b!715434 (=> (not res!478562) (not e!401784))))

(assert (=> b!715434 (= res!478562 (noDuplicate!1269 newAcc!49))))

(declare-fun b!715435 () Bool)

(declare-fun res!478576 () Bool)

(assert (=> b!715435 (=> (not res!478576) (not e!401784))))

(assert (=> b!715435 (= res!478576 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19801 a!3591)))))

(declare-fun b!715426 () Bool)

(declare-fun res!478573 () Bool)

(assert (=> b!715426 (=> (not res!478573) (not e!401784))))

(declare-fun -!431 (List!13479 (_ BitVec 64)) List!13479)

(assert (=> b!715426 (= res!478573 (= (-!431 newAcc!49 k!2824) acc!652))))

(declare-fun res!478565 () Bool)

(assert (=> start!63536 (=> (not res!478565) (not e!401784))))

(assert (=> start!63536 (= res!478565 (and (bvslt (size!19801 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19801 a!3591))))))

(assert (=> start!63536 e!401784))

(assert (=> start!63536 true))

(declare-fun array_inv!15159 (array!40504) Bool)

(assert (=> start!63536 (array_inv!15159 a!3591)))

(declare-fun b!715436 () Bool)

(declare-fun res!478570 () Bool)

(assert (=> b!715436 (=> (not res!478570) (not e!401784))))

(assert (=> b!715436 (= res!478570 (not (contains!4022 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715437 () Bool)

(assert (=> b!715437 (= e!401784 false)))

(declare-fun lt!318797 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40504 (_ BitVec 32) List!13479) Bool)

(assert (=> b!715437 (= lt!318797 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715438 () Bool)

(declare-fun res!478568 () Bool)

(assert (=> b!715438 (=> (not res!478568) (not e!401784))))

(assert (=> b!715438 (= res!478568 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715439 () Bool)

(declare-fun res!478564 () Bool)

(assert (=> b!715439 (=> (not res!478564) (not e!401784))))

(assert (=> b!715439 (= res!478564 (contains!4022 newAcc!49 k!2824))))

(declare-fun b!715440 () Bool)

(declare-fun res!478572 () Bool)

(assert (=> b!715440 (=> (not res!478572) (not e!401784))))

(assert (=> b!715440 (= res!478572 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715441 () Bool)

(declare-fun res!478563 () Bool)

(assert (=> b!715441 (=> (not res!478563) (not e!401784))))

(assert (=> b!715441 (= res!478563 (not (contains!4022 acc!652 k!2824)))))

(declare-fun b!715442 () Bool)

(declare-fun res!478571 () Bool)

(assert (=> b!715442 (=> (not res!478571) (not e!401784))))

(assert (=> b!715442 (= res!478571 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (= (and start!63536 res!478565) b!715431))

(assert (= (and b!715431 res!478561) b!715434))

(assert (= (and b!715434 res!478562) b!715436))

(assert (= (and b!715436 res!478570) b!715428))

(assert (= (and b!715428 res!478566) b!715438))

(assert (= (and b!715438 res!478568) b!715441))

(assert (= (and b!715441 res!478563) b!715425))

(assert (= (and b!715425 res!478569) b!715440))

(assert (= (and b!715440 res!478572) b!715433))

(assert (= (and b!715433 res!478578) b!715439))

(assert (= (and b!715439 res!478564) b!715426))

(assert (= (and b!715426 res!478573) b!715429))

(assert (= (and b!715429 res!478577) b!715427))

(assert (= (and b!715427 res!478574) b!715435))

(assert (= (and b!715435 res!478576) b!715430))

(assert (= (and b!715430 res!478567) b!715442))

(assert (= (and b!715442 res!478571) b!715432))

(assert (= (and b!715432 res!478575) b!715437))

(declare-fun m!671697 () Bool)

(assert (=> b!715426 m!671697))

(declare-fun m!671699 () Bool)

(assert (=> b!715437 m!671699))

(declare-fun m!671701 () Bool)

(assert (=> b!715425 m!671701))

(declare-fun m!671703 () Bool)

(assert (=> b!715436 m!671703))

(declare-fun m!671705 () Bool)

(assert (=> b!715433 m!671705))

(declare-fun m!671707 () Bool)

(assert (=> b!715430 m!671707))

(assert (=> b!715430 m!671707))

(declare-fun m!671709 () Bool)

(assert (=> b!715430 m!671709))

(declare-fun m!671711 () Bool)

(assert (=> b!715428 m!671711))

(declare-fun m!671713 () Bool)

(assert (=> b!715427 m!671713))

(declare-fun m!671715 () Bool)

(assert (=> b!715429 m!671715))

(declare-fun m!671717 () Bool)

(assert (=> b!715439 m!671717))

(declare-fun m!671719 () Bool)

(assert (=> b!715441 m!671719))

(declare-fun m!671721 () Bool)

(assert (=> b!715431 m!671721))

(declare-fun m!671723 () Bool)

(assert (=> b!715438 m!671723))

(declare-fun m!671725 () Bool)

(assert (=> b!715434 m!671725))

(declare-fun m!671727 () Bool)

(assert (=> b!715440 m!671727))

(declare-fun m!671729 () Bool)

(assert (=> start!63536 m!671729))

(declare-fun m!671731 () Bool)

(assert (=> b!715432 m!671731))

(push 1)

(assert (not b!715436))

(assert (not b!715433))

(assert (not b!715430))

(assert (not b!715429))

(assert (not b!715431))

(assert (not b!715440))

(assert (not b!715432))

(assert (not b!715427))

(assert (not b!715441))

(assert (not b!715426))

(assert (not b!715438))

(assert (not b!715437))

