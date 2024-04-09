; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114920 () Bool)

(assert start!114920)

(declare-fun b!1361800 () Bool)

(declare-fun res!905989 () Bool)

(declare-fun e!772560 () Bool)

(assert (=> b!1361800 (=> (not res!905989) (not e!772560))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92578 0))(
  ( (array!92579 (arr!44719 (Array (_ BitVec 32) (_ BitVec 64))) (size!45270 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92578)

(assert (=> b!1361800 (= res!905989 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45270 a!3742)))))

(declare-fun res!905998 () Bool)

(assert (=> start!114920 (=> (not res!905998) (not e!772560))))

(assert (=> start!114920 (= res!905998 (and (bvslt (size!45270 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45270 a!3742))))))

(assert (=> start!114920 e!772560))

(assert (=> start!114920 true))

(declare-fun array_inv!33664 (array!92578) Bool)

(assert (=> start!114920 (array_inv!33664 a!3742)))

(declare-fun b!1361801 () Bool)

(declare-fun res!906002 () Bool)

(assert (=> b!1361801 (=> (not res!906002) (not e!772560))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361801 (= res!906002 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45270 a!3742))))))

(declare-fun b!1361802 () Bool)

(declare-datatypes ((Unit!44840 0))(
  ( (Unit!44841) )
))
(declare-fun e!772562 () Unit!44840)

(declare-fun lt!600253 () Unit!44840)

(assert (=> b!1361802 (= e!772562 lt!600253)))

(declare-fun lt!600252 () Unit!44840)

(declare-datatypes ((List!31940 0))(
  ( (Nil!31937) (Cons!31936 (h!33145 (_ BitVec 64)) (t!46632 List!31940)) )
))
(declare-fun acc!759 () List!31940)

(declare-fun lemmaListSubSeqRefl!0 (List!31940) Unit!44840)

