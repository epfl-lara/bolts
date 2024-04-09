; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68282 () Bool)

(assert start!68282)

(declare-fun b!792843 () Bool)

(declare-fun res!537532 () Bool)

(declare-fun e!440529 () Bool)

(assert (=> b!792843 (=> (not res!537532) (not e!440529))))

(declare-datatypes ((array!43023 0))(
  ( (array!43024 (arr!20588 (Array (_ BitVec 32) (_ BitVec 64))) (size!21009 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43023)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792843 (= res!537532 (validKeyInArray!0 (select (arr!20588 a!3170) j!153)))))

(declare-fun res!537537 () Bool)

(assert (=> start!68282 (=> (not res!537537) (not e!440529))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68282 (= res!537537 (validMask!0 mask!3266))))

(assert (=> start!68282 e!440529))

(assert (=> start!68282 true))

(declare-fun array_inv!16362 (array!43023) Bool)

(assert (=> start!68282 (array_inv!16362 a!3170)))

(declare-fun b!792844 () Bool)

(declare-fun res!537536 () Bool)

(assert (=> b!792844 (=> (not res!537536) (not e!440529))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792844 (= res!537536 (and (= (size!21009 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21009 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21009 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792845 () Bool)

(declare-fun res!537533 () Bool)

(declare-fun e!440530 () Bool)

(assert (=> b!792845 (=> (not res!537533) (not e!440530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43023 (_ BitVec 32)) Bool)

(assert (=> b!792845 (= res!537533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792846 () Bool)

(declare-fun res!537534 () Bool)

(assert (=> b!792846 (=> (not res!537534) (not e!440529))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!792846 (= res!537534 (validKeyInArray!0 k!2044))))

(declare-fun b!792847 () Bool)

(assert (=> b!792847 (= e!440529 e!440530)))

(declare-fun res!537535 () Bool)

(assert (=> b!792847 (=> (not res!537535) (not e!440530))))

(declare-datatypes ((SeekEntryResult!8186 0))(
  ( (MissingZero!8186 (index!35111 (_ BitVec 32))) (Found!8186 (index!35112 (_ BitVec 32))) (Intermediate!8186 (undefined!8998 Bool) (index!35113 (_ BitVec 32)) (x!66081 (_ BitVec 32))) (Undefined!8186) (MissingVacant!8186 (index!35114 (_ BitVec 32))) )
))
(declare-fun lt!353575 () SeekEntryResult!8186)

(assert (=> b!792847 (= res!537535 (or (= lt!353575 (MissingZero!8186 i!1163)) (= lt!353575 (MissingVacant!8186 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43023 (_ BitVec 32)) SeekEntryResult!8186)

(assert (=> b!792847 (= lt!353575 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792848 () Bool)

(assert (=> b!792848 (= e!440530 false)))

(declare-fun lt!353574 () Bool)

(declare-datatypes ((List!14604 0))(
  ( (Nil!14601) (Cons!14600 (h!15729 (_ BitVec 64)) (t!20927 List!14604)) )
))
(declare-fun arrayNoDuplicates!0 (array!43023 (_ BitVec 32) List!14604) Bool)

(assert (=> b!792848 (= lt!353574 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14601))))

(declare-fun b!792849 () Bool)

(declare-fun res!537538 () Bool)

(assert (=> b!792849 (=> (not res!537538) (not e!440529))))

(declare-fun arrayContainsKey!0 (array!43023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792849 (= res!537538 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68282 res!537537) b!792844))

(assert (= (and b!792844 res!537536) b!792843))

(assert (= (and b!792843 res!537532) b!792846))

(assert (= (and b!792846 res!537534) b!792849))

(assert (= (and b!792849 res!537538) b!792847))

(assert (= (and b!792847 res!537535) b!792845))

(assert (= (and b!792845 res!537533) b!792848))

(declare-fun m!733441 () Bool)

(assert (=> start!68282 m!733441))

(declare-fun m!733443 () Bool)

(assert (=> start!68282 m!733443))

(declare-fun m!733445 () Bool)

(assert (=> b!792843 m!733445))

(assert (=> b!792843 m!733445))

(declare-fun m!733447 () Bool)

(assert (=> b!792843 m!733447))

(declare-fun m!733449 () Bool)

(assert (=> b!792845 m!733449))

(declare-fun m!733451 () Bool)

(assert (=> b!792848 m!733451))

(declare-fun m!733453 () Bool)

(assert (=> b!792849 m!733453))

(declare-fun m!733455 () Bool)

(assert (=> b!792846 m!733455))

(declare-fun m!733457 () Bool)

(assert (=> b!792847 m!733457))

(push 1)

(assert (not b!792849))

(assert (not b!792843))

(assert (not b!792847))

(assert (not b!792848))

