; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102850 () Bool)

(assert start!102850)

(declare-fun b!1235589 () Bool)

(declare-fun res!823804 () Bool)

(declare-fun e!700540 () Bool)

(assert (=> b!1235589 (=> (not res!823804) (not e!700540))))

(declare-datatypes ((List!27373 0))(
  ( (Nil!27370) (Cons!27369 (h!28578 (_ BitVec 64)) (t!40843 List!27373)) )
))
(declare-fun acc!846 () List!27373)

(declare-fun contains!7288 (List!27373 (_ BitVec 64)) Bool)

(assert (=> b!1235589 (= res!823804 (not (contains!7288 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235590 () Bool)

(declare-fun e!700539 () Bool)

(assert (=> b!1235590 (= e!700539 false)))

(declare-datatypes ((array!79636 0))(
  ( (array!79637 (arr!38422 (Array (_ BitVec 32) (_ BitVec 64))) (size!38959 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79636)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!560362 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79636 (_ BitVec 32) List!27373) Bool)

(assert (=> b!1235590 (= lt!560362 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235591 () Bool)

(declare-fun res!823803 () Bool)

(assert (=> b!1235591 (=> (not res!823803) (not e!700540))))

(assert (=> b!1235591 (= res!823803 (not (contains!7288 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235592 () Bool)

(declare-fun res!823802 () Bool)

(assert (=> b!1235592 (=> (not res!823802) (not e!700540))))

(assert (=> b!1235592 (= res!823802 (not (= from!3213 (bvsub (size!38959 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235593 () Bool)

(declare-fun res!823798 () Bool)

(assert (=> b!1235593 (=> (not res!823798) (not e!700540))))

(assert (=> b!1235593 (= res!823798 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235594 () Bool)

(declare-fun res!823801 () Bool)

(assert (=> b!1235594 (=> (not res!823801) (not e!700540))))

(declare-fun noDuplicate!1895 (List!27373) Bool)

(assert (=> b!1235594 (= res!823801 (noDuplicate!1895 acc!846))))

(declare-fun res!823799 () Bool)

(assert (=> start!102850 (=> (not res!823799) (not e!700540))))

(assert (=> start!102850 (= res!823799 (and (bvslt (size!38959 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38959 a!3835))))))

(assert (=> start!102850 e!700540))

(declare-fun array_inv!29198 (array!79636) Bool)

(assert (=> start!102850 (array_inv!29198 a!3835)))

(assert (=> start!102850 true))

(declare-fun b!1235595 () Bool)

(declare-datatypes ((Unit!40898 0))(
  ( (Unit!40899) )
))
(declare-fun e!700538 () Unit!40898)

(declare-fun lt!560364 () Unit!40898)

(assert (=> b!1235595 (= e!700538 lt!560364)))

(declare-fun lt!560360 () List!27373)

(assert (=> b!1235595 (= lt!560360 (Cons!27369 (select (arr!38422 a!3835) from!3213) acc!846))))

(declare-fun lt!560361 () Unit!40898)

(declare-fun lemmaListSubSeqRefl!0 (List!27373) Unit!40898)

(assert (=> b!1235595 (= lt!560361 (lemmaListSubSeqRefl!0 lt!560360))))

(declare-fun subseq!543 (List!27373 List!27373) Bool)

(assert (=> b!1235595 (subseq!543 lt!560360 lt!560360)))

(declare-fun lt!560365 () Unit!40898)

(declare-fun subseqTail!36 (List!27373 List!27373) Unit!40898)

(assert (=> b!1235595 (= lt!560365 (subseqTail!36 lt!560360 lt!560360))))

(assert (=> b!1235595 (subseq!543 acc!846 lt!560360)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79636 List!27373 List!27373 (_ BitVec 32)) Unit!40898)

(assert (=> b!1235595 (= lt!560364 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560360 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235595 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235596 () Bool)

(declare-fun res!823805 () Bool)

(assert (=> b!1235596 (=> (not res!823805) (not e!700540))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235596 (= res!823805 (contains!7288 acc!846 k0!2925))))

(declare-fun b!1235597 () Bool)

(assert (=> b!1235597 (= e!700540 e!700539)))

(declare-fun res!823800 () Bool)

(assert (=> b!1235597 (=> (not res!823800) (not e!700539))))

(assert (=> b!1235597 (= res!823800 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38959 a!3835))))))

(declare-fun lt!560363 () Unit!40898)

(assert (=> b!1235597 (= lt!560363 e!700538)))

(declare-fun c!120758 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235597 (= c!120758 (validKeyInArray!0 (select (arr!38422 a!3835) from!3213)))))

(declare-fun b!1235598 () Bool)

(declare-fun Unit!40900 () Unit!40898)

(assert (=> b!1235598 (= e!700538 Unit!40900)))

(assert (= (and start!102850 res!823799) b!1235594))

(assert (= (and b!1235594 res!823801) b!1235591))

(assert (= (and b!1235591 res!823803) b!1235589))

(assert (= (and b!1235589 res!823804) b!1235593))

(assert (= (and b!1235593 res!823798) b!1235596))

(assert (= (and b!1235596 res!823805) b!1235592))

(assert (= (and b!1235592 res!823802) b!1235597))

(assert (= (and b!1235597 c!120758) b!1235595))

(assert (= (and b!1235597 (not c!120758)) b!1235598))

(assert (= (and b!1235597 res!823800) b!1235590))

(declare-fun m!1139511 () Bool)

(assert (=> b!1235595 m!1139511))

(declare-fun m!1139513 () Bool)

(assert (=> b!1235595 m!1139513))

(declare-fun m!1139515 () Bool)

(assert (=> b!1235595 m!1139515))

(declare-fun m!1139517 () Bool)

(assert (=> b!1235595 m!1139517))

(declare-fun m!1139519 () Bool)

(assert (=> b!1235595 m!1139519))

(declare-fun m!1139521 () Bool)

(assert (=> b!1235595 m!1139521))

(declare-fun m!1139523 () Bool)

(assert (=> b!1235595 m!1139523))

(declare-fun m!1139525 () Bool)

(assert (=> b!1235589 m!1139525))

(declare-fun m!1139527 () Bool)

(assert (=> b!1235594 m!1139527))

(assert (=> b!1235597 m!1139517))

(assert (=> b!1235597 m!1139517))

(declare-fun m!1139529 () Bool)

(assert (=> b!1235597 m!1139529))

(declare-fun m!1139531 () Bool)

(assert (=> start!102850 m!1139531))

(declare-fun m!1139533 () Bool)

(assert (=> b!1235591 m!1139533))

(assert (=> b!1235590 m!1139515))

(declare-fun m!1139535 () Bool)

(assert (=> b!1235593 m!1139535))

(declare-fun m!1139537 () Bool)

(assert (=> b!1235596 m!1139537))

(check-sat (not b!1235590) (not b!1235594) (not b!1235597) (not b!1235596) (not start!102850) (not b!1235593) (not b!1235589) (not b!1235595) (not b!1235591))
(check-sat)
