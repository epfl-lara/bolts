; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103956 () Bool)

(assert start!103956)

(declare-fun b!1243847 () Bool)

(declare-fun res!829757 () Bool)

(declare-fun e!705045 () Bool)

(assert (=> b!1243847 (=> (not res!829757) (not e!705045))))

(declare-datatypes ((array!79994 0))(
  ( (array!79995 (arr!38586 (Array (_ BitVec 32) (_ BitVec 64))) (size!39123 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79994)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243847 (= res!829757 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39123 a!3892)) (not (= newFrom!287 (size!39123 a!3892)))))))

(declare-fun b!1243848 () Bool)

(declare-fun res!829758 () Bool)

(assert (=> b!1243848 (=> (not res!829758) (not e!705045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243848 (= res!829758 (validKeyInArray!0 (select (arr!38586 a!3892) from!3270)))))

(declare-fun b!1243849 () Bool)

(declare-fun res!829750 () Bool)

(declare-fun e!705047 () Bool)

(assert (=> b!1243849 (=> (not res!829750) (not e!705047))))

(declare-datatypes ((List!27567 0))(
  ( (Nil!27564) (Cons!27563 (h!28772 (_ BitVec 64)) (t!41043 List!27567)) )
))
(declare-fun contains!7439 (List!27567 (_ BitVec 64)) Bool)

(assert (=> b!1243849 (= res!829750 (not (contains!7439 Nil!27564 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243850 () Bool)

(declare-fun res!829752 () Bool)

(assert (=> b!1243850 (=> (not res!829752) (not e!705047))))

(declare-fun lt!562464 () List!27567)

(assert (=> b!1243850 (= res!829752 (not (contains!7439 lt!562464 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243851 () Bool)

(declare-fun res!829755 () Bool)

(assert (=> b!1243851 (=> (not res!829755) (not e!705045))))

(declare-fun arrayNoDuplicates!0 (array!79994 (_ BitVec 32) List!27567) Bool)

(assert (=> b!1243851 (= res!829755 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27564))))

(declare-fun b!1243852 () Bool)

(assert (=> b!1243852 (= e!705047 false)))

(declare-fun lt!562463 () Bool)

(assert (=> b!1243852 (= lt!562463 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562464))))

(declare-datatypes ((Unit!41251 0))(
  ( (Unit!41252) )
))
(declare-fun lt!562465 () Unit!41251)

(declare-fun noDuplicateSubseq!104 (List!27567 List!27567) Unit!41251)

(assert (=> b!1243852 (= lt!562465 (noDuplicateSubseq!104 Nil!27564 lt!562464))))

(declare-fun res!829754 () Bool)

(assert (=> start!103956 (=> (not res!829754) (not e!705045))))

(assert (=> start!103956 (= res!829754 (and (bvslt (size!39123 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39123 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39123 a!3892))))))

(assert (=> start!103956 e!705045))

(declare-fun array_inv!29362 (array!79994) Bool)

(assert (=> start!103956 (array_inv!29362 a!3892)))

(assert (=> start!103956 true))

(declare-fun b!1243853 () Bool)

(declare-fun res!829749 () Bool)

(assert (=> b!1243853 (=> (not res!829749) (not e!705047))))

(assert (=> b!1243853 (= res!829749 (not (contains!7439 lt!562464 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243854 () Bool)

(declare-fun res!829759 () Bool)

(assert (=> b!1243854 (=> (not res!829759) (not e!705047))))

(declare-fun noDuplicate!2029 (List!27567) Bool)

(assert (=> b!1243854 (= res!829759 (noDuplicate!2029 lt!562464))))

(declare-fun b!1243855 () Bool)

(assert (=> b!1243855 (= e!705045 e!705047)))

(declare-fun res!829756 () Bool)

(assert (=> b!1243855 (=> (not res!829756) (not e!705047))))

(assert (=> b!1243855 (= res!829756 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243855 (= lt!562464 (Cons!27563 (select (arr!38586 a!3892) from!3270) Nil!27564))))

(declare-fun b!1243856 () Bool)

(declare-fun res!829751 () Bool)

(assert (=> b!1243856 (=> (not res!829751) (not e!705047))))

(assert (=> b!1243856 (= res!829751 (not (contains!7439 Nil!27564 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243857 () Bool)

(declare-fun res!829753 () Bool)

(assert (=> b!1243857 (=> (not res!829753) (not e!705047))))

(declare-fun subseq!650 (List!27567 List!27567) Bool)

(assert (=> b!1243857 (= res!829753 (subseq!650 Nil!27564 lt!562464))))

(assert (= (and start!103956 res!829754) b!1243851))

(assert (= (and b!1243851 res!829755) b!1243847))

(assert (= (and b!1243847 res!829757) b!1243848))

(assert (= (and b!1243848 res!829758) b!1243855))

(assert (= (and b!1243855 res!829756) b!1243854))

(assert (= (and b!1243854 res!829759) b!1243850))

(assert (= (and b!1243850 res!829752) b!1243853))

(assert (= (and b!1243853 res!829749) b!1243849))

(assert (= (and b!1243849 res!829750) b!1243856))

(assert (= (and b!1243856 res!829751) b!1243857))

(assert (= (and b!1243857 res!829753) b!1243852))

(declare-fun m!1146297 () Bool)

(assert (=> b!1243854 m!1146297))

(declare-fun m!1146299 () Bool)

(assert (=> b!1243851 m!1146299))

(declare-fun m!1146301 () Bool)

(assert (=> b!1243852 m!1146301))

(declare-fun m!1146303 () Bool)

(assert (=> b!1243852 m!1146303))

(declare-fun m!1146305 () Bool)

(assert (=> b!1243849 m!1146305))

(declare-fun m!1146307 () Bool)

(assert (=> start!103956 m!1146307))

(declare-fun m!1146309 () Bool)

(assert (=> b!1243855 m!1146309))

(declare-fun m!1146311 () Bool)

(assert (=> b!1243850 m!1146311))

(declare-fun m!1146313 () Bool)

(assert (=> b!1243857 m!1146313))

(assert (=> b!1243848 m!1146309))

(assert (=> b!1243848 m!1146309))

(declare-fun m!1146315 () Bool)

(assert (=> b!1243848 m!1146315))

(declare-fun m!1146317 () Bool)

(assert (=> b!1243853 m!1146317))

(declare-fun m!1146319 () Bool)

(assert (=> b!1243856 m!1146319))

(push 1)

