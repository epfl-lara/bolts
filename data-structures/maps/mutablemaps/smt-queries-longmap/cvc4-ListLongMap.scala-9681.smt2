; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114264 () Bool)

(assert start!114264)

(declare-fun b!1356887 () Bool)

(declare-fun res!901766 () Bool)

(declare-fun e!770199 () Bool)

(assert (=> b!1356887 (=> (not res!901766) (not e!770199))))

(declare-datatypes ((List!31849 0))(
  ( (Nil!31846) (Cons!31845 (h!33054 (_ BitVec 64)) (t!46514 List!31849)) )
))
(declare-fun acc!759 () List!31849)

(declare-fun contains!9414 (List!31849 (_ BitVec 64)) Bool)

(assert (=> b!1356887 (= res!901766 (not (contains!9414 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356888 () Bool)

(declare-fun res!901773 () Bool)

(assert (=> b!1356888 (=> (not res!901773) (not e!770199))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92369 0))(
  ( (array!92370 (arr!44628 (Array (_ BitVec 32) (_ BitVec 64))) (size!45179 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92369)

(assert (=> b!1356888 (= res!901773 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45179 a!3742)))))

(declare-fun b!1356889 () Bool)

(declare-fun res!901771 () Bool)

(assert (=> b!1356889 (=> (not res!901771) (not e!770199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356889 (= res!901771 (validKeyInArray!0 (select (arr!44628 a!3742) from!3120)))))

(declare-fun b!1356890 () Bool)

(declare-fun res!901770 () Bool)

(assert (=> b!1356890 (=> (not res!901770) (not e!770199))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356890 (= res!901770 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356891 () Bool)

(declare-fun res!901772 () Bool)

(assert (=> b!1356891 (=> (not res!901772) (not e!770199))))

(declare-fun noDuplicate!2293 (List!31849) Bool)

(assert (=> b!1356891 (= res!901772 (noDuplicate!2293 acc!759))))

(declare-fun b!1356892 () Bool)

(declare-fun res!901769 () Bool)

(assert (=> b!1356892 (=> (not res!901769) (not e!770199))))

(declare-fun arrayNoDuplicates!0 (array!92369 (_ BitVec 32) List!31849) Bool)

(assert (=> b!1356892 (= res!901769 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356893 () Bool)

(declare-fun res!901764 () Bool)

(assert (=> b!1356893 (=> (not res!901764) (not e!770199))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356893 (= res!901764 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45179 a!3742))))))

(declare-fun res!901767 () Bool)

(assert (=> start!114264 (=> (not res!901767) (not e!770199))))

(assert (=> start!114264 (= res!901767 (and (bvslt (size!45179 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45179 a!3742))))))

(assert (=> start!114264 e!770199))

(assert (=> start!114264 true))

(declare-fun array_inv!33573 (array!92369) Bool)

(assert (=> start!114264 (array_inv!33573 a!3742)))

(declare-fun b!1356894 () Bool)

(assert (=> b!1356894 (= e!770199 (not true))))

(declare-fun subseq!805 (List!31849 List!31849) Bool)

(assert (=> b!1356894 (subseq!805 acc!759 acc!759)))

(declare-datatypes ((Unit!44589 0))(
  ( (Unit!44590) )
))
(declare-fun lt!599039 () Unit!44589)

(declare-fun lemmaListSubSeqRefl!0 (List!31849) Unit!44589)

(assert (=> b!1356894 (= lt!599039 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356895 () Bool)

(declare-fun res!901768 () Bool)

(assert (=> b!1356895 (=> (not res!901768) (not e!770199))))

(assert (=> b!1356895 (= res!901768 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31846))))

(declare-fun b!1356896 () Bool)

(declare-fun res!901765 () Bool)

(assert (=> b!1356896 (=> (not res!901765) (not e!770199))))

(assert (=> b!1356896 (= res!901765 (not (contains!9414 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114264 res!901767) b!1356891))

(assert (= (and b!1356891 res!901772) b!1356887))

(assert (= (and b!1356887 res!901766) b!1356896))

(assert (= (and b!1356896 res!901765) b!1356895))

(assert (= (and b!1356895 res!901768) b!1356892))

(assert (= (and b!1356892 res!901769) b!1356893))

(assert (= (and b!1356893 res!901764) b!1356890))

(assert (= (and b!1356890 res!901770) b!1356888))

(assert (= (and b!1356888 res!901773) b!1356889))

(assert (= (and b!1356889 res!901771) b!1356894))

(declare-fun m!1242783 () Bool)

(assert (=> b!1356887 m!1242783))

(declare-fun m!1242785 () Bool)

(assert (=> b!1356892 m!1242785))

(declare-fun m!1242787 () Bool)

(assert (=> b!1356890 m!1242787))

(declare-fun m!1242789 () Bool)

(assert (=> b!1356889 m!1242789))

(assert (=> b!1356889 m!1242789))

(declare-fun m!1242791 () Bool)

(assert (=> b!1356889 m!1242791))

(declare-fun m!1242793 () Bool)

(assert (=> b!1356891 m!1242793))

(declare-fun m!1242795 () Bool)

(assert (=> b!1356896 m!1242795))

(declare-fun m!1242797 () Bool)

(assert (=> b!1356895 m!1242797))

(declare-fun m!1242799 () Bool)

(assert (=> start!114264 m!1242799))

(declare-fun m!1242801 () Bool)

(assert (=> b!1356894 m!1242801))

(declare-fun m!1242803 () Bool)

(assert (=> b!1356894 m!1242803))

(push 1)

(assert (not b!1356896))

(assert (not start!114264))

(assert (not b!1356891))

(assert (not b!1356889))

(assert (not b!1356894))

(assert (not b!1356890))

(assert (not b!1356892))

(assert (not b!1356887))

(assert (not b!1356895))

(check-sat)

