; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114614 () Bool)

(assert start!114614)

(declare-fun b!1359428 () Bool)

(declare-fun res!904013 () Bool)

(declare-fun e!771406 () Bool)

(assert (=> b!1359428 (=> (not res!904013) (not e!771406))))

(declare-datatypes ((List!31898 0))(
  ( (Nil!31895) (Cons!31894 (h!33103 (_ BitVec 64)) (t!46578 List!31898)) )
))
(declare-fun acc!759 () List!31898)

(declare-datatypes ((array!92482 0))(
  ( (array!92483 (arr!44677 (Array (_ BitVec 32) (_ BitVec 64))) (size!45228 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92482)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92482 (_ BitVec 32) List!31898) Bool)

(assert (=> b!1359428 (= res!904013 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359430 () Bool)

(declare-datatypes ((Unit!44714 0))(
  ( (Unit!44715) )
))
(declare-fun e!771408 () Unit!44714)

(declare-fun lt!599565 () Unit!44714)

(assert (=> b!1359430 (= e!771408 lt!599565)))

(declare-fun lt!599566 () Unit!44714)

(declare-fun lemmaListSubSeqRefl!0 (List!31898) Unit!44714)

(assert (=> b!1359430 (= lt!599566 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!854 (List!31898 List!31898) Bool)

(assert (=> b!1359430 (subseq!854 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92482 List!31898 List!31898 (_ BitVec 32)) Unit!44714)

(declare-fun $colon$colon!859 (List!31898 (_ BitVec 64)) List!31898)

(assert (=> b!1359430 (= lt!599565 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!859 acc!759 (select (arr!44677 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359430 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359431 () Bool)

(declare-fun res!904010 () Bool)

(declare-fun e!771409 () Bool)

(assert (=> b!1359431 (=> (not res!904010) (not e!771409))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359431 (= res!904010 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359432 () Bool)

(declare-fun res!904016 () Bool)

(assert (=> b!1359432 (=> (not res!904016) (not e!771409))))

(assert (=> b!1359432 (= res!904016 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31895))))

(declare-fun b!1359433 () Bool)

(assert (=> b!1359433 (= e!771409 e!771406)))

(declare-fun res!904015 () Bool)

(assert (=> b!1359433 (=> (not res!904015) (not e!771406))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359433 (= res!904015 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599567 () Unit!44714)

(assert (=> b!1359433 (= lt!599567 e!771408)))

(declare-fun c!127153 () Bool)

(assert (=> b!1359433 (= c!127153 (validKeyInArray!0 (select (arr!44677 a!3742) from!3120)))))

(declare-fun b!1359434 () Bool)

(assert (=> b!1359434 (= e!771406 (bvsge (bvsub (size!45228 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45228 a!3742) from!3120)))))

(declare-fun b!1359435 () Bool)

(declare-fun res!904017 () Bool)

(assert (=> b!1359435 (=> (not res!904017) (not e!771409))))

(assert (=> b!1359435 (= res!904017 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359436 () Bool)

(declare-fun res!904008 () Bool)

(assert (=> b!1359436 (=> (not res!904008) (not e!771409))))

(declare-fun contains!9463 (List!31898 (_ BitVec 64)) Bool)

(assert (=> b!1359436 (= res!904008 (not (contains!9463 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359437 () Bool)

(declare-fun res!904009 () Bool)

(assert (=> b!1359437 (=> (not res!904009) (not e!771409))))

(assert (=> b!1359437 (= res!904009 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45228 a!3742))))))

(declare-fun b!1359438 () Bool)

(declare-fun res!904014 () Bool)

(assert (=> b!1359438 (=> (not res!904014) (not e!771409))))

(assert (=> b!1359438 (= res!904014 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45228 a!3742)))))

(declare-fun b!1359429 () Bool)

(declare-fun res!904007 () Bool)

(assert (=> b!1359429 (=> (not res!904007) (not e!771409))))

(declare-fun noDuplicate!2342 (List!31898) Bool)

(assert (=> b!1359429 (= res!904007 (noDuplicate!2342 acc!759))))

(declare-fun res!904012 () Bool)

(assert (=> start!114614 (=> (not res!904012) (not e!771409))))

(assert (=> start!114614 (= res!904012 (and (bvslt (size!45228 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45228 a!3742))))))

(assert (=> start!114614 e!771409))

(assert (=> start!114614 true))

(declare-fun array_inv!33622 (array!92482) Bool)

(assert (=> start!114614 (array_inv!33622 a!3742)))

(declare-fun b!1359439 () Bool)

(declare-fun res!904011 () Bool)

(assert (=> b!1359439 (=> (not res!904011) (not e!771409))))

(assert (=> b!1359439 (= res!904011 (not (contains!9463 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359440 () Bool)

(declare-fun Unit!44716 () Unit!44714)

(assert (=> b!1359440 (= e!771408 Unit!44716)))

(assert (= (and start!114614 res!904012) b!1359429))

(assert (= (and b!1359429 res!904007) b!1359439))

(assert (= (and b!1359439 res!904011) b!1359436))

(assert (= (and b!1359436 res!904008) b!1359432))

(assert (= (and b!1359432 res!904016) b!1359435))

(assert (= (and b!1359435 res!904017) b!1359437))

(assert (= (and b!1359437 res!904009) b!1359431))

(assert (= (and b!1359431 res!904010) b!1359438))

(assert (= (and b!1359438 res!904014) b!1359433))

(assert (= (and b!1359433 c!127153) b!1359430))

(assert (= (and b!1359433 (not c!127153)) b!1359440))

(assert (= (and b!1359433 res!904015) b!1359428))

(assert (= (and b!1359428 res!904013) b!1359434))

(declare-fun m!1244857 () Bool)

(assert (=> b!1359428 m!1244857))

(declare-fun m!1244859 () Bool)

(assert (=> b!1359431 m!1244859))

(declare-fun m!1244861 () Bool)

(assert (=> start!114614 m!1244861))

(declare-fun m!1244863 () Bool)

(assert (=> b!1359436 m!1244863))

(declare-fun m!1244865 () Bool)

(assert (=> b!1359430 m!1244865))

(declare-fun m!1244867 () Bool)

(assert (=> b!1359430 m!1244867))

(declare-fun m!1244869 () Bool)

(assert (=> b!1359430 m!1244869))

(declare-fun m!1244871 () Bool)

(assert (=> b!1359430 m!1244871))

(assert (=> b!1359430 m!1244857))

(assert (=> b!1359430 m!1244867))

(assert (=> b!1359430 m!1244869))

(declare-fun m!1244873 () Bool)

(assert (=> b!1359430 m!1244873))

(declare-fun m!1244875 () Bool)

(assert (=> b!1359435 m!1244875))

(declare-fun m!1244877 () Bool)

(assert (=> b!1359439 m!1244877))

(declare-fun m!1244879 () Bool)

(assert (=> b!1359429 m!1244879))

(assert (=> b!1359433 m!1244867))

(assert (=> b!1359433 m!1244867))

(declare-fun m!1244881 () Bool)

(assert (=> b!1359433 m!1244881))

(declare-fun m!1244883 () Bool)

(assert (=> b!1359432 m!1244883))

(push 1)

(assert (not b!1359429))

(assert (not b!1359435))

(assert (not start!114614))

(assert (not b!1359432))

(assert (not b!1359428))

(assert (not b!1359433))

(assert (not b!1359439))

(assert (not b!1359430))

(assert (not b!1359436))

(assert (not b!1359431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

