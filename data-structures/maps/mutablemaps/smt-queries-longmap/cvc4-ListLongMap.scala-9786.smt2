; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116172 () Bool)

(assert start!116172)

(declare-fun b!1371659 () Bool)

(declare-fun res!915145 () Bool)

(declare-fun e!777049 () Bool)

(assert (=> b!1371659 (=> (not res!915145) (not e!777049))))

(declare-datatypes ((List!32164 0))(
  ( (Nil!32161) (Cons!32160 (h!33369 (_ BitVec 64)) (t!46865 List!32164)) )
))
(declare-fun lt!602653 () List!32164)

(declare-fun contains!9702 (List!32164 (_ BitVec 64)) Bool)

(assert (=> b!1371659 (= res!915145 (not (contains!9702 lt!602653 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371661 () Bool)

(declare-fun res!915158 () Bool)

(declare-fun e!777045 () Bool)

(assert (=> b!1371661 (=> (not res!915158) (not e!777045))))

(declare-fun newAcc!98 () List!32164)

(assert (=> b!1371661 (= res!915158 (not (contains!9702 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371662 () Bool)

(declare-fun res!915155 () Bool)

(assert (=> b!1371662 (=> (not res!915155) (not e!777049))))

(declare-fun lt!602654 () List!32164)

(assert (=> b!1371662 (= res!915155 (not (contains!9702 lt!602654 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371663 () Bool)

(declare-fun res!915147 () Bool)

(declare-fun e!777046 () Bool)

(assert (=> b!1371663 (=> (not res!915147) (not e!777046))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93014 0))(
  ( (array!93015 (arr!44916 (Array (_ BitVec 32) (_ BitVec 64))) (size!45467 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93014)

(assert (=> b!1371663 (= res!915147 (bvslt from!3239 (size!45467 a!3861)))))

(declare-fun b!1371664 () Bool)

(declare-fun res!915161 () Bool)

(assert (=> b!1371664 (=> (not res!915161) (not e!777045))))

(declare-fun acc!866 () List!32164)

(assert (=> b!1371664 (= res!915161 (not (contains!9702 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371665 () Bool)

(declare-fun res!915159 () Bool)

(assert (=> b!1371665 (=> (not res!915159) (not e!777049))))

(declare-fun subseq!1093 (List!32164 List!32164) Bool)

(assert (=> b!1371665 (= res!915159 (subseq!1093 lt!602653 lt!602654))))

(declare-fun b!1371666 () Bool)

(declare-fun res!915144 () Bool)

(assert (=> b!1371666 (=> (not res!915144) (not e!777045))))

(assert (=> b!1371666 (= res!915144 (subseq!1093 newAcc!98 acc!866))))

(declare-fun b!1371667 () Bool)

(declare-fun res!915156 () Bool)

(assert (=> b!1371667 (=> (not res!915156) (not e!777046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1371667 (= res!915156 (validKeyInArray!0 (select (arr!44916 a!3861) from!3239)))))

(declare-fun b!1371668 () Bool)

(declare-fun e!777048 () Bool)

(assert (=> b!1371668 (= e!777049 e!777048)))

(declare-fun res!915149 () Bool)

(assert (=> b!1371668 (=> (not res!915149) (not e!777048))))

(declare-fun arrayNoDuplicates!0 (array!93014 (_ BitVec 32) List!32164) Bool)

(assert (=> b!1371668 (= res!915149 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602654))))

(declare-datatypes ((Unit!45267 0))(
  ( (Unit!45268) )
))
(declare-fun lt!602652 () Unit!45267)

(declare-fun noDuplicateSubseq!280 (List!32164 List!32164) Unit!45267)

(assert (=> b!1371668 (= lt!602652 (noDuplicateSubseq!280 lt!602653 lt!602654))))

(declare-fun b!1371669 () Bool)

(declare-fun res!915152 () Bool)

(assert (=> b!1371669 (=> (not res!915152) (not e!777045))))

(declare-fun noDuplicate!2581 (List!32164) Bool)

(assert (=> b!1371669 (= res!915152 (noDuplicate!2581 acc!866))))

(declare-fun b!1371670 () Bool)

(declare-fun res!915148 () Bool)

(assert (=> b!1371670 (=> (not res!915148) (not e!777045))))

(assert (=> b!1371670 (= res!915148 (not (contains!9702 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371660 () Bool)

(declare-fun res!915146 () Bool)

(assert (=> b!1371660 (=> (not res!915146) (not e!777049))))

(assert (=> b!1371660 (= res!915146 (not (contains!9702 lt!602654 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915157 () Bool)

(assert (=> start!116172 (=> (not res!915157) (not e!777045))))

(assert (=> start!116172 (= res!915157 (and (bvslt (size!45467 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45467 a!3861))))))

(assert (=> start!116172 e!777045))

(declare-fun array_inv!33861 (array!93014) Bool)

(assert (=> start!116172 (array_inv!33861 a!3861)))

(assert (=> start!116172 true))

(declare-fun b!1371671 () Bool)

(declare-fun res!915154 () Bool)

(assert (=> b!1371671 (=> (not res!915154) (not e!777049))))

(assert (=> b!1371671 (= res!915154 (noDuplicate!2581 lt!602654))))

(declare-fun b!1371672 () Bool)

(declare-fun res!915150 () Bool)

(assert (=> b!1371672 (=> (not res!915150) (not e!777045))))

(assert (=> b!1371672 (= res!915150 (not (contains!9702 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371673 () Bool)

(declare-fun res!915151 () Bool)

(assert (=> b!1371673 (=> (not res!915151) (not e!777046))))

(assert (=> b!1371673 (= res!915151 (not (contains!9702 acc!866 (select (arr!44916 a!3861) from!3239))))))

(declare-fun b!1371674 () Bool)

(assert (=> b!1371674 (= e!777048 (bvsge (bvsub (size!45467 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) (bvsub (size!45467 a!3861) from!3239)))))

(declare-fun b!1371675 () Bool)

(assert (=> b!1371675 (= e!777046 e!777049)))

(declare-fun res!915160 () Bool)

(assert (=> b!1371675 (=> (not res!915160) (not e!777049))))

(assert (=> b!1371675 (= res!915160 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1371675 (= lt!602653 (Cons!32160 (select (arr!44916 a!3861) from!3239) newAcc!98))))

(assert (=> b!1371675 (= lt!602654 (Cons!32160 (select (arr!44916 a!3861) from!3239) acc!866))))

(declare-fun b!1371676 () Bool)

(assert (=> b!1371676 (= e!777045 e!777046)))

(declare-fun res!915162 () Bool)

(assert (=> b!1371676 (=> (not res!915162) (not e!777046))))

(assert (=> b!1371676 (= res!915162 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602651 () Unit!45267)

(assert (=> b!1371676 (= lt!602651 (noDuplicateSubseq!280 newAcc!98 acc!866))))

(declare-fun b!1371677 () Bool)

(declare-fun res!915153 () Bool)

(assert (=> b!1371677 (=> (not res!915153) (not e!777049))))

(assert (=> b!1371677 (= res!915153 (not (contains!9702 lt!602653 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116172 res!915157) b!1371669))

(assert (= (and b!1371669 res!915152) b!1371670))

(assert (= (and b!1371670 res!915148) b!1371664))

(assert (= (and b!1371664 res!915161) b!1371661))

(assert (= (and b!1371661 res!915158) b!1371672))

(assert (= (and b!1371672 res!915150) b!1371666))

(assert (= (and b!1371666 res!915144) b!1371676))

(assert (= (and b!1371676 res!915162) b!1371663))

(assert (= (and b!1371663 res!915147) b!1371667))

(assert (= (and b!1371667 res!915156) b!1371673))

(assert (= (and b!1371673 res!915151) b!1371675))

(assert (= (and b!1371675 res!915160) b!1371671))

(assert (= (and b!1371671 res!915154) b!1371662))

(assert (= (and b!1371662 res!915155) b!1371660))

(assert (= (and b!1371660 res!915146) b!1371677))

(assert (= (and b!1371677 res!915153) b!1371659))

(assert (= (and b!1371659 res!915145) b!1371665))

(assert (= (and b!1371665 res!915159) b!1371668))

(assert (= (and b!1371668 res!915149) b!1371674))

(declare-fun m!1255107 () Bool)

(assert (=> b!1371664 m!1255107))

(declare-fun m!1255109 () Bool)

(assert (=> b!1371677 m!1255109))

(declare-fun m!1255111 () Bool)

(assert (=> b!1371661 m!1255111))

(declare-fun m!1255113 () Bool)

(assert (=> b!1371666 m!1255113))

(declare-fun m!1255115 () Bool)

(assert (=> b!1371670 m!1255115))

(declare-fun m!1255117 () Bool)

(assert (=> b!1371665 m!1255117))

(declare-fun m!1255119 () Bool)

(assert (=> b!1371662 m!1255119))

(declare-fun m!1255121 () Bool)

(assert (=> b!1371671 m!1255121))

(declare-fun m!1255123 () Bool)

(assert (=> b!1371673 m!1255123))

(assert (=> b!1371673 m!1255123))

(declare-fun m!1255125 () Bool)

(assert (=> b!1371673 m!1255125))

(assert (=> b!1371667 m!1255123))

(assert (=> b!1371667 m!1255123))

(declare-fun m!1255127 () Bool)

(assert (=> b!1371667 m!1255127))

(declare-fun m!1255129 () Bool)

(assert (=> b!1371672 m!1255129))

(assert (=> b!1371675 m!1255123))

(declare-fun m!1255131 () Bool)

(assert (=> b!1371659 m!1255131))

(declare-fun m!1255133 () Bool)

(assert (=> b!1371668 m!1255133))

(declare-fun m!1255135 () Bool)

(assert (=> b!1371668 m!1255135))

(declare-fun m!1255137 () Bool)

(assert (=> b!1371669 m!1255137))

(declare-fun m!1255139 () Bool)

(assert (=> b!1371660 m!1255139))

(declare-fun m!1255141 () Bool)

(assert (=> start!116172 m!1255141))

(declare-fun m!1255143 () Bool)

(assert (=> b!1371676 m!1255143))

(declare-fun m!1255145 () Bool)

(assert (=> b!1371676 m!1255145))

(push 1)

(assert (not b!1371673))

(assert (not b!1371661))

(assert (not b!1371668))

(assert (not b!1371664))

(assert (not b!1371660))

(assert (not b!1371677))

(assert (not b!1371670))

(assert (not b!1371662))

(assert (not b!1371671))

(assert (not b!1371672))

(assert (not b!1371665))

(assert (not b!1371676))

(assert (not b!1371669))

(assert (not b!1371667))

(assert (not b!1371666))

(assert (not start!116172))

(assert (not b!1371659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

