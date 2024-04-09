; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103950 () Bool)

(assert start!103950)

(declare-fun b!1243748 () Bool)

(declare-fun res!829660 () Bool)

(declare-fun e!705018 () Bool)

(assert (=> b!1243748 (=> (not res!829660) (not e!705018))))

(declare-datatypes ((List!27564 0))(
  ( (Nil!27561) (Cons!27560 (h!28769 (_ BitVec 64)) (t!41040 List!27564)) )
))
(declare-fun contains!7436 (List!27564 (_ BitVec 64)) Bool)

(assert (=> b!1243748 (= res!829660 (not (contains!7436 Nil!27561 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243749 () Bool)

(declare-fun res!829656 () Bool)

(assert (=> b!1243749 (=> (not res!829656) (not e!705018))))

(declare-fun lt!562438 () List!27564)

(assert (=> b!1243749 (= res!829656 (not (contains!7436 lt!562438 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243750 () Bool)

(declare-fun res!829650 () Bool)

(assert (=> b!1243750 (=> (not res!829650) (not e!705018))))

(assert (=> b!1243750 (= res!829650 (not (contains!7436 lt!562438 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243751 () Bool)

(declare-fun res!829659 () Bool)

(declare-fun e!705019 () Bool)

(assert (=> b!1243751 (=> (not res!829659) (not e!705019))))

(declare-datatypes ((array!79988 0))(
  ( (array!79989 (arr!38583 (Array (_ BitVec 32) (_ BitVec 64))) (size!39120 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79988)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243751 (= res!829659 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39120 a!3892)) (not (= newFrom!287 (size!39120 a!3892)))))))

(declare-fun b!1243752 () Bool)

(declare-fun res!829658 () Bool)

(assert (=> b!1243752 (=> (not res!829658) (not e!705019))))

(declare-fun arrayNoDuplicates!0 (array!79988 (_ BitVec 32) List!27564) Bool)

(assert (=> b!1243752 (= res!829658 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27561))))

(declare-fun b!1243753 () Bool)

(assert (=> b!1243753 (= e!705018 false)))

(declare-fun lt!562436 () Bool)

(assert (=> b!1243753 (= lt!562436 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562438))))

(declare-datatypes ((Unit!41245 0))(
  ( (Unit!41246) )
))
(declare-fun lt!562437 () Unit!41245)

(declare-fun noDuplicateSubseq!101 (List!27564 List!27564) Unit!41245)

(assert (=> b!1243753 (= lt!562437 (noDuplicateSubseq!101 Nil!27561 lt!562438))))

(declare-fun b!1243754 () Bool)

(declare-fun res!829655 () Bool)

(assert (=> b!1243754 (=> (not res!829655) (not e!705018))))

(declare-fun subseq!647 (List!27564 List!27564) Bool)

(assert (=> b!1243754 (= res!829655 (subseq!647 Nil!27561 lt!562438))))

(declare-fun b!1243755 () Bool)

(declare-fun res!829651 () Bool)

(assert (=> b!1243755 (=> (not res!829651) (not e!705018))))

(declare-fun noDuplicate!2026 (List!27564) Bool)

(assert (=> b!1243755 (= res!829651 (noDuplicate!2026 lt!562438))))

(declare-fun res!829653 () Bool)

(assert (=> start!103950 (=> (not res!829653) (not e!705019))))

(assert (=> start!103950 (= res!829653 (and (bvslt (size!39120 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39120 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39120 a!3892))))))

(assert (=> start!103950 e!705019))

(declare-fun array_inv!29359 (array!79988) Bool)

(assert (=> start!103950 (array_inv!29359 a!3892)))

(assert (=> start!103950 true))

(declare-fun b!1243756 () Bool)

(declare-fun res!829657 () Bool)

(assert (=> b!1243756 (=> (not res!829657) (not e!705019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243756 (= res!829657 (validKeyInArray!0 (select (arr!38583 a!3892) from!3270)))))

(declare-fun b!1243757 () Bool)

(declare-fun res!829652 () Bool)

(assert (=> b!1243757 (=> (not res!829652) (not e!705018))))

(assert (=> b!1243757 (= res!829652 (not (contains!7436 Nil!27561 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243758 () Bool)

(assert (=> b!1243758 (= e!705019 e!705018)))

(declare-fun res!829654 () Bool)

(assert (=> b!1243758 (=> (not res!829654) (not e!705018))))

(assert (=> b!1243758 (= res!829654 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243758 (= lt!562438 (Cons!27560 (select (arr!38583 a!3892) from!3270) Nil!27561))))

(assert (= (and start!103950 res!829653) b!1243752))

(assert (= (and b!1243752 res!829658) b!1243751))

(assert (= (and b!1243751 res!829659) b!1243756))

(assert (= (and b!1243756 res!829657) b!1243758))

(assert (= (and b!1243758 res!829654) b!1243755))

(assert (= (and b!1243755 res!829651) b!1243749))

(assert (= (and b!1243749 res!829656) b!1243750))

(assert (= (and b!1243750 res!829650) b!1243748))

(assert (= (and b!1243748 res!829660) b!1243757))

(assert (= (and b!1243757 res!829652) b!1243754))

(assert (= (and b!1243754 res!829655) b!1243753))

(declare-fun m!1146225 () Bool)

(assert (=> b!1243752 m!1146225))

(declare-fun m!1146227 () Bool)

(assert (=> b!1243750 m!1146227))

(declare-fun m!1146229 () Bool)

(assert (=> b!1243758 m!1146229))

(declare-fun m!1146231 () Bool)

(assert (=> b!1243749 m!1146231))

(declare-fun m!1146233 () Bool)

(assert (=> b!1243748 m!1146233))

(declare-fun m!1146235 () Bool)

(assert (=> b!1243753 m!1146235))

(declare-fun m!1146237 () Bool)

(assert (=> b!1243753 m!1146237))

(declare-fun m!1146239 () Bool)

(assert (=> b!1243755 m!1146239))

(assert (=> b!1243756 m!1146229))

(assert (=> b!1243756 m!1146229))

(declare-fun m!1146241 () Bool)

(assert (=> b!1243756 m!1146241))

(declare-fun m!1146243 () Bool)

(assert (=> b!1243754 m!1146243))

(declare-fun m!1146245 () Bool)

(assert (=> start!103950 m!1146245))

(declare-fun m!1146247 () Bool)

(assert (=> b!1243757 m!1146247))

(push 1)