(assert (=> b!1361802 (= lt!600252 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!896 (List!31940 List!31940) Bool)

(assert (=> b!1361802 (subseq!896 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92578 List!31940 List!31940 (_ BitVec 32)) Unit!44840)

(declare-fun $colon$colon!901 (List!31940 (_ BitVec 64)) List!31940)

(assert (=> b!1361802 (= lt!600253 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!901 acc!759 (select (arr!44719 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92578 (_ BitVec 32) List!31940) Bool)

(assert (=> b!1361802 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361803 () Bool)

(declare-fun res!905995 () Bool)

(assert (=> b!1361803 (=> (not res!905995) (not e!772560))))

(declare-fun noDuplicate!2384 (List!31940) Bool)

(assert (=> b!1361803 (= res!905995 (noDuplicate!2384 acc!759))))

(declare-fun b!1361804 () Bool)

(declare-fun e!772561 () Bool)

(declare-fun e!772563 () Bool)

(assert (=> b!1361804 (= e!772561 e!772563)))

(declare-fun res!905997 () Bool)

(assert (=> b!1361804 (=> (not res!905997) (not e!772563))))

(assert (=> b!1361804 (= res!905997 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!600251 () List!31940)

(assert (=> b!1361804 (= lt!600251 ($colon$colon!901 acc!759 (select (arr!44719 a!3742) from!3120)))))

(declare-fun b!1361805 () Bool)

(assert (=> b!1361805 (= e!772563 (bvsge (bvsub (size!45270 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45270 a!3742) from!3120)))))

(declare-fun b!1361806 () Bool)

(declare-fun res!906001 () Bool)

(assert (=> b!1361806 (=> (not res!906001) (not e!772563))))

(declare-fun contains!9505 (List!31940 (_ BitVec 64)) Bool)

(assert (=> b!1361806 (= res!906001 (not (contains!9505 lt!600251 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361807 () Bool)

(declare-fun res!905991 () Bool)

(assert (=> b!1361807 (=> (not res!905991) (not e!772560))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361807 (= res!905991 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361808 () Bool)

(declare-fun res!905999 () Bool)

(assert (=> b!1361808 (=> (not res!905999) (not e!772560))))

(assert (=> b!1361808 (= res!905999 (not (contains!9505 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361809 () Bool)

(declare-fun res!905990 () Bool)

(assert (=> b!1361809 (=> (not res!905990) (not e!772563))))

(assert (=> b!1361809 (= res!905990 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600251))))

(declare-fun b!1361810 () Bool)

(declare-fun res!906003 () Bool)

(assert (=> b!1361810 (=> (not res!906003) (not e!772560))))

(assert (=> b!1361810 (= res!906003 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361811 () Bool)

(declare-fun res!905992 () Bool)

(assert (=> b!1361811 (=> (not res!905992) (not e!772560))))

(assert (=> b!1361811 (= res!905992 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31937))))

(declare-fun b!1361812 () Bool)

(declare-fun Unit!44842 () Unit!44840)

(assert (=> b!1361812 (= e!772562 Unit!44842)))

(declare-fun b!1361813 () Bool)

(declare-fun res!906000 () Bool)

(assert (=> b!1361813 (=> (not res!906000) (not e!772563))))

(assert (=> b!1361813 (= res!906000 (noDuplicate!2384 lt!600251))))

(declare-fun b!1361814 () Bool)

(declare-fun res!905993 () Bool)

(assert (=> b!1361814 (=> (not res!905993) (not e!772563))))

(assert (=> b!1361814 (= res!905993 (not (contains!9505 lt!600251 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361815 () Bool)

(assert (=> b!1361815 (= e!772560 e!772561)))

(declare-fun res!905996 () Bool)

(assert (=> b!1361815 (=> (not res!905996) (not e!772561))))

(declare-fun lt!600254 () Bool)

(assert (=> b!1361815 (= res!905996 (and (not (= from!3120 i!1404)) lt!600254))))

(declare-fun lt!600250 () Unit!44840)

(assert (=> b!1361815 (= lt!600250 e!772562)))

(declare-fun c!127348 () Bool)

(assert (=> b!1361815 (= c!127348 lt!600254)))

(assert (=> b!1361815 (= lt!600254 (validKeyInArray!0 (select (arr!44719 a!3742) from!3120)))))

(declare-fun b!1361816 () Bool)

(declare-fun res!905994 () Bool)

(assert (=> b!1361816 (=> (not res!905994) (not e!772560))))

(assert (=> b!1361816 (= res!905994 (not (contains!9505 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114920 res!905998) b!1361803))

(assert (= (and b!1361803 res!905995) b!1361816))

(assert (= (and b!1361816 res!905994) b!1361808))

(assert (= (and b!1361808 res!905999) b!1361811))

(assert (= (and b!1361811 res!905992) b!1361810))

(assert (= (and b!1361810 res!906003) b!1361801))

(assert (= (and b!1361801 res!906002) b!1361807))

(assert (= (and b!1361807 res!905991) b!1361800))

(assert (= (and b!1361800 res!905989) b!1361815))

(assert (= (and b!1361815 c!127348) b!1361802))

(assert (= (and b!1361815 (not c!127348)) b!1361812))

(assert (= (and b!1361815 res!905996) b!1361804))

(assert (= (and b!1361804 res!905997) b!1361813))

(assert (= (and b!1361813 res!906000) b!1361814))

(assert (= (and b!1361814 res!905993) b!1361806))

(assert (= (and b!1361806 res!906001) b!1361809))

(assert (= (and b!1361809 res!905990) b!1361805))

(declare-fun m!1246861 () Bool)

(assert (=> b!1361813 m!1246861))

(declare-fun m!1246863 () Bool)

(assert (=> b!1361816 m!1246863))

(declare-fun m!1246865 () Bool)

(assert (=> b!1361810 m!1246865))

(declare-fun m!1246867 () Bool)

(assert (=> b!1361815 m!1246867))

(assert (=> b!1361815 m!1246867))

(declare-fun m!1246869 () Bool)

(assert (=> b!1361815 m!1246869))

(assert (=> b!1361804 m!1246867))

(assert (=> b!1361804 m!1246867))

(declare-fun m!1246871 () Bool)

(assert (=> b!1361804 m!1246871))

(declare-fun m!1246873 () Bool)

(assert (=> b!1361808 m!1246873))

(declare-fun m!1246875 () Bool)

(assert (=> b!1361814 m!1246875))

(declare-fun m!1246877 () Bool)

(assert (=> start!114920 m!1246877))

(declare-fun m!1246879 () Bool)

(assert (=> b!1361811 m!1246879))

(declare-fun m!1246881 () Bool)

(assert (=> b!1361806 m!1246881))

(declare-fun m!1246883 () Bool)

(assert (=> b!1361803 m!1246883))

(declare-fun m!1246885 () Bool)

(assert (=> b!1361809 m!1246885))

(declare-fun m!1246887 () Bool)

(assert (=> b!1361802 m!1246887))

(assert (=> b!1361802 m!1246867))

(assert (=> b!1361802 m!1246871))

(declare-fun m!1246889 () Bool)

(assert (=> b!1361802 m!1246889))

(declare-fun m!1246891 () Bool)

(assert (=> b!1361802 m!1246891))

(assert (=> b!1361802 m!1246867))

(assert (=> b!1361802 m!1246871))

(declare-fun m!1246893 () Bool)

(assert (=> b!1361802 m!1246893))

(declare-fun m!1246895 () Bool)

(assert (=> b!1361807 m!1246895))

(push 1)

(assert (not b!1361815))

(assert (not b!1361807))

(assert (not b!1361816))

(assert (not b!1361811))

(assert (not b!1361802))

(assert (not b!1361806))

(assert (not b!1361808))

(assert (not b!1361813))

(assert (not b!1361804))

(assert (not b!1361810))

(assert (not b!1361809))

(assert (not b!1361814))

(assert (not start!114920))

(assert (not b!1361803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

