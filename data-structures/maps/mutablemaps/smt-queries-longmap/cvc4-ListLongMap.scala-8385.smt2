; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102026 () Bool)

(assert start!102026)

(declare-fun b!1227912 () Bool)

(declare-fun res!816643 () Bool)

(declare-fun e!697108 () Bool)

(assert (=> b!1227912 (=> (not res!816643) (not e!697108))))

(declare-datatypes ((array!79242 0))(
  ( (array!79243 (arr!38240 (Array (_ BitVec 32) (_ BitVec 64))) (size!38777 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79242)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227912 (= res!816643 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227913 () Bool)

(declare-fun res!816648 () Bool)

(assert (=> b!1227913 (=> (not res!816648) (not e!697108))))

(declare-datatypes ((List!27191 0))(
  ( (Nil!27188) (Cons!27187 (h!28396 (_ BitVec 64)) (t!40661 List!27191)) )
))
(declare-fun acc!823 () List!27191)

(declare-fun contains!7106 (List!27191 (_ BitVec 64)) Bool)

(assert (=> b!1227913 (= res!816648 (not (contains!7106 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!816642 () Bool)

(assert (=> start!102026 (=> (not res!816642) (not e!697108))))

(assert (=> start!102026 (= res!816642 (bvslt (size!38777 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102026 e!697108))

(declare-fun array_inv!29016 (array!79242) Bool)

(assert (=> start!102026 (array_inv!29016 a!3806)))

(assert (=> start!102026 true))

(declare-fun b!1227914 () Bool)

(declare-fun res!816653 () Bool)

(declare-fun e!697106 () Bool)

(assert (=> b!1227914 (=> res!816653 e!697106)))

(assert (=> b!1227914 (= res!816653 (contains!7106 Nil!27188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227915 () Bool)

(declare-fun res!816644 () Bool)

(assert (=> b!1227915 (=> (not res!816644) (not e!697108))))

(assert (=> b!1227915 (= res!816644 (not (contains!7106 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227916 () Bool)

(declare-fun res!816650 () Bool)

(assert (=> b!1227916 (=> (not res!816650) (not e!697108))))

(declare-fun arrayNoDuplicates!0 (array!79242 (_ BitVec 32) List!27191) Bool)

(assert (=> b!1227916 (= res!816650 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227917 () Bool)

(assert (=> b!1227917 (= e!697106 true)))

(declare-datatypes ((Unit!40620 0))(
  ( (Unit!40621) )
))
(declare-fun lt!558896 () Unit!40620)

(declare-fun noDuplicateSubseq!46 (List!27191 List!27191) Unit!40620)

(assert (=> b!1227917 (= lt!558896 (noDuplicateSubseq!46 Nil!27188 acc!823))))

(declare-fun b!1227918 () Bool)

(declare-fun res!816651 () Bool)

(assert (=> b!1227918 (=> res!816651 e!697106)))

(assert (=> b!1227918 (= res!816651 (contains!7106 Nil!27188 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227919 () Bool)

(declare-fun res!816647 () Bool)

(assert (=> b!1227919 (=> (not res!816647) (not e!697108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227919 (= res!816647 (validKeyInArray!0 (select (arr!38240 a!3806) from!3184)))))

(declare-fun b!1227920 () Bool)

(declare-fun res!816646 () Bool)

(assert (=> b!1227920 (=> (not res!816646) (not e!697108))))

(declare-fun noDuplicate!1713 (List!27191) Bool)

(assert (=> b!1227920 (= res!816646 (noDuplicate!1713 acc!823))))

(declare-fun b!1227921 () Bool)

(declare-fun res!816652 () Bool)

(assert (=> b!1227921 (=> res!816652 e!697106)))

(declare-fun subseq!493 (List!27191 List!27191) Bool)

(assert (=> b!1227921 (= res!816652 (not (subseq!493 Nil!27188 acc!823)))))

(declare-fun b!1227922 () Bool)

(declare-fun res!816649 () Bool)

(assert (=> b!1227922 (=> (not res!816649) (not e!697108))))

(assert (=> b!1227922 (= res!816649 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38777 a!3806)) (bvslt from!3184 (size!38777 a!3806))))))

(declare-fun b!1227923 () Bool)

(declare-fun res!816641 () Bool)

(assert (=> b!1227923 (=> (not res!816641) (not e!697108))))

(assert (=> b!1227923 (= res!816641 (validKeyInArray!0 k!2913))))

(declare-fun b!1227924 () Bool)

(assert (=> b!1227924 (= e!697108 (not e!697106))))

(declare-fun res!816645 () Bool)

(assert (=> b!1227924 (=> res!816645 e!697106)))

(assert (=> b!1227924 (= res!816645 (bvsgt from!3184 (size!38777 a!3806)))))

(assert (=> b!1227924 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27187 (select (arr!38240 a!3806) from!3184) acc!823))))

(assert (= (and start!102026 res!816642) b!1227923))

(assert (= (and b!1227923 res!816641) b!1227922))

(assert (= (and b!1227922 res!816649) b!1227920))

(assert (= (and b!1227920 res!816646) b!1227913))

(assert (= (and b!1227913 res!816648) b!1227915))

(assert (= (and b!1227915 res!816644) b!1227912))

(assert (= (and b!1227912 res!816643) b!1227916))

(assert (= (and b!1227916 res!816650) b!1227919))

(assert (= (and b!1227919 res!816647) b!1227924))

(assert (= (and b!1227924 (not res!816645)) b!1227914))

(assert (= (and b!1227914 (not res!816653)) b!1227918))

(assert (= (and b!1227918 (not res!816651)) b!1227921))

(assert (= (and b!1227921 (not res!816652)) b!1227917))

(declare-fun m!1132585 () Bool)

(assert (=> b!1227913 m!1132585))

(declare-fun m!1132587 () Bool)

(assert (=> start!102026 m!1132587))

(declare-fun m!1132589 () Bool)

(assert (=> b!1227916 m!1132589))

(declare-fun m!1132591 () Bool)

(assert (=> b!1227912 m!1132591))

(declare-fun m!1132593 () Bool)

(assert (=> b!1227924 m!1132593))

(declare-fun m!1132595 () Bool)

(assert (=> b!1227924 m!1132595))

(assert (=> b!1227919 m!1132593))

(assert (=> b!1227919 m!1132593))

(declare-fun m!1132597 () Bool)

(assert (=> b!1227919 m!1132597))

(declare-fun m!1132599 () Bool)

(assert (=> b!1227915 m!1132599))

(declare-fun m!1132601 () Bool)

(assert (=> b!1227918 m!1132601))

(declare-fun m!1132603 () Bool)

(assert (=> b!1227923 m!1132603))

(declare-fun m!1132605 () Bool)

(assert (=> b!1227921 m!1132605))

(declare-fun m!1132607 () Bool)

(assert (=> b!1227917 m!1132607))

(declare-fun m!1132609 () Bool)

(assert (=> b!1227914 m!1132609))

(declare-fun m!1132611 () Bool)

(assert (=> b!1227920 m!1132611))

(push 1)

(assert (not b!1227913))

(assert (not b!1227915))

(assert (not b!1227920))

(assert (not b!1227919))

(assert (not b!1227916))

(assert (not b!1227912))

(assert (not b!1227914))

(assert (not b!1227923))

(assert (not b!1227918))

(assert (not b!1227917))

(assert (not b!1227921))

(assert (not b!1227924))

(assert (not start!102026))

(check-sat)

(pop 1)

