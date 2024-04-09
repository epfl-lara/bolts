; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93264 () Bool)

(assert start!93264)

(declare-fun b!1056942 () Bool)

(declare-fun res!705756 () Bool)

(declare-fun e!601037 () Bool)

(assert (=> b!1056942 (=> (not res!705756) (not e!601037))))

(declare-datatypes ((array!66650 0))(
  ( (array!66651 (arr!32044 (Array (_ BitVec 32) (_ BitVec 64))) (size!32581 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66650)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056942 (= res!705756 (= (select (arr!32044 a!3488) i!1381) k!2747))))

(declare-fun b!1056943 () Bool)

(declare-fun e!601042 () Bool)

(declare-fun arrayContainsKey!0 (array!66650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056943 (= e!601042 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056944 () Bool)

(declare-fun e!601043 () Bool)

(declare-fun e!601038 () Bool)

(assert (=> b!1056944 (= e!601043 (not e!601038))))

(declare-fun res!705754 () Bool)

(assert (=> b!1056944 (=> res!705754 e!601038)))

(declare-fun lt!466238 () (_ BitVec 32))

(assert (=> b!1056944 (= res!705754 (or (bvsgt lt!466238 i!1381) (bvsle i!1381 lt!466238)))))

(declare-fun e!601041 () Bool)

(assert (=> b!1056944 e!601041))

(declare-fun res!705751 () Bool)

(assert (=> b!1056944 (=> (not res!705751) (not e!601041))))

(assert (=> b!1056944 (= res!705751 (= (select (store (arr!32044 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466238) k!2747))))

(declare-fun b!1056945 () Bool)

(assert (=> b!1056945 (= e!601041 e!601042)))

(declare-fun res!705758 () Bool)

(assert (=> b!1056945 (=> res!705758 e!601042)))

(assert (=> b!1056945 (= res!705758 (or (bvsgt lt!466238 i!1381) (bvsle i!1381 lt!466238)))))

(declare-fun b!1056946 () Bool)

(assert (=> b!1056946 (= e!601038 true)))

(declare-datatypes ((List!22487 0))(
  ( (Nil!22484) (Cons!22483 (h!23692 (_ BitVec 64)) (t!31801 List!22487)) )
))
(declare-fun arrayNoDuplicates!0 (array!66650 (_ BitVec 32) List!22487) Bool)

(assert (=> b!1056946 (arrayNoDuplicates!0 a!3488 lt!466238 Nil!22484)))

(declare-datatypes ((Unit!34619 0))(
  ( (Unit!34620) )
))
(declare-fun lt!466240 () Unit!34619)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66650 (_ BitVec 32) (_ BitVec 32)) Unit!34619)

(assert (=> b!1056946 (= lt!466240 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466238))))

(declare-fun b!1056947 () Bool)

(declare-fun e!601040 () Bool)

(assert (=> b!1056947 (= e!601040 e!601043)))

(declare-fun res!705757 () Bool)

(assert (=> b!1056947 (=> (not res!705757) (not e!601043))))

(assert (=> b!1056947 (= res!705757 (not (= lt!466238 i!1381)))))

(declare-fun lt!466239 () array!66650)

(declare-fun arrayScanForKey!0 (array!66650 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056947 (= lt!466238 (arrayScanForKey!0 lt!466239 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056949 () Bool)

(declare-fun res!705759 () Bool)

(assert (=> b!1056949 (=> (not res!705759) (not e!601037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056949 (= res!705759 (validKeyInArray!0 k!2747))))

(declare-fun b!1056950 () Bool)

(declare-fun res!705753 () Bool)

(assert (=> b!1056950 (=> (not res!705753) (not e!601037))))

(assert (=> b!1056950 (= res!705753 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22484))))

(declare-fun b!1056948 () Bool)

(assert (=> b!1056948 (= e!601037 e!601040)))

(declare-fun res!705755 () Bool)

(assert (=> b!1056948 (=> (not res!705755) (not e!601040))))

(assert (=> b!1056948 (= res!705755 (arrayContainsKey!0 lt!466239 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056948 (= lt!466239 (array!66651 (store (arr!32044 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32581 a!3488)))))

(declare-fun res!705752 () Bool)

(assert (=> start!93264 (=> (not res!705752) (not e!601037))))

(assert (=> start!93264 (= res!705752 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32581 a!3488)) (bvslt (size!32581 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93264 e!601037))

(assert (=> start!93264 true))

(declare-fun array_inv!24666 (array!66650) Bool)

(assert (=> start!93264 (array_inv!24666 a!3488)))

(assert (= (and start!93264 res!705752) b!1056950))

(assert (= (and b!1056950 res!705753) b!1056949))

(assert (= (and b!1056949 res!705759) b!1056942))

(assert (= (and b!1056942 res!705756) b!1056948))

(assert (= (and b!1056948 res!705755) b!1056947))

(assert (= (and b!1056947 res!705757) b!1056944))

(assert (= (and b!1056944 res!705751) b!1056945))

(assert (= (and b!1056945 (not res!705758)) b!1056943))

(assert (= (and b!1056944 (not res!705754)) b!1056946))

(declare-fun m!976821 () Bool)

(assert (=> b!1056947 m!976821))

(declare-fun m!976823 () Bool)

(assert (=> start!93264 m!976823))

(declare-fun m!976825 () Bool)

(assert (=> b!1056946 m!976825))

(declare-fun m!976827 () Bool)

(assert (=> b!1056946 m!976827))

(declare-fun m!976829 () Bool)

(assert (=> b!1056950 m!976829))

(declare-fun m!976831 () Bool)

(assert (=> b!1056944 m!976831))

(declare-fun m!976833 () Bool)

(assert (=> b!1056944 m!976833))

(declare-fun m!976835 () Bool)

(assert (=> b!1056943 m!976835))

(declare-fun m!976837 () Bool)

(assert (=> b!1056949 m!976837))

(declare-fun m!976839 () Bool)

(assert (=> b!1056948 m!976839))

(assert (=> b!1056948 m!976831))

(declare-fun m!976841 () Bool)

(assert (=> b!1056942 m!976841))

(push 1)

