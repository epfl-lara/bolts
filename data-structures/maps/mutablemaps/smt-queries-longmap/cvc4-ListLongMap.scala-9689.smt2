; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114510 () Bool)

(assert start!114510)

(declare-fun res!903178 () Bool)

(declare-fun e!771014 () Bool)

(assert (=> start!114510 (=> (not res!903178) (not e!771014))))

(declare-datatypes ((array!92429 0))(
  ( (array!92430 (arr!44652 (Array (_ BitVec 32) (_ BitVec 64))) (size!45203 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92429)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114510 (= res!903178 (and (bvslt (size!45203 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45203 a!3742))))))

(assert (=> start!114510 e!771014))

(assert (=> start!114510 true))

(declare-fun array_inv!33597 (array!92429) Bool)

(assert (=> start!114510 (array_inv!33597 a!3742)))

(declare-fun b!1358419 () Bool)

(declare-fun res!903182 () Bool)

(assert (=> b!1358419 (=> (not res!903182) (not e!771014))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358419 (= res!903182 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45203 a!3742))))))

(declare-fun b!1358420 () Bool)

(assert (=> b!1358420 (= e!771014 false)))

(declare-datatypes ((Unit!44639 0))(
  ( (Unit!44640) )
))
(declare-fun lt!599294 () Unit!44639)

(declare-fun e!771015 () Unit!44639)

(assert (=> b!1358420 (= lt!599294 e!771015)))

(declare-fun c!127063 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358420 (= c!127063 (validKeyInArray!0 (select (arr!44652 a!3742) from!3120)))))

(declare-fun b!1358421 () Bool)

(declare-fun lt!599293 () Unit!44639)

(assert (=> b!1358421 (= e!771015 lt!599293)))

(declare-fun lt!599292 () Unit!44639)

(declare-datatypes ((List!31873 0))(
  ( (Nil!31870) (Cons!31869 (h!33078 (_ BitVec 64)) (t!46550 List!31873)) )
))
(declare-fun acc!759 () List!31873)

(declare-fun lemmaListSubSeqRefl!0 (List!31873) Unit!44639)

(assert (=> b!1358421 (= lt!599292 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!829 (List!31873 List!31873) Bool)

(assert (=> b!1358421 (subseq!829 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92429 List!31873 List!31873 (_ BitVec 32)) Unit!44639)

(declare-fun $colon$colon!834 (List!31873 (_ BitVec 64)) List!31873)

(assert (=> b!1358421 (= lt!599293 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!834 acc!759 (select (arr!44652 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92429 (_ BitVec 32) List!31873) Bool)

(assert (=> b!1358421 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358422 () Bool)

(declare-fun res!903184 () Bool)

(assert (=> b!1358422 (=> (not res!903184) (not e!771014))))

(assert (=> b!1358422 (= res!903184 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31870))))

(declare-fun b!1358423 () Bool)

(declare-fun res!903186 () Bool)

(assert (=> b!1358423 (=> (not res!903186) (not e!771014))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358423 (= res!903186 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358424 () Bool)

(declare-fun res!903180 () Bool)

(assert (=> b!1358424 (=> (not res!903180) (not e!771014))))

(assert (=> b!1358424 (= res!903180 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358425 () Bool)

(declare-fun res!903181 () Bool)

(assert (=> b!1358425 (=> (not res!903181) (not e!771014))))

(declare-fun contains!9438 (List!31873 (_ BitVec 64)) Bool)

(assert (=> b!1358425 (= res!903181 (not (contains!9438 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358426 () Bool)

(declare-fun res!903179 () Bool)

(assert (=> b!1358426 (=> (not res!903179) (not e!771014))))

(declare-fun noDuplicate!2317 (List!31873) Bool)

(assert (=> b!1358426 (= res!903179 (noDuplicate!2317 acc!759))))

(declare-fun b!1358427 () Bool)

(declare-fun res!903183 () Bool)

(assert (=> b!1358427 (=> (not res!903183) (not e!771014))))

(assert (=> b!1358427 (= res!903183 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45203 a!3742)))))

(declare-fun b!1358428 () Bool)

(declare-fun Unit!44641 () Unit!44639)

(assert (=> b!1358428 (= e!771015 Unit!44641)))

(declare-fun b!1358429 () Bool)

(declare-fun res!903185 () Bool)

(assert (=> b!1358429 (=> (not res!903185) (not e!771014))))

(assert (=> b!1358429 (= res!903185 (not (contains!9438 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114510 res!903178) b!1358426))

(assert (= (and b!1358426 res!903179) b!1358429))

(assert (= (and b!1358429 res!903185) b!1358425))

(assert (= (and b!1358425 res!903181) b!1358422))

(assert (= (and b!1358422 res!903184) b!1358424))

(assert (= (and b!1358424 res!903180) b!1358419))

(assert (= (and b!1358419 res!903182) b!1358423))

(assert (= (and b!1358423 res!903186) b!1358427))

(assert (= (and b!1358427 res!903183) b!1358420))

(assert (= (and b!1358420 c!127063) b!1358421))

(assert (= (and b!1358420 (not c!127063)) b!1358428))

(declare-fun m!1244031 () Bool)

(assert (=> b!1358421 m!1244031))

(declare-fun m!1244033 () Bool)

(assert (=> b!1358421 m!1244033))

(declare-fun m!1244035 () Bool)

(assert (=> b!1358421 m!1244035))

(declare-fun m!1244037 () Bool)

(assert (=> b!1358421 m!1244037))

(declare-fun m!1244039 () Bool)

(assert (=> b!1358421 m!1244039))

(assert (=> b!1358421 m!1244033))

(assert (=> b!1358421 m!1244035))

(declare-fun m!1244041 () Bool)

(assert (=> b!1358421 m!1244041))

(assert (=> b!1358420 m!1244033))

(assert (=> b!1358420 m!1244033))

(declare-fun m!1244043 () Bool)

(assert (=> b!1358420 m!1244043))

(declare-fun m!1244045 () Bool)

(assert (=> b!1358429 m!1244045))

(declare-fun m!1244047 () Bool)

(assert (=> b!1358425 m!1244047))

(declare-fun m!1244049 () Bool)

(assert (=> b!1358422 m!1244049))

(declare-fun m!1244051 () Bool)

(assert (=> b!1358424 m!1244051))

(declare-fun m!1244053 () Bool)

(assert (=> b!1358423 m!1244053))

(declare-fun m!1244055 () Bool)

(assert (=> b!1358426 m!1244055))

(declare-fun m!1244057 () Bool)

(assert (=> start!114510 m!1244057))

(push 1)

(assert (not start!114510))

(assert (not b!1358421))

(assert (not b!1358429))

(assert (not b!1358424))

(assert (not b!1358422))

(assert (not b!1358423))

(assert (not b!1358426))

(assert (not b!1358420))

(assert (not b!1358425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

