; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68312 () Bool)

(assert start!68312)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43053 0))(
  ( (array!43054 (arr!20603 (Array (_ BitVec 32) (_ BitVec 64))) (size!21024 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43053)

(declare-fun b!793184 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun e!440663 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793184 (= e!440663 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21024 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20603 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21024 a!3170)) (= (select (arr!20603 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!793185 () Bool)

(declare-fun res!537876 () Bool)

(assert (=> b!793185 (=> (not res!537876) (not e!440663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43053 (_ BitVec 32)) Bool)

(assert (=> b!793185 (= res!537876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793186 () Bool)

(declare-fun res!537877 () Bool)

(declare-fun e!440664 () Bool)

(assert (=> b!793186 (=> (not res!537877) (not e!440664))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793186 (= res!537877 (and (= (size!21024 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21024 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21024 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793187 () Bool)

(declare-fun res!537880 () Bool)

(assert (=> b!793187 (=> (not res!537880) (not e!440664))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793187 (= res!537880 (validKeyInArray!0 k!2044))))

(declare-fun b!793188 () Bool)

(assert (=> b!793188 (= e!440664 e!440663)))

(declare-fun res!537874 () Bool)

(assert (=> b!793188 (=> (not res!537874) (not e!440663))))

(declare-datatypes ((SeekEntryResult!8201 0))(
  ( (MissingZero!8201 (index!35171 (_ BitVec 32))) (Found!8201 (index!35172 (_ BitVec 32))) (Intermediate!8201 (undefined!9013 Bool) (index!35173 (_ BitVec 32)) (x!66136 (_ BitVec 32))) (Undefined!8201) (MissingVacant!8201 (index!35174 (_ BitVec 32))) )
))
(declare-fun lt!353638 () SeekEntryResult!8201)

(assert (=> b!793188 (= res!537874 (or (= lt!353638 (MissingZero!8201 i!1163)) (= lt!353638 (MissingVacant!8201 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43053 (_ BitVec 32)) SeekEntryResult!8201)

(assert (=> b!793188 (= lt!353638 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793189 () Bool)

(declare-fun res!537873 () Bool)

(assert (=> b!793189 (=> (not res!537873) (not e!440663))))

(declare-datatypes ((List!14619 0))(
  ( (Nil!14616) (Cons!14615 (h!15744 (_ BitVec 64)) (t!20942 List!14619)) )
))
(declare-fun arrayNoDuplicates!0 (array!43053 (_ BitVec 32) List!14619) Bool)

(assert (=> b!793189 (= res!537873 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14616))))

(declare-fun b!793190 () Bool)

(declare-fun res!537875 () Bool)

(assert (=> b!793190 (=> (not res!537875) (not e!440664))))

(declare-fun arrayContainsKey!0 (array!43053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793190 (= res!537875 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!537878 () Bool)

(assert (=> start!68312 (=> (not res!537878) (not e!440664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68312 (= res!537878 (validMask!0 mask!3266))))

(assert (=> start!68312 e!440664))

(assert (=> start!68312 true))

(declare-fun array_inv!16377 (array!43053) Bool)

(assert (=> start!68312 (array_inv!16377 a!3170)))

(declare-fun b!793191 () Bool)

(declare-fun res!537879 () Bool)

(assert (=> b!793191 (=> (not res!537879) (not e!440664))))

(assert (=> b!793191 (= res!537879 (validKeyInArray!0 (select (arr!20603 a!3170) j!153)))))

(assert (= (and start!68312 res!537878) b!793186))

(assert (= (and b!793186 res!537877) b!793191))

(assert (= (and b!793191 res!537879) b!793187))

(assert (= (and b!793187 res!537880) b!793190))

(assert (= (and b!793190 res!537875) b!793188))

(assert (= (and b!793188 res!537874) b!793185))

(assert (= (and b!793185 res!537876) b!793189))

(assert (= (and b!793189 res!537873) b!793184))

(declare-fun m!733743 () Bool)

(assert (=> b!793191 m!733743))

(assert (=> b!793191 m!733743))

(declare-fun m!733745 () Bool)

(assert (=> b!793191 m!733745))

(declare-fun m!733747 () Bool)

(assert (=> b!793184 m!733747))

(declare-fun m!733749 () Bool)

(assert (=> b!793184 m!733749))

(declare-fun m!733751 () Bool)

(assert (=> b!793188 m!733751))

(declare-fun m!733753 () Bool)

(assert (=> b!793187 m!733753))

(declare-fun m!733755 () Bool)

(assert (=> start!68312 m!733755))

(declare-fun m!733757 () Bool)

(assert (=> start!68312 m!733757))

(declare-fun m!733759 () Bool)

(assert (=> b!793189 m!733759))

(declare-fun m!733761 () Bool)

(assert (=> b!793185 m!733761))

(declare-fun m!733763 () Bool)

(assert (=> b!793190 m!733763))

(push 1)

(assert (not b!793190))

(assert (not b!793187))

(assert (not b!793189))

(assert (not start!68312))

(assert (not b!793191))

(assert (not b!793185))

(assert (not b!793188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

