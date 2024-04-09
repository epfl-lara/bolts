; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103246 () Bool)

(assert start!103246)

(declare-fun b!1238917 () Bool)

(declare-fun res!826601 () Bool)

(declare-fun e!702120 () Bool)

(assert (=> b!1238917 (=> (not res!826601) (not e!702120))))

(declare-datatypes ((array!79830 0))(
  ( (array!79831 (arr!38513 (Array (_ BitVec 32) (_ BitVec 64))) (size!39050 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79830)

(declare-datatypes ((List!27464 0))(
  ( (Nil!27461) (Cons!27460 (h!28669 (_ BitVec 64)) (t!40934 List!27464)) )
))
(declare-fun acc!846 () List!27464)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79830 (_ BitVec 32) List!27464) Bool)

(assert (=> b!1238917 (= res!826601 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238918 () Bool)

(declare-fun res!826606 () Bool)

(assert (=> b!1238918 (=> (not res!826606) (not e!702120))))

(assert (=> b!1238918 (= res!826606 (not (= from!3213 (bvsub (size!39050 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238919 () Bool)

(declare-datatypes ((Unit!41100 0))(
  ( (Unit!41101) )
))
(declare-fun e!702122 () Unit!41100)

(declare-fun Unit!41102 () Unit!41100)

(assert (=> b!1238919 (= e!702122 Unit!41102)))

(declare-fun b!1238920 () Bool)

(declare-fun res!826602 () Bool)

(assert (=> b!1238920 (=> (not res!826602) (not e!702120))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7379 (List!27464 (_ BitVec 64)) Bool)

(assert (=> b!1238920 (= res!826602 (contains!7379 acc!846 k!2925))))

(declare-fun res!826605 () Bool)

(assert (=> start!103246 (=> (not res!826605) (not e!702120))))

(assert (=> start!103246 (= res!826605 (and (bvslt (size!39050 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39050 a!3835))))))

(assert (=> start!103246 e!702120))

(declare-fun array_inv!29289 (array!79830) Bool)

(assert (=> start!103246 (array_inv!29289 a!3835)))

(assert (=> start!103246 true))

(declare-fun b!1238921 () Bool)

(declare-fun res!826604 () Bool)

(assert (=> b!1238921 (=> (not res!826604) (not e!702120))))

(assert (=> b!1238921 (= res!826604 (not (contains!7379 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238922 () Bool)

(declare-fun lt!561498 () Unit!41100)

(assert (=> b!1238922 (= e!702122 lt!561498)))

(declare-fun lt!561500 () List!27464)

(assert (=> b!1238922 (= lt!561500 (Cons!27460 (select (arr!38513 a!3835) from!3213) acc!846))))

(declare-fun lt!561502 () Unit!41100)

(declare-fun lemmaListSubSeqRefl!0 (List!27464) Unit!41100)

(assert (=> b!1238922 (= lt!561502 (lemmaListSubSeqRefl!0 lt!561500))))

(declare-fun subseq!616 (List!27464 List!27464) Bool)

(assert (=> b!1238922 (subseq!616 lt!561500 lt!561500)))

(declare-fun lt!561499 () Unit!41100)

(declare-fun subseqTail!103 (List!27464 List!27464) Unit!41100)

(assert (=> b!1238922 (= lt!561499 (subseqTail!103 lt!561500 lt!561500))))

(assert (=> b!1238922 (subseq!616 acc!846 lt!561500)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79830 List!27464 List!27464 (_ BitVec 32)) Unit!41100)

(assert (=> b!1238922 (= lt!561498 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561500 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238922 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238923 () Bool)

(assert (=> b!1238923 (= e!702120 false)))

(declare-fun lt!561501 () Unit!41100)

(assert (=> b!1238923 (= lt!561501 e!702122)))

(declare-fun c!121021 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238923 (= c!121021 (validKeyInArray!0 (select (arr!38513 a!3835) from!3213)))))

(declare-fun b!1238924 () Bool)

(declare-fun res!826603 () Bool)

(assert (=> b!1238924 (=> (not res!826603) (not e!702120))))

(declare-fun noDuplicate!1986 (List!27464) Bool)

(assert (=> b!1238924 (= res!826603 (noDuplicate!1986 acc!846))))

(declare-fun b!1238925 () Bool)

(declare-fun res!826600 () Bool)

(assert (=> b!1238925 (=> (not res!826600) (not e!702120))))

(assert (=> b!1238925 (= res!826600 (not (contains!7379 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103246 res!826605) b!1238924))

(assert (= (and b!1238924 res!826603) b!1238925))

(assert (= (and b!1238925 res!826600) b!1238921))

(assert (= (and b!1238921 res!826604) b!1238917))

(assert (= (and b!1238917 res!826601) b!1238920))

(assert (= (and b!1238920 res!826602) b!1238918))

(assert (= (and b!1238918 res!826606) b!1238923))

(assert (= (and b!1238923 c!121021) b!1238922))

(assert (= (and b!1238923 (not c!121021)) b!1238919))

(declare-fun m!1142473 () Bool)

(assert (=> b!1238917 m!1142473))

(declare-fun m!1142475 () Bool)

(assert (=> b!1238924 m!1142475))

(declare-fun m!1142477 () Bool)

(assert (=> b!1238922 m!1142477))

(declare-fun m!1142479 () Bool)

(assert (=> b!1238922 m!1142479))

(declare-fun m!1142481 () Bool)

(assert (=> b!1238922 m!1142481))

(declare-fun m!1142483 () Bool)

(assert (=> b!1238922 m!1142483))

(declare-fun m!1142485 () Bool)

(assert (=> b!1238922 m!1142485))

(declare-fun m!1142487 () Bool)

(assert (=> b!1238922 m!1142487))

(declare-fun m!1142489 () Bool)

(assert (=> b!1238922 m!1142489))

(assert (=> b!1238923 m!1142487))

(assert (=> b!1238923 m!1142487))

(declare-fun m!1142491 () Bool)

(assert (=> b!1238923 m!1142491))

(declare-fun m!1142493 () Bool)

(assert (=> start!103246 m!1142493))

(declare-fun m!1142495 () Bool)

(assert (=> b!1238921 m!1142495))

(declare-fun m!1142497 () Bool)

(assert (=> b!1238920 m!1142497))

(declare-fun m!1142499 () Bool)

(assert (=> b!1238925 m!1142499))

(push 1)

(assert (not b!1238923))

(assert (not start!103246))

(assert (not b!1238921))

(assert (not b!1238922))

(assert (not b!1238917))

(assert (not b!1238925))

(assert (not b!1238924))

