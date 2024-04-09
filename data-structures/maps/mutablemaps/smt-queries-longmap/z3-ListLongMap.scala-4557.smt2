; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63534 () Bool)

(assert start!63534)

(declare-fun b!715371 () Bool)

(declare-fun res!478516 () Bool)

(declare-fun e!401777 () Bool)

(assert (=> b!715371 (=> (not res!478516) (not e!401777))))

(declare-datatypes ((array!40502 0))(
  ( (array!40503 (arr!19384 (Array (_ BitVec 32) (_ BitVec 64))) (size!19800 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40502)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13478 0))(
  ( (Nil!13475) (Cons!13474 (h!14519 (_ BitVec 64)) (t!19801 List!13478)) )
))
(declare-fun acc!652 () List!13478)

(declare-fun arrayNoDuplicates!0 (array!40502 (_ BitVec 32) List!13478) Bool)

(assert (=> b!715371 (= res!478516 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715372 () Bool)

(declare-fun res!478522 () Bool)

(assert (=> b!715372 (=> (not res!478522) (not e!401777))))

(declare-fun newAcc!49 () List!13478)

(declare-fun contains!4021 (List!13478 (_ BitVec 64)) Bool)

(assert (=> b!715372 (= res!478522 (not (contains!4021 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!478513 () Bool)

(assert (=> start!63534 (=> (not res!478513) (not e!401777))))

(assert (=> start!63534 (= res!478513 (and (bvslt (size!19800 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19800 a!3591))))))

(assert (=> start!63534 e!401777))

(assert (=> start!63534 true))

(declare-fun array_inv!15158 (array!40502) Bool)

(assert (=> start!63534 (array_inv!15158 a!3591)))

(declare-fun b!715373 () Bool)

(declare-fun res!478507 () Bool)

(assert (=> b!715373 (=> (not res!478507) (not e!401777))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!715373 (= res!478507 (not (contains!4021 acc!652 k0!2824)))))

(declare-fun b!715374 () Bool)

(declare-fun res!478521 () Bool)

(assert (=> b!715374 (=> (not res!478521) (not e!401777))))

(assert (=> b!715374 (= res!478521 (not (contains!4021 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715375 () Bool)

(declare-fun res!478511 () Bool)

(assert (=> b!715375 (=> (not res!478511) (not e!401777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715375 (= res!478511 (not (validKeyInArray!0 (select (arr!19384 a!3591) from!2969))))))

(declare-fun b!715376 () Bool)

(declare-fun res!478520 () Bool)

(assert (=> b!715376 (=> (not res!478520) (not e!401777))))

(declare-fun noDuplicate!1268 (List!13478) Bool)

(assert (=> b!715376 (= res!478520 (noDuplicate!1268 acc!652))))

(declare-fun b!715377 () Bool)

(declare-fun res!478512 () Bool)

(assert (=> b!715377 (=> (not res!478512) (not e!401777))))

(declare-fun -!430 (List!13478 (_ BitVec 64)) List!13478)

(assert (=> b!715377 (= res!478512 (= (-!430 newAcc!49 k0!2824) acc!652))))

(declare-fun b!715378 () Bool)

(declare-fun res!478514 () Bool)

(assert (=> b!715378 (=> (not res!478514) (not e!401777))))

(assert (=> b!715378 (= res!478514 (noDuplicate!1268 newAcc!49))))

(declare-fun b!715379 () Bool)

(assert (=> b!715379 (= e!401777 false)))

(declare-fun lt!318794 () Bool)

(assert (=> b!715379 (= lt!318794 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715380 () Bool)

(declare-fun res!478524 () Bool)

(assert (=> b!715380 (=> (not res!478524) (not e!401777))))

(declare-fun arrayContainsKey!0 (array!40502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715380 (= res!478524 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!715381 () Bool)

(declare-fun res!478508 () Bool)

(assert (=> b!715381 (=> (not res!478508) (not e!401777))))

(assert (=> b!715381 (= res!478508 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715382 () Bool)

(declare-fun res!478523 () Bool)

(assert (=> b!715382 (=> (not res!478523) (not e!401777))))

(assert (=> b!715382 (= res!478523 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715383 () Bool)

(declare-fun res!478515 () Bool)

(assert (=> b!715383 (=> (not res!478515) (not e!401777))))

(assert (=> b!715383 (= res!478515 (validKeyInArray!0 k0!2824))))

(declare-fun b!715384 () Bool)

(declare-fun res!478519 () Bool)

(assert (=> b!715384 (=> (not res!478519) (not e!401777))))

(declare-fun subseq!465 (List!13478 List!13478) Bool)

(assert (=> b!715384 (= res!478519 (subseq!465 acc!652 newAcc!49))))

(declare-fun b!715385 () Bool)

(declare-fun res!478509 () Bool)

(assert (=> b!715385 (=> (not res!478509) (not e!401777))))

(assert (=> b!715385 (= res!478509 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19800 a!3591)))))

(declare-fun b!715386 () Bool)

(declare-fun res!478510 () Bool)

(assert (=> b!715386 (=> (not res!478510) (not e!401777))))

(assert (=> b!715386 (= res!478510 (contains!4021 newAcc!49 k0!2824))))

(declare-fun b!715387 () Bool)

(declare-fun res!478518 () Bool)

(assert (=> b!715387 (=> (not res!478518) (not e!401777))))

(assert (=> b!715387 (= res!478518 (not (contains!4021 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715388 () Bool)

(declare-fun res!478517 () Bool)

(assert (=> b!715388 (=> (not res!478517) (not e!401777))))

(assert (=> b!715388 (= res!478517 (not (contains!4021 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63534 res!478513) b!715376))

(assert (= (and b!715376 res!478520) b!715378))

(assert (= (and b!715378 res!478514) b!715374))

(assert (= (and b!715374 res!478521) b!715387))

(assert (= (and b!715387 res!478518) b!715380))

(assert (= (and b!715380 res!478524) b!715373))

(assert (= (and b!715373 res!478507) b!715383))

(assert (= (and b!715383 res!478515) b!715371))

(assert (= (and b!715371 res!478516) b!715384))

(assert (= (and b!715384 res!478519) b!715386))

(assert (= (and b!715386 res!478510) b!715377))

(assert (= (and b!715377 res!478512) b!715372))

(assert (= (and b!715372 res!478522) b!715388))

(assert (= (and b!715388 res!478517) b!715385))

(assert (= (and b!715385 res!478509) b!715375))

(assert (= (and b!715375 res!478511) b!715382))

(assert (= (and b!715382 res!478523) b!715381))

(assert (= (and b!715381 res!478508) b!715379))

(declare-fun m!671661 () Bool)

(assert (=> b!715372 m!671661))

(declare-fun m!671663 () Bool)

(assert (=> b!715384 m!671663))

(declare-fun m!671665 () Bool)

(assert (=> b!715375 m!671665))

(assert (=> b!715375 m!671665))

(declare-fun m!671667 () Bool)

(assert (=> b!715375 m!671667))

(declare-fun m!671669 () Bool)

(assert (=> b!715376 m!671669))

(declare-fun m!671671 () Bool)

(assert (=> b!715377 m!671671))

(declare-fun m!671673 () Bool)

(assert (=> b!715381 m!671673))

(declare-fun m!671675 () Bool)

(assert (=> start!63534 m!671675))

(declare-fun m!671677 () Bool)

(assert (=> b!715383 m!671677))

(declare-fun m!671679 () Bool)

(assert (=> b!715373 m!671679))

(declare-fun m!671681 () Bool)

(assert (=> b!715379 m!671681))

(declare-fun m!671683 () Bool)

(assert (=> b!715378 m!671683))

(declare-fun m!671685 () Bool)

(assert (=> b!715371 m!671685))

(declare-fun m!671687 () Bool)

(assert (=> b!715388 m!671687))

(declare-fun m!671689 () Bool)

(assert (=> b!715380 m!671689))

(declare-fun m!671691 () Bool)

(assert (=> b!715374 m!671691))

(declare-fun m!671693 () Bool)

(assert (=> b!715386 m!671693))

(declare-fun m!671695 () Bool)

(assert (=> b!715387 m!671695))

(check-sat (not b!715388) (not b!715375) (not b!715387) (not b!715377) (not b!715378) (not b!715381) (not b!715380) (not start!63534) (not b!715386) (not b!715372) (not b!715384) (not b!715376) (not b!715371) (not b!715379) (not b!715383) (not b!715374) (not b!715373))
(check-sat)
