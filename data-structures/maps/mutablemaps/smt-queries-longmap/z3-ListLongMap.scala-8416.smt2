; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102474 () Bool)

(assert start!102474)

(declare-fun b!1232037 () Bool)

(declare-fun res!820527 () Bool)

(declare-fun e!698914 () Bool)

(assert (=> b!1232037 (=> (not res!820527) (not e!698914))))

(declare-datatypes ((List!27283 0))(
  ( (Nil!27280) (Cons!27279 (h!28488 (_ BitVec 64)) (t!40753 List!27283)) )
))
(declare-fun acc!823 () List!27283)

(declare-fun contains!7198 (List!27283 (_ BitVec 64)) Bool)

(assert (=> b!1232037 (= res!820527 (not (contains!7198 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232038 () Bool)

(declare-fun res!820526 () Bool)

(assert (=> b!1232038 (=> (not res!820526) (not e!698914))))

(declare-datatypes ((array!79444 0))(
  ( (array!79445 (arr!38332 (Array (_ BitVec 32) (_ BitVec 64))) (size!38869 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79444)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79444 (_ BitVec 32) List!27283) Bool)

(assert (=> b!1232038 (= res!820526 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232039 () Bool)

(assert (=> b!1232039 (= e!698914 (not true))))

(declare-fun e!698912 () Bool)

(assert (=> b!1232039 e!698912))

(declare-fun res!820524 () Bool)

(assert (=> b!1232039 (=> (not res!820524) (not e!698912))))

(assert (=> b!1232039 (= res!820524 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27280))))

(declare-datatypes ((Unit!40744 0))(
  ( (Unit!40745) )
))
(declare-fun lt!559427 () Unit!40744)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79444 List!27283 List!27283 (_ BitVec 32)) Unit!40744)

(assert (=> b!1232039 (= lt!559427 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27280 from!3184))))

(assert (=> b!1232039 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27279 (select (arr!38332 a!3806) from!3184) acc!823))))

(declare-fun b!1232040 () Bool)

(declare-fun res!820522 () Bool)

(assert (=> b!1232040 (=> (not res!820522) (not e!698914))))

(assert (=> b!1232040 (= res!820522 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38869 a!3806)) (bvslt from!3184 (size!38869 a!3806))))))

(declare-fun b!1232041 () Bool)

(declare-fun res!820521 () Bool)

(assert (=> b!1232041 (=> (not res!820521) (not e!698914))))

(assert (=> b!1232041 (= res!820521 (not (contains!7198 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232042 () Bool)

(declare-fun res!820523 () Bool)

(assert (=> b!1232042 (=> (not res!820523) (not e!698914))))

(declare-fun noDuplicate!1805 (List!27283) Bool)

(assert (=> b!1232042 (= res!820523 (noDuplicate!1805 acc!823))))

(declare-fun b!1232043 () Bool)

(declare-fun res!820528 () Bool)

(assert (=> b!1232043 (=> (not res!820528) (not e!698914))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232043 (= res!820528 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232044 () Bool)

(declare-fun res!820525 () Bool)

(assert (=> b!1232044 (=> (not res!820525) (not e!698914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232044 (= res!820525 (validKeyInArray!0 k0!2913))))

(declare-fun res!820520 () Bool)

(assert (=> start!102474 (=> (not res!820520) (not e!698914))))

(assert (=> start!102474 (= res!820520 (bvslt (size!38869 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102474 e!698914))

(declare-fun array_inv!29108 (array!79444) Bool)

(assert (=> start!102474 (array_inv!29108 a!3806)))

(assert (=> start!102474 true))

(declare-fun b!1232045 () Bool)

(assert (=> b!1232045 (= e!698912 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27279 (select (arr!38332 a!3806) from!3184) Nil!27280)))))

(declare-fun b!1232046 () Bool)

(declare-fun res!820529 () Bool)

(assert (=> b!1232046 (=> (not res!820529) (not e!698914))))

(assert (=> b!1232046 (= res!820529 (validKeyInArray!0 (select (arr!38332 a!3806) from!3184)))))

(assert (= (and start!102474 res!820520) b!1232044))

(assert (= (and b!1232044 res!820525) b!1232040))

(assert (= (and b!1232040 res!820522) b!1232042))

(assert (= (and b!1232042 res!820523) b!1232037))

(assert (= (and b!1232037 res!820527) b!1232041))

(assert (= (and b!1232041 res!820521) b!1232043))

(assert (= (and b!1232043 res!820528) b!1232038))

(assert (= (and b!1232038 res!820526) b!1232046))

(assert (= (and b!1232046 res!820529) b!1232039))

(assert (= (and b!1232039 res!820524) b!1232045))

(declare-fun m!1136143 () Bool)

(assert (=> b!1232044 m!1136143))

(declare-fun m!1136145 () Bool)

(assert (=> b!1232037 m!1136145))

(declare-fun m!1136147 () Bool)

(assert (=> b!1232045 m!1136147))

(declare-fun m!1136149 () Bool)

(assert (=> b!1232045 m!1136149))

(declare-fun m!1136151 () Bool)

(assert (=> b!1232039 m!1136151))

(declare-fun m!1136153 () Bool)

(assert (=> b!1232039 m!1136153))

(assert (=> b!1232039 m!1136147))

(declare-fun m!1136155 () Bool)

(assert (=> b!1232039 m!1136155))

(declare-fun m!1136157 () Bool)

(assert (=> b!1232043 m!1136157))

(assert (=> b!1232046 m!1136147))

(assert (=> b!1232046 m!1136147))

(declare-fun m!1136159 () Bool)

(assert (=> b!1232046 m!1136159))

(declare-fun m!1136161 () Bool)

(assert (=> b!1232042 m!1136161))

(declare-fun m!1136163 () Bool)

(assert (=> b!1232038 m!1136163))

(declare-fun m!1136165 () Bool)

(assert (=> b!1232041 m!1136165))

(declare-fun m!1136167 () Bool)

(assert (=> start!102474 m!1136167))

(check-sat (not start!102474) (not b!1232041) (not b!1232037) (not b!1232038) (not b!1232046) (not b!1232045) (not b!1232043) (not b!1232039) (not b!1232042) (not b!1232044))
(check-sat)
