; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93466 () Bool)

(assert start!93466)

(declare-fun res!706851 () Bool)

(declare-fun e!602005 () Bool)

(assert (=> start!93466 (=> (not res!706851) (not e!602005))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66717 0))(
  ( (array!66718 (arr!32073 (Array (_ BitVec 32) (_ BitVec 64))) (size!32610 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66717)

(assert (=> start!93466 (= res!706851 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32610 a!3488)) (bvslt (size!32610 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93466 e!602005))

(assert (=> start!93466 true))

(declare-fun array_inv!24695 (array!66717) Bool)

(assert (=> start!93466 (array_inv!24695 a!3488)))

(declare-fun b!1058167 () Bool)

(declare-fun res!706850 () Bool)

(declare-fun e!602001 () Bool)

(assert (=> b!1058167 (=> res!706850 e!602001)))

(declare-datatypes ((List!22516 0))(
  ( (Nil!22513) (Cons!22512 (h!23721 (_ BitVec 64)) (t!31830 List!22516)) )
))
(declare-fun contains!6222 (List!22516 (_ BitVec 64)) Bool)

(assert (=> b!1058167 (= res!706850 (contains!6222 Nil!22513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058168 () Bool)

(declare-fun e!602003 () Bool)

(assert (=> b!1058168 (= e!602005 e!602003)))

(declare-fun res!706854 () Bool)

(assert (=> b!1058168 (=> (not res!706854) (not e!602003))))

(declare-fun lt!466747 () array!66717)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058168 (= res!706854 (arrayContainsKey!0 lt!466747 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058168 (= lt!466747 (array!66718 (store (arr!32073 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32610 a!3488)))))

(declare-fun b!1058169 () Bool)

(declare-fun res!706853 () Bool)

(assert (=> b!1058169 (=> (not res!706853) (not e!602005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058169 (= res!706853 (validKeyInArray!0 k!2747))))

(declare-fun b!1058170 () Bool)

(declare-fun e!602006 () Bool)

(assert (=> b!1058170 (= e!602006 e!602001)))

(declare-fun res!706861 () Bool)

(assert (=> b!1058170 (=> res!706861 e!602001)))

(declare-fun lt!466746 () (_ BitVec 32))

(declare-fun lt!466744 () (_ BitVec 32))

(assert (=> b!1058170 (= res!706861 (or (bvslt lt!466746 #b00000000000000000000000000000000) (bvsge lt!466744 (size!32610 a!3488)) (bvsge lt!466746 (size!32610 a!3488))))))

(assert (=> b!1058170 (arrayContainsKey!0 a!3488 k!2747 lt!466744)))

(declare-datatypes ((Unit!34677 0))(
  ( (Unit!34678) )
))
(declare-fun lt!466745 () Unit!34677)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66717 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34677)

(assert (=> b!1058170 (= lt!466745 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466744))))

(assert (=> b!1058170 (= lt!466744 (bvadd #b00000000000000000000000000000001 lt!466746))))

(declare-fun arrayNoDuplicates!0 (array!66717 (_ BitVec 32) List!22516) Bool)

(assert (=> b!1058170 (arrayNoDuplicates!0 a!3488 lt!466746 Nil!22513)))

(declare-fun lt!466743 () Unit!34677)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66717 (_ BitVec 32) (_ BitVec 32)) Unit!34677)

(assert (=> b!1058170 (= lt!466743 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466746))))

(declare-fun b!1058171 () Bool)

(declare-fun e!602004 () Bool)

(declare-fun e!602007 () Bool)

(assert (=> b!1058171 (= e!602004 e!602007)))

(declare-fun res!706858 () Bool)

(assert (=> b!1058171 (=> res!706858 e!602007)))

(assert (=> b!1058171 (= res!706858 (or (bvsgt lt!466746 i!1381) (bvsle i!1381 lt!466746)))))

(declare-fun b!1058172 () Bool)

(declare-fun e!602002 () Bool)

(assert (=> b!1058172 (= e!602002 (not e!602006))))

(declare-fun res!706856 () Bool)

(assert (=> b!1058172 (=> res!706856 e!602006)))

(assert (=> b!1058172 (= res!706856 (or (bvsgt lt!466746 i!1381) (bvsle i!1381 lt!466746)))))

(assert (=> b!1058172 e!602004))

(declare-fun res!706857 () Bool)

(assert (=> b!1058172 (=> (not res!706857) (not e!602004))))

(assert (=> b!1058172 (= res!706857 (= (select (store (arr!32073 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466746) k!2747))))

(declare-fun b!1058173 () Bool)

(declare-fun res!706859 () Bool)

(assert (=> b!1058173 (=> (not res!706859) (not e!602005))))

(assert (=> b!1058173 (= res!706859 (= (select (arr!32073 a!3488) i!1381) k!2747))))

(declare-fun b!1058174 () Bool)

(assert (=> b!1058174 (= e!602007 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058175 () Bool)

(declare-fun res!706860 () Bool)

(assert (=> b!1058175 (=> (not res!706860) (not e!602005))))

(assert (=> b!1058175 (= res!706860 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22513))))

(declare-fun b!1058176 () Bool)

(assert (=> b!1058176 (= e!602001 true)))

(declare-fun lt!466742 () Bool)

(assert (=> b!1058176 (= lt!466742 (contains!6222 Nil!22513 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058177 () Bool)

(assert (=> b!1058177 (= e!602003 e!602002)))

(declare-fun res!706855 () Bool)

(assert (=> b!1058177 (=> (not res!706855) (not e!602002))))

(assert (=> b!1058177 (= res!706855 (not (= lt!466746 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66717 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058177 (= lt!466746 (arrayScanForKey!0 lt!466747 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058178 () Bool)

(declare-fun res!706852 () Bool)

(assert (=> b!1058178 (=> res!706852 e!602001)))

(declare-fun noDuplicate!1583 (List!22516) Bool)

(assert (=> b!1058178 (= res!706852 (not (noDuplicate!1583 Nil!22513)))))

(assert (= (and start!93466 res!706851) b!1058175))

(assert (= (and b!1058175 res!706860) b!1058169))

(assert (= (and b!1058169 res!706853) b!1058173))

(assert (= (and b!1058173 res!706859) b!1058168))

(assert (= (and b!1058168 res!706854) b!1058177))

(assert (= (and b!1058177 res!706855) b!1058172))

(assert (= (and b!1058172 res!706857) b!1058171))

(assert (= (and b!1058171 (not res!706858)) b!1058174))

(assert (= (and b!1058172 (not res!706856)) b!1058170))

(assert (= (and b!1058170 (not res!706861)) b!1058178))

(assert (= (and b!1058178 (not res!706852)) b!1058167))

(assert (= (and b!1058167 (not res!706850)) b!1058176))

(declare-fun m!977941 () Bool)

(assert (=> b!1058172 m!977941))

(declare-fun m!977943 () Bool)

(assert (=> b!1058172 m!977943))

(declare-fun m!977945 () Bool)

(assert (=> b!1058167 m!977945))

(declare-fun m!977947 () Bool)

(assert (=> b!1058178 m!977947))

(declare-fun m!977949 () Bool)

(assert (=> b!1058177 m!977949))

(declare-fun m!977951 () Bool)

(assert (=> b!1058168 m!977951))

(assert (=> b!1058168 m!977941))

(declare-fun m!977953 () Bool)

(assert (=> b!1058169 m!977953))

(declare-fun m!977955 () Bool)

(assert (=> b!1058174 m!977955))

(declare-fun m!977957 () Bool)

(assert (=> b!1058173 m!977957))

(declare-fun m!977959 () Bool)

(assert (=> b!1058175 m!977959))

(declare-fun m!977961 () Bool)

(assert (=> start!93466 m!977961))

(declare-fun m!977963 () Bool)

(assert (=> b!1058170 m!977963))

(declare-fun m!977965 () Bool)

(assert (=> b!1058170 m!977965))

(declare-fun m!977967 () Bool)

(assert (=> b!1058170 m!977967))

(declare-fun m!977969 () Bool)

(assert (=> b!1058170 m!977969))

(declare-fun m!977971 () Bool)

(assert (=> b!1058176 m!977971))

(push 1)

(assert (not b!1058178))

