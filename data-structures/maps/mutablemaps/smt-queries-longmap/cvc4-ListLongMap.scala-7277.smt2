; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92962 () Bool)

(assert start!92962)

(declare-fun b!1054959 () Bool)

(declare-fun e!599516 () Bool)

(declare-fun e!599513 () Bool)

(assert (=> b!1054959 (= e!599516 e!599513)))

(declare-fun res!703972 () Bool)

(assert (=> b!1054959 (=> res!703972 e!599513)))

(declare-fun lt!465616 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054959 (= res!703972 (bvsle lt!465616 i!1381))))

(declare-fun b!1054960 () Bool)

(declare-fun res!703974 () Bool)

(declare-fun e!599510 () Bool)

(assert (=> b!1054960 (=> (not res!703974) (not e!599510))))

(declare-datatypes ((array!66531 0))(
  ( (array!66532 (arr!31992 (Array (_ BitVec 32) (_ BitVec 64))) (size!32529 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66531)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1054960 (= res!703974 (= (select (arr!31992 a!3488) i!1381) k!2747))))

(declare-fun b!1054961 () Bool)

(declare-fun e!599514 () Bool)

(declare-fun e!599515 () Bool)

(assert (=> b!1054961 (= e!599514 e!599515)))

(declare-fun res!703969 () Bool)

(assert (=> b!1054961 (=> (not res!703969) (not e!599515))))

(assert (=> b!1054961 (= res!703969 (not (= lt!465616 i!1381)))))

(declare-fun lt!465615 () array!66531)

(declare-fun arrayScanForKey!0 (array!66531 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054961 (= lt!465616 (arrayScanForKey!0 lt!465615 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054962 () Bool)

(declare-fun arrayContainsKey!0 (array!66531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054962 (= e!599513 (arrayContainsKey!0 a!3488 k!2747 lt!465616))))

(declare-fun b!1054963 () Bool)

(declare-fun res!703973 () Bool)

(assert (=> b!1054963 (=> (not res!703973) (not e!599510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054963 (= res!703973 (validKeyInArray!0 k!2747))))

(declare-fun b!1054964 () Bool)

(declare-fun res!703970 () Bool)

(assert (=> b!1054964 (=> (not res!703970) (not e!599510))))

(declare-datatypes ((List!22435 0))(
  ( (Nil!22432) (Cons!22431 (h!23640 (_ BitVec 64)) (t!31749 List!22435)) )
))
(declare-fun arrayNoDuplicates!0 (array!66531 (_ BitVec 32) List!22435) Bool)

(assert (=> b!1054964 (= res!703970 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22432))))

(declare-fun b!1054965 () Bool)

(declare-fun e!599511 () Bool)

(assert (=> b!1054965 (= e!599515 (not e!599511))))

(declare-fun res!703967 () Bool)

(assert (=> b!1054965 (=> res!703967 e!599511)))

(assert (=> b!1054965 (= res!703967 (bvsle lt!465616 i!1381))))

(assert (=> b!1054965 e!599516))

(declare-fun res!703966 () Bool)

(assert (=> b!1054965 (=> (not res!703966) (not e!599516))))

(assert (=> b!1054965 (= res!703966 (= (select (store (arr!31992 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465616) k!2747))))

(declare-fun res!703968 () Bool)

(assert (=> start!92962 (=> (not res!703968) (not e!599510))))

(assert (=> start!92962 (= res!703968 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32529 a!3488)) (bvslt (size!32529 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92962 e!599510))

(assert (=> start!92962 true))

(declare-fun array_inv!24614 (array!66531) Bool)

(assert (=> start!92962 (array_inv!24614 a!3488)))

(declare-fun b!1054966 () Bool)

(assert (=> b!1054966 (= e!599510 e!599514)))

(declare-fun res!703971 () Bool)

(assert (=> b!1054966 (=> (not res!703971) (not e!599514))))

(assert (=> b!1054966 (= res!703971 (arrayContainsKey!0 lt!465615 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054966 (= lt!465615 (array!66532 (store (arr!31992 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32529 a!3488)))))

(declare-fun b!1054967 () Bool)

(assert (=> b!1054967 (= e!599511 true)))

(assert (=> b!1054967 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34551 0))(
  ( (Unit!34552) )
))
(declare-fun lt!465614 () Unit!34551)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34551)

(assert (=> b!1054967 (= lt!465614 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465616 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1054967 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22432)))

(declare-fun lt!465613 () Unit!34551)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66531 (_ BitVec 32) (_ BitVec 32)) Unit!34551)

(assert (=> b!1054967 (= lt!465613 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92962 res!703968) b!1054964))

(assert (= (and b!1054964 res!703970) b!1054963))

(assert (= (and b!1054963 res!703973) b!1054960))

(assert (= (and b!1054960 res!703974) b!1054966))

(assert (= (and b!1054966 res!703971) b!1054961))

(assert (= (and b!1054961 res!703969) b!1054965))

(assert (= (and b!1054965 res!703966) b!1054959))

(assert (= (and b!1054959 (not res!703972)) b!1054962))

(assert (= (and b!1054965 (not res!703967)) b!1054967))

(declare-fun m!975133 () Bool)

(assert (=> start!92962 m!975133))

(declare-fun m!975135 () Bool)

(assert (=> b!1054965 m!975135))

(declare-fun m!975137 () Bool)

(assert (=> b!1054965 m!975137))

(declare-fun m!975139 () Bool)

(assert (=> b!1054966 m!975139))

(assert (=> b!1054966 m!975135))

(declare-fun m!975141 () Bool)

(assert (=> b!1054967 m!975141))

(declare-fun m!975143 () Bool)

(assert (=> b!1054967 m!975143))

(declare-fun m!975145 () Bool)

(assert (=> b!1054967 m!975145))

(declare-fun m!975147 () Bool)

(assert (=> b!1054967 m!975147))

(declare-fun m!975149 () Bool)

(assert (=> b!1054961 m!975149))

(declare-fun m!975151 () Bool)

(assert (=> b!1054962 m!975151))

(declare-fun m!975153 () Bool)

(assert (=> b!1054960 m!975153))

(declare-fun m!975155 () Bool)

(assert (=> b!1054963 m!975155))

(declare-fun m!975157 () Bool)

(assert (=> b!1054964 m!975157))

(push 1)

