; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63290 () Bool)

(assert start!63290)

(declare-fun b!712426 () Bool)

(declare-fun res!475773 () Bool)

(declare-fun e!400793 () Bool)

(assert (=> b!712426 (=> (not res!475773) (not e!400793))))

(declare-datatypes ((List!13434 0))(
  ( (Nil!13431) (Cons!13430 (h!14475 (_ BitVec 64)) (t!19754 List!13434)) )
))
(declare-fun acc!652 () List!13434)

(declare-fun newAcc!49 () List!13434)

(declare-fun subseq!421 (List!13434 List!13434) Bool)

(assert (=> b!712426 (= res!475773 (subseq!421 acc!652 newAcc!49))))

(declare-fun b!712427 () Bool)

(declare-fun res!475768 () Bool)

(assert (=> b!712427 (=> (not res!475768) (not e!400793))))

(declare-fun noDuplicate!1224 (List!13434) Bool)

(assert (=> b!712427 (= res!475768 (noDuplicate!1224 newAcc!49))))

(declare-fun b!712428 () Bool)

(declare-fun res!475767 () Bool)

(declare-fun e!400792 () Bool)

(assert (=> b!712428 (=> (not res!475767) (not e!400792))))

(declare-fun lt!318541 () List!13434)

(declare-fun lt!318542 () List!13434)

(assert (=> b!712428 (= res!475767 (subseq!421 lt!318541 lt!318542))))

(declare-fun b!712429 () Bool)

(declare-fun res!475766 () Bool)

(assert (=> b!712429 (=> (not res!475766) (not e!400792))))

(declare-fun contains!3977 (List!13434 (_ BitVec 64)) Bool)

