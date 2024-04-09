; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116322 () Bool)

(assert start!116322)

(declare-fun b!1372736 () Bool)

(declare-fun res!916131 () Bool)

(declare-fun e!777679 () Bool)

(assert (=> b!1372736 (=> (not res!916131) (not e!777679))))

(declare-datatypes ((List!32185 0))(
  ( (Nil!32182) (Cons!32181 (h!33390 (_ BitVec 64)) (t!46886 List!32185)) )
))
(declare-fun newAcc!98 () List!32185)

(declare-fun acc!866 () List!32185)

(declare-fun subseq!1114 (List!32185 List!32185) Bool)

(assert (=> b!1372736 (= res!916131 (subseq!1114 newAcc!98 acc!866))))

(declare-fun b!1372737 () Bool)

(declare-fun res!916125 () Bool)

(assert (=> b!1372737 (=> (not res!916125) (not e!777679))))

(declare-fun contains!9723 (List!32185 (_ BitVec 64)) Bool)

(assert (=> b!1372737 (= res!916125 (not (contains!9723 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372738 () Bool)

(assert (=> b!1372738 (= e!777679 false)))

(declare-datatypes ((array!93062 0))(
  ( (array!93063 (arr!44937 (Array (_ BitVec 32) (_ BitVec 64))) (size!45488 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93062)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602885 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93062 (_ BitVec 32) List!32185) Bool)

(assert (=> b!1372738 (= lt!602885 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45309 0))(
  ( (Unit!45310) )
))
(declare-fun lt!602884 () Unit!45309)

(declare-fun noDuplicateSubseq!301 (List!32185 List!32185) Unit!45309)

(assert (=> b!1372738 (= lt!602884 (noDuplicateSubseq!301 newAcc!98 acc!866))))

(declare-fun b!1372739 () Bool)

(declare-fun res!916127 () Bool)

(assert (=> b!1372739 (=> (not res!916127) (not e!777679))))

(assert (=> b!1372739 (= res!916127 (not (contains!9723 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372740 () Bool)

(declare-fun res!916129 () Bool)

(assert (=> b!1372740 (=> (not res!916129) (not e!777679))))

(assert (=> b!1372740 (= res!916129 (not (contains!9723 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916128 () Bool)

(assert (=> start!116322 (=> (not res!916128) (not e!777679))))

(assert (=> start!116322 (= res!916128 (and (bvslt (size!45488 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45488 a!3861))))))

(assert (=> start!116322 e!777679))

(declare-fun array_inv!33882 (array!93062) Bool)

(assert (=> start!116322 (array_inv!33882 a!3861)))

(assert (=> start!116322 true))

(declare-fun b!1372741 () Bool)

(declare-fun res!916126 () Bool)

(assert (=> b!1372741 (=> (not res!916126) (not e!777679))))

(declare-fun noDuplicate!2602 (List!32185) Bool)

(assert (=> b!1372741 (= res!916126 (noDuplicate!2602 acc!866))))

(declare-fun b!1372742 () Bool)

(declare-fun res!916130 () Bool)

(assert (=> b!1372742 (=> (not res!916130) (not e!777679))))

(assert (=> b!1372742 (= res!916130 (not (contains!9723 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116322 res!916128) b!1372741))

(assert (= (and b!1372741 res!916126) b!1372742))

(assert (= (and b!1372742 res!916130) b!1372739))

(assert (= (and b!1372739 res!916127) b!1372740))

(assert (= (and b!1372740 res!916129) b!1372737))

(assert (= (and b!1372737 res!916125) b!1372736))

(assert (= (and b!1372736 res!916131) b!1372738))

(declare-fun m!1256155 () Bool)

(assert (=> b!1372738 m!1256155))

(declare-fun m!1256157 () Bool)

(assert (=> b!1372738 m!1256157))

(declare-fun m!1256159 () Bool)

(assert (=> b!1372741 m!1256159))

(declare-fun m!1256161 () Bool)

(assert (=> b!1372737 m!1256161))

(declare-fun m!1256163 () Bool)

(assert (=> b!1372742 m!1256163))

(declare-fun m!1256165 () Bool)

(assert (=> b!1372740 m!1256165))

(declare-fun m!1256167 () Bool)

(assert (=> b!1372739 m!1256167))

(declare-fun m!1256169 () Bool)

(assert (=> b!1372736 m!1256169))

(declare-fun m!1256171 () Bool)

(assert (=> start!116322 m!1256171))

(push 1)

(assert (not b!1372739))

(assert (not b!1372736))

(assert (not b!1372741))

(assert (not b!1372738))

(assert (not start!116322))

(assert (not b!1372742))

(assert (not b!1372737))

(assert (not b!1372740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

