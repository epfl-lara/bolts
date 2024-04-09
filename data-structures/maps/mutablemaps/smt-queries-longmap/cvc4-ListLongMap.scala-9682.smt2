; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114270 () Bool)

(assert start!114270)

(declare-fun b!1356977 () Bool)

(declare-fun res!901854 () Bool)

(declare-fun e!770218 () Bool)

(assert (=> b!1356977 (=> (not res!901854) (not e!770218))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92375 0))(
  ( (array!92376 (arr!44631 (Array (_ BitVec 32) (_ BitVec 64))) (size!45182 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92375)

(assert (=> b!1356977 (= res!901854 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45182 a!3742))))))

(declare-fun b!1356978 () Bool)

(declare-fun res!901862 () Bool)

(assert (=> b!1356978 (=> (not res!901862) (not e!770218))))

(declare-datatypes ((List!31852 0))(
  ( (Nil!31849) (Cons!31848 (h!33057 (_ BitVec 64)) (t!46517 List!31852)) )
))
(declare-fun acc!759 () List!31852)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92375 (_ BitVec 32) List!31852) Bool)

(assert (=> b!1356978 (= res!901862 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356979 () Bool)

(declare-fun res!901856 () Bool)

(assert (=> b!1356979 (=> (not res!901856) (not e!770218))))

(assert (=> b!1356979 (= res!901856 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31849))))

(declare-fun res!901859 () Bool)

(assert (=> start!114270 (=> (not res!901859) (not e!770218))))

(assert (=> start!114270 (= res!901859 (and (bvslt (size!45182 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45182 a!3742))))))

(assert (=> start!114270 e!770218))

(assert (=> start!114270 true))

(declare-fun array_inv!33576 (array!92375) Bool)

(assert (=> start!114270 (array_inv!33576 a!3742)))

(declare-fun b!1356980 () Bool)

(declare-fun res!901857 () Bool)

(assert (=> b!1356980 (=> (not res!901857) (not e!770218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356980 (= res!901857 (validKeyInArray!0 (select (arr!44631 a!3742) from!3120)))))

(declare-fun b!1356981 () Bool)

(declare-fun res!901861 () Bool)

(assert (=> b!1356981 (=> (not res!901861) (not e!770218))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356981 (= res!901861 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356982 () Bool)

(declare-fun res!901860 () Bool)

(assert (=> b!1356982 (=> (not res!901860) (not e!770218))))

(declare-fun contains!9417 (List!31852 (_ BitVec 64)) Bool)

(assert (=> b!1356982 (= res!901860 (not (contains!9417 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356983 () Bool)

(declare-fun res!901855 () Bool)

(assert (=> b!1356983 (=> (not res!901855) (not e!770218))))

(assert (=> b!1356983 (= res!901855 (not (contains!9417 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356984 () Bool)

(declare-fun res!901863 () Bool)

(assert (=> b!1356984 (=> (not res!901863) (not e!770218))))

(declare-fun noDuplicate!2296 (List!31852) Bool)

(assert (=> b!1356984 (= res!901863 (noDuplicate!2296 acc!759))))

(declare-fun b!1356985 () Bool)

(assert (=> b!1356985 (= e!770218 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun subseq!808 (List!31852 List!31852) Bool)

(assert (=> b!1356985 (subseq!808 acc!759 acc!759)))

(declare-datatypes ((Unit!44595 0))(
  ( (Unit!44596) )
))
(declare-fun lt!599048 () Unit!44595)

(declare-fun lemmaListSubSeqRefl!0 (List!31852) Unit!44595)

(assert (=> b!1356985 (= lt!599048 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356986 () Bool)

(declare-fun res!901858 () Bool)

(assert (=> b!1356986 (=> (not res!901858) (not e!770218))))

(assert (=> b!1356986 (= res!901858 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45182 a!3742)))))

(assert (= (and start!114270 res!901859) b!1356984))

(assert (= (and b!1356984 res!901863) b!1356983))

(assert (= (and b!1356983 res!901855) b!1356982))

(assert (= (and b!1356982 res!901860) b!1356979))

(assert (= (and b!1356979 res!901856) b!1356978))

(assert (= (and b!1356978 res!901862) b!1356977))

(assert (= (and b!1356977 res!901854) b!1356981))

(assert (= (and b!1356981 res!901861) b!1356986))

(assert (= (and b!1356986 res!901858) b!1356980))

(assert (= (and b!1356980 res!901857) b!1356985))

(declare-fun m!1242849 () Bool)

(assert (=> b!1356981 m!1242849))

(declare-fun m!1242851 () Bool)

(assert (=> b!1356978 m!1242851))

(declare-fun m!1242853 () Bool)

(assert (=> b!1356980 m!1242853))

(assert (=> b!1356980 m!1242853))

(declare-fun m!1242855 () Bool)

(assert (=> b!1356980 m!1242855))

(declare-fun m!1242857 () Bool)

(assert (=> b!1356984 m!1242857))

(declare-fun m!1242859 () Bool)

(assert (=> start!114270 m!1242859))

(declare-fun m!1242861 () Bool)

(assert (=> b!1356979 m!1242861))

(declare-fun m!1242863 () Bool)

(assert (=> b!1356982 m!1242863))

(declare-fun m!1242865 () Bool)

(assert (=> b!1356985 m!1242865))

(declare-fun m!1242867 () Bool)

(assert (=> b!1356985 m!1242867))

(declare-fun m!1242869 () Bool)

(assert (=> b!1356983 m!1242869))

(push 1)

(assert (not b!1356979))

(assert (not b!1356978))

(assert (not b!1356980))

(assert (not start!114270))

(assert (not b!1356982))

(assert (not b!1356981))

(assert (not b!1356983))

(assert (not b!1356985))

(assert (not b!1356984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

