; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103244 () Bool)

(assert start!103244)

(declare-fun b!1238890 () Bool)

(declare-fun res!826581 () Bool)

(declare-fun e!702112 () Bool)

(assert (=> b!1238890 (=> (not res!826581) (not e!702112))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79828 0))(
  ( (array!79829 (arr!38512 (Array (_ BitVec 32) (_ BitVec 64))) (size!39049 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79828)

(assert (=> b!1238890 (= res!826581 (not (= from!3213 (bvsub (size!39049 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238891 () Bool)

(declare-datatypes ((Unit!41097 0))(
  ( (Unit!41098) )
))
(declare-fun e!702113 () Unit!41097)

(declare-fun lt!561487 () Unit!41097)

(assert (=> b!1238891 (= e!702113 lt!561487)))

(declare-datatypes ((List!27463 0))(
  ( (Nil!27460) (Cons!27459 (h!28668 (_ BitVec 64)) (t!40933 List!27463)) )
))
(declare-fun lt!561486 () List!27463)

(declare-fun acc!846 () List!27463)

(assert (=> b!1238891 (= lt!561486 (Cons!27459 (select (arr!38512 a!3835) from!3213) acc!846))))

(declare-fun lt!561483 () Unit!41097)

(declare-fun lemmaListSubSeqRefl!0 (List!27463) Unit!41097)

(assert (=> b!1238891 (= lt!561483 (lemmaListSubSeqRefl!0 lt!561486))))

(declare-fun subseq!615 (List!27463 List!27463) Bool)

(assert (=> b!1238891 (subseq!615 lt!561486 lt!561486)))

(declare-fun lt!561485 () Unit!41097)

(declare-fun subseqTail!102 (List!27463 List!27463) Unit!41097)

(assert (=> b!1238891 (= lt!561485 (subseqTail!102 lt!561486 lt!561486))))

(assert (=> b!1238891 (subseq!615 acc!846 lt!561486)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79828 List!27463 List!27463 (_ BitVec 32)) Unit!41097)

(assert (=> b!1238891 (= lt!561487 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561486 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79828 (_ BitVec 32) List!27463) Bool)

(assert (=> b!1238891 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun res!826582 () Bool)

(assert (=> start!103244 (=> (not res!826582) (not e!702112))))

(assert (=> start!103244 (= res!826582 (and (bvslt (size!39049 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39049 a!3835))))))

(assert (=> start!103244 e!702112))

(declare-fun array_inv!29288 (array!79828) Bool)

(assert (=> start!103244 (array_inv!29288 a!3835)))

(assert (=> start!103244 true))

(declare-fun b!1238892 () Bool)

(declare-fun Unit!41099 () Unit!41097)

(assert (=> b!1238892 (= e!702113 Unit!41099)))

(declare-fun b!1238893 () Bool)

(assert (=> b!1238893 (= e!702112 false)))

(declare-fun lt!561484 () Unit!41097)

(assert (=> b!1238893 (= lt!561484 e!702113)))

(declare-fun c!121018 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238893 (= c!121018 (validKeyInArray!0 (select (arr!38512 a!3835) from!3213)))))

(declare-fun b!1238894 () Bool)

(declare-fun res!826585 () Bool)

(assert (=> b!1238894 (=> (not res!826585) (not e!702112))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7378 (List!27463 (_ BitVec 64)) Bool)

(assert (=> b!1238894 (= res!826585 (contains!7378 acc!846 k0!2925))))

(declare-fun b!1238895 () Bool)

(declare-fun res!826579 () Bool)

(assert (=> b!1238895 (=> (not res!826579) (not e!702112))))

(assert (=> b!1238895 (= res!826579 (not (contains!7378 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238896 () Bool)

(declare-fun res!826580 () Bool)

(assert (=> b!1238896 (=> (not res!826580) (not e!702112))))

(assert (=> b!1238896 (= res!826580 (not (contains!7378 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238897 () Bool)

(declare-fun res!826584 () Bool)

(assert (=> b!1238897 (=> (not res!826584) (not e!702112))))

(assert (=> b!1238897 (= res!826584 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238898 () Bool)

(declare-fun res!826583 () Bool)

(assert (=> b!1238898 (=> (not res!826583) (not e!702112))))

(declare-fun noDuplicate!1985 (List!27463) Bool)

(assert (=> b!1238898 (= res!826583 (noDuplicate!1985 acc!846))))

(assert (= (and start!103244 res!826582) b!1238898))

(assert (= (and b!1238898 res!826583) b!1238895))

(assert (= (and b!1238895 res!826579) b!1238896))

(assert (= (and b!1238896 res!826580) b!1238897))

(assert (= (and b!1238897 res!826584) b!1238894))

(assert (= (and b!1238894 res!826585) b!1238890))

(assert (= (and b!1238890 res!826581) b!1238893))

(assert (= (and b!1238893 c!121018) b!1238891))

(assert (= (and b!1238893 (not c!121018)) b!1238892))

(declare-fun m!1142445 () Bool)

(assert (=> start!103244 m!1142445))

(declare-fun m!1142447 () Bool)

(assert (=> b!1238898 m!1142447))

(declare-fun m!1142449 () Bool)

(assert (=> b!1238895 m!1142449))

(declare-fun m!1142451 () Bool)

(assert (=> b!1238897 m!1142451))

(declare-fun m!1142453 () Bool)

(assert (=> b!1238896 m!1142453))

(declare-fun m!1142455 () Bool)

(assert (=> b!1238894 m!1142455))

(declare-fun m!1142457 () Bool)

(assert (=> b!1238893 m!1142457))

(assert (=> b!1238893 m!1142457))

(declare-fun m!1142459 () Bool)

(assert (=> b!1238893 m!1142459))

(declare-fun m!1142461 () Bool)

(assert (=> b!1238891 m!1142461))

(declare-fun m!1142463 () Bool)

(assert (=> b!1238891 m!1142463))

(declare-fun m!1142465 () Bool)

(assert (=> b!1238891 m!1142465))

(declare-fun m!1142467 () Bool)

(assert (=> b!1238891 m!1142467))

(declare-fun m!1142469 () Bool)

(assert (=> b!1238891 m!1142469))

(declare-fun m!1142471 () Bool)

(assert (=> b!1238891 m!1142471))

(assert (=> b!1238891 m!1142457))

(check-sat (not b!1238894) (not b!1238897) (not b!1238898) (not b!1238893) (not b!1238895) (not b!1238891) (not start!103244) (not b!1238896))
