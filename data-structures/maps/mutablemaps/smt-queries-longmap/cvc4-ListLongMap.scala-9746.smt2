; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115500 () Bool)

(assert start!115500)

(declare-fun b!1365600 () Bool)

(declare-fun res!909300 () Bool)

(declare-fun e!774244 () Bool)

(assert (=> b!1365600 (=> (not res!909300) (not e!774244))))

(declare-datatypes ((List!32044 0))(
  ( (Nil!32041) (Cons!32040 (h!33249 (_ BitVec 64)) (t!46745 List!32044)) )
))
(declare-fun acc!866 () List!32044)

(declare-fun noDuplicate!2461 (List!32044) Bool)

(assert (=> b!1365600 (= res!909300 (noDuplicate!2461 acc!866))))

(declare-fun b!1365601 () Bool)

(declare-fun res!909312 () Bool)

(declare-fun e!774241 () Bool)

(assert (=> b!1365601 (=> (not res!909312) (not e!774241))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92744 0))(
  ( (array!92745 (arr!44796 (Array (_ BitVec 32) (_ BitVec 64))) (size!45347 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92744)

(assert (=> b!1365601 (= res!909312 (bvslt from!3239 (size!45347 a!3861)))))

(declare-fun b!1365602 () Bool)

(declare-fun res!909308 () Bool)

(declare-fun e!774243 () Bool)

(assert (=> b!1365602 (=> (not res!909308) (not e!774243))))

(declare-fun lt!601294 () List!32044)

(declare-fun contains!9582 (List!32044 (_ BitVec 64)) Bool)

(assert (=> b!1365602 (= res!909308 (not (contains!9582 lt!601294 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!909302 () Bool)

(assert (=> start!115500 (=> (not res!909302) (not e!774244))))

(assert (=> start!115500 (= res!909302 (and (bvslt (size!45347 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45347 a!3861))))))

(assert (=> start!115500 e!774244))

(declare-fun array_inv!33741 (array!92744) Bool)

(assert (=> start!115500 (array_inv!33741 a!3861)))

(assert (=> start!115500 true))

(declare-fun b!1365603 () Bool)

(declare-fun res!909306 () Bool)

(assert (=> b!1365603 (=> (not res!909306) (not e!774243))))

(assert (=> b!1365603 (= res!909306 (not (contains!9582 lt!601294 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365604 () Bool)

(declare-fun res!909296 () Bool)

(assert (=> b!1365604 (=> (not res!909296) (not e!774244))))

(assert (=> b!1365604 (= res!909296 (not (contains!9582 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365605 () Bool)

(declare-fun res!909310 () Bool)

(assert (=> b!1365605 (=> (not res!909310) (not e!774244))))

(assert (=> b!1365605 (= res!909310 (not (contains!9582 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365606 () Bool)

(assert (=> b!1365606 (= e!774243 false)))

(declare-fun lt!601295 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92744 (_ BitVec 32) List!32044) Bool)

(assert (=> b!1365606 (= lt!601295 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601294))))

(declare-datatypes ((Unit!45027 0))(
  ( (Unit!45028) )
))
(declare-fun lt!601291 () Unit!45027)

(declare-fun lt!601293 () List!32044)

(declare-fun noDuplicateSubseq!160 (List!32044 List!32044) Unit!45027)

(assert (=> b!1365606 (= lt!601291 (noDuplicateSubseq!160 lt!601293 lt!601294))))

(declare-fun b!1365607 () Bool)

(assert (=> b!1365607 (= e!774244 e!774241)))

(declare-fun res!909311 () Bool)

(assert (=> b!1365607 (=> (not res!909311) (not e!774241))))

(assert (=> b!1365607 (= res!909311 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601292 () Unit!45027)

(declare-fun newAcc!98 () List!32044)

(assert (=> b!1365607 (= lt!601292 (noDuplicateSubseq!160 newAcc!98 acc!866))))

(declare-fun b!1365608 () Bool)

(declare-fun res!909301 () Bool)

(assert (=> b!1365608 (=> (not res!909301) (not e!774241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365608 (= res!909301 (validKeyInArray!0 (select (arr!44796 a!3861) from!3239)))))

(declare-fun b!1365609 () Bool)

(declare-fun res!909298 () Bool)

(assert (=> b!1365609 (=> (not res!909298) (not e!774244))))

(assert (=> b!1365609 (= res!909298 (not (contains!9582 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365610 () Bool)

(assert (=> b!1365610 (= e!774241 e!774243)))

(declare-fun res!909304 () Bool)

(assert (=> b!1365610 (=> (not res!909304) (not e!774243))))

(assert (=> b!1365610 (= res!909304 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365610 (= lt!601293 (Cons!32040 (select (arr!44796 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365610 (= lt!601294 (Cons!32040 (select (arr!44796 a!3861) from!3239) acc!866))))

(declare-fun b!1365611 () Bool)

(declare-fun res!909297 () Bool)

(assert (=> b!1365611 (=> (not res!909297) (not e!774241))))

(assert (=> b!1365611 (= res!909297 (not (contains!9582 acc!866 (select (arr!44796 a!3861) from!3239))))))

(declare-fun b!1365612 () Bool)

(declare-fun res!909295 () Bool)

(assert (=> b!1365612 (=> (not res!909295) (not e!774243))))

(declare-fun subseq!973 (List!32044 List!32044) Bool)

(assert (=> b!1365612 (= res!909295 (subseq!973 lt!601293 lt!601294))))

(declare-fun b!1365613 () Bool)

(declare-fun res!909305 () Bool)

(assert (=> b!1365613 (=> (not res!909305) (not e!774244))))

(assert (=> b!1365613 (= res!909305 (subseq!973 newAcc!98 acc!866))))

(declare-fun b!1365614 () Bool)

(declare-fun res!909309 () Bool)

(assert (=> b!1365614 (=> (not res!909309) (not e!774243))))

(assert (=> b!1365614 (= res!909309 (not (contains!9582 lt!601293 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365615 () Bool)

(declare-fun res!909307 () Bool)

(assert (=> b!1365615 (=> (not res!909307) (not e!774244))))

(assert (=> b!1365615 (= res!909307 (not (contains!9582 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365616 () Bool)

(declare-fun res!909299 () Bool)

(assert (=> b!1365616 (=> (not res!909299) (not e!774243))))

(assert (=> b!1365616 (= res!909299 (not (contains!9582 lt!601293 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365617 () Bool)

(declare-fun res!909303 () Bool)

(assert (=> b!1365617 (=> (not res!909303) (not e!774243))))

(assert (=> b!1365617 (= res!909303 (noDuplicate!2461 lt!601294))))

(assert (= (and start!115500 res!909302) b!1365600))

(assert (= (and b!1365600 res!909300) b!1365605))

(assert (= (and b!1365605 res!909310) b!1365604))

(assert (= (and b!1365604 res!909296) b!1365615))

(assert (= (and b!1365615 res!909307) b!1365609))

(assert (= (and b!1365609 res!909298) b!1365613))

(assert (= (and b!1365613 res!909305) b!1365607))

(assert (= (and b!1365607 res!909311) b!1365601))

(assert (= (and b!1365601 res!909312) b!1365608))

(assert (= (and b!1365608 res!909301) b!1365611))

(assert (= (and b!1365611 res!909297) b!1365610))

(assert (= (and b!1365610 res!909304) b!1365617))

(assert (= (and b!1365617 res!909303) b!1365602))

(assert (= (and b!1365602 res!909308) b!1365603))

(assert (= (and b!1365603 res!909306) b!1365614))

(assert (= (and b!1365614 res!909309) b!1365616))

(assert (= (and b!1365616 res!909299) b!1365612))

(assert (= (and b!1365612 res!909295) b!1365606))

(declare-fun m!1250121 () Bool)

(assert (=> b!1365610 m!1250121))

(assert (=> b!1365611 m!1250121))

(assert (=> b!1365611 m!1250121))

(declare-fun m!1250123 () Bool)

(assert (=> b!1365611 m!1250123))

(declare-fun m!1250125 () Bool)

(assert (=> b!1365600 m!1250125))

(declare-fun m!1250127 () Bool)

(assert (=> b!1365604 m!1250127))

(declare-fun m!1250129 () Bool)

(assert (=> start!115500 m!1250129))

(declare-fun m!1250131 () Bool)

(assert (=> b!1365615 m!1250131))

(assert (=> b!1365608 m!1250121))

(assert (=> b!1365608 m!1250121))

(declare-fun m!1250133 () Bool)

(assert (=> b!1365608 m!1250133))

(declare-fun m!1250135 () Bool)

(assert (=> b!1365612 m!1250135))

(declare-fun m!1250137 () Bool)

(assert (=> b!1365613 m!1250137))

(declare-fun m!1250139 () Bool)

(assert (=> b!1365607 m!1250139))

(declare-fun m!1250141 () Bool)

(assert (=> b!1365607 m!1250141))

(declare-fun m!1250143 () Bool)

(assert (=> b!1365609 m!1250143))

(declare-fun m!1250145 () Bool)

(assert (=> b!1365616 m!1250145))

(declare-fun m!1250147 () Bool)

(assert (=> b!1365617 m!1250147))

(declare-fun m!1250149 () Bool)

(assert (=> b!1365603 m!1250149))

(declare-fun m!1250151 () Bool)

(assert (=> b!1365602 m!1250151))

(declare-fun m!1250153 () Bool)

(assert (=> b!1365614 m!1250153))

(declare-fun m!1250155 () Bool)

(assert (=> b!1365605 m!1250155))

(declare-fun m!1250157 () Bool)

(assert (=> b!1365606 m!1250157))

(declare-fun m!1250159 () Bool)

(assert (=> b!1365606 m!1250159))

(push 1)

