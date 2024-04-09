; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113994 () Bool)

(assert start!113994)

(declare-fun b!1351809 () Bool)

(declare-datatypes ((Unit!44243 0))(
  ( (Unit!44244) )
))
(declare-fun e!768604 () Unit!44243)

(declare-fun lt!597300 () Unit!44243)

(assert (=> b!1351809 (= e!768604 lt!597300)))

(declare-fun lt!597299 () Unit!44243)

(declare-datatypes ((List!31714 0))(
  ( (Nil!31711) (Cons!31710 (h!32919 (_ BitVec 64)) (t!46379 List!31714)) )
))
(declare-fun acc!759 () List!31714)

(declare-fun lemmaListSubSeqRefl!0 (List!31714) Unit!44243)

(assert (=> b!1351809 (= lt!597299 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!688 (List!31714 List!31714) Bool)

(assert (=> b!1351809 (subseq!688 acc!759 acc!759)))

(declare-datatypes ((array!92099 0))(
  ( (array!92100 (arr!44493 (Array (_ BitVec 32) (_ BitVec 64))) (size!45044 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92099)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92099 List!31714 List!31714 (_ BitVec 32)) Unit!44243)

(declare-fun $colon$colon!705 (List!31714 (_ BitVec 64)) List!31714)

(assert (=> b!1351809 (= lt!597300 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!705 acc!759 (select (arr!44493 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92099 (_ BitVec 32) List!31714) Bool)

(assert (=> b!1351809 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351810 () Bool)

(declare-fun res!897363 () Bool)

(declare-fun e!768606 () Bool)

(assert (=> b!1351810 (=> (not res!897363) (not e!768606))))

(assert (=> b!1351810 (= res!897363 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31711))))

(declare-fun b!1351811 () Bool)

(declare-fun e!768605 () Bool)

(assert (=> b!1351811 (= e!768605 false)))

(declare-fun lt!597301 () Bool)

(assert (=> b!1351811 (= lt!597301 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351812 () Bool)

(declare-fun res!897357 () Bool)

(assert (=> b!1351812 (=> (not res!897357) (not e!768606))))

(assert (=> b!1351812 (= res!897357 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!897361 () Bool)

(assert (=> start!113994 (=> (not res!897361) (not e!768606))))

(assert (=> start!113994 (= res!897361 (and (bvslt (size!45044 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45044 a!3742))))))

(assert (=> start!113994 e!768606))

(assert (=> start!113994 true))

(declare-fun array_inv!33438 (array!92099) Bool)

(assert (=> start!113994 (array_inv!33438 a!3742)))

(declare-fun b!1351813 () Bool)

(declare-fun res!897358 () Bool)

(assert (=> b!1351813 (=> (not res!897358) (not e!768606))))

(declare-fun contains!9279 (List!31714 (_ BitVec 64)) Bool)

(assert (=> b!1351813 (= res!897358 (not (contains!9279 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351814 () Bool)

(declare-fun res!897354 () Bool)

(assert (=> b!1351814 (=> (not res!897354) (not e!768606))))

(declare-fun noDuplicate!2158 (List!31714) Bool)

(assert (=> b!1351814 (= res!897354 (noDuplicate!2158 acc!759))))

(declare-fun b!1351815 () Bool)

(declare-fun res!897362 () Bool)

(assert (=> b!1351815 (=> (not res!897362) (not e!768606))))

(assert (=> b!1351815 (= res!897362 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45044 a!3742)))))

(declare-fun b!1351816 () Bool)

(declare-fun res!897355 () Bool)

(assert (=> b!1351816 (=> (not res!897355) (not e!768606))))

(assert (=> b!1351816 (= res!897355 (not (contains!9279 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351817 () Bool)

(declare-fun res!897360 () Bool)

(assert (=> b!1351817 (=> (not res!897360) (not e!768606))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351817 (= res!897360 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351818 () Bool)

(declare-fun Unit!44245 () Unit!44243)

(assert (=> b!1351818 (= e!768604 Unit!44245)))

(declare-fun b!1351819 () Bool)

(declare-fun res!897356 () Bool)

(assert (=> b!1351819 (=> (not res!897356) (not e!768606))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351819 (= res!897356 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45044 a!3742))))))

(declare-fun b!1351820 () Bool)

(assert (=> b!1351820 (= e!768606 e!768605)))

(declare-fun res!897359 () Bool)

(assert (=> b!1351820 (=> (not res!897359) (not e!768605))))

(assert (=> b!1351820 (= res!897359 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597302 () Unit!44243)

(assert (=> b!1351820 (= lt!597302 e!768604)))

(declare-fun c!126670 () Bool)

(assert (=> b!1351820 (= c!126670 (validKeyInArray!0 (select (arr!44493 a!3742) from!3120)))))

(assert (= (and start!113994 res!897361) b!1351814))

(assert (= (and b!1351814 res!897354) b!1351816))

(assert (= (and b!1351816 res!897355) b!1351813))

(assert (= (and b!1351813 res!897358) b!1351810))

(assert (= (and b!1351810 res!897363) b!1351812))

(assert (= (and b!1351812 res!897357) b!1351819))

(assert (= (and b!1351819 res!897356) b!1351817))

(assert (= (and b!1351817 res!897360) b!1351815))

(assert (= (and b!1351815 res!897362) b!1351820))

(assert (= (and b!1351820 c!126670) b!1351809))

(assert (= (and b!1351820 (not c!126670)) b!1351818))

(assert (= (and b!1351820 res!897359) b!1351811))

(declare-fun m!1238781 () Bool)

(assert (=> b!1351812 m!1238781))

(declare-fun m!1238783 () Bool)

(assert (=> b!1351814 m!1238783))

(declare-fun m!1238785 () Bool)

(assert (=> b!1351816 m!1238785))

(declare-fun m!1238787 () Bool)

(assert (=> b!1351811 m!1238787))

(declare-fun m!1238789 () Bool)

(assert (=> start!113994 m!1238789))

(declare-fun m!1238791 () Bool)

(assert (=> b!1351817 m!1238791))

(declare-fun m!1238793 () Bool)

(assert (=> b!1351820 m!1238793))

(assert (=> b!1351820 m!1238793))

(declare-fun m!1238795 () Bool)

(assert (=> b!1351820 m!1238795))

(declare-fun m!1238797 () Bool)

(assert (=> b!1351809 m!1238797))

(assert (=> b!1351809 m!1238793))

(declare-fun m!1238799 () Bool)

(assert (=> b!1351809 m!1238799))

(declare-fun m!1238801 () Bool)

(assert (=> b!1351809 m!1238801))

(assert (=> b!1351809 m!1238787))

(assert (=> b!1351809 m!1238793))

(assert (=> b!1351809 m!1238799))

(declare-fun m!1238803 () Bool)

(assert (=> b!1351809 m!1238803))

(declare-fun m!1238805 () Bool)

(assert (=> b!1351813 m!1238805))

(declare-fun m!1238807 () Bool)

(assert (=> b!1351810 m!1238807))

(push 1)

