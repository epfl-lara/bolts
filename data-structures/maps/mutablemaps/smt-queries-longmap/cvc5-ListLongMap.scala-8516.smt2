; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103926 () Bool)

(assert start!103926)

(declare-fun b!1243352 () Bool)

(declare-fun res!829262 () Bool)

(declare-fun e!704911 () Bool)

(assert (=> b!1243352 (=> (not res!829262) (not e!704911))))

(declare-datatypes ((array!79964 0))(
  ( (array!79965 (arr!38571 (Array (_ BitVec 32) (_ BitVec 64))) (size!39108 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79964)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27552 0))(
  ( (Nil!27549) (Cons!27548 (h!28757 (_ BitVec 64)) (t!41028 List!27552)) )
))
(declare-fun arrayNoDuplicates!0 (array!79964 (_ BitVec 32) List!27552) Bool)

(assert (=> b!1243352 (= res!829262 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27549))))

(declare-fun b!1243353 () Bool)

(declare-fun e!704912 () Bool)

(assert (=> b!1243353 (= e!704912 false)))

(declare-fun lt!562328 () Bool)

(declare-fun lt!562329 () List!27552)

(assert (=> b!1243353 (= lt!562328 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562329))))

(declare-datatypes ((Unit!41221 0))(
  ( (Unit!41222) )
))
(declare-fun lt!562330 () Unit!41221)

(declare-fun noDuplicateSubseq!89 (List!27552 List!27552) Unit!41221)

(assert (=> b!1243353 (= lt!562330 (noDuplicateSubseq!89 Nil!27549 lt!562329))))

(declare-fun b!1243354 () Bool)

(declare-fun res!829259 () Bool)

(assert (=> b!1243354 (=> (not res!829259) (not e!704912))))

(declare-fun contains!7424 (List!27552 (_ BitVec 64)) Bool)

(assert (=> b!1243354 (= res!829259 (not (contains!7424 lt!562329 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243356 () Bool)

(declare-fun res!829258 () Bool)

(assert (=> b!1243356 (=> (not res!829258) (not e!704912))))

(assert (=> b!1243356 (= res!829258 (not (contains!7424 Nil!27549 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243357 () Bool)

(declare-fun res!829260 () Bool)

(assert (=> b!1243357 (=> (not res!829260) (not e!704911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243357 (= res!829260 (validKeyInArray!0 (select (arr!38571 a!3892) from!3270)))))

(declare-fun b!1243358 () Bool)

(declare-fun res!829257 () Bool)

(assert (=> b!1243358 (=> (not res!829257) (not e!704912))))

(declare-fun subseq!635 (List!27552 List!27552) Bool)

(assert (=> b!1243358 (= res!829257 (subseq!635 Nil!27549 lt!562329))))

(declare-fun b!1243359 () Bool)

(declare-fun res!829255 () Bool)

(assert (=> b!1243359 (=> (not res!829255) (not e!704912))))

(assert (=> b!1243359 (= res!829255 (not (contains!7424 lt!562329 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243360 () Bool)

(assert (=> b!1243360 (= e!704911 e!704912)))

(declare-fun res!829264 () Bool)

(assert (=> b!1243360 (=> (not res!829264) (not e!704912))))

(assert (=> b!1243360 (= res!829264 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243360 (= lt!562329 (Cons!27548 (select (arr!38571 a!3892) from!3270) Nil!27549))))

(declare-fun res!829254 () Bool)

(assert (=> start!103926 (=> (not res!829254) (not e!704911))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103926 (= res!829254 (and (bvslt (size!39108 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39108 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39108 a!3892))))))

(assert (=> start!103926 e!704911))

(declare-fun array_inv!29347 (array!79964) Bool)

(assert (=> start!103926 (array_inv!29347 a!3892)))

(assert (=> start!103926 true))

(declare-fun b!1243355 () Bool)

(declare-fun res!829263 () Bool)

(assert (=> b!1243355 (=> (not res!829263) (not e!704912))))

(declare-fun noDuplicate!2014 (List!27552) Bool)

(assert (=> b!1243355 (= res!829263 (noDuplicate!2014 lt!562329))))

(declare-fun b!1243361 () Bool)

(declare-fun res!829256 () Bool)

(assert (=> b!1243361 (=> (not res!829256) (not e!704911))))

(assert (=> b!1243361 (= res!829256 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39108 a!3892)) (not (= newFrom!287 (size!39108 a!3892)))))))

(declare-fun b!1243362 () Bool)

(declare-fun res!829261 () Bool)

(assert (=> b!1243362 (=> (not res!829261) (not e!704912))))

(assert (=> b!1243362 (= res!829261 (not (contains!7424 Nil!27549 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103926 res!829254) b!1243352))

(assert (= (and b!1243352 res!829262) b!1243361))

(assert (= (and b!1243361 res!829256) b!1243357))

(assert (= (and b!1243357 res!829260) b!1243360))

(assert (= (and b!1243360 res!829264) b!1243355))

(assert (= (and b!1243355 res!829263) b!1243359))

(assert (= (and b!1243359 res!829255) b!1243354))

(assert (= (and b!1243354 res!829259) b!1243356))

(assert (= (and b!1243356 res!829258) b!1243362))

(assert (= (and b!1243362 res!829261) b!1243358))

(assert (= (and b!1243358 res!829257) b!1243353))

(declare-fun m!1145937 () Bool)

(assert (=> b!1243360 m!1145937))

(declare-fun m!1145939 () Bool)

(assert (=> b!1243352 m!1145939))

(declare-fun m!1145941 () Bool)

(assert (=> b!1243362 m!1145941))

(declare-fun m!1145943 () Bool)

(assert (=> b!1243356 m!1145943))

(declare-fun m!1145945 () Bool)

(assert (=> b!1243353 m!1145945))

(declare-fun m!1145947 () Bool)

(assert (=> b!1243353 m!1145947))

(declare-fun m!1145949 () Bool)

(assert (=> b!1243355 m!1145949))

(declare-fun m!1145951 () Bool)

(assert (=> b!1243354 m!1145951))

(assert (=> b!1243357 m!1145937))

(assert (=> b!1243357 m!1145937))

(declare-fun m!1145953 () Bool)

(assert (=> b!1243357 m!1145953))

(declare-fun m!1145955 () Bool)

(assert (=> b!1243358 m!1145955))

(declare-fun m!1145957 () Bool)

(assert (=> start!103926 m!1145957))

(declare-fun m!1145959 () Bool)

(assert (=> b!1243359 m!1145959))

(push 1)

