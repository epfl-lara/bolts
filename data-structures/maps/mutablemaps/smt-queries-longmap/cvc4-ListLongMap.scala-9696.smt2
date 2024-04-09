; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114606 () Bool)

(assert start!114606)

(declare-fun b!1359282 () Bool)

(declare-fun res!903894 () Bool)

(declare-fun e!771358 () Bool)

(assert (=> b!1359282 (=> (not res!903894) (not e!771358))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359282 (= res!903894 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359283 () Bool)

(declare-fun res!903892 () Bool)

(assert (=> b!1359283 (=> (not res!903892) (not e!771358))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92474 0))(
  ( (array!92475 (arr!44673 (Array (_ BitVec 32) (_ BitVec 64))) (size!45224 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92474)

(assert (=> b!1359283 (= res!903892 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45224 a!3742)))))

(declare-fun b!1359284 () Bool)

(declare-fun res!903886 () Bool)

(assert (=> b!1359284 (=> (not res!903886) (not e!771358))))

(declare-datatypes ((List!31894 0))(
  ( (Nil!31891) (Cons!31890 (h!33099 (_ BitVec 64)) (t!46574 List!31894)) )
))
(declare-fun acc!759 () List!31894)

(declare-fun arrayNoDuplicates!0 (array!92474 (_ BitVec 32) List!31894) Bool)

(assert (=> b!1359284 (= res!903886 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!903887 () Bool)

(assert (=> start!114606 (=> (not res!903887) (not e!771358))))

(assert (=> start!114606 (= res!903887 (and (bvslt (size!45224 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45224 a!3742))))))

(assert (=> start!114606 e!771358))

(assert (=> start!114606 true))

(declare-fun array_inv!33618 (array!92474) Bool)

(assert (=> start!114606 (array_inv!33618 a!3742)))

(declare-fun b!1359285 () Bool)

(declare-fun res!903891 () Bool)

(assert (=> b!1359285 (=> (not res!903891) (not e!771358))))

(assert (=> b!1359285 (= res!903891 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31891))))

(declare-fun b!1359286 () Bool)

(declare-fun e!771361 () Bool)

(assert (=> b!1359286 (= e!771358 e!771361)))

(declare-fun res!903890 () Bool)

(assert (=> b!1359286 (=> (not res!903890) (not e!771361))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359286 (= res!903890 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44702 0))(
  ( (Unit!44703) )
))
(declare-fun lt!599521 () Unit!44702)

(declare-fun e!771359 () Unit!44702)

(assert (=> b!1359286 (= lt!599521 e!771359)))

(declare-fun c!127141 () Bool)

(assert (=> b!1359286 (= c!127141 (validKeyInArray!0 (select (arr!44673 a!3742) from!3120)))))

(declare-fun b!1359287 () Bool)

(declare-fun res!903888 () Bool)

(assert (=> b!1359287 (=> (not res!903888) (not e!771358))))

(declare-fun contains!9459 (List!31894 (_ BitVec 64)) Bool)

(assert (=> b!1359287 (= res!903888 (not (contains!9459 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359288 () Bool)

(declare-fun res!903893 () Bool)

(assert (=> b!1359288 (=> (not res!903893) (not e!771358))))

(assert (=> b!1359288 (= res!903893 (not (contains!9459 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359289 () Bool)

(declare-fun lt!599522 () Unit!44702)

(assert (=> b!1359289 (= e!771359 lt!599522)))

(declare-fun lt!599520 () Unit!44702)

(declare-fun lemmaListSubSeqRefl!0 (List!31894) Unit!44702)

(assert (=> b!1359289 (= lt!599520 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!850 (List!31894 List!31894) Bool)

(assert (=> b!1359289 (subseq!850 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92474 List!31894 List!31894 (_ BitVec 32)) Unit!44702)

(declare-fun $colon$colon!855 (List!31894 (_ BitVec 64)) List!31894)

(assert (=> b!1359289 (= lt!599522 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!855 acc!759 (select (arr!44673 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359289 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359290 () Bool)

(declare-fun res!903885 () Bool)

(assert (=> b!1359290 (=> (not res!903885) (not e!771358))))

(assert (=> b!1359290 (= res!903885 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45224 a!3742))))))

(declare-fun b!1359291 () Bool)

(declare-fun res!903889 () Bool)

(assert (=> b!1359291 (=> (not res!903889) (not e!771358))))

(declare-fun noDuplicate!2338 (List!31894) Bool)

(assert (=> b!1359291 (= res!903889 (noDuplicate!2338 acc!759))))

(declare-fun b!1359292 () Bool)

(declare-fun Unit!44704 () Unit!44702)

(assert (=> b!1359292 (= e!771359 Unit!44704)))

(declare-fun b!1359293 () Bool)

(assert (=> b!1359293 (= e!771361 false)))

(declare-fun lt!599519 () Bool)

(assert (=> b!1359293 (= lt!599519 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114606 res!903887) b!1359291))

(assert (= (and b!1359291 res!903889) b!1359288))

(assert (= (and b!1359288 res!903893) b!1359287))

(assert (= (and b!1359287 res!903888) b!1359285))

(assert (= (and b!1359285 res!903891) b!1359284))

(assert (= (and b!1359284 res!903886) b!1359290))

(assert (= (and b!1359290 res!903885) b!1359282))

(assert (= (and b!1359282 res!903894) b!1359283))

(assert (= (and b!1359283 res!903892) b!1359286))

(assert (= (and b!1359286 c!127141) b!1359289))

(assert (= (and b!1359286 (not c!127141)) b!1359292))

(assert (= (and b!1359286 res!903890) b!1359293))

(declare-fun m!1244745 () Bool)

(assert (=> start!114606 m!1244745))

(declare-fun m!1244747 () Bool)

(assert (=> b!1359282 m!1244747))

(declare-fun m!1244749 () Bool)

(assert (=> b!1359287 m!1244749))

(declare-fun m!1244751 () Bool)

(assert (=> b!1359284 m!1244751))

(declare-fun m!1244753 () Bool)

(assert (=> b!1359289 m!1244753))

(declare-fun m!1244755 () Bool)

(assert (=> b!1359289 m!1244755))

(declare-fun m!1244757 () Bool)

(assert (=> b!1359289 m!1244757))

(declare-fun m!1244759 () Bool)

(assert (=> b!1359289 m!1244759))

(declare-fun m!1244761 () Bool)

(assert (=> b!1359289 m!1244761))

(assert (=> b!1359289 m!1244755))

(assert (=> b!1359289 m!1244757))

(declare-fun m!1244763 () Bool)

(assert (=> b!1359289 m!1244763))

(declare-fun m!1244765 () Bool)

(assert (=> b!1359288 m!1244765))

(declare-fun m!1244767 () Bool)

(assert (=> b!1359291 m!1244767))

(assert (=> b!1359293 m!1244761))

(assert (=> b!1359286 m!1244755))

(assert (=> b!1359286 m!1244755))

(declare-fun m!1244769 () Bool)

(assert (=> b!1359286 m!1244769))

(declare-fun m!1244771 () Bool)

(assert (=> b!1359285 m!1244771))

(push 1)

(assert (not b!1359286))

(assert (not b!1359291))

(assert (not b!1359289))

(assert (not b!1359282))

