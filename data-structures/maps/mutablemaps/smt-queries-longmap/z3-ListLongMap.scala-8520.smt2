; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103952 () Bool)

(assert start!103952)

(declare-fun res!829683 () Bool)

(declare-fun e!705027 () Bool)

(assert (=> start!103952 (=> (not res!829683) (not e!705027))))

(declare-datatypes ((array!79990 0))(
  ( (array!79991 (arr!38584 (Array (_ BitVec 32) (_ BitVec 64))) (size!39121 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79990)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103952 (= res!829683 (and (bvslt (size!39121 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39121 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39121 a!3892))))))

(assert (=> start!103952 e!705027))

(declare-fun array_inv!29360 (array!79990) Bool)

(assert (=> start!103952 (array_inv!29360 a!3892)))

(assert (=> start!103952 true))

(declare-fun b!1243781 () Bool)

(declare-fun res!829688 () Bool)

(assert (=> b!1243781 (=> (not res!829688) (not e!705027))))

(declare-datatypes ((List!27565 0))(
  ( (Nil!27562) (Cons!27561 (h!28770 (_ BitVec 64)) (t!41041 List!27565)) )
))
(declare-fun arrayNoDuplicates!0 (array!79990 (_ BitVec 32) List!27565) Bool)

(assert (=> b!1243781 (= res!829688 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27562))))

(declare-fun b!1243782 () Bool)

(declare-fun res!829686 () Bool)

(declare-fun e!705028 () Bool)

(assert (=> b!1243782 (=> (not res!829686) (not e!705028))))

(declare-fun lt!562447 () List!27565)

(declare-fun noDuplicate!2027 (List!27565) Bool)

(assert (=> b!1243782 (= res!829686 (noDuplicate!2027 lt!562447))))

(declare-fun b!1243783 () Bool)

(declare-fun res!829693 () Bool)

(assert (=> b!1243783 (=> (not res!829693) (not e!705028))))

(declare-fun subseq!648 (List!27565 List!27565) Bool)

(assert (=> b!1243783 (= res!829693 (subseq!648 Nil!27562 lt!562447))))

(declare-fun b!1243784 () Bool)

(declare-fun res!829687 () Bool)

(assert (=> b!1243784 (=> (not res!829687) (not e!705028))))

(declare-fun contains!7437 (List!27565 (_ BitVec 64)) Bool)

(assert (=> b!1243784 (= res!829687 (not (contains!7437 Nil!27562 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243785 () Bool)

(declare-fun res!829685 () Bool)

(assert (=> b!1243785 (=> (not res!829685) (not e!705027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243785 (= res!829685 (validKeyInArray!0 (select (arr!38584 a!3892) from!3270)))))

(declare-fun b!1243786 () Bool)

(declare-fun res!829691 () Bool)

(assert (=> b!1243786 (=> (not res!829691) (not e!705028))))

(assert (=> b!1243786 (= res!829691 (not (contains!7437 lt!562447 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243787 () Bool)

(declare-fun res!829684 () Bool)

(assert (=> b!1243787 (=> (not res!829684) (not e!705027))))

(assert (=> b!1243787 (= res!829684 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39121 a!3892)) (not (= newFrom!287 (size!39121 a!3892)))))))

(declare-fun b!1243788 () Bool)

(declare-fun res!829689 () Bool)

(assert (=> b!1243788 (=> (not res!829689) (not e!705028))))

(assert (=> b!1243788 (= res!829689 (not (contains!7437 Nil!27562 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243789 () Bool)

(assert (=> b!1243789 (= e!705028 false)))

(declare-fun lt!562446 () Bool)

(assert (=> b!1243789 (= lt!562446 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562447))))

(declare-datatypes ((Unit!41247 0))(
  ( (Unit!41248) )
))
(declare-fun lt!562445 () Unit!41247)

(declare-fun noDuplicateSubseq!102 (List!27565 List!27565) Unit!41247)

(assert (=> b!1243789 (= lt!562445 (noDuplicateSubseq!102 Nil!27562 lt!562447))))

(declare-fun b!1243790 () Bool)

(assert (=> b!1243790 (= e!705027 e!705028)))

(declare-fun res!829692 () Bool)

(assert (=> b!1243790 (=> (not res!829692) (not e!705028))))

(assert (=> b!1243790 (= res!829692 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243790 (= lt!562447 (Cons!27561 (select (arr!38584 a!3892) from!3270) Nil!27562))))

(declare-fun b!1243791 () Bool)

(declare-fun res!829690 () Bool)

(assert (=> b!1243791 (=> (not res!829690) (not e!705028))))

(assert (=> b!1243791 (= res!829690 (not (contains!7437 lt!562447 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103952 res!829683) b!1243781))

(assert (= (and b!1243781 res!829688) b!1243787))

(assert (= (and b!1243787 res!829684) b!1243785))

(assert (= (and b!1243785 res!829685) b!1243790))

(assert (= (and b!1243790 res!829692) b!1243782))

(assert (= (and b!1243782 res!829686) b!1243786))

(assert (= (and b!1243786 res!829691) b!1243791))

(assert (= (and b!1243791 res!829690) b!1243788))

(assert (= (and b!1243788 res!829689) b!1243784))

(assert (= (and b!1243784 res!829687) b!1243783))

(assert (= (and b!1243783 res!829693) b!1243789))

(declare-fun m!1146249 () Bool)

(assert (=> b!1243785 m!1146249))

(assert (=> b!1243785 m!1146249))

(declare-fun m!1146251 () Bool)

(assert (=> b!1243785 m!1146251))

(declare-fun m!1146253 () Bool)

(assert (=> b!1243789 m!1146253))

(declare-fun m!1146255 () Bool)

(assert (=> b!1243789 m!1146255))

(declare-fun m!1146257 () Bool)

(assert (=> b!1243788 m!1146257))

(declare-fun m!1146259 () Bool)

(assert (=> b!1243782 m!1146259))

(declare-fun m!1146261 () Bool)

(assert (=> b!1243783 m!1146261))

(declare-fun m!1146263 () Bool)

(assert (=> b!1243791 m!1146263))

(declare-fun m!1146265 () Bool)

(assert (=> b!1243786 m!1146265))

(declare-fun m!1146267 () Bool)

(assert (=> start!103952 m!1146267))

(declare-fun m!1146269 () Bool)

(assert (=> b!1243781 m!1146269))

(assert (=> b!1243790 m!1146249))

(declare-fun m!1146271 () Bool)

(assert (=> b!1243784 m!1146271))

(check-sat (not b!1243781) (not b!1243785) (not b!1243784) (not b!1243783) (not b!1243791) (not start!103952) (not b!1243782) (not b!1243789) (not b!1243788) (not b!1243786))
(check-sat)
