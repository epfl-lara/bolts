; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115892 () Bool)

(assert start!115892)

(declare-fun b!1369440 () Bool)

(declare-fun res!913029 () Bool)

(declare-fun e!775821 () Bool)

(assert (=> b!1369440 (=> (not res!913029) (not e!775821))))

(declare-datatypes ((List!32129 0))(
  ( (Nil!32126) (Cons!32125 (h!33334 (_ BitVec 64)) (t!46830 List!32129)) )
))
(declare-fun newAcc!98 () List!32129)

(declare-fun acc!866 () List!32129)

(declare-fun subseq!1058 (List!32129 List!32129) Bool)

(assert (=> b!1369440 (= res!913029 (subseq!1058 newAcc!98 acc!866))))

(declare-fun res!913023 () Bool)

(assert (=> start!115892 (=> (not res!913023) (not e!775821))))

(declare-datatypes ((array!92929 0))(
  ( (array!92930 (arr!44881 (Array (_ BitVec 32) (_ BitVec 64))) (size!45432 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92929)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115892 (= res!913023 (and (bvslt (size!45432 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45432 a!3861))))))

(assert (=> start!115892 e!775821))

(declare-fun array_inv!33826 (array!92929) Bool)

(assert (=> start!115892 (array_inv!33826 a!3861)))

(assert (=> start!115892 true))

(declare-fun b!1369441 () Bool)

(declare-fun e!775822 () Bool)

(assert (=> b!1369441 (= e!775822 false)))

(declare-fun lt!602212 () Bool)

(declare-fun noDuplicate!2546 (List!32129) Bool)

(assert (=> b!1369441 (= lt!602212 (noDuplicate!2546 newAcc!98))))

(declare-fun b!1369442 () Bool)

(assert (=> b!1369442 (= e!775821 e!775822)))

(declare-fun res!913026 () Bool)

(assert (=> b!1369442 (=> (not res!913026) (not e!775822))))

(declare-fun arrayNoDuplicates!0 (array!92929 (_ BitVec 32) List!32129) Bool)

(assert (=> b!1369442 (= res!913026 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45197 0))(
  ( (Unit!45198) )
))
(declare-fun lt!602213 () Unit!45197)

(declare-fun noDuplicateSubseq!245 (List!32129 List!32129) Unit!45197)

(assert (=> b!1369442 (= lt!602213 (noDuplicateSubseq!245 newAcc!98 acc!866))))

(declare-fun b!1369443 () Bool)

(declare-fun res!913025 () Bool)

(assert (=> b!1369443 (=> (not res!913025) (not e!775821))))

(declare-fun contains!9667 (List!32129 (_ BitVec 64)) Bool)

(assert (=> b!1369443 (= res!913025 (not (contains!9667 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369444 () Bool)

(declare-fun res!913027 () Bool)

(assert (=> b!1369444 (=> (not res!913027) (not e!775821))))

(assert (=> b!1369444 (= res!913027 (noDuplicate!2546 acc!866))))

(declare-fun b!1369445 () Bool)

(declare-fun res!913021 () Bool)

(assert (=> b!1369445 (=> (not res!913021) (not e!775821))))

(assert (=> b!1369445 (= res!913021 (not (contains!9667 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369446 () Bool)

(declare-fun res!913024 () Bool)

(assert (=> b!1369446 (=> (not res!913024) (not e!775821))))

(assert (=> b!1369446 (= res!913024 (not (contains!9667 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369447 () Bool)

(declare-fun res!913022 () Bool)

(assert (=> b!1369447 (=> (not res!913022) (not e!775821))))

(assert (=> b!1369447 (= res!913022 (not (contains!9667 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369448 () Bool)

(declare-fun res!913028 () Bool)

(assert (=> b!1369448 (=> (not res!913028) (not e!775822))))

(assert (=> b!1369448 (= res!913028 (bvsge from!3239 (size!45432 a!3861)))))

(assert (= (and start!115892 res!913023) b!1369444))

(assert (= (and b!1369444 res!913027) b!1369443))

(assert (= (and b!1369443 res!913025) b!1369445))

(assert (= (and b!1369445 res!913021) b!1369447))

(assert (= (and b!1369447 res!913022) b!1369446))

(assert (= (and b!1369446 res!913024) b!1369440))

(assert (= (and b!1369440 res!913029) b!1369442))

(assert (= (and b!1369442 res!913026) b!1369448))

(assert (= (and b!1369448 res!913028) b!1369441))

(declare-fun m!1253245 () Bool)

(assert (=> start!115892 m!1253245))

(declare-fun m!1253247 () Bool)

(assert (=> b!1369446 m!1253247))

(declare-fun m!1253249 () Bool)

(assert (=> b!1369440 m!1253249))

(declare-fun m!1253251 () Bool)

(assert (=> b!1369443 m!1253251))

(declare-fun m!1253253 () Bool)

(assert (=> b!1369447 m!1253253))

(declare-fun m!1253255 () Bool)

(assert (=> b!1369445 m!1253255))

(declare-fun m!1253257 () Bool)

(assert (=> b!1369442 m!1253257))

(declare-fun m!1253259 () Bool)

(assert (=> b!1369442 m!1253259))

(declare-fun m!1253261 () Bool)

(assert (=> b!1369444 m!1253261))

(declare-fun m!1253263 () Bool)

(assert (=> b!1369441 m!1253263))

(push 1)

