; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115742 () Bool)

(assert start!115742)

(declare-fun b!1368079 () Bool)

(declare-fun res!911710 () Bool)

(declare-fun e!775236 () Bool)

(assert (=> b!1368079 (=> (not res!911710) (not e!775236))))

(declare-datatypes ((array!92857 0))(
  ( (array!92858 (arr!44848 (Array (_ BitVec 32) (_ BitVec 64))) (size!45399 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92857)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368079 (= res!911710 (not (validKeyInArray!0 (select (arr!44848 a!3861) from!3239))))))

(declare-fun b!1368080 () Bool)

(declare-fun res!911709 () Bool)

(declare-fun e!775237 () Bool)

(assert (=> b!1368080 (=> (not res!911709) (not e!775237))))

(declare-datatypes ((List!32096 0))(
  ( (Nil!32093) (Cons!32092 (h!33301 (_ BitVec 64)) (t!46797 List!32096)) )
))
(declare-fun acc!866 () List!32096)

(declare-fun contains!9634 (List!32096 (_ BitVec 64)) Bool)

(assert (=> b!1368080 (= res!911709 (not (contains!9634 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911711 () Bool)

(assert (=> start!115742 (=> (not res!911711) (not e!775237))))

(assert (=> start!115742 (= res!911711 (and (bvslt (size!45399 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45399 a!3861))))))

(assert (=> start!115742 e!775237))

(declare-fun array_inv!33793 (array!92857) Bool)

(assert (=> start!115742 (array_inv!33793 a!3861)))

(assert (=> start!115742 true))

(declare-fun b!1368081 () Bool)

(declare-fun res!911714 () Bool)

(assert (=> b!1368081 (=> (not res!911714) (not e!775237))))

(declare-fun newAcc!98 () List!32096)

(assert (=> b!1368081 (= res!911714 (not (contains!9634 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368082 () Bool)

(declare-fun res!911712 () Bool)

(assert (=> b!1368082 (=> (not res!911712) (not e!775237))))

(assert (=> b!1368082 (= res!911712 (not (contains!9634 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368083 () Bool)

(assert (=> b!1368083 (= e!775236 false)))

(declare-fun lt!601952 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92857 (_ BitVec 32) List!32096) Bool)

(assert (=> b!1368083 (= lt!601952 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368084 () Bool)

(declare-fun res!911716 () Bool)

(assert (=> b!1368084 (=> (not res!911716) (not e!775236))))

(assert (=> b!1368084 (= res!911716 (bvslt from!3239 (size!45399 a!3861)))))

(declare-fun b!1368085 () Bool)

(declare-fun res!911713 () Bool)

(assert (=> b!1368085 (=> (not res!911713) (not e!775237))))

(declare-fun subseq!1025 (List!32096 List!32096) Bool)

(assert (=> b!1368085 (= res!911713 (subseq!1025 newAcc!98 acc!866))))

(declare-fun b!1368086 () Bool)

(assert (=> b!1368086 (= e!775237 e!775236)))

(declare-fun res!911708 () Bool)

(assert (=> b!1368086 (=> (not res!911708) (not e!775236))))

(assert (=> b!1368086 (= res!911708 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45131 0))(
  ( (Unit!45132) )
))
(declare-fun lt!601951 () Unit!45131)

(declare-fun noDuplicateSubseq!212 (List!32096 List!32096) Unit!45131)

(assert (=> b!1368086 (= lt!601951 (noDuplicateSubseq!212 newAcc!98 acc!866))))

(declare-fun b!1368087 () Bool)

(declare-fun res!911715 () Bool)

(assert (=> b!1368087 (=> (not res!911715) (not e!775237))))

(declare-fun noDuplicate!2513 (List!32096) Bool)

(assert (=> b!1368087 (= res!911715 (noDuplicate!2513 acc!866))))

(declare-fun b!1368088 () Bool)

(declare-fun res!911717 () Bool)

(assert (=> b!1368088 (=> (not res!911717) (not e!775236))))

(assert (=> b!1368088 (= res!911717 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368089 () Bool)

(declare-fun res!911718 () Bool)

(assert (=> b!1368089 (=> (not res!911718) (not e!775237))))

(assert (=> b!1368089 (= res!911718 (not (contains!9634 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115742 res!911711) b!1368087))

(assert (= (and b!1368087 res!911715) b!1368080))

(assert (= (and b!1368080 res!911709) b!1368089))

(assert (= (and b!1368089 res!911718) b!1368081))

(assert (= (and b!1368081 res!911714) b!1368082))

(assert (= (and b!1368082 res!911712) b!1368085))

(assert (= (and b!1368085 res!911713) b!1368086))

(assert (= (and b!1368086 res!911708) b!1368084))

(assert (= (and b!1368084 res!911716) b!1368079))

(assert (= (and b!1368079 res!911710) b!1368088))

(assert (= (and b!1368088 res!911717) b!1368083))

(declare-fun m!1252159 () Bool)

(assert (=> b!1368087 m!1252159))

(declare-fun m!1252161 () Bool)

(assert (=> b!1368080 m!1252161))

(declare-fun m!1252163 () Bool)

(assert (=> b!1368081 m!1252163))

(declare-fun m!1252165 () Bool)

(assert (=> b!1368086 m!1252165))

(declare-fun m!1252167 () Bool)

(assert (=> b!1368086 m!1252167))

(declare-fun m!1252169 () Bool)

(assert (=> start!115742 m!1252169))

(declare-fun m!1252171 () Bool)

(assert (=> b!1368079 m!1252171))

(assert (=> b!1368079 m!1252171))

(declare-fun m!1252173 () Bool)

(assert (=> b!1368079 m!1252173))

(declare-fun m!1252175 () Bool)

(assert (=> b!1368085 m!1252175))

(declare-fun m!1252177 () Bool)

(assert (=> b!1368083 m!1252177))

(declare-fun m!1252179 () Bool)

(assert (=> b!1368089 m!1252179))

(declare-fun m!1252181 () Bool)

(assert (=> b!1368082 m!1252181))

(push 1)

