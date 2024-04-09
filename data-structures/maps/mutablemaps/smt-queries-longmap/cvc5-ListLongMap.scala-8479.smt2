; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103314 () Bool)

(assert start!103314)

(declare-fun res!826918 () Bool)

(declare-fun e!702385 () Bool)

(assert (=> start!103314 (=> (not res!826918) (not e!702385))))

(declare-datatypes ((array!79847 0))(
  ( (array!79848 (arr!38520 (Array (_ BitVec 32) (_ BitVec 64))) (size!39057 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79847)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103314 (= res!826918 (and (bvslt (size!39057 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39057 a!3835))))))

(assert (=> start!103314 e!702385))

(declare-fun array_inv!29296 (array!79847) Bool)

(assert (=> start!103314 (array_inv!29296 a!3835)))

(assert (=> start!103314 true))

(declare-fun b!1239347 () Bool)

(declare-fun e!702384 () Bool)

(assert (=> b!1239347 (= e!702385 e!702384)))

(declare-fun res!826914 () Bool)

(assert (=> b!1239347 (=> (not res!826914) (not e!702384))))

(assert (=> b!1239347 (= res!826914 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39057 a!3835))))))

(declare-datatypes ((Unit!41125 0))(
  ( (Unit!41126) )
))
(declare-fun lt!561657 () Unit!41125)

(declare-fun e!702386 () Unit!41125)

(assert (=> b!1239347 (= lt!561657 e!702386)))

(declare-fun c!121081 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239347 (= c!121081 (validKeyInArray!0 (select (arr!38520 a!3835) from!3213)))))

(declare-fun b!1239348 () Bool)

(assert (=> b!1239348 (= e!702384 (bvsge (bvsub (size!39057 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) (bvsub (size!39057 a!3835) from!3213)))))

(declare-fun b!1239349 () Bool)

(declare-fun res!826911 () Bool)

(assert (=> b!1239349 (=> (not res!826911) (not e!702385))))

(declare-datatypes ((List!27471 0))(
  ( (Nil!27468) (Cons!27467 (h!28676 (_ BitVec 64)) (t!40941 List!27471)) )
))
(declare-fun acc!846 () List!27471)

(declare-fun contains!7386 (List!27471 (_ BitVec 64)) Bool)

(assert (=> b!1239349 (= res!826911 (not (contains!7386 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239350 () Bool)

(declare-fun res!826912 () Bool)

(assert (=> b!1239350 (=> (not res!826912) (not e!702385))))

(assert (=> b!1239350 (= res!826912 (not (contains!7386 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239351 () Bool)

(declare-fun res!826910 () Bool)

(assert (=> b!1239351 (=> (not res!826910) (not e!702384))))

(declare-fun arrayNoDuplicates!0 (array!79847 (_ BitVec 32) List!27471) Bool)

(assert (=> b!1239351 (= res!826910 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239352 () Bool)

(declare-fun res!826913 () Bool)

(assert (=> b!1239352 (=> (not res!826913) (not e!702385))))

(assert (=> b!1239352 (= res!826913 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239353 () Bool)

(declare-fun res!826915 () Bool)

(assert (=> b!1239353 (=> (not res!826915) (not e!702385))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1239353 (= res!826915 (contains!7386 acc!846 k!2925))))

(declare-fun b!1239354 () Bool)

(declare-fun res!826916 () Bool)

(assert (=> b!1239354 (=> (not res!826916) (not e!702385))))

(assert (=> b!1239354 (= res!826916 (not (= from!3213 (bvsub (size!39057 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239355 () Bool)

(declare-fun lt!561658 () Unit!41125)

(assert (=> b!1239355 (= e!702386 lt!561658)))

(declare-fun lt!561655 () List!27471)

(assert (=> b!1239355 (= lt!561655 (Cons!27467 (select (arr!38520 a!3835) from!3213) acc!846))))

(declare-fun lt!561654 () Unit!41125)

(declare-fun lemmaListSubSeqRefl!0 (List!27471) Unit!41125)

(assert (=> b!1239355 (= lt!561654 (lemmaListSubSeqRefl!0 lt!561655))))

(declare-fun subseq!623 (List!27471 List!27471) Bool)

(assert (=> b!1239355 (subseq!623 lt!561655 lt!561655)))

(declare-fun lt!561656 () Unit!41125)

(declare-fun subseqTail!110 (List!27471 List!27471) Unit!41125)

(assert (=> b!1239355 (= lt!561656 (subseqTail!110 lt!561655 lt!561655))))

(assert (=> b!1239355 (subseq!623 acc!846 lt!561655)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79847 List!27471 List!27471 (_ BitVec 32)) Unit!41125)

(assert (=> b!1239355 (= lt!561658 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561655 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1239355 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239356 () Bool)

(declare-fun res!826917 () Bool)

(assert (=> b!1239356 (=> (not res!826917) (not e!702385))))

(declare-fun noDuplicate!1993 (List!27471) Bool)

(assert (=> b!1239356 (= res!826917 (noDuplicate!1993 acc!846))))

(declare-fun b!1239357 () Bool)

(declare-fun Unit!41127 () Unit!41125)

(assert (=> b!1239357 (= e!702386 Unit!41127)))

(assert (= (and start!103314 res!826918) b!1239356))

(assert (= (and b!1239356 res!826917) b!1239349))

(assert (= (and b!1239349 res!826911) b!1239350))

(assert (= (and b!1239350 res!826912) b!1239352))

(assert (= (and b!1239352 res!826913) b!1239353))

(assert (= (and b!1239353 res!826915) b!1239354))

(assert (= (and b!1239354 res!826916) b!1239347))

(assert (= (and b!1239347 c!121081) b!1239355))

(assert (= (and b!1239347 (not c!121081)) b!1239357))

(assert (= (and b!1239347 res!826914) b!1239351))

(assert (= (and b!1239351 res!826910) b!1239348))

(declare-fun m!1142825 () Bool)

(assert (=> b!1239356 m!1142825))

(declare-fun m!1142827 () Bool)

(assert (=> b!1239349 m!1142827))

(declare-fun m!1142829 () Bool)

(assert (=> b!1239351 m!1142829))

(declare-fun m!1142831 () Bool)

(assert (=> start!103314 m!1142831))

(declare-fun m!1142833 () Bool)

(assert (=> b!1239353 m!1142833))

(declare-fun m!1142835 () Bool)

(assert (=> b!1239355 m!1142835))

(declare-fun m!1142837 () Bool)

(assert (=> b!1239355 m!1142837))

(declare-fun m!1142839 () Bool)

(assert (=> b!1239355 m!1142839))

(declare-fun m!1142841 () Bool)

(assert (=> b!1239355 m!1142841))

(declare-fun m!1142843 () Bool)

(assert (=> b!1239355 m!1142843))

(assert (=> b!1239355 m!1142829))

(declare-fun m!1142845 () Bool)

(assert (=> b!1239355 m!1142845))

(declare-fun m!1142847 () Bool)

(assert (=> b!1239350 m!1142847))

(declare-fun m!1142849 () Bool)

(assert (=> b!1239352 m!1142849))

(assert (=> b!1239347 m!1142845))

(assert (=> b!1239347 m!1142845))

(declare-fun m!1142851 () Bool)

(assert (=> b!1239347 m!1142851))

(push 1)

(assert (not b!1239352))

(assert (not b!1239349))

(assert (not b!1239353))

(assert (not b!1239356))

(assert (not b!1239347))

(assert (not start!103314))

(assert (not b!1239350))

(assert (not b!1239351))

(assert (not b!1239355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

