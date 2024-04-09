; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115010 () Bool)

(assert start!115010)

(declare-fun res!906722 () Bool)

(declare-fun e!772946 () Bool)

(assert (=> start!115010 (=> (not res!906722) (not e!772946))))

(declare-datatypes ((array!92611 0))(
  ( (array!92612 (arr!44734 (Array (_ BitVec 32) (_ BitVec 64))) (size!45285 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92611)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115010 (= res!906722 (and (bvslt (size!45285 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45285 a!3742))))))

(assert (=> start!115010 e!772946))

(assert (=> start!115010 true))

(declare-fun array_inv!33679 (array!92611) Bool)

(assert (=> start!115010 (array_inv!33679 a!3742)))

(declare-fun b!1362670 () Bool)

(assert (=> b!1362670 (= e!772946 false)))

(declare-datatypes ((Unit!44885 0))(
  ( (Unit!44886) )
))
(declare-fun lt!600518 () Unit!44885)

(declare-fun e!772947 () Unit!44885)

(assert (=> b!1362670 (= lt!600518 e!772947)))

(declare-fun c!127417 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362670 (= c!127417 (validKeyInArray!0 (select (arr!44734 a!3742) from!3120)))))

(declare-fun b!1362671 () Bool)

(declare-fun res!906724 () Bool)

(assert (=> b!1362671 (=> (not res!906724) (not e!772946))))

(declare-datatypes ((List!31955 0))(
  ( (Nil!31952) (Cons!31951 (h!33160 (_ BitVec 64)) (t!46650 List!31955)) )
))
(declare-fun acc!759 () List!31955)

(declare-fun noDuplicate!2399 (List!31955) Bool)

(assert (=> b!1362671 (= res!906724 (noDuplicate!2399 acc!759))))

(declare-fun b!1362672 () Bool)

(declare-fun Unit!44887 () Unit!44885)

(assert (=> b!1362672 (= e!772947 Unit!44887)))

(declare-fun b!1362673 () Bool)

(declare-fun res!906728 () Bool)

(assert (=> b!1362673 (=> (not res!906728) (not e!772946))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362673 (= res!906728 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362674 () Bool)

(declare-fun res!906725 () Bool)

(assert (=> b!1362674 (=> (not res!906725) (not e!772946))))

(declare-fun contains!9520 (List!31955 (_ BitVec 64)) Bool)

(assert (=> b!1362674 (= res!906725 (not (contains!9520 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362675 () Bool)

(declare-fun res!906729 () Bool)

(assert (=> b!1362675 (=> (not res!906729) (not e!772946))))

(declare-fun arrayNoDuplicates!0 (array!92611 (_ BitVec 32) List!31955) Bool)

(assert (=> b!1362675 (= res!906729 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31952))))

(declare-fun b!1362676 () Bool)

(declare-fun res!906723 () Bool)

(assert (=> b!1362676 (=> (not res!906723) (not e!772946))))

(assert (=> b!1362676 (= res!906723 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362677 () Bool)

(declare-fun res!906721 () Bool)

(assert (=> b!1362677 (=> (not res!906721) (not e!772946))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362677 (= res!906721 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45285 a!3742))))))

(declare-fun b!1362678 () Bool)

(declare-fun res!906727 () Bool)

(assert (=> b!1362678 (=> (not res!906727) (not e!772946))))

(assert (=> b!1362678 (= res!906727 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45285 a!3742)))))

(declare-fun b!1362679 () Bool)

(declare-fun res!906726 () Bool)

(assert (=> b!1362679 (=> (not res!906726) (not e!772946))))

(assert (=> b!1362679 (= res!906726 (not (contains!9520 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362680 () Bool)

(declare-fun lt!600516 () Unit!44885)

(assert (=> b!1362680 (= e!772947 lt!600516)))

(declare-fun lt!600517 () Unit!44885)

(declare-fun lemmaListSubSeqRefl!0 (List!31955) Unit!44885)

(assert (=> b!1362680 (= lt!600517 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!911 (List!31955 List!31955) Bool)

(assert (=> b!1362680 (subseq!911 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92611 List!31955 List!31955 (_ BitVec 32)) Unit!44885)

(declare-fun $colon$colon!916 (List!31955 (_ BitVec 64)) List!31955)

(assert (=> b!1362680 (= lt!600516 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!916 acc!759 (select (arr!44734 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362680 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!115010 res!906722) b!1362671))

(assert (= (and b!1362671 res!906724) b!1362674))

(assert (= (and b!1362674 res!906725) b!1362679))

(assert (= (and b!1362679 res!906726) b!1362675))

(assert (= (and b!1362675 res!906729) b!1362676))

(assert (= (and b!1362676 res!906723) b!1362677))

(assert (= (and b!1362677 res!906721) b!1362673))

(assert (= (and b!1362673 res!906728) b!1362678))

(assert (= (and b!1362678 res!906727) b!1362670))

(assert (= (and b!1362670 c!127417) b!1362680))

(assert (= (and b!1362670 (not c!127417)) b!1362672))

(declare-fun m!1247635 () Bool)

(assert (=> start!115010 m!1247635))

(declare-fun m!1247637 () Bool)

(assert (=> b!1362673 m!1247637))

(declare-fun m!1247639 () Bool)

(assert (=> b!1362679 m!1247639))

(declare-fun m!1247641 () Bool)

(assert (=> b!1362670 m!1247641))

(assert (=> b!1362670 m!1247641))

(declare-fun m!1247643 () Bool)

(assert (=> b!1362670 m!1247643))

(declare-fun m!1247645 () Bool)

(assert (=> b!1362680 m!1247645))

(assert (=> b!1362680 m!1247641))

(declare-fun m!1247647 () Bool)

(assert (=> b!1362680 m!1247647))

(declare-fun m!1247649 () Bool)

(assert (=> b!1362680 m!1247649))

(declare-fun m!1247651 () Bool)

(assert (=> b!1362680 m!1247651))

(assert (=> b!1362680 m!1247641))

(assert (=> b!1362680 m!1247647))

(declare-fun m!1247653 () Bool)

(assert (=> b!1362680 m!1247653))

(declare-fun m!1247655 () Bool)

(assert (=> b!1362671 m!1247655))

(declare-fun m!1247657 () Bool)

(assert (=> b!1362676 m!1247657))

(declare-fun m!1247659 () Bool)

(assert (=> b!1362674 m!1247659))

(declare-fun m!1247661 () Bool)

(assert (=> b!1362675 m!1247661))

(push 1)

(assert (not b!1362675))

(assert (not b!1362674))

(assert (not b!1362676))

(assert (not start!115010))

(assert (not b!1362680))

(assert (not b!1362671))

(assert (not b!1362670))

(assert (not b!1362679))

(assert (not b!1362673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

