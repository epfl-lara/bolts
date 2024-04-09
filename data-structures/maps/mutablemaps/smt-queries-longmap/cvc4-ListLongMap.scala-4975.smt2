; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68384 () Bool)

(assert start!68384)

(declare-fun b!794181 () Bool)

(declare-fun res!538876 () Bool)

(declare-fun e!441025 () Bool)

(assert (=> b!794181 (=> (not res!538876) (not e!441025))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794181 (= res!538876 (validKeyInArray!0 k!2044))))

(declare-fun b!794182 () Bool)

(declare-fun res!538878 () Bool)

(declare-fun e!441024 () Bool)

(assert (=> b!794182 (=> (not res!538878) (not e!441024))))

(declare-datatypes ((array!43125 0))(
  ( (array!43126 (arr!20639 (Array (_ BitVec 32) (_ BitVec 64))) (size!21060 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43125)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43125 (_ BitVec 32)) Bool)

(assert (=> b!794182 (= res!538878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!538874 () Bool)

(assert (=> start!68384 (=> (not res!538874) (not e!441025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68384 (= res!538874 (validMask!0 mask!3266))))

(assert (=> start!68384 e!441025))

(assert (=> start!68384 true))

(declare-fun array_inv!16413 (array!43125) Bool)

(assert (=> start!68384 (array_inv!16413 a!3170)))

(declare-fun b!794183 () Bool)

(declare-fun res!538879 () Bool)

(assert (=> b!794183 (=> (not res!538879) (not e!441024))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794183 (= res!538879 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21060 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20639 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21060 a!3170)) (= (select (arr!20639 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794184 () Bool)

(declare-fun res!538870 () Bool)

(assert (=> b!794184 (=> (not res!538870) (not e!441025))))

(declare-fun arrayContainsKey!0 (array!43125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794184 (= res!538870 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794185 () Bool)

(declare-fun res!538875 () Bool)

(assert (=> b!794185 (=> (not res!538875) (not e!441024))))

(declare-datatypes ((List!14655 0))(
  ( (Nil!14652) (Cons!14651 (h!15780 (_ BitVec 64)) (t!20978 List!14655)) )
))
(declare-fun arrayNoDuplicates!0 (array!43125 (_ BitVec 32) List!14655) Bool)

(assert (=> b!794185 (= res!538875 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14652))))

(declare-fun b!794186 () Bool)

(declare-fun res!538872 () Bool)

(assert (=> b!794186 (=> (not res!538872) (not e!441025))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794186 (= res!538872 (and (= (size!21060 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21060 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21060 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794187 () Bool)

(declare-fun e!441022 () Bool)

(assert (=> b!794187 (= e!441024 e!441022)))

(declare-fun res!538877 () Bool)

(assert (=> b!794187 (=> (not res!538877) (not e!441022))))

(declare-fun lt!354033 () (_ BitVec 64))

(declare-fun lt!354034 () array!43125)

(declare-datatypes ((SeekEntryResult!8237 0))(
  ( (MissingZero!8237 (index!35315 (_ BitVec 32))) (Found!8237 (index!35316 (_ BitVec 32))) (Intermediate!8237 (undefined!9049 Bool) (index!35317 (_ BitVec 32)) (x!66268 (_ BitVec 32))) (Undefined!8237) (MissingVacant!8237 (index!35318 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43125 (_ BitVec 32)) SeekEntryResult!8237)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43125 (_ BitVec 32)) SeekEntryResult!8237)

(assert (=> b!794187 (= res!538877 (= (seekEntryOrOpen!0 lt!354033 lt!354034 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354033 lt!354034 mask!3266)))))

(assert (=> b!794187 (= lt!354033 (select (store (arr!20639 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794187 (= lt!354034 (array!43126 (store (arr!20639 a!3170) i!1163 k!2044) (size!21060 a!3170)))))

(declare-fun b!794188 () Bool)

(assert (=> b!794188 (= e!441022 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun b!794189 () Bool)

(declare-fun res!538873 () Bool)

(assert (=> b!794189 (=> (not res!538873) (not e!441025))))

(assert (=> b!794189 (= res!538873 (validKeyInArray!0 (select (arr!20639 a!3170) j!153)))))

(declare-fun b!794190 () Bool)

(assert (=> b!794190 (= e!441025 e!441024)))

(declare-fun res!538871 () Bool)

(assert (=> b!794190 (=> (not res!538871) (not e!441024))))

(declare-fun lt!354032 () SeekEntryResult!8237)

(assert (=> b!794190 (= res!538871 (or (= lt!354032 (MissingZero!8237 i!1163)) (= lt!354032 (MissingVacant!8237 i!1163))))))

(assert (=> b!794190 (= lt!354032 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68384 res!538874) b!794186))

(assert (= (and b!794186 res!538872) b!794189))

(assert (= (and b!794189 res!538873) b!794181))

(assert (= (and b!794181 res!538876) b!794184))

(assert (= (and b!794184 res!538870) b!794190))

(assert (= (and b!794190 res!538871) b!794182))

(assert (= (and b!794182 res!538878) b!794185))

(assert (= (and b!794185 res!538875) b!794183))

(assert (= (and b!794183 res!538879) b!794187))

(assert (= (and b!794187 res!538877) b!794188))

(declare-fun m!734803 () Bool)

(assert (=> b!794184 m!734803))

(declare-fun m!734805 () Bool)

(assert (=> b!794187 m!734805))

(declare-fun m!734807 () Bool)

(assert (=> b!794187 m!734807))

(declare-fun m!734809 () Bool)

(assert (=> b!794187 m!734809))

(declare-fun m!734811 () Bool)

(assert (=> b!794187 m!734811))

(declare-fun m!734813 () Bool)

(assert (=> b!794190 m!734813))

(declare-fun m!734815 () Bool)

(assert (=> start!68384 m!734815))

(declare-fun m!734817 () Bool)

(assert (=> start!68384 m!734817))

(declare-fun m!734819 () Bool)

(assert (=> b!794181 m!734819))

(declare-fun m!734821 () Bool)

(assert (=> b!794185 m!734821))

(declare-fun m!734823 () Bool)

(assert (=> b!794182 m!734823))

(declare-fun m!734825 () Bool)

(assert (=> b!794183 m!734825))

(declare-fun m!734827 () Bool)

(assert (=> b!794183 m!734827))

(declare-fun m!734829 () Bool)

(assert (=> b!794189 m!734829))

(assert (=> b!794189 m!734829))

(declare-fun m!734831 () Bool)

(assert (=> b!794189 m!734831))

(push 1)

(assert (not b!794189))

(assert (not start!68384))

(assert (not b!794187))

(assert (not b!794190))

(assert (not b!794185))

(assert (not b!794181))

(assert (not b!794182))

(assert (not b!794184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

