; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113940 () Bool)

(assert start!113940)

(declare-fun b!1350645 () Bool)

(declare-fun res!896233 () Bool)

(declare-fun e!768344 () Bool)

(assert (=> b!1350645 (=> (not res!896233) (not e!768344))))

(declare-datatypes ((List!31687 0))(
  ( (Nil!31684) (Cons!31683 (h!32892 (_ BitVec 64)) (t!46352 List!31687)) )
))
(declare-fun acc!759 () List!31687)

(declare-fun contains!9252 (List!31687 (_ BitVec 64)) Bool)

(assert (=> b!1350645 (= res!896233 (not (contains!9252 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350646 () Bool)

(declare-fun e!768345 () Bool)

(assert (=> b!1350646 (= e!768344 (not e!768345))))

(declare-fun res!896229 () Bool)

(assert (=> b!1350646 (=> res!896229 e!768345)))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1350646 (= res!896229 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!596978 () List!31687)

(declare-datatypes ((array!92045 0))(
  ( (array!92046 (arr!44466 (Array (_ BitVec 32) (_ BitVec 64))) (size!45017 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92045)

(declare-fun $colon$colon!678 (List!31687 (_ BitVec 64)) List!31687)

(assert (=> b!1350646 (= lt!596978 ($colon$colon!678 acc!759 (select (arr!44466 a!3742) from!3120)))))

(declare-fun subseq!661 (List!31687 List!31687) Bool)

(assert (=> b!1350646 (subseq!661 acc!759 acc!759)))

(declare-datatypes ((Unit!44184 0))(
  ( (Unit!44185) )
))
(declare-fun lt!596976 () Unit!44184)

(declare-fun lemmaListSubSeqRefl!0 (List!31687) Unit!44184)

(assert (=> b!1350646 (= lt!596976 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350647 () Bool)

(declare-fun res!896230 () Bool)

(assert (=> b!1350647 (=> (not res!896230) (not e!768344))))

(assert (=> b!1350647 (= res!896230 (not (contains!9252 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350648 () Bool)

(declare-fun res!896238 () Bool)

(assert (=> b!1350648 (=> res!896238 e!768345)))

(assert (=> b!1350648 (= res!896238 (contains!9252 lt!596978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350649 () Bool)

(declare-fun res!896232 () Bool)

(assert (=> b!1350649 (=> (not res!896232) (not e!768344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350649 (= res!896232 (validKeyInArray!0 (select (arr!44466 a!3742) from!3120)))))

(declare-fun b!1350650 () Bool)

(declare-fun res!896224 () Bool)

(assert (=> b!1350650 (=> (not res!896224) (not e!768344))))

(assert (=> b!1350650 (= res!896224 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45017 a!3742)))))

(declare-fun b!1350651 () Bool)

(declare-fun res!896234 () Bool)

(assert (=> b!1350651 (=> (not res!896234) (not e!768344))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350651 (= res!896234 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45017 a!3742))))))

(declare-fun res!896231 () Bool)

(assert (=> start!113940 (=> (not res!896231) (not e!768344))))

(assert (=> start!113940 (= res!896231 (and (bvslt (size!45017 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45017 a!3742))))))

(assert (=> start!113940 e!768344))

(assert (=> start!113940 true))

(declare-fun array_inv!33411 (array!92045) Bool)

(assert (=> start!113940 (array_inv!33411 a!3742)))

(declare-fun b!1350652 () Bool)

(assert (=> b!1350652 (= e!768345 true)))

(declare-fun lt!596975 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92045 (_ BitVec 32) List!31687) Bool)

(assert (=> b!1350652 (= lt!596975 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!596978))))

(declare-fun lt!596977 () Unit!44184)

(declare-fun noDuplicateSubseq!112 (List!31687 List!31687) Unit!44184)

(assert (=> b!1350652 (= lt!596977 (noDuplicateSubseq!112 acc!759 lt!596978))))

(declare-fun b!1350653 () Bool)

(declare-fun res!896228 () Bool)

(assert (=> b!1350653 (=> (not res!896228) (not e!768344))))

(declare-fun noDuplicate!2131 (List!31687) Bool)

(assert (=> b!1350653 (= res!896228 (noDuplicate!2131 acc!759))))

(declare-fun b!1350654 () Bool)

(declare-fun res!896237 () Bool)

(assert (=> b!1350654 (=> res!896237 e!768345)))

(assert (=> b!1350654 (= res!896237 (contains!9252 lt!596978 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350655 () Bool)

(declare-fun res!896227 () Bool)

(assert (=> b!1350655 (=> res!896227 e!768345)))

(assert (=> b!1350655 (= res!896227 (not (noDuplicate!2131 lt!596978)))))

(declare-fun b!1350656 () Bool)

(declare-fun res!896236 () Bool)

(assert (=> b!1350656 (=> res!896236 e!768345)))

(assert (=> b!1350656 (= res!896236 (not (subseq!661 acc!759 lt!596978)))))

(declare-fun b!1350657 () Bool)

(declare-fun res!896225 () Bool)

(assert (=> b!1350657 (=> (not res!896225) (not e!768344))))

(assert (=> b!1350657 (= res!896225 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350658 () Bool)

(declare-fun res!896226 () Bool)

(assert (=> b!1350658 (=> (not res!896226) (not e!768344))))

(assert (=> b!1350658 (= res!896226 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31684))))

(declare-fun b!1350659 () Bool)

(declare-fun res!896235 () Bool)

(assert (=> b!1350659 (=> (not res!896235) (not e!768344))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1350659 (= res!896235 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!113940 res!896231) b!1350653))

(assert (= (and b!1350653 res!896228) b!1350647))

(assert (= (and b!1350647 res!896230) b!1350645))

(assert (= (and b!1350645 res!896233) b!1350658))

(assert (= (and b!1350658 res!896226) b!1350657))

(assert (= (and b!1350657 res!896225) b!1350651))

(assert (= (and b!1350651 res!896234) b!1350659))

(assert (= (and b!1350659 res!896235) b!1350650))

(assert (= (and b!1350650 res!896224) b!1350649))

(assert (= (and b!1350649 res!896232) b!1350646))

(assert (= (and b!1350646 (not res!896229)) b!1350655))

(assert (= (and b!1350655 (not res!896227)) b!1350648))

(assert (= (and b!1350648 (not res!896238)) b!1350654))

(assert (= (and b!1350654 (not res!896237)) b!1350656))

(assert (= (and b!1350656 (not res!896236)) b!1350652))

(declare-fun m!1237849 () Bool)

(assert (=> b!1350649 m!1237849))

(assert (=> b!1350649 m!1237849))

(declare-fun m!1237851 () Bool)

(assert (=> b!1350649 m!1237851))

(declare-fun m!1237853 () Bool)

(assert (=> b!1350656 m!1237853))

(declare-fun m!1237855 () Bool)

(assert (=> b!1350645 m!1237855))

(declare-fun m!1237857 () Bool)

(assert (=> b!1350654 m!1237857))

(declare-fun m!1237859 () Bool)

(assert (=> b!1350657 m!1237859))

(declare-fun m!1237861 () Bool)

(assert (=> b!1350653 m!1237861))

(declare-fun m!1237863 () Bool)

(assert (=> b!1350652 m!1237863))

(declare-fun m!1237865 () Bool)

(assert (=> b!1350652 m!1237865))

(declare-fun m!1237867 () Bool)

(assert (=> b!1350647 m!1237867))

(declare-fun m!1237869 () Bool)

(assert (=> b!1350659 m!1237869))

(declare-fun m!1237871 () Bool)

(assert (=> b!1350658 m!1237871))

(declare-fun m!1237873 () Bool)

(assert (=> start!113940 m!1237873))

(declare-fun m!1237875 () Bool)

(assert (=> b!1350648 m!1237875))

(declare-fun m!1237877 () Bool)

(assert (=> b!1350655 m!1237877))

(assert (=> b!1350646 m!1237849))

(assert (=> b!1350646 m!1237849))

(declare-fun m!1237879 () Bool)

(assert (=> b!1350646 m!1237879))

(declare-fun m!1237881 () Bool)

(assert (=> b!1350646 m!1237881))

(declare-fun m!1237883 () Bool)

(assert (=> b!1350646 m!1237883))

(push 1)

(assert (not b!1350648))

(assert (not b!1350658))

(assert (not b!1350647))

(assert (not b!1350659))

(assert (not b!1350649))

(assert (not start!113940))

(assert (not b!1350652))

(assert (not b!1350656))

(assert (not b!1350653))

(assert (not b!1350645))

(assert (not b!1350657))

(assert (not b!1350655))

(assert (not b!1350646))

(assert (not b!1350654))

(check-sat)

