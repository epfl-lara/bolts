; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115736 () Bool)

(assert start!115736)

(declare-fun b!1367980 () Bool)

(declare-fun res!911615 () Bool)

(declare-fun e!775208 () Bool)

(assert (=> b!1367980 (=> (not res!911615) (not e!775208))))

(declare-datatypes ((List!32093 0))(
  ( (Nil!32090) (Cons!32089 (h!33298 (_ BitVec 64)) (t!46794 List!32093)) )
))
(declare-fun acc!866 () List!32093)

(declare-fun contains!9631 (List!32093 (_ BitVec 64)) Bool)

(assert (=> b!1367980 (= res!911615 (not (contains!9631 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367981 () Bool)

(declare-fun res!911616 () Bool)

(assert (=> b!1367981 (=> (not res!911616) (not e!775208))))

(assert (=> b!1367981 (= res!911616 (not (contains!9631 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367982 () Bool)

(declare-fun res!911618 () Bool)

(assert (=> b!1367982 (=> (not res!911618) (not e!775208))))

(declare-fun noDuplicate!2510 (List!32093) Bool)

(assert (=> b!1367982 (= res!911618 (noDuplicate!2510 acc!866))))

(declare-fun b!1367983 () Bool)

(declare-fun res!911617 () Bool)

(assert (=> b!1367983 (=> (not res!911617) (not e!775208))))

(declare-fun newAcc!98 () List!32093)

(assert (=> b!1367983 (= res!911617 (not (contains!9631 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367984 () Bool)

(declare-fun res!911609 () Bool)

(declare-fun e!775209 () Bool)

(assert (=> b!1367984 (=> (not res!911609) (not e!775209))))

(declare-datatypes ((array!92851 0))(
  ( (array!92852 (arr!44845 (Array (_ BitVec 32) (_ BitVec 64))) (size!45396 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92851)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367984 (= res!911609 (not (validKeyInArray!0 (select (arr!44845 a!3861) from!3239))))))

(declare-fun b!1367985 () Bool)

(declare-fun res!911611 () Bool)

(assert (=> b!1367985 (=> (not res!911611) (not e!775209))))

(assert (=> b!1367985 (= res!911611 (bvslt from!3239 (size!45396 a!3861)))))

(declare-fun res!911614 () Bool)

(assert (=> start!115736 (=> (not res!911614) (not e!775208))))

(assert (=> start!115736 (= res!911614 (and (bvslt (size!45396 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45396 a!3861))))))

(assert (=> start!115736 e!775208))

(declare-fun array_inv!33790 (array!92851) Bool)

(assert (=> start!115736 (array_inv!33790 a!3861)))

(assert (=> start!115736 true))

(declare-fun b!1367986 () Bool)

(declare-fun res!911619 () Bool)

(assert (=> b!1367986 (=> (not res!911619) (not e!775208))))

(declare-fun subseq!1022 (List!32093 List!32093) Bool)

(assert (=> b!1367986 (= res!911619 (subseq!1022 newAcc!98 acc!866))))

(declare-fun b!1367987 () Bool)

(declare-fun res!911610 () Bool)

(assert (=> b!1367987 (=> (not res!911610) (not e!775209))))

(assert (=> b!1367987 (= res!911610 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367988 () Bool)

(assert (=> b!1367988 (= e!775209 false)))

(declare-fun lt!601933 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92851 (_ BitVec 32) List!32093) Bool)

(assert (=> b!1367988 (= lt!601933 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367989 () Bool)

(declare-fun res!911613 () Bool)

(assert (=> b!1367989 (=> (not res!911613) (not e!775208))))

(assert (=> b!1367989 (= res!911613 (not (contains!9631 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367990 () Bool)

(assert (=> b!1367990 (= e!775208 e!775209)))

(declare-fun res!911612 () Bool)

(assert (=> b!1367990 (=> (not res!911612) (not e!775209))))

(assert (=> b!1367990 (= res!911612 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45125 0))(
  ( (Unit!45126) )
))
(declare-fun lt!601934 () Unit!45125)

(declare-fun noDuplicateSubseq!209 (List!32093 List!32093) Unit!45125)

(assert (=> b!1367990 (= lt!601934 (noDuplicateSubseq!209 newAcc!98 acc!866))))

(assert (= (and start!115736 res!911614) b!1367982))

(assert (= (and b!1367982 res!911618) b!1367981))

(assert (= (and b!1367981 res!911616) b!1367980))

(assert (= (and b!1367980 res!911615) b!1367983))

(assert (= (and b!1367983 res!911617) b!1367989))

(assert (= (and b!1367989 res!911613) b!1367986))

(assert (= (and b!1367986 res!911619) b!1367990))

(assert (= (and b!1367990 res!911612) b!1367985))

(assert (= (and b!1367985 res!911611) b!1367984))

(assert (= (and b!1367984 res!911609) b!1367987))

(assert (= (and b!1367987 res!911610) b!1367988))

(declare-fun m!1252087 () Bool)

(assert (=> start!115736 m!1252087))

(declare-fun m!1252089 () Bool)

(assert (=> b!1367986 m!1252089))

(declare-fun m!1252091 () Bool)

(assert (=> b!1367984 m!1252091))

(assert (=> b!1367984 m!1252091))

(declare-fun m!1252093 () Bool)

(assert (=> b!1367984 m!1252093))

(declare-fun m!1252095 () Bool)

(assert (=> b!1367988 m!1252095))

(declare-fun m!1252097 () Bool)

(assert (=> b!1367983 m!1252097))

(declare-fun m!1252099 () Bool)

(assert (=> b!1367982 m!1252099))

(declare-fun m!1252101 () Bool)

(assert (=> b!1367980 m!1252101))

(declare-fun m!1252103 () Bool)

(assert (=> b!1367990 m!1252103))

(declare-fun m!1252105 () Bool)

(assert (=> b!1367990 m!1252105))

(declare-fun m!1252107 () Bool)

(assert (=> b!1367981 m!1252107))

(declare-fun m!1252109 () Bool)

(assert (=> b!1367989 m!1252109))

(push 1)

