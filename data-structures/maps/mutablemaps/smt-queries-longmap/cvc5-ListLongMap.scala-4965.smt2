; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68320 () Bool)

(assert start!68320)

(declare-fun b!793282 () Bool)

(declare-fun res!537978 () Bool)

(declare-fun e!440700 () Bool)

(assert (=> b!793282 (=> (not res!537978) (not e!440700))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793282 (= res!537978 (validKeyInArray!0 k!2044))))

(declare-fun b!793283 () Bool)

(declare-fun res!537974 () Bool)

(declare-fun e!440701 () Bool)

(assert (=> b!793283 (=> (not res!537974) (not e!440701))))

(declare-datatypes ((array!43061 0))(
  ( (array!43062 (arr!20607 (Array (_ BitVec 32) (_ BitVec 64))) (size!21028 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43061)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43061 (_ BitVec 32)) Bool)

(assert (=> b!793283 (= res!537974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!537977 () Bool)

(assert (=> start!68320 (=> (not res!537977) (not e!440700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68320 (= res!537977 (validMask!0 mask!3266))))

(assert (=> start!68320 e!440700))

(assert (=> start!68320 true))

(declare-fun array_inv!16381 (array!43061) Bool)

(assert (=> start!68320 (array_inv!16381 a!3170)))

(declare-fun b!793284 () Bool)

(assert (=> b!793284 (= e!440700 e!440701)))

(declare-fun res!537972 () Bool)

(assert (=> b!793284 (=> (not res!537972) (not e!440701))))

(declare-datatypes ((SeekEntryResult!8205 0))(
  ( (MissingZero!8205 (index!35187 (_ BitVec 32))) (Found!8205 (index!35188 (_ BitVec 32))) (Intermediate!8205 (undefined!9017 Bool) (index!35189 (_ BitVec 32)) (x!66156 (_ BitVec 32))) (Undefined!8205) (MissingVacant!8205 (index!35190 (_ BitVec 32))) )
))
(declare-fun lt!353650 () SeekEntryResult!8205)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793284 (= res!537972 (or (= lt!353650 (MissingZero!8205 i!1163)) (= lt!353650 (MissingVacant!8205 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43061 (_ BitVec 32)) SeekEntryResult!8205)

(assert (=> b!793284 (= lt!353650 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793285 () Bool)

(declare-fun res!537973 () Bool)

(assert (=> b!793285 (=> (not res!537973) (not e!440700))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793285 (= res!537973 (and (= (size!21028 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21028 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21028 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793286 () Bool)

(declare-fun res!537979 () Bool)

(assert (=> b!793286 (=> (not res!537979) (not e!440701))))

(declare-datatypes ((List!14623 0))(
  ( (Nil!14620) (Cons!14619 (h!15748 (_ BitVec 64)) (t!20946 List!14623)) )
))
(declare-fun arrayNoDuplicates!0 (array!43061 (_ BitVec 32) List!14623) Bool)

(assert (=> b!793286 (= res!537979 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14620))))

(declare-fun b!793287 () Bool)

(declare-fun res!537976 () Bool)

(assert (=> b!793287 (=> (not res!537976) (not e!440701))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793287 (= res!537976 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21028 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20607 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21028 a!3170)) (= (select (arr!20607 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20607 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!793288 () Bool)

(assert (=> b!793288 (= e!440701 (not (validKeyInArray!0 (select (store (arr!20607 a!3170) i!1163 k!2044) j!153))))))

(declare-fun b!793289 () Bool)

(declare-fun res!537975 () Bool)

(assert (=> b!793289 (=> (not res!537975) (not e!440700))))

(declare-fun arrayContainsKey!0 (array!43061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793289 (= res!537975 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793290 () Bool)

(declare-fun res!537971 () Bool)

(assert (=> b!793290 (=> (not res!537971) (not e!440700))))

(assert (=> b!793290 (= res!537971 (validKeyInArray!0 (select (arr!20607 a!3170) j!153)))))

(assert (= (and start!68320 res!537977) b!793285))

(assert (= (and b!793285 res!537973) b!793290))

(assert (= (and b!793290 res!537971) b!793282))

(assert (= (and b!793282 res!537978) b!793289))

(assert (= (and b!793289 res!537975) b!793284))

(assert (= (and b!793284 res!537972) b!793283))

(assert (= (and b!793283 res!537974) b!793286))

(assert (= (and b!793286 res!537979) b!793287))

(assert (= (and b!793287 res!537976) b!793288))

(declare-fun m!733843 () Bool)

(assert (=> b!793289 m!733843))

(declare-fun m!733845 () Bool)

(assert (=> b!793290 m!733845))

(assert (=> b!793290 m!733845))

(declare-fun m!733847 () Bool)

(assert (=> b!793290 m!733847))

(declare-fun m!733849 () Bool)

(assert (=> b!793288 m!733849))

(declare-fun m!733851 () Bool)

(assert (=> b!793288 m!733851))

(assert (=> b!793288 m!733851))

(declare-fun m!733853 () Bool)

(assert (=> b!793288 m!733853))

(declare-fun m!733855 () Bool)

(assert (=> b!793284 m!733855))

(declare-fun m!733857 () Bool)

(assert (=> b!793287 m!733857))

(declare-fun m!733859 () Bool)

(assert (=> b!793287 m!733859))

(assert (=> b!793287 m!733849))

(declare-fun m!733861 () Bool)

(assert (=> b!793287 m!733861))

(declare-fun m!733863 () Bool)

(assert (=> b!793282 m!733863))

(declare-fun m!733865 () Bool)

(assert (=> start!68320 m!733865))

(declare-fun m!733867 () Bool)

(assert (=> start!68320 m!733867))

(declare-fun m!733869 () Bool)

(assert (=> b!793286 m!733869))

(declare-fun m!733871 () Bool)

(assert (=> b!793283 m!733871))

(push 1)

(assert (not b!793286))

(assert (not start!68320))

(assert (not b!793288))

(assert (not 