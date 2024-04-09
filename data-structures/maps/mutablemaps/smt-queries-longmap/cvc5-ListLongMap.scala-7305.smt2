; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93468 () Bool)

(assert start!93468)

(declare-fun b!1058203 () Bool)

(declare-fun res!706895 () Bool)

(declare-fun e!602028 () Bool)

(assert (=> b!1058203 (=> (not res!706895) (not e!602028))))

(declare-datatypes ((array!66719 0))(
  ( (array!66720 (arr!32074 (Array (_ BitVec 32) (_ BitVec 64))) (size!32611 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66719)

(declare-datatypes ((List!22517 0))(
  ( (Nil!22514) (Cons!22513 (h!23722 (_ BitVec 64)) (t!31831 List!22517)) )
))
(declare-fun arrayNoDuplicates!0 (array!66719 (_ BitVec 32) List!22517) Bool)

(assert (=> b!1058203 (= res!706895 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22514))))

(declare-fun b!1058204 () Bool)

(declare-fun e!602029 () Bool)

(declare-fun e!602030 () Bool)

(assert (=> b!1058204 (= e!602029 e!602030)))

(declare-fun res!706887 () Bool)

(assert (=> b!1058204 (=> res!706887 e!602030)))

(declare-fun lt!466762 () (_ BitVec 32))

(declare-fun lt!466761 () (_ BitVec 32))

(assert (=> b!1058204 (= res!706887 (or (bvslt lt!466761 #b00000000000000000000000000000000) (bvsge lt!466762 (size!32611 a!3488)) (bvsge lt!466761 (size!32611 a!3488))))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058204 (arrayContainsKey!0 a!3488 k!2747 lt!466762)))

(declare-datatypes ((Unit!34679 0))(
  ( (Unit!34680) )
))
(declare-fun lt!466763 () Unit!34679)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66719 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34679)

(assert (=> b!1058204 (= lt!466763 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466762))))

(assert (=> b!1058204 (= lt!466762 (bvadd #b00000000000000000000000000000001 lt!466761))))

(assert (=> b!1058204 (arrayNoDuplicates!0 a!3488 lt!466761 Nil!22514)))

(declare-fun lt!466764 () Unit!34679)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66719 (_ BitVec 32) (_ BitVec 32)) Unit!34679)

(assert (=> b!1058204 (= lt!466764 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466761))))

(declare-fun b!1058205 () Bool)

(declare-fun res!706888 () Bool)

(assert (=> b!1058205 (=> (not res!706888) (not e!602028))))

(assert (=> b!1058205 (= res!706888 (= (select (arr!32074 a!3488) i!1381) k!2747))))

(declare-fun b!1058206 () Bool)

(declare-fun e!602025 () Bool)

(declare-fun e!602026 () Bool)

(assert (=> b!1058206 (= e!602025 e!602026)))

(declare-fun res!706886 () Bool)

(assert (=> b!1058206 (=> res!706886 e!602026)))

(assert (=> b!1058206 (= res!706886 (or (bvsgt lt!466761 i!1381) (bvsle i!1381 lt!466761)))))

(declare-fun b!1058207 () Bool)

(declare-fun res!706894 () Bool)

(assert (=> b!1058207 (=> res!706894 e!602030)))

(declare-fun noDuplicate!1584 (List!22517) Bool)

(assert (=> b!1058207 (= res!706894 (not (noDuplicate!1584 Nil!22514)))))

(declare-fun b!1058208 () Bool)

(declare-fun e!602027 () Bool)

(declare-fun e!602031 () Bool)

(assert (=> b!1058208 (= e!602027 e!602031)))

(declare-fun res!706893 () Bool)

(assert (=> b!1058208 (=> (not res!706893) (not e!602031))))

(assert (=> b!1058208 (= res!706893 (not (= lt!466761 i!1381)))))

(declare-fun lt!466765 () array!66719)

(declare-fun arrayScanForKey!0 (array!66719 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058208 (= lt!466761 (arrayScanForKey!0 lt!466765 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058209 () Bool)

(assert (=> b!1058209 (= e!602031 (not e!602029))))

(declare-fun res!706896 () Bool)

(assert (=> b!1058209 (=> res!706896 e!602029)))

(assert (=> b!1058209 (= res!706896 (or (bvsgt lt!466761 i!1381) (bvsle i!1381 lt!466761)))))

(assert (=> b!1058209 e!602025))

(declare-fun res!706890 () Bool)

(assert (=> b!1058209 (=> (not res!706890) (not e!602025))))

(assert (=> b!1058209 (= res!706890 (= (select (store (arr!32074 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466761) k!2747))))

(declare-fun b!1058210 () Bool)

(assert (=> b!1058210 (= e!602028 e!602027)))

(declare-fun res!706891 () Bool)

(assert (=> b!1058210 (=> (not res!706891) (not e!602027))))

(assert (=> b!1058210 (= res!706891 (arrayContainsKey!0 lt!466765 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058210 (= lt!466765 (array!66720 (store (arr!32074 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32611 a!3488)))))

(declare-fun b!1058211 () Bool)

(assert (=> b!1058211 (= e!602030 true)))

(declare-fun lt!466760 () Bool)

(declare-fun contains!6223 (List!22517 (_ BitVec 64)) Bool)

(assert (=> b!1058211 (= lt!466760 (contains!6223 Nil!22514 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058212 () Bool)

(declare-fun res!706889 () Bool)

(assert (=> b!1058212 (=> (not res!706889) (not e!602028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058212 (= res!706889 (validKeyInArray!0 k!2747))))

(declare-fun res!706897 () Bool)

(assert (=> start!93468 (=> (not res!706897) (not e!602028))))

(assert (=> start!93468 (= res!706897 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32611 a!3488)) (bvslt (size!32611 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93468 e!602028))

(assert (=> start!93468 true))

(declare-fun array_inv!24696 (array!66719) Bool)

(assert (=> start!93468 (array_inv!24696 a!3488)))

(declare-fun b!1058213 () Bool)

(assert (=> b!1058213 (= e!602026 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058214 () Bool)

(declare-fun res!706892 () Bool)

(assert (=> b!1058214 (=> res!706892 e!602030)))

(assert (=> b!1058214 (= res!706892 (contains!6223 Nil!22514 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!93468 res!706897) b!1058203))

(assert (= (and b!1058203 res!706895) b!1058212))

(assert (= (and b!1058212 res!706889) b!1058205))

(assert (= (and b!1058205 res!706888) b!1058210))

(assert (= (and b!1058210 res!706891) b!1058208))

(assert (= (and b!1058208 res!706893) b!1058209))

(assert (= (and b!1058209 res!706890) b!1058206))

(assert (= (and b!1058206 (not res!706886)) b!1058213))

(assert (= (and b!1058209 (not res!706896)) b!1058204))

(assert (= (and b!1058204 (not res!706887)) b!1058207))

(assert (= (and b!1058207 (not res!706894)) b!1058214))

(assert (= (and b!1058214 (not res!706892)) b!1058211))

(declare-fun m!977973 () Bool)

(assert (=> b!1058211 m!977973))

(declare-fun m!977975 () Bool)

(assert (=> b!1058208 m!977975))

(declare-fun m!977977 () Bool)

(assert (=> b!1058205 m!977977))

(declare-fun m!977979 () Bool)

(assert (=> b!1058210 m!977979))

(declare-fun m!977981 () Bool)

(assert (=> b!1058210 m!977981))

(declare-fun m!977983 () Bool)

(assert (=> b!1058214 m!977983))

(declare-fun m!977985 () Bool)

(assert (=> b!1058207 m!977985))

(assert (=> b!1058209 m!977981))

(declare-fun m!977987 () Bool)

(assert (=> b!1058209 m!977987))

(declare-fun m!977989 () Bool)

(assert (=> b!1058212 m!977989))

(declare-fun m!977991 () Bool)

(assert (=> b!1058203 m!977991))

(declare-fun m!977993 () Bool)

(assert (=> start!93468 m!977993))

(declare-fun m!977995 () Bool)

(assert (=> b!1058204 m!977995))

(declare-fun m!977997 () Bool)

(assert (=> b!1058204 m!977997))

(declare-fun m!977999 () Bool)

(assert (=> b!1058204 m!977999))

(declare-fun m!978001 () Bool)

(assert (=> b!1058204 m!978001))

(declare-fun m!978003 () Bool)

(assert (=> b!1058213 m!978003))

(push 1)