(assert (=> b!712429 (= res!475766 (not (contains!3977 lt!318541 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712430 () Bool)

(declare-fun res!475782 () Bool)

(assert (=> b!712430 (=> (not res!475782) (not e!400793))))

(assert (=> b!712430 (= res!475782 (not (contains!3977 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712431 () Bool)

(declare-fun res!475787 () Bool)

(assert (=> b!712431 (=> (not res!475787) (not e!400793))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!712431 (= res!475787 (contains!3977 newAcc!49 k!2824))))

(declare-fun b!712432 () Bool)

(declare-fun res!475770 () Bool)

(assert (=> b!712432 (=> (not res!475770) (not e!400793))))

(declare-datatypes ((array!40405 0))(
  ( (array!40406 (arr!19340 (Array (_ BitVec 32) (_ BitVec 64))) (size!19749 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40405)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!712432 (= res!475770 (validKeyInArray!0 (select (arr!19340 a!3591) from!2969)))))

(declare-fun b!712433 () Bool)

(declare-fun res!475772 () Bool)

(assert (=> b!712433 (=> (not res!475772) (not e!400793))))

(assert (=> b!712433 (= res!475772 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19749 a!3591)))))

(declare-fun b!712434 () Bool)

(declare-fun res!475769 () Bool)

(assert (=> b!712434 (=> (not res!475769) (not e!400792))))

(assert (=> b!712434 (= res!475769 (not (contains!3977 lt!318541 k!2824)))))

(declare-fun b!712435 () Bool)

(declare-fun res!475774 () Bool)

(assert (=> b!712435 (=> (not res!475774) (not e!400793))))

(assert (=> b!712435 (= res!475774 (validKeyInArray!0 k!2824))))

(declare-fun b!712436 () Bool)

(declare-fun res!475788 () Bool)

(assert (=> b!712436 (=> (not res!475788) (not e!400792))))

(assert (=> b!712436 (= res!475788 (noDuplicate!1224 lt!318542))))

(declare-fun b!712438 () Bool)

(declare-fun res!475771 () Bool)

(assert (=> b!712438 (=> (not res!475771) (not e!400792))))

(declare-fun arrayNoDuplicates!0 (array!40405 (_ BitVec 32) List!13434) Bool)

(assert (=> b!712438 (= res!475771 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318541))))

(declare-fun b!712439 () Bool)

(declare-fun res!475765 () Bool)

(assert (=> b!712439 (=> (not res!475765) (not e!400793))))

(assert (=> b!712439 (= res!475765 (not (contains!3977 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712440 () Bool)

(declare-fun res!475775 () Bool)

(assert (=> b!712440 (=> (not res!475775) (not e!400792))))

(assert (=> b!712440 (= res!475775 (not (contains!3977 lt!318541 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712441 () Bool)

(declare-fun res!475785 () Bool)

(assert (=> b!712441 (=> (not res!475785) (not e!400793))))

(assert (=> b!712441 (= res!475785 (not (contains!3977 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712442 () Bool)

(declare-fun res!475777 () Bool)

(assert (=> b!712442 (=> (not res!475777) (not e!400793))))

(assert (=> b!712442 (= res!475777 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!712443 () Bool)

(declare-fun res!475764 () Bool)

(assert (=> b!712443 (=> (not res!475764) (not e!400792))))

(assert (=> b!712443 (= res!475764 (not (contains!3977 lt!318542 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712444 () Bool)

(declare-fun res!475776 () Bool)

(assert (=> b!712444 (=> (not res!475776) (not e!400793))))

(declare-fun arrayContainsKey!0 (array!40405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!712444 (= res!475776 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!712445 () Bool)

(declare-fun res!475761 () Bool)

(assert (=> b!712445 (=> (not res!475761) (not e!400792))))

(assert (=> b!712445 (= res!475761 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712446 () Bool)

(declare-fun res!475778 () Bool)

(assert (=> b!712446 (=> (not res!475778) (not e!400792))))

(assert (=> b!712446 (= res!475778 (contains!3977 lt!318542 k!2824))))

(declare-fun b!712447 () Bool)

(declare-fun res!475763 () Bool)

(assert (=> b!712447 (=> (not res!475763) (not e!400793))))

(assert (=> b!712447 (= res!475763 (noDuplicate!1224 acc!652))))

(declare-fun b!712448 () Bool)

(declare-fun res!475781 () Bool)

(assert (=> b!712448 (=> (not res!475781) (not e!400792))))

(assert (=> b!712448 (= res!475781 (not (contains!3977 lt!318542 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712449 () Bool)

(declare-fun res!475762 () Bool)

(assert (=> b!712449 (=> (not res!475762) (not e!400793))))

(assert (=> b!712449 (= res!475762 (not (contains!3977 acc!652 k!2824)))))

(declare-fun b!712450 () Bool)

(declare-fun res!475784 () Bool)

(assert (=> b!712450 (=> (not res!475784) (not e!400793))))

(assert (=> b!712450 (= res!475784 (not (contains!3977 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712451 () Bool)

(assert (=> b!712451 (= e!400793 e!400792)))

(declare-fun res!475786 () Bool)

(assert (=> b!712451 (=> (not res!475786) (not e!400792))))

(assert (=> b!712451 (= res!475786 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!531 (List!13434 (_ BitVec 64)) List!13434)

(assert (=> b!712451 (= lt!318542 ($colon$colon!531 newAcc!49 (select (arr!19340 a!3591) from!2969)))))

(assert (=> b!712451 (= lt!318541 ($colon$colon!531 acc!652 (select (arr!19340 a!3591) from!2969)))))

(declare-fun b!712452 () Bool)

(declare-fun res!475783 () Bool)

(assert (=> b!712452 (=> (not res!475783) (not e!400792))))

(declare-fun -!386 (List!13434 (_ BitVec 64)) List!13434)

(assert (=> b!712452 (= res!475783 (= (-!386 lt!318542 k!2824) lt!318541))))

(declare-fun res!475780 () Bool)

(assert (=> start!63290 (=> (not res!475780) (not e!400793))))

(assert (=> start!63290 (= res!475780 (and (bvslt (size!19749 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19749 a!3591))))))

(assert (=> start!63290 e!400793))

(assert (=> start!63290 true))

(declare-fun array_inv!15114 (array!40405) Bool)

(assert (=> start!63290 (array_inv!15114 a!3591)))

(declare-fun b!712437 () Bool)

(assert (=> b!712437 (= e!400792 (bvsge (bvsub (size!19749 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) (bvsub (size!19749 a!3591) from!2969)))))

(declare-fun b!712453 () Bool)

(declare-fun res!475779 () Bool)

(assert (=> b!712453 (=> (not res!475779) (not e!400792))))

(assert (=> b!712453 (= res!475779 (noDuplicate!1224 lt!318541))))

(declare-fun b!712454 () Bool)

(declare-fun res!475760 () Bool)

(assert (=> b!712454 (=> (not res!475760) (not e!400793))))

(assert (=> b!712454 (= res!475760 (= (-!386 newAcc!49 k!2824) acc!652))))

(assert (= (and start!63290 res!475780) b!712447))

(assert (= (and b!712447 res!475763) b!712427))

(assert (= (and b!712427 res!475768) b!712441))

(assert (= (and b!712441 res!475785) b!712450))

(assert (= (and b!712450 res!475784) b!712444))

(assert (= (and b!712444 res!475776) b!712449))

(assert (= (and b!712449 res!475762) b!712435))

(assert (= (and b!712435 res!475774) b!712442))

(assert (= (and b!712442 res!475777) b!712426))

(assert (= (and b!712426 res!475773) b!712431))

(assert (= (and b!712431 res!475787) b!712454))

(assert (= (and b!712454 res!475760) b!712439))

(assert (= (and b!712439 res!475765) b!712430))

(assert (= (and b!712430 res!475782) b!712433))

(assert (= (and b!712433 res!475772) b!712432))

(assert (= (and b!712432 res!475770) b!712451))

(assert (= (and b!712451 res!475786) b!712453))

(assert (= (and b!712453 res!475779) b!712436))

(assert (= (and b!712436 res!475788) b!712429))

(assert (= (and b!712429 res!475766) b!712440))

(assert (= (and b!712440 res!475775) b!712445))

(assert (= (and b!712445 res!475761) b!712434))

(assert (= (and b!712434 res!475769) b!712438))

(assert (= (and b!712438 res!475771) b!712428))

(assert (= (and b!712428 res!475767) b!712446))

(assert (= (and b!712446 res!475778) b!712452))

(assert (= (and b!712452 res!475783) b!712443))

(assert (= (and b!712443 res!475764) b!712448))

(assert (= (and b!712448 res!475781) b!712437))

(declare-fun m!669399 () Bool)

(assert (=> b!712453 m!669399))

(declare-fun m!669401 () Bool)

(assert (=> b!712429 m!669401))

(declare-fun m!669403 () Bool)

(assert (=> b!712443 m!669403))

(declare-fun m!669405 () Bool)

(assert (=> b!712434 m!669405))

(declare-fun m!669407 () Bool)

(assert (=> b!712441 m!669407))

(declare-fun m!669409 () Bool)

(assert (=> b!712436 m!669409))

(declare-fun m!669411 () Bool)

(assert (=> b!712442 m!669411))

(declare-fun m!669413 () Bool)

(assert (=> b!712449 m!669413))

(declare-fun m!669415 () Bool)

(assert (=> b!712438 m!669415))

(declare-fun m!669417 () Bool)

(assert (=> b!712430 m!669417))

(declare-fun m!669419 () Bool)

(assert (=> b!712445 m!669419))

(declare-fun m!669421 () Bool)

(assert (=> b!712427 m!669421))

(declare-fun m!669423 () Bool)

(assert (=> b!712447 m!669423))

(declare-fun m!669425 () Bool)

(assert (=> b!712435 m!669425))

(declare-fun m!669427 () Bool)

(assert (=> b!712454 m!669427))

(declare-fun m!669429 () Bool)

(assert (=> b!712432 m!669429))

(assert (=> b!712432 m!669429))

(declare-fun m!669431 () Bool)

(assert (=> b!712432 m!669431))

(declare-fun m!669433 () Bool)

(assert (=> b!712440 m!669433))

(declare-fun m!669435 () Bool)

(assert (=> b!712431 m!669435))

(declare-fun m!669437 () Bool)

(assert (=> b!712426 m!669437))

(declare-fun m!669439 () Bool)

(assert (=> b!712446 m!669439))

(declare-fun m!669441 () Bool)

(assert (=> b!712450 m!669441))

(declare-fun m!669443 () Bool)

(assert (=> b!712439 m!669443))

(declare-fun m!669445 () Bool)

(assert (=> start!63290 m!669445))

(declare-fun m!669447 () Bool)

(assert (=> b!712428 m!669447))

(declare-fun m!669449 () Bool)

(assert (=> b!712452 m!669449))

(declare-fun m!669451 () Bool)

(assert (=> b!712448 m!669451))

(declare-fun m!669453 () Bool)

(assert (=> b!712444 m!669453))

(assert (=> b!712451 m!669429))

(assert (=> b!712451 m!669429))

(declare-fun m!669455 () Bool)

(assert (=> b!712451 m!669455))

(assert (=> b!712451 m!669429))

(declare-fun m!669457 () Bool)

(assert (=> b!712451 m!669457))

(push 1)

(assert (not b!712446))

(assert (not b!712434))

(assert (not b!712431))

(assert (not b!712441))

(assert (not b!712449))

(assert (not b!712445))

(assert (not b!712435))

(assert (not b!712451))

(assert (not b!712430))

(assert (not b!712427))

(assert (not b!712429))

(assert (not b!712438))

(assert (not b!712452))

(assert (not b!712453))

(assert (not b!712444))

(assert (not b!712442))

(assert (not b!712439))

(assert (not b!712454))

(assert (not b!712448))

(assert (not b!712447))

(assert (not b!712436))

(assert (not b!712443))

(assert (not b!712450))

(assert (not b!712440))

(assert (not b!712428))

(assert (not b!712432))

(assert (not b!712426))

(assert (not start!63290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

