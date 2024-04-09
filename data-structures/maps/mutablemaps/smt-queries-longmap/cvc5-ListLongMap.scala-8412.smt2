; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102406 () Bool)

(assert start!102406)

(declare-fun b!1231494 () Bool)

(declare-fun res!820018 () Bool)

(declare-fun e!698683 () Bool)

(assert (=> b!1231494 (=> (not res!820018) (not e!698683))))

(declare-datatypes ((List!27270 0))(
  ( (Nil!27267) (Cons!27266 (h!28475 (_ BitVec 64)) (t!40740 List!27270)) )
))
(declare-fun acc!823 () List!27270)

(declare-fun contains!7185 (List!27270 (_ BitVec 64)) Bool)

(assert (=> b!1231494 (= res!820018 (not (contains!7185 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231495 () Bool)

(declare-fun res!820020 () Bool)

(assert (=> b!1231495 (=> (not res!820020) (not e!698683))))

(declare-datatypes ((array!79415 0))(
  ( (array!79416 (arr!38319 (Array (_ BitVec 32) (_ BitVec 64))) (size!38856 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79415)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79415 (_ BitVec 32) List!27270) Bool)

(assert (=> b!1231495 (= res!820020 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231496 () Bool)

(declare-fun res!820025 () Bool)

(assert (=> b!1231496 (=> (not res!820025) (not e!698683))))

(declare-fun noDuplicate!1792 (List!27270) Bool)

(assert (=> b!1231496 (= res!820025 (noDuplicate!1792 acc!823))))

(declare-fun b!1231497 () Bool)

(declare-fun res!820019 () Bool)

(assert (=> b!1231497 (=> (not res!820019) (not e!698683))))

(assert (=> b!1231497 (= res!820019 (not (contains!7185 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231498 () Bool)

(declare-fun res!820024 () Bool)

(assert (=> b!1231498 (=> (not res!820024) (not e!698683))))

(assert (=> b!1231498 (= res!820024 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38856 a!3806)) (bvslt from!3184 (size!38856 a!3806))))))

(declare-fun b!1231499 () Bool)

(declare-fun res!820023 () Bool)

(declare-fun e!698681 () Bool)

(assert (=> b!1231499 (=> res!820023 e!698681)))

(assert (=> b!1231499 (= res!820023 (contains!7185 Nil!27267 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231500 () Bool)

(declare-fun res!820022 () Bool)

(assert (=> b!1231500 (=> (not res!820022) (not e!698683))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231500 (= res!820022 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!820014 () Bool)

(assert (=> start!102406 (=> (not res!820014) (not e!698683))))

(assert (=> start!102406 (= res!820014 (bvslt (size!38856 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102406 e!698683))

(declare-fun array_inv!29095 (array!79415) Bool)

(assert (=> start!102406 (array_inv!29095 a!3806)))

(assert (=> start!102406 true))

(declare-fun b!1231501 () Bool)

(declare-fun res!820021 () Bool)

(assert (=> b!1231501 (=> (not res!820021) (not e!698683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231501 (= res!820021 (validKeyInArray!0 (select (arr!38319 a!3806) from!3184)))))

(declare-fun b!1231502 () Bool)

(assert (=> b!1231502 (= e!698683 (not e!698681))))

(declare-fun res!820016 () Bool)

(assert (=> b!1231502 (=> res!820016 e!698681)))

(assert (=> b!1231502 (= res!820016 (bvsgt from!3184 (size!38856 a!3806)))))

(assert (=> b!1231502 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27266 (select (arr!38319 a!3806) from!3184) acc!823))))

(declare-fun b!1231503 () Bool)

(assert (=> b!1231503 (= e!698681 true)))

(declare-datatypes ((Unit!40718 0))(
  ( (Unit!40719) )
))
(declare-fun lt!559367 () Unit!40718)

(declare-fun noDuplicateSubseq!53 (List!27270 List!27270) Unit!40718)

(assert (=> b!1231503 (= lt!559367 (noDuplicateSubseq!53 Nil!27267 acc!823))))

(declare-fun b!1231504 () Bool)

(declare-fun res!820017 () Bool)

(assert (=> b!1231504 (=> res!820017 e!698681)))

(assert (=> b!1231504 (= res!820017 (contains!7185 Nil!27267 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231505 () Bool)

(declare-fun res!820015 () Bool)

(assert (=> b!1231505 (=> res!820015 e!698681)))

(declare-fun subseq!503 (List!27270 List!27270) Bool)

(assert (=> b!1231505 (= res!820015 (not (subseq!503 Nil!27267 acc!823)))))

(declare-fun b!1231506 () Bool)

(declare-fun res!820013 () Bool)

(assert (=> b!1231506 (=> (not res!820013) (not e!698683))))

(assert (=> b!1231506 (= res!820013 (validKeyInArray!0 k!2913))))

(assert (= (and start!102406 res!820014) b!1231506))

(assert (= (and b!1231506 res!820013) b!1231498))

(assert (= (and b!1231498 res!820024) b!1231496))

(assert (= (and b!1231496 res!820025) b!1231497))

(assert (= (and b!1231497 res!820019) b!1231494))

(assert (= (and b!1231494 res!820018) b!1231500))

(assert (= (and b!1231500 res!820022) b!1231495))

(assert (= (and b!1231495 res!820020) b!1231501))

(assert (= (and b!1231501 res!820021) b!1231502))

(assert (= (and b!1231502 (not res!820016)) b!1231504))

(assert (= (and b!1231504 (not res!820017)) b!1231499))

(assert (= (and b!1231499 (not res!820023)) b!1231505))

(assert (= (and b!1231505 (not res!820015)) b!1231503))

(declare-fun m!1135691 () Bool)

(assert (=> b!1231505 m!1135691))

(declare-fun m!1135693 () Bool)

(assert (=> start!102406 m!1135693))

(declare-fun m!1135695 () Bool)

(assert (=> b!1231503 m!1135695))

(declare-fun m!1135697 () Bool)

(assert (=> b!1231506 m!1135697))

(declare-fun m!1135699 () Bool)

(assert (=> b!1231494 m!1135699))

(declare-fun m!1135701 () Bool)

(assert (=> b!1231497 m!1135701))

(declare-fun m!1135703 () Bool)

(assert (=> b!1231500 m!1135703))

(declare-fun m!1135705 () Bool)

(assert (=> b!1231502 m!1135705))

(declare-fun m!1135707 () Bool)

(assert (=> b!1231502 m!1135707))

(declare-fun m!1135709 () Bool)

(assert (=> b!1231496 m!1135709))

(declare-fun m!1135711 () Bool)

(assert (=> b!1231499 m!1135711))

(declare-fun m!1135713 () Bool)

(assert (=> b!1231495 m!1135713))

(declare-fun m!1135715 () Bool)

(assert (=> b!1231504 m!1135715))

(assert (=> b!1231501 m!1135705))

(assert (=> b!1231501 m!1135705))

(declare-fun m!1135717 () Bool)

(assert (=> b!1231501 m!1135717))

(push 1)

(assert (not b!1231504))

(assert (not b!1231506))

(assert (not b!1231503))

(assert (not b!1231499))

(assert (not b!1231505))

(assert (not b!1231497))

(assert (not b!1231494))

(assert (not start!102406))

(assert (not b!1231496))

(assert (not b!1231502))

(assert (not b!1231495))

(assert (not b!1231500))

(assert (not b!1231501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

