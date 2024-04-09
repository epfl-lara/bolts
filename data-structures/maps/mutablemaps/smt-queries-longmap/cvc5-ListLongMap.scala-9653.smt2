; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114092 () Bool)

(assert start!114092)

(declare-fun b!1353797 () Bool)

(declare-fun res!899055 () Bool)

(declare-fun e!769243 () Bool)

(assert (=> b!1353797 (=> (not res!899055) (not e!769243))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92197 0))(
  ( (array!92198 (arr!44542 (Array (_ BitVec 32) (_ BitVec 64))) (size!45093 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92197)

(assert (=> b!1353797 (= res!899055 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45093 a!3742))))))

(declare-fun b!1353798 () Bool)

(declare-fun res!899060 () Bool)

(declare-fun e!769240 () Bool)

(assert (=> b!1353798 (=> (not res!899060) (not e!769240))))

(declare-datatypes ((List!31763 0))(
  ( (Nil!31760) (Cons!31759 (h!32968 (_ BitVec 64)) (t!46428 List!31763)) )
))
(declare-fun lt!597986 () List!31763)

(declare-fun contains!9328 (List!31763 (_ BitVec 64)) Bool)

(assert (=> b!1353798 (= res!899060 (not (contains!9328 lt!597986 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353799 () Bool)

(assert (=> b!1353799 (= e!769240 false)))

(declare-fun lt!597985 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92197 (_ BitVec 32) List!31763) Bool)

(assert (=> b!1353799 (= lt!597985 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597986))))

(declare-fun b!1353800 () Bool)

(declare-fun res!899051 () Bool)

(assert (=> b!1353800 (=> (not res!899051) (not e!769240))))

(declare-fun noDuplicate!2207 (List!31763) Bool)

(assert (=> b!1353800 (= res!899051 (noDuplicate!2207 lt!597986))))

(declare-fun res!899054 () Bool)

(assert (=> start!114092 (=> (not res!899054) (not e!769243))))

(assert (=> start!114092 (= res!899054 (and (bvslt (size!45093 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45093 a!3742))))))

(assert (=> start!114092 e!769243))

(assert (=> start!114092 true))

(declare-fun array_inv!33487 (array!92197) Bool)

(assert (=> start!114092 (array_inv!33487 a!3742)))

(declare-fun b!1353801 () Bool)

(declare-fun e!769241 () Bool)

(assert (=> b!1353801 (= e!769243 e!769241)))

(declare-fun res!899057 () Bool)

(assert (=> b!1353801 (=> (not res!899057) (not e!769241))))

(declare-fun lt!597982 () Bool)

(assert (=> b!1353801 (= res!899057 (and (not (= from!3120 i!1404)) lt!597982))))

(declare-datatypes ((Unit!44390 0))(
  ( (Unit!44391) )
))
(declare-fun lt!597983 () Unit!44390)

(declare-fun e!769242 () Unit!44390)

(assert (=> b!1353801 (= lt!597983 e!769242)))

(declare-fun c!126817 () Bool)

(assert (=> b!1353801 (= c!126817 lt!597982)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353801 (= lt!597982 (validKeyInArray!0 (select (arr!44542 a!3742) from!3120)))))

(declare-fun b!1353802 () Bool)

(declare-fun res!899053 () Bool)

(assert (=> b!1353802 (=> (not res!899053) (not e!769243))))

(declare-fun acc!759 () List!31763)

(assert (=> b!1353802 (= res!899053 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353803 () Bool)

(declare-fun lt!597984 () Unit!44390)

(assert (=> b!1353803 (= e!769242 lt!597984)))

(declare-fun lt!597981 () Unit!44390)

(declare-fun lemmaListSubSeqRefl!0 (List!31763) Unit!44390)

(assert (=> b!1353803 (= lt!597981 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!737 (List!31763 List!31763) Bool)

(assert (=> b!1353803 (subseq!737 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92197 List!31763 List!31763 (_ BitVec 32)) Unit!44390)

(declare-fun $colon$colon!754 (List!31763 (_ BitVec 64)) List!31763)

(assert (=> b!1353803 (= lt!597984 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!754 acc!759 (select (arr!44542 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353803 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353804 () Bool)

(declare-fun res!899056 () Bool)

(assert (=> b!1353804 (=> (not res!899056) (not e!769243))))

(assert (=> b!1353804 (= res!899056 (noDuplicate!2207 acc!759))))

(declare-fun b!1353805 () Bool)

(declare-fun res!899058 () Bool)

(assert (=> b!1353805 (=> (not res!899058) (not e!769243))))

(assert (=> b!1353805 (= res!899058 (not (contains!9328 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353806 () Bool)

(declare-fun res!899059 () Bool)

(assert (=> b!1353806 (=> (not res!899059) (not e!769243))))

(assert (=> b!1353806 (= res!899059 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45093 a!3742)))))

(declare-fun b!1353807 () Bool)

(assert (=> b!1353807 (= e!769241 e!769240)))

(declare-fun res!899049 () Bool)

(assert (=> b!1353807 (=> (not res!899049) (not e!769240))))

(assert (=> b!1353807 (= res!899049 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353807 (= lt!597986 ($colon$colon!754 acc!759 (select (arr!44542 a!3742) from!3120)))))

(declare-fun b!1353808 () Bool)

(declare-fun Unit!44392 () Unit!44390)

(assert (=> b!1353808 (= e!769242 Unit!44392)))

(declare-fun b!1353809 () Bool)

(declare-fun res!899050 () Bool)

(assert (=> b!1353809 (=> (not res!899050) (not e!769243))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353809 (= res!899050 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353810 () Bool)

(declare-fun res!899048 () Bool)

(assert (=> b!1353810 (=> (not res!899048) (not e!769243))))

(assert (=> b!1353810 (= res!899048 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31760))))

(declare-fun b!1353811 () Bool)

(declare-fun res!899061 () Bool)

(assert (=> b!1353811 (=> (not res!899061) (not e!769240))))

(assert (=> b!1353811 (= res!899061 (not (contains!9328 lt!597986 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353812 () Bool)

(declare-fun res!899052 () Bool)

(assert (=> b!1353812 (=> (not res!899052) (not e!769243))))

(assert (=> b!1353812 (= res!899052 (not (contains!9328 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114092 res!899054) b!1353804))

(assert (= (and b!1353804 res!899056) b!1353812))

(assert (= (and b!1353812 res!899052) b!1353805))

(assert (= (and b!1353805 res!899058) b!1353810))

(assert (= (and b!1353810 res!899048) b!1353802))

(assert (= (and b!1353802 res!899053) b!1353797))

(assert (= (and b!1353797 res!899055) b!1353809))

(assert (= (and b!1353809 res!899050) b!1353806))

(assert (= (and b!1353806 res!899059) b!1353801))

(assert (= (and b!1353801 c!126817) b!1353803))

(assert (= (and b!1353801 (not c!126817)) b!1353808))

(assert (= (and b!1353801 res!899057) b!1353807))

(assert (= (and b!1353807 res!899049) b!1353800))

(assert (= (and b!1353800 res!899051) b!1353811))

(assert (= (and b!1353811 res!899061) b!1353798))

(assert (= (and b!1353798 res!899060) b!1353799))

(declare-fun m!1240345 () Bool)

(assert (=> b!1353807 m!1240345))

(assert (=> b!1353807 m!1240345))

(declare-fun m!1240347 () Bool)

(assert (=> b!1353807 m!1240347))

(declare-fun m!1240349 () Bool)

(assert (=> b!1353800 m!1240349))

(declare-fun m!1240351 () Bool)

(assert (=> b!1353799 m!1240351))

(assert (=> b!1353801 m!1240345))

(assert (=> b!1353801 m!1240345))

(declare-fun m!1240353 () Bool)

(assert (=> b!1353801 m!1240353))

(declare-fun m!1240355 () Bool)

(assert (=> b!1353809 m!1240355))

(declare-fun m!1240357 () Bool)

(assert (=> b!1353811 m!1240357))

(declare-fun m!1240359 () Bool)

(assert (=> b!1353805 m!1240359))

(declare-fun m!1240361 () Bool)

(assert (=> b!1353812 m!1240361))

(declare-fun m!1240363 () Bool)

(assert (=> b!1353802 m!1240363))

(declare-fun m!1240365 () Bool)

(assert (=> start!114092 m!1240365))

(declare-fun m!1240367 () Bool)

(assert (=> b!1353810 m!1240367))

(declare-fun m!1240369 () Bool)

(assert (=> b!1353803 m!1240369))

(assert (=> b!1353803 m!1240345))

(assert (=> b!1353803 m!1240347))

(declare-fun m!1240371 () Bool)

(assert (=> b!1353803 m!1240371))

(declare-fun m!1240373 () Bool)

(assert (=> b!1353803 m!1240373))

(assert (=> b!1353803 m!1240345))

(assert (=> b!1353803 m!1240347))

(declare-fun m!1240375 () Bool)

(assert (=> b!1353803 m!1240375))

(declare-fun m!1240377 () Bool)

(assert (=> b!1353804 m!1240377))

(declare-fun m!1240379 () Bool)

(assert (=> b!1353798 m!1240379))

(push 1)

