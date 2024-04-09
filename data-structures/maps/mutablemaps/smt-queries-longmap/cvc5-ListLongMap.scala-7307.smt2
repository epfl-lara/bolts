; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93480 () Bool)

(assert start!93480)

(declare-fun b!1058386 () Bool)

(declare-fun e!602161 () Bool)

(declare-fun e!602158 () Bool)

(assert (=> b!1058386 (= e!602161 e!602158)))

(declare-fun res!707077 () Bool)

(assert (=> b!1058386 (=> res!707077 e!602158)))

(declare-fun lt!466870 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058386 (= res!707077 (or (bvsgt lt!466870 i!1381) (bvsle i!1381 lt!466870)))))

(declare-fun b!1058387 () Bool)

(declare-fun res!707075 () Bool)

(declare-fun e!602157 () Bool)

(assert (=> b!1058387 (=> (not res!707075) (not e!602157))))

(declare-datatypes ((array!66731 0))(
  ( (array!66732 (arr!32080 (Array (_ BitVec 32) (_ BitVec 64))) (size!32617 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66731)

(declare-datatypes ((List!22523 0))(
  ( (Nil!22520) (Cons!22519 (h!23728 (_ BitVec 64)) (t!31837 List!22523)) )
))
(declare-fun arrayNoDuplicates!0 (array!66731 (_ BitVec 32) List!22523) Bool)

(assert (=> b!1058387 (= res!707075 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22520))))

(declare-fun b!1058388 () Bool)

(declare-fun e!602159 () Bool)

(declare-fun e!602162 () Bool)

(assert (=> b!1058388 (= e!602159 (not e!602162))))

(declare-fun res!707073 () Bool)

(assert (=> b!1058388 (=> res!707073 e!602162)))

(assert (=> b!1058388 (= res!707073 (or (bvsgt lt!466870 i!1381) (bvsle i!1381 lt!466870)))))

(assert (=> b!1058388 e!602161))

(declare-fun res!707072 () Bool)

(assert (=> b!1058388 (=> (not res!707072) (not e!602161))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1058388 (= res!707072 (= (select (store (arr!32080 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466870) k!2747))))

(declare-fun b!1058389 () Bool)

(declare-fun arrayContainsKey!0 (array!66731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058389 (= e!602158 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058390 () Bool)

(assert (=> b!1058390 (= e!602162 true)))

(assert (=> b!1058390 (not (= (select (arr!32080 a!3488) lt!466870) k!2747))))

(declare-datatypes ((Unit!34691 0))(
  ( (Unit!34692) )
))
(declare-fun lt!466872 () Unit!34691)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66731 (_ BitVec 64) (_ BitVec 32) List!22523) Unit!34691)

(assert (=> b!1058390 (= lt!466872 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!466870 Nil!22520))))

(declare-fun lt!466873 () (_ BitVec 32))

(assert (=> b!1058390 (arrayContainsKey!0 a!3488 k!2747 lt!466873)))

(declare-fun lt!466868 () Unit!34691)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66731 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34691)

(assert (=> b!1058390 (= lt!466868 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466873))))

(assert (=> b!1058390 (= lt!466873 (bvadd #b00000000000000000000000000000001 lt!466870))))

(assert (=> b!1058390 (arrayNoDuplicates!0 a!3488 lt!466870 Nil!22520)))

(declare-fun lt!466871 () Unit!34691)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66731 (_ BitVec 32) (_ BitVec 32)) Unit!34691)

(assert (=> b!1058390 (= lt!466871 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466870))))

(declare-fun b!1058391 () Bool)

(declare-fun e!602163 () Bool)

(assert (=> b!1058391 (= e!602157 e!602163)))

(declare-fun res!707071 () Bool)

(assert (=> b!1058391 (=> (not res!707071) (not e!602163))))

(declare-fun lt!466869 () array!66731)

(assert (=> b!1058391 (= res!707071 (arrayContainsKey!0 lt!466869 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058391 (= lt!466869 (array!66732 (store (arr!32080 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32617 a!3488)))))

(declare-fun b!1058393 () Bool)

(declare-fun res!707074 () Bool)

(assert (=> b!1058393 (=> (not res!707074) (not e!602157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058393 (= res!707074 (validKeyInArray!0 k!2747))))

(declare-fun b!1058394 () Bool)

(assert (=> b!1058394 (= e!602163 e!602159)))

(declare-fun res!707069 () Bool)

(assert (=> b!1058394 (=> (not res!707069) (not e!602159))))

(assert (=> b!1058394 (= res!707069 (not (= lt!466870 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66731 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058394 (= lt!466870 (arrayScanForKey!0 lt!466869 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058392 () Bool)

(declare-fun res!707076 () Bool)

(assert (=> b!1058392 (=> (not res!707076) (not e!602157))))

(assert (=> b!1058392 (= res!707076 (= (select (arr!32080 a!3488) i!1381) k!2747))))

(declare-fun res!707070 () Bool)

(assert (=> start!93480 (=> (not res!707070) (not e!602157))))

(assert (=> start!93480 (= res!707070 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32617 a!3488)) (bvslt (size!32617 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93480 e!602157))

(assert (=> start!93480 true))

(declare-fun array_inv!24702 (array!66731) Bool)

(assert (=> start!93480 (array_inv!24702 a!3488)))

(assert (= (and start!93480 res!707070) b!1058387))

(assert (= (and b!1058387 res!707075) b!1058393))

(assert (= (and b!1058393 res!707074) b!1058392))

(assert (= (and b!1058392 res!707076) b!1058391))

(assert (= (and b!1058391 res!707071) b!1058394))

(assert (= (and b!1058394 res!707069) b!1058388))

(assert (= (and b!1058388 res!707072) b!1058386))

(assert (= (and b!1058386 (not res!707077)) b!1058389))

(assert (= (and b!1058388 (not res!707073)) b!1058390))

(declare-fun m!978159 () Bool)

(assert (=> b!1058387 m!978159))

(declare-fun m!978161 () Bool)

(assert (=> b!1058390 m!978161))

(declare-fun m!978163 () Bool)

(assert (=> b!1058390 m!978163))

(declare-fun m!978165 () Bool)

(assert (=> b!1058390 m!978165))

(declare-fun m!978167 () Bool)

(assert (=> b!1058390 m!978167))

(declare-fun m!978169 () Bool)

(assert (=> b!1058390 m!978169))

(declare-fun m!978171 () Bool)

(assert (=> b!1058390 m!978171))

(declare-fun m!978173 () Bool)

(assert (=> b!1058389 m!978173))

(declare-fun m!978175 () Bool)

(assert (=> b!1058392 m!978175))

(declare-fun m!978177 () Bool)

(assert (=> b!1058391 m!978177))

(declare-fun m!978179 () Bool)

(assert (=> b!1058391 m!978179))

(declare-fun m!978181 () Bool)

(assert (=> b!1058393 m!978181))

(assert (=> b!1058388 m!978179))

(declare-fun m!978183 () Bool)

(assert (=> b!1058388 m!978183))

(declare-fun m!978185 () Bool)

(assert (=> start!93480 m!978185))

(declare-fun m!978187 () Bool)

(assert (=> b!1058394 m!978187))

(push 1)

