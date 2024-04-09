; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62604 () Bool)

(assert start!62604)

(declare-fun b!705895 () Bool)

(declare-fun res!469888 () Bool)

(declare-fun e!397791 () Bool)

(assert (=> b!705895 (=> (not res!469888) (not e!397791))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705895 (= res!469888 (validKeyInArray!0 k!2824))))

(declare-fun res!469881 () Bool)

(assert (=> start!62604 (=> (not res!469881) (not e!397791))))

(declare-datatypes ((array!40239 0))(
  ( (array!40240 (arr!19272 (Array (_ BitVec 32) (_ BitVec 64))) (size!19655 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40239)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62604 (= res!469881 (and (bvslt (size!19655 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19655 a!3591))))))

(assert (=> start!62604 e!397791))

(assert (=> start!62604 true))

(declare-fun array_inv!15046 (array!40239) Bool)

(assert (=> start!62604 (array_inv!15046 a!3591)))

(declare-fun b!705896 () Bool)

(declare-fun res!469892 () Bool)

(assert (=> b!705896 (=> (not res!469892) (not e!397791))))

(declare-datatypes ((List!13366 0))(
  ( (Nil!13363) (Cons!13362 (h!14407 (_ BitVec 64)) (t!19656 List!13366)) )
))
(declare-fun acc!652 () List!13366)

(declare-fun contains!3909 (List!13366 (_ BitVec 64)) Bool)

(assert (=> b!705896 (= res!469892 (not (contains!3909 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705897 () Bool)

(declare-fun res!469891 () Bool)

(assert (=> b!705897 (=> (not res!469891) (not e!397791))))

(declare-fun newAcc!49 () List!13366)

(declare-fun -!318 (List!13366 (_ BitVec 64)) List!13366)

(assert (=> b!705897 (= res!469891 (= (-!318 newAcc!49 k!2824) acc!652))))

(declare-fun b!705898 () Bool)

(declare-fun res!469883 () Bool)

(assert (=> b!705898 (=> (not res!469883) (not e!397791))))

(declare-fun noDuplicate!1156 (List!13366) Bool)

(assert (=> b!705898 (= res!469883 (noDuplicate!1156 newAcc!49))))

(declare-fun b!705899 () Bool)

(declare-fun res!469884 () Bool)

(assert (=> b!705899 (=> (not res!469884) (not e!397791))))

(assert (=> b!705899 (= res!469884 (contains!3909 newAcc!49 k!2824))))

(declare-fun b!705900 () Bool)

(declare-fun res!469879 () Bool)

(assert (=> b!705900 (=> (not res!469879) (not e!397791))))

(declare-fun arrayContainsKey!0 (array!40239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705900 (= res!469879 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705901 () Bool)

(declare-fun res!469885 () Bool)

(assert (=> b!705901 (=> (not res!469885) (not e!397791))))

(assert (=> b!705901 (= res!469885 (not (contains!3909 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705902 () Bool)

(declare-fun res!469886 () Bool)

(assert (=> b!705902 (=> (not res!469886) (not e!397791))))

(assert (=> b!705902 (= res!469886 (noDuplicate!1156 acc!652))))

(declare-fun b!705903 () Bool)

(declare-fun res!469887 () Bool)

(assert (=> b!705903 (=> (not res!469887) (not e!397791))))

(assert (=> b!705903 (= res!469887 (not (contains!3909 acc!652 k!2824)))))

(declare-fun b!705904 () Bool)

(declare-fun res!469880 () Bool)

(assert (=> b!705904 (=> (not res!469880) (not e!397791))))

(assert (=> b!705904 (= res!469880 (not (contains!3909 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705905 () Bool)

(declare-fun res!469889 () Bool)

(assert (=> b!705905 (=> (not res!469889) (not e!397791))))

(declare-fun arrayNoDuplicates!0 (array!40239 (_ BitVec 32) List!13366) Bool)

(assert (=> b!705905 (= res!469889 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705906 () Bool)

(declare-fun res!469882 () Bool)

(assert (=> b!705906 (=> (not res!469882) (not e!397791))))

(declare-fun subseq!353 (List!13366 List!13366) Bool)

(assert (=> b!705906 (= res!469882 (subseq!353 acc!652 newAcc!49))))

(declare-fun b!705907 () Bool)

(assert (=> b!705907 (= e!397791 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19655 a!3591)) (bvsgt from!2969 (size!19655 a!3591))))))

(declare-fun b!705908 () Bool)

(declare-fun res!469890 () Bool)

(assert (=> b!705908 (=> (not res!469890) (not e!397791))))

(assert (=> b!705908 (= res!469890 (not (contains!3909 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62604 res!469881) b!705902))

(assert (= (and b!705902 res!469886) b!705898))

(assert (= (and b!705898 res!469883) b!705896))

(assert (= (and b!705896 res!469892) b!705908))

(assert (= (and b!705908 res!469890) b!705900))

(assert (= (and b!705900 res!469879) b!705903))

(assert (= (and b!705903 res!469887) b!705895))

(assert (= (and b!705895 res!469888) b!705905))

(assert (= (and b!705905 res!469889) b!705906))

(assert (= (and b!705906 res!469882) b!705899))

(assert (= (and b!705899 res!469884) b!705897))

(assert (= (and b!705897 res!469891) b!705901))

(assert (= (and b!705901 res!469885) b!705904))

(assert (= (and b!705904 res!469880) b!705907))

(declare-fun m!663951 () Bool)

(assert (=> b!705896 m!663951))

(declare-fun m!663953 () Bool)

(assert (=> start!62604 m!663953))

(declare-fun m!663955 () Bool)

(assert (=> b!705904 m!663955))

(declare-fun m!663957 () Bool)

(assert (=> b!705895 m!663957))

(declare-fun m!663959 () Bool)

(assert (=> b!705903 m!663959))

(declare-fun m!663961 () Bool)

(assert (=> b!705900 m!663961))

(declare-fun m!663963 () Bool)

(assert (=> b!705901 m!663963))

(declare-fun m!663965 () Bool)

(assert (=> b!705906 m!663965))

(declare-fun m!663967 () Bool)

(assert (=> b!705899 m!663967))

(declare-fun m!663969 () Bool)

(assert (=> b!705902 m!663969))

(declare-fun m!663971 () Bool)

(assert (=> b!705905 m!663971))

(declare-fun m!663973 () Bool)

(assert (=> b!705897 m!663973))

(declare-fun m!663975 () Bool)

(assert (=> b!705908 m!663975))

(declare-fun m!663977 () Bool)

(assert (=> b!705898 m!663977))

(push 1)

(assert (not b!705900))

(assert (not b!705908))

(assert (not b!705901))

(assert (not b!705895))

(assert (not b!705903))

(assert (not b!705902))

(assert (not b!705898))

(assert (not start!62604))

(assert (not b!705906))

(assert (not b!705897))

(assert (not b!705899))

(assert (not b!705904))

(assert (not b!705905))

(assert (not b!705896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

