; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44990 () Bool)

(assert start!44990)

(declare-fun b!493152 () Bool)

(declare-fun e!289639 () Bool)

(assert (=> b!493152 (= e!289639 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31895 0))(
  ( (array!31896 (arr!15329 (Array (_ BitVec 32) (_ BitVec 64))) (size!15693 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31895)

(declare-fun lt!223081 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3803 0))(
  ( (MissingZero!3803 (index!17391 (_ BitVec 32))) (Found!3803 (index!17392 (_ BitVec 32))) (Intermediate!3803 (undefined!4615 Bool) (index!17393 (_ BitVec 32)) (x!46500 (_ BitVec 32))) (Undefined!3803) (MissingVacant!3803 (index!17394 (_ BitVec 32))) )
))
(declare-fun lt!223082 () SeekEntryResult!3803)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31895 (_ BitVec 32)) SeekEntryResult!3803)

(assert (=> b!493152 (= lt!223082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223081 (select (store (arr!15329 a!3235) i!1204 k!2280) j!176) (array!31896 (store (arr!15329 a!3235) i!1204 k!2280) (size!15693 a!3235)) mask!3524))))

(declare-fun lt!223080 () (_ BitVec 32))

(declare-fun lt!223077 () SeekEntryResult!3803)

(assert (=> b!493152 (= lt!223077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223080 (select (arr!15329 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493152 (= lt!223081 (toIndex!0 (select (store (arr!15329 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493152 (= lt!223080 (toIndex!0 (select (arr!15329 a!3235) j!176) mask!3524))))

(declare-fun e!289642 () Bool)

(assert (=> b!493152 e!289642))

(declare-fun res!295880 () Bool)

(assert (=> b!493152 (=> (not res!295880) (not e!289642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31895 (_ BitVec 32)) Bool)

(assert (=> b!493152 (= res!295880 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14544 0))(
  ( (Unit!14545) )
))
(declare-fun lt!223078 () Unit!14544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14544)

(assert (=> b!493152 (= lt!223078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493154 () Bool)

(declare-fun res!295875 () Bool)

(declare-fun e!289640 () Bool)

(assert (=> b!493154 (=> (not res!295875) (not e!289640))))

(declare-fun arrayContainsKey!0 (array!31895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493154 (= res!295875 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493155 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31895 (_ BitVec 32)) SeekEntryResult!3803)

(assert (=> b!493155 (= e!289642 (= (seekEntryOrOpen!0 (select (arr!15329 a!3235) j!176) a!3235 mask!3524) (Found!3803 j!176)))))

(declare-fun b!493156 () Bool)

(declare-fun res!295878 () Bool)

(assert (=> b!493156 (=> (not res!295878) (not e!289640))))

(assert (=> b!493156 (= res!295878 (and (= (size!15693 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15693 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15693 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493157 () Bool)

(declare-fun res!295873 () Bool)

(assert (=> b!493157 (=> (not res!295873) (not e!289639))))

(assert (=> b!493157 (= res!295873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493158 () Bool)

(declare-fun res!295879 () Bool)

(assert (=> b!493158 (=> (not res!295879) (not e!289639))))

(declare-datatypes ((List!9540 0))(
  ( (Nil!9537) (Cons!9536 (h!10404 (_ BitVec 64)) (t!15776 List!9540)) )
))
(declare-fun arrayNoDuplicates!0 (array!31895 (_ BitVec 32) List!9540) Bool)

(assert (=> b!493158 (= res!295879 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9537))))

(declare-fun res!295876 () Bool)

(assert (=> start!44990 (=> (not res!295876) (not e!289640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44990 (= res!295876 (validMask!0 mask!3524))))

(assert (=> start!44990 e!289640))

(assert (=> start!44990 true))

(declare-fun array_inv!11103 (array!31895) Bool)

(assert (=> start!44990 (array_inv!11103 a!3235)))

(declare-fun b!493153 () Bool)

(assert (=> b!493153 (= e!289640 e!289639)))

(declare-fun res!295874 () Bool)

(assert (=> b!493153 (=> (not res!295874) (not e!289639))))

(declare-fun lt!223079 () SeekEntryResult!3803)

(assert (=> b!493153 (= res!295874 (or (= lt!223079 (MissingZero!3803 i!1204)) (= lt!223079 (MissingVacant!3803 i!1204))))))

(assert (=> b!493153 (= lt!223079 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493159 () Bool)

(declare-fun res!295877 () Bool)

(assert (=> b!493159 (=> (not res!295877) (not e!289640))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493159 (= res!295877 (validKeyInArray!0 k!2280))))

(declare-fun b!493160 () Bool)

(declare-fun res!295872 () Bool)

(assert (=> b!493160 (=> (not res!295872) (not e!289640))))

(assert (=> b!493160 (= res!295872 (validKeyInArray!0 (select (arr!15329 a!3235) j!176)))))

(assert (= (and start!44990 res!295876) b!493156))

(assert (= (and b!493156 res!295878) b!493160))

(assert (= (and b!493160 res!295872) b!493159))

(assert (= (and b!493159 res!295877) b!493154))

(assert (= (and b!493154 res!295875) b!493153))

(assert (= (and b!493153 res!295874) b!493157))

(assert (= (and b!493157 res!295873) b!493158))

(assert (= (and b!493158 res!295879) b!493152))

(assert (= (and b!493152 res!295880) b!493155))

(declare-fun m!474013 () Bool)

(assert (=> b!493154 m!474013))

(declare-fun m!474015 () Bool)

(assert (=> b!493160 m!474015))

(assert (=> b!493160 m!474015))

(declare-fun m!474017 () Bool)

(assert (=> b!493160 m!474017))

(declare-fun m!474019 () Bool)

(assert (=> b!493153 m!474019))

(declare-fun m!474021 () Bool)

(assert (=> b!493157 m!474021))

(declare-fun m!474023 () Bool)

(assert (=> b!493152 m!474023))

(declare-fun m!474025 () Bool)

(assert (=> b!493152 m!474025))

(declare-fun m!474027 () Bool)

(assert (=> b!493152 m!474027))

(assert (=> b!493152 m!474027))

(declare-fun m!474029 () Bool)

(assert (=> b!493152 m!474029))

(assert (=> b!493152 m!474015))

(declare-fun m!474031 () Bool)

(assert (=> b!493152 m!474031))

(assert (=> b!493152 m!474015))

(declare-fun m!474033 () Bool)

(assert (=> b!493152 m!474033))

(assert (=> b!493152 m!474015))

(declare-fun m!474035 () Bool)

(assert (=> b!493152 m!474035))

(assert (=> b!493152 m!474027))

(declare-fun m!474037 () Bool)

(assert (=> b!493152 m!474037))

(declare-fun m!474039 () Bool)

(assert (=> b!493158 m!474039))

(assert (=> b!493155 m!474015))

(assert (=> b!493155 m!474015))

(declare-fun m!474041 () Bool)

(assert (=> b!493155 m!474041))

(declare-fun m!474043 () Bool)

(assert (=> start!44990 m!474043))

(declare-fun m!474045 () Bool)

(assert (=> start!44990 m!474045))

(declare-fun m!474047 () Bool)

(assert (=> b!493159 m!474047))

(push 1)

