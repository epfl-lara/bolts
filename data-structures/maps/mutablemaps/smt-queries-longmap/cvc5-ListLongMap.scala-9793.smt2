; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116318 () Bool)

(assert start!116318)

(declare-fun b!1372694 () Bool)

(declare-fun res!916088 () Bool)

(declare-fun e!777666 () Bool)

(assert (=> b!1372694 (=> (not res!916088) (not e!777666))))

(declare-datatypes ((List!32183 0))(
  ( (Nil!32180) (Cons!32179 (h!33388 (_ BitVec 64)) (t!46884 List!32183)) )
))
(declare-fun acc!866 () List!32183)

(declare-fun contains!9721 (List!32183 (_ BitVec 64)) Bool)

(assert (=> b!1372694 (= res!916088 (not (contains!9721 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916085 () Bool)

(assert (=> start!116318 (=> (not res!916085) (not e!777666))))

(declare-datatypes ((array!93058 0))(
  ( (array!93059 (arr!44935 (Array (_ BitVec 32) (_ BitVec 64))) (size!45486 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93058)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116318 (= res!916085 (and (bvslt (size!45486 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45486 a!3861))))))

(assert (=> start!116318 e!777666))

(declare-fun array_inv!33880 (array!93058) Bool)

(assert (=> start!116318 (array_inv!33880 a!3861)))

(assert (=> start!116318 true))

(declare-fun b!1372695 () Bool)

(declare-fun res!916083 () Bool)

(assert (=> b!1372695 (=> (not res!916083) (not e!777666))))

(declare-fun newAcc!98 () List!32183)

(assert (=> b!1372695 (= res!916083 (not (contains!9721 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372696 () Bool)

(declare-fun res!916089 () Bool)

(assert (=> b!1372696 (=> (not res!916089) (not e!777666))))

(assert (=> b!1372696 (= res!916089 (not (contains!9721 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372697 () Bool)

(declare-fun res!916086 () Bool)

(assert (=> b!1372697 (=> (not res!916086) (not e!777666))))

(declare-fun noDuplicate!2600 (List!32183) Bool)

(assert (=> b!1372697 (= res!916086 (noDuplicate!2600 acc!866))))

(declare-fun b!1372698 () Bool)

(assert (=> b!1372698 (= e!777666 false)))

(declare-fun lt!602872 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93058 (_ BitVec 32) List!32183) Bool)

(assert (=> b!1372698 (= lt!602872 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45305 0))(
  ( (Unit!45306) )
))
(declare-fun lt!602873 () Unit!45305)

(declare-fun noDuplicateSubseq!299 (List!32183 List!32183) Unit!45305)

(assert (=> b!1372698 (= lt!602873 (noDuplicateSubseq!299 newAcc!98 acc!866))))

(declare-fun b!1372699 () Bool)

(declare-fun res!916087 () Bool)

(assert (=> b!1372699 (=> (not res!916087) (not e!777666))))

(assert (=> b!1372699 (= res!916087 (not (contains!9721 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372700 () Bool)

(declare-fun res!916084 () Bool)

(assert (=> b!1372700 (=> (not res!916084) (not e!777666))))

(declare-fun subseq!1112 (List!32183 List!32183) Bool)

(assert (=> b!1372700 (= res!916084 (subseq!1112 newAcc!98 acc!866))))

(assert (= (and start!116318 res!916085) b!1372697))

(assert (= (and b!1372697 res!916086) b!1372694))

(assert (= (and b!1372694 res!916088) b!1372696))

(assert (= (and b!1372696 res!916089) b!1372699))

(assert (= (and b!1372699 res!916087) b!1372695))

(assert (= (and b!1372695 res!916083) b!1372700))

(assert (= (and b!1372700 res!916084) b!1372698))

(declare-fun m!1256119 () Bool)

(assert (=> b!1372694 m!1256119))

(declare-fun m!1256121 () Bool)

(assert (=> b!1372695 m!1256121))

(declare-fun m!1256123 () Bool)

(assert (=> b!1372699 m!1256123))

(declare-fun m!1256125 () Bool)

(assert (=> b!1372697 m!1256125))

(declare-fun m!1256127 () Bool)

(assert (=> start!116318 m!1256127))

(declare-fun m!1256129 () Bool)

(assert (=> b!1372696 m!1256129))

(declare-fun m!1256131 () Bool)

(assert (=> b!1372698 m!1256131))

(declare-fun m!1256133 () Bool)

(assert (=> b!1372698 m!1256133))

(declare-fun m!1256135 () Bool)

(assert (=> b!1372700 m!1256135))

(push 1)

(assert (not start!116318))

(assert (not b!1372696))

(assert (not b!1372699))

(assert (not b!1372697))

(assert (not b!1372694))

(assert (not b!1372700))

(assert (not b!1372695))

(assert (not b!1372698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

