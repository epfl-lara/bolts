; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62590 () Bool)

(assert start!62590)

(declare-fun b!705506 () Bool)

(declare-fun res!469500 () Bool)

(declare-fun e!397749 () Bool)

(assert (=> b!705506 (=> (not res!469500) (not e!397749))))

(declare-datatypes ((array!40225 0))(
  ( (array!40226 (arr!19265 (Array (_ BitVec 32) (_ BitVec 64))) (size!19648 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40225)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705506 (= res!469500 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!469502 () Bool)

(assert (=> start!62590 (=> (not res!469502) (not e!397749))))

(assert (=> start!62590 (= res!469502 (and (bvslt (size!19648 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19648 a!3591))))))

(assert (=> start!62590 e!397749))

(assert (=> start!62590 true))

(declare-fun array_inv!15039 (array!40225) Bool)

(assert (=> start!62590 (array_inv!15039 a!3591)))

(declare-fun b!705507 () Bool)

(declare-fun res!469508 () Bool)

(assert (=> b!705507 (=> (not res!469508) (not e!397749))))

(declare-datatypes ((List!13359 0))(
  ( (Nil!13356) (Cons!13355 (h!14400 (_ BitVec 64)) (t!19649 List!13359)) )
))
(declare-fun newAcc!49 () List!13359)

(declare-fun contains!3902 (List!13359 (_ BitVec 64)) Bool)

(assert (=> b!705507 (= res!469508 (not (contains!3902 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705508 () Bool)

(assert (=> b!705508 (= e!397749 (not true))))

(declare-fun arrayNoDuplicates!0 (array!40225 (_ BitVec 32) List!13359) Bool)

(assert (=> b!705508 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24596 0))(
  ( (Unit!24597) )
))
(declare-fun lt!317856 () Unit!24596)

(declare-fun acc!652 () List!13359)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40225 (_ BitVec 64) (_ BitVec 32) List!13359 List!13359) Unit!24596)

(assert (=> b!705508 (= lt!317856 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705509 () Bool)

(declare-fun res!469498 () Bool)

(assert (=> b!705509 (=> (not res!469498) (not e!397749))))

(assert (=> b!705509 (= res!469498 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705510 () Bool)

(declare-fun res!469497 () Bool)

(assert (=> b!705510 (=> (not res!469497) (not e!397749))))

(assert (=> b!705510 (= res!469497 (not (contains!3902 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705511 () Bool)

(declare-fun res!469494 () Bool)

(assert (=> b!705511 (=> (not res!469494) (not e!397749))))

(assert (=> b!705511 (= res!469494 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705512 () Bool)

(declare-fun res!469495 () Bool)

(assert (=> b!705512 (=> (not res!469495) (not e!397749))))

(declare-fun subseq!346 (List!13359 List!13359) Bool)

(assert (=> b!705512 (= res!469495 (subseq!346 acc!652 newAcc!49))))

(declare-fun b!705513 () Bool)

(declare-fun res!469499 () Bool)

(assert (=> b!705513 (=> (not res!469499) (not e!397749))))

(assert (=> b!705513 (= res!469499 (not (contains!3902 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705514 () Bool)

(declare-fun res!469496 () Bool)

(assert (=> b!705514 (=> (not res!469496) (not e!397749))))

(declare-fun noDuplicate!1149 (List!13359) Bool)

(assert (=> b!705514 (= res!469496 (noDuplicate!1149 acc!652))))

(declare-fun b!705515 () Bool)

(declare-fun res!469492 () Bool)

(assert (=> b!705515 (=> (not res!469492) (not e!397749))))

(assert (=> b!705515 (= res!469492 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19648 a!3591)))))

(declare-fun b!705516 () Bool)

(declare-fun res!469507 () Bool)

(assert (=> b!705516 (=> (not res!469507) (not e!397749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705516 (= res!469507 (validKeyInArray!0 k!2824))))

(declare-fun b!705517 () Bool)

(declare-fun res!469491 () Bool)

(assert (=> b!705517 (=> (not res!469491) (not e!397749))))

(assert (=> b!705517 (= res!469491 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705518 () Bool)

(declare-fun res!469501 () Bool)

(assert (=> b!705518 (=> (not res!469501) (not e!397749))))

(declare-fun -!311 (List!13359 (_ BitVec 64)) List!13359)

(assert (=> b!705518 (= res!469501 (= (-!311 newAcc!49 k!2824) acc!652))))

(declare-fun b!705519 () Bool)

(declare-fun res!469490 () Bool)

(assert (=> b!705519 (=> (not res!469490) (not e!397749))))

(assert (=> b!705519 (= res!469490 (not (validKeyInArray!0 (select (arr!19265 a!3591) from!2969))))))

(declare-fun b!705520 () Bool)

(declare-fun res!469493 () Bool)

(assert (=> b!705520 (=> (not res!469493) (not e!397749))))

(assert (=> b!705520 (= res!469493 (not (contains!3902 acc!652 k!2824)))))

(declare-fun b!705521 () Bool)

(declare-fun res!469504 () Bool)

(assert (=> b!705521 (=> (not res!469504) (not e!397749))))

(assert (=> b!705521 (= res!469504 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705522 () Bool)

(declare-fun res!469505 () Bool)

(assert (=> b!705522 (=> (not res!469505) (not e!397749))))

(assert (=> b!705522 (= res!469505 (not (contains!3902 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705523 () Bool)

(declare-fun res!469503 () Bool)

(assert (=> b!705523 (=> (not res!469503) (not e!397749))))

(assert (=> b!705523 (= res!469503 (contains!3902 newAcc!49 k!2824))))

(declare-fun b!705524 () Bool)

(declare-fun res!469506 () Bool)

(assert (=> b!705524 (=> (not res!469506) (not e!397749))))

(assert (=> b!705524 (= res!469506 (noDuplicate!1149 newAcc!49))))

(assert (= (and start!62590 res!469502) b!705514))

(assert (= (and b!705514 res!469496) b!705524))

(assert (= (and b!705524 res!469506) b!705522))

(assert (= (and b!705522 res!469505) b!705513))

(assert (= (and b!705513 res!469499) b!705506))

(assert (= (and b!705506 res!469500) b!705520))

(assert (= (and b!705520 res!469493) b!705516))

(assert (= (and b!705516 res!469507) b!705509))

(assert (= (and b!705509 res!469498) b!705512))

(assert (= (and b!705512 res!469495) b!705523))

(assert (= (and b!705523 res!469503) b!705518))

(assert (= (and b!705518 res!469501) b!705510))

(assert (= (and b!705510 res!469497) b!705507))

(assert (= (and b!705507 res!469508) b!705515))

(assert (= (and b!705515 res!469492) b!705519))

(assert (= (and b!705519 res!469490) b!705511))

(assert (= (and b!705511 res!469494) b!705521))

(assert (= (and b!705521 res!469504) b!705517))

(assert (= (and b!705517 res!469491) b!705508))

(declare-fun m!663671 () Bool)

(assert (=> b!705506 m!663671))

(declare-fun m!663673 () Bool)

(assert (=> b!705509 m!663673))

(declare-fun m!663675 () Bool)

(assert (=> start!62590 m!663675))

(declare-fun m!663677 () Bool)

(assert (=> b!705513 m!663677))

(declare-fun m!663679 () Bool)

(assert (=> b!705512 m!663679))

(declare-fun m!663681 () Bool)

(assert (=> b!705523 m!663681))

(declare-fun m!663683 () Bool)

(assert (=> b!705510 m!663683))

(declare-fun m!663685 () Bool)

(assert (=> b!705508 m!663685))

(declare-fun m!663687 () Bool)

(assert (=> b!705508 m!663687))

(declare-fun m!663689 () Bool)

(assert (=> b!705516 m!663689))

(declare-fun m!663691 () Bool)

(assert (=> b!705514 m!663691))

(declare-fun m!663693 () Bool)

(assert (=> b!705520 m!663693))

(declare-fun m!663695 () Bool)

(assert (=> b!705521 m!663695))

(declare-fun m!663697 () Bool)

(assert (=> b!705517 m!663697))

(declare-fun m!663699 () Bool)

(assert (=> b!705507 m!663699))

(declare-fun m!663701 () Bool)

(assert (=> b!705522 m!663701))

(declare-fun m!663703 () Bool)

(assert (=> b!705524 m!663703))

(declare-fun m!663705 () Bool)

(assert (=> b!705519 m!663705))

(assert (=> b!705519 m!663705))

(declare-fun m!663707 () Bool)

(assert (=> b!705519 m!663707))

(declare-fun m!663709 () Bool)

(assert (=> b!705518 m!663709))

(push 1)

(assert (not b!705513))

(assert (not b!705524))

(assert (not b!705519))

(assert (not b!705523))

(assert (not start!62590))

(assert (not b!705522))

(assert (not b!705521))

(assert (not b!705512))

(assert (not b!705506))

(assert (not b!705518))

(assert (not b!705520))

(assert (not b!705516))

(assert (not b!705507))

(assert (not b!705517))

(assert (not b!705510))

(assert (not b!705509))

(assert (not b!705508))

(assert (not b!705514))

(check-sat)

