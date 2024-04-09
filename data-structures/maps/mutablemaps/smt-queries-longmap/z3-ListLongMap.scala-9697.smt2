; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114610 () Bool)

(assert start!114610)

(declare-fun b!1359354 () Bool)

(declare-fun res!903948 () Bool)

(declare-fun e!771385 () Bool)

(assert (=> b!1359354 (=> (not res!903948) (not e!771385))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92478 0))(
  ( (array!92479 (arr!44675 (Array (_ BitVec 32) (_ BitVec 64))) (size!45226 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92478)

(assert (=> b!1359354 (= res!903948 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45226 a!3742))))))

(declare-fun res!903947 () Bool)

(assert (=> start!114610 (=> (not res!903947) (not e!771385))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114610 (= res!903947 (and (bvslt (size!45226 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45226 a!3742))))))

(assert (=> start!114610 e!771385))

(assert (=> start!114610 true))

(declare-fun array_inv!33620 (array!92478) Bool)

(assert (=> start!114610 (array_inv!33620 a!3742)))

(declare-fun b!1359355 () Bool)

(declare-fun res!903949 () Bool)

(assert (=> b!1359355 (=> (not res!903949) (not e!771385))))

(assert (=> b!1359355 (= res!903949 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45226 a!3742)))))

(declare-fun b!1359356 () Bool)

(declare-fun e!771384 () Bool)

(assert (=> b!1359356 (= e!771385 e!771384)))

(declare-fun res!903952 () Bool)

(assert (=> b!1359356 (=> (not res!903952) (not e!771384))))

(assert (=> b!1359356 (= res!903952 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44708 0))(
  ( (Unit!44709) )
))
(declare-fun lt!599543 () Unit!44708)

(declare-fun e!771383 () Unit!44708)

(assert (=> b!1359356 (= lt!599543 e!771383)))

(declare-fun c!127147 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359356 (= c!127147 (validKeyInArray!0 (select (arr!44675 a!3742) from!3120)))))

(declare-fun b!1359357 () Bool)

(declare-fun res!903946 () Bool)

(assert (=> b!1359357 (=> (not res!903946) (not e!771385))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359357 (= res!903946 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359358 () Bool)

(assert (=> b!1359358 (= e!771384 false)))

(declare-fun lt!599546 () Bool)

(declare-datatypes ((List!31896 0))(
  ( (Nil!31893) (Cons!31892 (h!33101 (_ BitVec 64)) (t!46576 List!31896)) )
))
(declare-fun acc!759 () List!31896)

(declare-fun arrayNoDuplicates!0 (array!92478 (_ BitVec 32) List!31896) Bool)

(assert (=> b!1359358 (= lt!599546 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359359 () Bool)

(declare-fun res!903945 () Bool)

(assert (=> b!1359359 (=> (not res!903945) (not e!771385))))

(declare-fun noDuplicate!2340 (List!31896) Bool)

(assert (=> b!1359359 (= res!903945 (noDuplicate!2340 acc!759))))

(declare-fun b!1359360 () Bool)

(declare-fun lt!599545 () Unit!44708)

(assert (=> b!1359360 (= e!771383 lt!599545)))

(declare-fun lt!599544 () Unit!44708)

(declare-fun lemmaListSubSeqRefl!0 (List!31896) Unit!44708)

(assert (=> b!1359360 (= lt!599544 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!852 (List!31896 List!31896) Bool)

(assert (=> b!1359360 (subseq!852 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92478 List!31896 List!31896 (_ BitVec 32)) Unit!44708)

(declare-fun $colon$colon!857 (List!31896 (_ BitVec 64)) List!31896)

(assert (=> b!1359360 (= lt!599545 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!857 acc!759 (select (arr!44675 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359360 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359361 () Bool)

(declare-fun res!903951 () Bool)

(assert (=> b!1359361 (=> (not res!903951) (not e!771385))))

(declare-fun contains!9461 (List!31896 (_ BitVec 64)) Bool)

(assert (=> b!1359361 (= res!903951 (not (contains!9461 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359362 () Bool)

(declare-fun res!903953 () Bool)

(assert (=> b!1359362 (=> (not res!903953) (not e!771385))))

(assert (=> b!1359362 (= res!903953 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31893))))

(declare-fun b!1359363 () Bool)

(declare-fun Unit!44710 () Unit!44708)

(assert (=> b!1359363 (= e!771383 Unit!44710)))

(declare-fun b!1359364 () Bool)

(declare-fun res!903954 () Bool)

(assert (=> b!1359364 (=> (not res!903954) (not e!771385))))

(assert (=> b!1359364 (= res!903954 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359365 () Bool)

(declare-fun res!903950 () Bool)

(assert (=> b!1359365 (=> (not res!903950) (not e!771385))))

(assert (=> b!1359365 (= res!903950 (not (contains!9461 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114610 res!903947) b!1359359))

(assert (= (and b!1359359 res!903945) b!1359365))

(assert (= (and b!1359365 res!903950) b!1359361))

(assert (= (and b!1359361 res!903951) b!1359362))

(assert (= (and b!1359362 res!903953) b!1359364))

(assert (= (and b!1359364 res!903954) b!1359354))

(assert (= (and b!1359354 res!903948) b!1359357))

(assert (= (and b!1359357 res!903946) b!1359355))

(assert (= (and b!1359355 res!903949) b!1359356))

(assert (= (and b!1359356 c!127147) b!1359360))

(assert (= (and b!1359356 (not c!127147)) b!1359363))

(assert (= (and b!1359356 res!903952) b!1359358))

(declare-fun m!1244801 () Bool)

(assert (=> b!1359364 m!1244801))

(declare-fun m!1244803 () Bool)

(assert (=> b!1359358 m!1244803))

(declare-fun m!1244805 () Bool)

(assert (=> b!1359361 m!1244805))

(declare-fun m!1244807 () Bool)

(assert (=> b!1359360 m!1244807))

(declare-fun m!1244809 () Bool)

(assert (=> b!1359360 m!1244809))

(declare-fun m!1244811 () Bool)

(assert (=> b!1359360 m!1244811))

(declare-fun m!1244813 () Bool)

(assert (=> b!1359360 m!1244813))

(assert (=> b!1359360 m!1244803))

(assert (=> b!1359360 m!1244809))

(assert (=> b!1359360 m!1244811))

(declare-fun m!1244815 () Bool)

(assert (=> b!1359360 m!1244815))

(assert (=> b!1359356 m!1244809))

(assert (=> b!1359356 m!1244809))

(declare-fun m!1244817 () Bool)

(assert (=> b!1359356 m!1244817))

(declare-fun m!1244819 () Bool)

(assert (=> start!114610 m!1244819))

(declare-fun m!1244821 () Bool)

(assert (=> b!1359362 m!1244821))

(declare-fun m!1244823 () Bool)

(assert (=> b!1359357 m!1244823))

(declare-fun m!1244825 () Bool)

(assert (=> b!1359365 m!1244825))

(declare-fun m!1244827 () Bool)

(assert (=> b!1359359 m!1244827))

(check-sat (not b!1359361) (not b!1359359) (not b!1359365) (not start!114610) (not b!1359358) (not b!1359357) (not b!1359362) (not b!1359364) (not b!1359356) (not b!1359360))
(check-sat)
