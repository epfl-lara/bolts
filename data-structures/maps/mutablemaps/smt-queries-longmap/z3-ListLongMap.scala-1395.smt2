; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27234 () Bool)

(assert start!27234)

(declare-fun b!281806 () Bool)

(declare-fun e!179035 () Bool)

(declare-fun e!179032 () Bool)

(assert (=> b!281806 (= e!179035 e!179032)))

(declare-fun res!144916 () Bool)

(assert (=> b!281806 (=> (not res!144916) (not e!179032))))

(declare-datatypes ((SeekEntryResult!1831 0))(
  ( (MissingZero!1831 (index!9494 (_ BitVec 32))) (Found!1831 (index!9495 (_ BitVec 32))) (Intermediate!1831 (undefined!2643 Bool) (index!9496 (_ BitVec 32)) (x!27685 (_ BitVec 32))) (Undefined!1831) (MissingVacant!1831 (index!9497 (_ BitVec 32))) )
))
(declare-fun lt!139245 () SeekEntryResult!1831)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281806 (= res!144916 (or (= lt!139245 (MissingZero!1831 i!1267)) (= lt!139245 (MissingVacant!1831 i!1267))))))

(declare-datatypes ((array!14041 0))(
  ( (array!14042 (arr!6662 (Array (_ BitVec 32) (_ BitVec 64))) (size!7014 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14041)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14041 (_ BitVec 32)) SeekEntryResult!1831)

(assert (=> b!281806 (= lt!139245 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281807 () Bool)

(declare-fun res!144913 () Bool)

(declare-fun e!179034 () Bool)

(assert (=> b!281807 (=> (not res!144913) (not e!179034))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281807 (= res!144913 (validKeyInArray!0 (select (arr!6662 a!3325) startIndex!26)))))

(declare-fun b!281809 () Bool)

(assert (=> b!281809 (= e!179032 e!179034)))

(declare-fun res!144921 () Bool)

(assert (=> b!281809 (=> (not res!144921) (not e!179034))))

(assert (=> b!281809 (= res!144921 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139246 () array!14041)

(assert (=> b!281809 (= lt!139246 (array!14042 (store (arr!6662 a!3325) i!1267 k0!2581) (size!7014 a!3325)))))

(declare-fun b!281810 () Bool)

(declare-fun res!144917 () Bool)

(assert (=> b!281810 (=> (not res!144917) (not e!179032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14041 (_ BitVec 32)) Bool)

(assert (=> b!281810 (= res!144917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281811 () Bool)

(assert (=> b!281811 (= e!179034 (not true))))

(assert (=> b!281811 (= (seekEntryOrOpen!0 (select (arr!6662 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6662 a!3325) i!1267 k0!2581) startIndex!26) lt!139246 mask!3868))))

(declare-datatypes ((Unit!8925 0))(
  ( (Unit!8926) )
))
(declare-fun lt!139247 () Unit!8925)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14041 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8925)

(assert (=> b!281811 (= lt!139247 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4491 0))(
  ( (Nil!4488) (Cons!4487 (h!5157 (_ BitVec 64)) (t!9581 List!4491)) )
))
(declare-fun arrayNoDuplicates!0 (array!14041 (_ BitVec 32) List!4491) Bool)

(assert (=> b!281811 (arrayNoDuplicates!0 lt!139246 #b00000000000000000000000000000000 Nil!4488)))

(declare-fun lt!139244 () Unit!8925)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14041 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4491) Unit!8925)

(assert (=> b!281811 (= lt!139244 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4488))))

(declare-fun b!281812 () Bool)

(declare-fun res!144914 () Bool)

(assert (=> b!281812 (=> (not res!144914) (not e!179035))))

(assert (=> b!281812 (= res!144914 (and (= (size!7014 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7014 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7014 a!3325))))))

(declare-fun b!281813 () Bool)

(declare-fun res!144919 () Bool)

(assert (=> b!281813 (=> (not res!144919) (not e!179035))))

(assert (=> b!281813 (= res!144919 (validKeyInArray!0 k0!2581))))

(declare-fun b!281814 () Bool)

(declare-fun res!144915 () Bool)

(assert (=> b!281814 (=> (not res!144915) (not e!179035))))

(declare-fun arrayContainsKey!0 (array!14041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281814 (= res!144915 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!144920 () Bool)

(assert (=> start!27234 (=> (not res!144920) (not e!179035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27234 (= res!144920 (validMask!0 mask!3868))))

(assert (=> start!27234 e!179035))

(declare-fun array_inv!4616 (array!14041) Bool)

(assert (=> start!27234 (array_inv!4616 a!3325)))

(assert (=> start!27234 true))

(declare-fun b!281808 () Bool)

(declare-fun res!144918 () Bool)

(assert (=> b!281808 (=> (not res!144918) (not e!179035))))

(assert (=> b!281808 (= res!144918 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4488))))

(assert (= (and start!27234 res!144920) b!281812))

(assert (= (and b!281812 res!144914) b!281813))

(assert (= (and b!281813 res!144919) b!281808))

(assert (= (and b!281808 res!144918) b!281814))

(assert (= (and b!281814 res!144915) b!281806))

(assert (= (and b!281806 res!144916) b!281810))

(assert (= (and b!281810 res!144917) b!281809))

(assert (= (and b!281809 res!144921) b!281807))

(assert (= (and b!281807 res!144913) b!281811))

(declare-fun m!296229 () Bool)

(assert (=> b!281814 m!296229))

(declare-fun m!296231 () Bool)

(assert (=> b!281811 m!296231))

(declare-fun m!296233 () Bool)

(assert (=> b!281811 m!296233))

(declare-fun m!296235 () Bool)

(assert (=> b!281811 m!296235))

(assert (=> b!281811 m!296231))

(declare-fun m!296237 () Bool)

(assert (=> b!281811 m!296237))

(declare-fun m!296239 () Bool)

(assert (=> b!281811 m!296239))

(declare-fun m!296241 () Bool)

(assert (=> b!281811 m!296241))

(declare-fun m!296243 () Bool)

(assert (=> b!281811 m!296243))

(assert (=> b!281811 m!296239))

(declare-fun m!296245 () Bool)

(assert (=> b!281811 m!296245))

(assert (=> b!281807 m!296239))

(assert (=> b!281807 m!296239))

(declare-fun m!296247 () Bool)

(assert (=> b!281807 m!296247))

(declare-fun m!296249 () Bool)

(assert (=> b!281808 m!296249))

(declare-fun m!296251 () Bool)

(assert (=> b!281810 m!296251))

(declare-fun m!296253 () Bool)

(assert (=> b!281806 m!296253))

(assert (=> b!281809 m!296237))

(declare-fun m!296255 () Bool)

(assert (=> start!27234 m!296255))

(declare-fun m!296257 () Bool)

(assert (=> start!27234 m!296257))

(declare-fun m!296259 () Bool)

(assert (=> b!281813 m!296259))

(check-sat (not b!281811) (not b!281808) (not b!281806) (not b!281814) (not b!281807) (not b!281810) (not b!281813) (not start!27234))
(check-sat)
