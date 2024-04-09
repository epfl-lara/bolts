; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27230 () Bool)

(assert start!27230)

(declare-fun b!281752 () Bool)

(declare-fun e!179008 () Bool)

(declare-datatypes ((array!14037 0))(
  ( (array!14038 (arr!6660 (Array (_ BitVec 32) (_ BitVec 64))) (size!7012 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14037)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281752 (= e!179008 (not (or (bvsgt #b00000000000000000000000000000000 (size!7012 a!3325)) (bvsle startIndex!26 (size!7012 a!3325)))))))

(declare-fun lt!139223 () array!14037)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1829 0))(
  ( (MissingZero!1829 (index!9486 (_ BitVec 32))) (Found!1829 (index!9487 (_ BitVec 32))) (Intermediate!1829 (undefined!2641 Bool) (index!9488 (_ BitVec 32)) (x!27675 (_ BitVec 32))) (Undefined!1829) (MissingVacant!1829 (index!9489 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14037 (_ BitVec 32)) SeekEntryResult!1829)

(assert (=> b!281752 (= (seekEntryOrOpen!0 (select (arr!6660 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6660 a!3325) i!1267 k!2581) startIndex!26) lt!139223 mask!3868))))

(declare-datatypes ((Unit!8921 0))(
  ( (Unit!8922) )
))
(declare-fun lt!139220 () Unit!8921)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14037 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8921)

(assert (=> b!281752 (= lt!139220 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4489 0))(
  ( (Nil!4486) (Cons!4485 (h!5155 (_ BitVec 64)) (t!9579 List!4489)) )
))
(declare-fun arrayNoDuplicates!0 (array!14037 (_ BitVec 32) List!4489) Bool)

(assert (=> b!281752 (arrayNoDuplicates!0 lt!139223 #b00000000000000000000000000000000 Nil!4486)))

(declare-fun lt!139221 () Unit!8921)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14037 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4489) Unit!8921)

(assert (=> b!281752 (= lt!139221 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4486))))

(declare-fun b!281753 () Bool)

(declare-fun res!144862 () Bool)

(assert (=> b!281753 (=> (not res!144862) (not e!179008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281753 (= res!144862 (validKeyInArray!0 (select (arr!6660 a!3325) startIndex!26)))))

(declare-fun res!144866 () Bool)

(declare-fun e!179010 () Bool)

(assert (=> start!27230 (=> (not res!144866) (not e!179010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27230 (= res!144866 (validMask!0 mask!3868))))

(assert (=> start!27230 e!179010))

(declare-fun array_inv!4614 (array!14037) Bool)

(assert (=> start!27230 (array_inv!4614 a!3325)))

(assert (=> start!27230 true))

(declare-fun b!281754 () Bool)

(declare-fun e!179009 () Bool)

(assert (=> b!281754 (= e!179010 e!179009)))

(declare-fun res!144864 () Bool)

(assert (=> b!281754 (=> (not res!144864) (not e!179009))))

(declare-fun lt!139222 () SeekEntryResult!1829)

(assert (=> b!281754 (= res!144864 (or (= lt!139222 (MissingZero!1829 i!1267)) (= lt!139222 (MissingVacant!1829 i!1267))))))

(assert (=> b!281754 (= lt!139222 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281755 () Bool)

(declare-fun res!144865 () Bool)

(assert (=> b!281755 (=> (not res!144865) (not e!179010))))

(assert (=> b!281755 (= res!144865 (and (= (size!7012 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7012 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7012 a!3325))))))

(declare-fun b!281756 () Bool)

(declare-fun res!144860 () Bool)

(assert (=> b!281756 (=> (not res!144860) (not e!179009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14037 (_ BitVec 32)) Bool)

(assert (=> b!281756 (= res!144860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281757 () Bool)

(declare-fun res!144859 () Bool)

(assert (=> b!281757 (=> (not res!144859) (not e!179010))))

(assert (=> b!281757 (= res!144859 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4486))))

(declare-fun b!281758 () Bool)

(declare-fun res!144863 () Bool)

(assert (=> b!281758 (=> (not res!144863) (not e!179010))))

(declare-fun arrayContainsKey!0 (array!14037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281758 (= res!144863 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281759 () Bool)

(declare-fun res!144867 () Bool)

(assert (=> b!281759 (=> (not res!144867) (not e!179010))))

(assert (=> b!281759 (= res!144867 (validKeyInArray!0 k!2581))))

(declare-fun b!281760 () Bool)

(assert (=> b!281760 (= e!179009 e!179008)))

(declare-fun res!144861 () Bool)

(assert (=> b!281760 (=> (not res!144861) (not e!179008))))

(assert (=> b!281760 (= res!144861 (not (= startIndex!26 i!1267)))))

(assert (=> b!281760 (= lt!139223 (array!14038 (store (arr!6660 a!3325) i!1267 k!2581) (size!7012 a!3325)))))

(assert (= (and start!27230 res!144866) b!281755))

(assert (= (and b!281755 res!144865) b!281759))

(assert (= (and b!281759 res!144867) b!281757))

(assert (= (and b!281757 res!144859) b!281758))

(assert (= (and b!281758 res!144863) b!281754))

(assert (= (and b!281754 res!144864) b!281756))

(assert (= (and b!281756 res!144860) b!281760))

(assert (= (and b!281760 res!144861) b!281753))

(assert (= (and b!281753 res!144862) b!281752))

(declare-fun m!296165 () Bool)

(assert (=> b!281756 m!296165))

(declare-fun m!296167 () Bool)

(assert (=> b!281753 m!296167))

(assert (=> b!281753 m!296167))

(declare-fun m!296169 () Bool)

(assert (=> b!281753 m!296169))

(declare-fun m!296171 () Bool)

(assert (=> start!27230 m!296171))

(declare-fun m!296173 () Bool)

(assert (=> start!27230 m!296173))

(declare-fun m!296175 () Bool)

(assert (=> b!281757 m!296175))

(declare-fun m!296177 () Bool)

(assert (=> b!281759 m!296177))

(declare-fun m!296179 () Bool)

(assert (=> b!281752 m!296179))

(declare-fun m!296181 () Bool)

(assert (=> b!281752 m!296181))

(assert (=> b!281752 m!296167))

(declare-fun m!296183 () Bool)

(assert (=> b!281752 m!296183))

(declare-fun m!296185 () Bool)

(assert (=> b!281752 m!296185))

(assert (=> b!281752 m!296167))

(declare-fun m!296187 () Bool)

(assert (=> b!281752 m!296187))

(declare-fun m!296189 () Bool)

(assert (=> b!281752 m!296189))

(declare-fun m!296191 () Bool)

(assert (=> b!281752 m!296191))

(assert (=> b!281752 m!296189))

(assert (=> b!281760 m!296181))

(declare-fun m!296193 () Bool)

(assert (=> b!281754 m!296193))

(declare-fun m!296195 () Bool)

(assert (=> b!281758 m!296195))

(push 1)

(assert (not b!281759))

(assert (not b!281753))

(assert (not b!281758))

(assert (not b!281756))

(assert (not b!281752))

(assert (not b!281754))

(assert (not b!281757))

(assert (not start!27230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

