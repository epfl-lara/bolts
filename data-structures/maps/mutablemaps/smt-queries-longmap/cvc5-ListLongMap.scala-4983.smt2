; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68428 () Bool)

(assert start!68428)

(declare-fun res!539542 () Bool)

(declare-fun e!441271 () Bool)

(assert (=> start!68428 (=> (not res!539542) (not e!441271))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68428 (= res!539542 (validMask!0 mask!3266))))

(assert (=> start!68428 e!441271))

(assert (=> start!68428 true))

(declare-datatypes ((array!43169 0))(
  ( (array!43170 (arr!20661 (Array (_ BitVec 32) (_ BitVec 64))) (size!21082 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43169)

(declare-fun array_inv!16435 (array!43169) Bool)

(assert (=> start!68428 (array_inv!16435 a!3170)))

(declare-fun b!794843 () Bool)

(declare-fun res!539532 () Bool)

(declare-fun e!441270 () Bool)

(assert (=> b!794843 (=> (not res!539532) (not e!441270))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794843 (= res!539532 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21082 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20661 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21082 a!3170)) (= (select (arr!20661 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794844 () Bool)

(declare-fun res!539533 () Bool)

(assert (=> b!794844 (=> (not res!539533) (not e!441271))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794844 (= res!539533 (validKeyInArray!0 k!2044))))

(declare-fun b!794845 () Bool)

(assert (=> b!794845 (= e!441271 e!441270)))

(declare-fun res!539539 () Bool)

(assert (=> b!794845 (=> (not res!539539) (not e!441270))))

(declare-datatypes ((SeekEntryResult!8259 0))(
  ( (MissingZero!8259 (index!35403 (_ BitVec 32))) (Found!8259 (index!35404 (_ BitVec 32))) (Intermediate!8259 (undefined!9071 Bool) (index!35405 (_ BitVec 32)) (x!66354 (_ BitVec 32))) (Undefined!8259) (MissingVacant!8259 (index!35406 (_ BitVec 32))) )
))
(declare-fun lt!354320 () SeekEntryResult!8259)

(assert (=> b!794845 (= res!539539 (or (= lt!354320 (MissingZero!8259 i!1163)) (= lt!354320 (MissingVacant!8259 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43169 (_ BitVec 32)) SeekEntryResult!8259)

(assert (=> b!794845 (= lt!354320 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794846 () Bool)

(declare-fun res!539541 () Bool)

(declare-fun e!441269 () Bool)

(assert (=> b!794846 (=> (not res!539541) (not e!441269))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43169 (_ BitVec 32)) SeekEntryResult!8259)

(assert (=> b!794846 (= res!539541 (= (seekEntryOrOpen!0 (select (arr!20661 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20661 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794847 () Bool)

(declare-fun res!539535 () Bool)

(assert (=> b!794847 (=> (not res!539535) (not e!441270))))

(declare-datatypes ((List!14677 0))(
  ( (Nil!14674) (Cons!14673 (h!15802 (_ BitVec 64)) (t!21000 List!14677)) )
))
(declare-fun arrayNoDuplicates!0 (array!43169 (_ BitVec 32) List!14677) Bool)

(assert (=> b!794847 (= res!539535 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14674))))

(declare-fun b!794848 () Bool)

(declare-fun res!539538 () Bool)

(assert (=> b!794848 (=> (not res!539538) (not e!441271))))

(assert (=> b!794848 (= res!539538 (validKeyInArray!0 (select (arr!20661 a!3170) j!153)))))

(declare-fun b!794849 () Bool)

(assert (=> b!794849 (= e!441270 e!441269)))

(declare-fun res!539536 () Bool)

(assert (=> b!794849 (=> (not res!539536) (not e!441269))))

(declare-fun lt!354321 () (_ BitVec 64))

(declare-fun lt!354322 () array!43169)

(assert (=> b!794849 (= res!539536 (= (seekEntryOrOpen!0 lt!354321 lt!354322 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354321 lt!354322 mask!3266)))))

(assert (=> b!794849 (= lt!354321 (select (store (arr!20661 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794849 (= lt!354322 (array!43170 (store (arr!20661 a!3170) i!1163 k!2044) (size!21082 a!3170)))))

(declare-fun b!794850 () Bool)

(declare-fun res!539537 () Bool)

(assert (=> b!794850 (=> (not res!539537) (not e!441271))))

(assert (=> b!794850 (= res!539537 (and (= (size!21082 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21082 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21082 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794851 () Bool)

(declare-fun res!539534 () Bool)

(assert (=> b!794851 (=> (not res!539534) (not e!441271))))

(declare-fun arrayContainsKey!0 (array!43169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794851 (= res!539534 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794852 () Bool)

(declare-fun res!539540 () Bool)

(assert (=> b!794852 (=> (not res!539540) (not e!441270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43169 (_ BitVec 32)) Bool)

(assert (=> b!794852 (= res!539540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794853 () Bool)

(assert (=> b!794853 (= e!441269 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (= (and start!68428 res!539542) b!794850))

(assert (= (and b!794850 res!539537) b!794848))

(assert (= (and b!794848 res!539538) b!794844))

(assert (= (and b!794844 res!539533) b!794851))

(assert (= (and b!794851 res!539534) b!794845))

(assert (= (and b!794845 res!539539) b!794852))

(assert (= (and b!794852 res!539540) b!794847))

(assert (= (and b!794847 res!539535) b!794843))

(assert (= (and b!794843 res!539532) b!794849))

(assert (= (and b!794849 res!539536) b!794846))

(assert (= (and b!794846 res!539541) b!794853))

(declare-fun m!735523 () Bool)

(assert (=> b!794846 m!735523))

(assert (=> b!794846 m!735523))

(declare-fun m!735525 () Bool)

(assert (=> b!794846 m!735525))

(assert (=> b!794846 m!735523))

(declare-fun m!735527 () Bool)

(assert (=> b!794846 m!735527))

(declare-fun m!735529 () Bool)

(assert (=> b!794851 m!735529))

(declare-fun m!735531 () Bool)

(assert (=> start!68428 m!735531))

(declare-fun m!735533 () Bool)

(assert (=> start!68428 m!735533))

(declare-fun m!735535 () Bool)

(assert (=> b!794847 m!735535))

(assert (=> b!794848 m!735523))

(assert (=> b!794848 m!735523))

(declare-fun m!735537 () Bool)

(assert (=> b!794848 m!735537))

(declare-fun m!735539 () Bool)

(assert (=> b!794849 m!735539))

(declare-fun m!735541 () Bool)

(assert (=> b!794849 m!735541))

(declare-fun m!735543 () Bool)

(assert (=> b!794849 m!735543))

(declare-fun m!735545 () Bool)

(assert (=> b!794849 m!735545))

(declare-fun m!735547 () Bool)

(assert (=> b!794843 m!735547))

(declare-fun m!735549 () Bool)

(assert (=> b!794843 m!735549))

(declare-fun m!735551 () Bool)

(assert (=> b!794852 m!735551))

(declare-fun m!735553 () Bool)

(assert (=> b!794845 m!735553))

(declare-fun m!735555 () Bool)

(assert (=> b!794844 m!735555))

(push 1)

(assert (not b!794844))

(assert (not b!794849))

(assert (not b!794851))

(assert (not b!794847))

(assert (not b!794845))

(assert (not b!794846))

(assert (not b!794852))

(assert (not start!68428))

(assert (not b!794848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

