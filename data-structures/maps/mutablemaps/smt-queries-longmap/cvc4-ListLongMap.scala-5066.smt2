; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68930 () Bool)

(assert start!68930)

(declare-fun b!803612 () Bool)

(declare-fun e!445299 () Bool)

(declare-fun e!445298 () Bool)

(assert (=> b!803612 (= e!445299 e!445298)))

(declare-fun res!548306 () Bool)

(assert (=> b!803612 (=> (not res!548306) (not e!445298))))

(declare-datatypes ((SeekEntryResult!8510 0))(
  ( (MissingZero!8510 (index!36407 (_ BitVec 32))) (Found!8510 (index!36408 (_ BitVec 32))) (Intermediate!8510 (undefined!9322 Bool) (index!36409 (_ BitVec 32)) (x!67269 (_ BitVec 32))) (Undefined!8510) (MissingVacant!8510 (index!36410 (_ BitVec 32))) )
))
(declare-fun lt!359789 () SeekEntryResult!8510)

(declare-datatypes ((array!43671 0))(
  ( (array!43672 (arr!20912 (Array (_ BitVec 32) (_ BitVec 64))) (size!21333 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43671)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!359788 () SeekEntryResult!8510)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803612 (= res!548306 (and (= lt!359788 lt!359789) (= lt!359789 (Found!8510 j!153)) (not (= (select (arr!20912 a!3170) index!1236) (select (arr!20912 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43671 (_ BitVec 32)) SeekEntryResult!8510)

(assert (=> b!803612 (= lt!359789 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20912 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43671 (_ BitVec 32)) SeekEntryResult!8510)

(assert (=> b!803612 (= lt!359788 (seekEntryOrOpen!0 (select (arr!20912 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803614 () Bool)

(declare-fun res!548302 () Bool)

(declare-fun e!445297 () Bool)

(assert (=> b!803614 (=> (not res!548302) (not e!445297))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803614 (= res!548302 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803615 () Bool)

(declare-fun res!548308 () Bool)

(assert (=> b!803615 (=> (not res!548308) (not e!445297))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803615 (= res!548308 (and (= (size!21333 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21333 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21333 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803616 () Bool)

(declare-fun res!548304 () Bool)

(declare-fun e!445296 () Bool)

(assert (=> b!803616 (=> (not res!548304) (not e!445296))))

(declare-datatypes ((List!14928 0))(
  ( (Nil!14925) (Cons!14924 (h!16053 (_ BitVec 64)) (t!21251 List!14928)) )
))
(declare-fun arrayNoDuplicates!0 (array!43671 (_ BitVec 32) List!14928) Bool)

(assert (=> b!803616 (= res!548304 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14925))))

(declare-fun b!803617 () Bool)

(assert (=> b!803617 (= e!445296 e!445299)))

(declare-fun res!548311 () Bool)

(assert (=> b!803617 (=> (not res!548311) (not e!445299))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359792 () (_ BitVec 64))

(declare-fun lt!359793 () array!43671)

(assert (=> b!803617 (= res!548311 (= (seekEntryOrOpen!0 lt!359792 lt!359793 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359792 lt!359793 mask!3266)))))

(assert (=> b!803617 (= lt!359792 (select (store (arr!20912 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803617 (= lt!359793 (array!43672 (store (arr!20912 a!3170) i!1163 k!2044) (size!21333 a!3170)))))

(declare-fun b!803618 () Bool)

(declare-fun res!548305 () Bool)

(assert (=> b!803618 (=> (not res!548305) (not e!445296))))

(assert (=> b!803618 (= res!548305 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21333 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20912 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21333 a!3170)) (= (select (arr!20912 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803619 () Bool)

(declare-fun res!548303 () Bool)

(assert (=> b!803619 (=> (not res!548303) (not e!445297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803619 (= res!548303 (validKeyInArray!0 k!2044))))

(declare-fun b!803620 () Bool)

(declare-fun res!548307 () Bool)

(assert (=> b!803620 (=> (not res!548307) (not e!445296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43671 (_ BitVec 32)) Bool)

(assert (=> b!803620 (= res!548307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803621 () Bool)

(assert (=> b!803621 (= e!445297 e!445296)))

(declare-fun res!548309 () Bool)

(assert (=> b!803621 (=> (not res!548309) (not e!445296))))

(declare-fun lt!359790 () SeekEntryResult!8510)

(assert (=> b!803621 (= res!548309 (or (= lt!359790 (MissingZero!8510 i!1163)) (= lt!359790 (MissingVacant!8510 i!1163))))))

(assert (=> b!803621 (= lt!359790 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803622 () Bool)

(assert (=> b!803622 (= e!445298 (not true))))

(declare-fun lt!359791 () (_ BitVec 32))

(assert (=> b!803622 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359791 vacantAfter!23 lt!359792 lt!359793 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359791 vacantBefore!23 (select (arr!20912 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27562 0))(
  ( (Unit!27563) )
))
(declare-fun lt!359794 () Unit!27562)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43671 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27562)

(assert (=> b!803622 (= lt!359794 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359791 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803622 (= lt!359791 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!548301 () Bool)

(assert (=> start!68930 (=> (not res!548301) (not e!445297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68930 (= res!548301 (validMask!0 mask!3266))))

(assert (=> start!68930 e!445297))

(assert (=> start!68930 true))

(declare-fun array_inv!16686 (array!43671) Bool)

(assert (=> start!68930 (array_inv!16686 a!3170)))

(declare-fun b!803613 () Bool)

(declare-fun res!548310 () Bool)

(assert (=> b!803613 (=> (not res!548310) (not e!445297))))

(assert (=> b!803613 (= res!548310 (validKeyInArray!0 (select (arr!20912 a!3170) j!153)))))

(assert (= (and start!68930 res!548301) b!803615))

(assert (= (and b!803615 res!548308) b!803613))

(assert (= (and b!803613 res!548310) b!803619))

(assert (= (and b!803619 res!548303) b!803614))

(assert (= (and b!803614 res!548302) b!803621))

(assert (= (and b!803621 res!548309) b!803620))

(assert (= (and b!803620 res!548307) b!803616))

(assert (= (and b!803616 res!548304) b!803618))

(assert (= (and b!803618 res!548305) b!803617))

(assert (= (and b!803617 res!548311) b!803612))

(assert (= (and b!803612 res!548306) b!803622))

(declare-fun m!745529 () Bool)

(assert (=> b!803621 m!745529))

(declare-fun m!745531 () Bool)

(assert (=> b!803620 m!745531))

(declare-fun m!745533 () Bool)

(assert (=> start!68930 m!745533))

(declare-fun m!745535 () Bool)

(assert (=> start!68930 m!745535))

(declare-fun m!745537 () Bool)

(assert (=> b!803618 m!745537))

(declare-fun m!745539 () Bool)

(assert (=> b!803618 m!745539))

(declare-fun m!745541 () Bool)

(assert (=> b!803612 m!745541))

(declare-fun m!745543 () Bool)

(assert (=> b!803612 m!745543))

(assert (=> b!803612 m!745543))

(declare-fun m!745545 () Bool)

(assert (=> b!803612 m!745545))

(assert (=> b!803612 m!745543))

(declare-fun m!745547 () Bool)

(assert (=> b!803612 m!745547))

(declare-fun m!745549 () Bool)

(assert (=> b!803617 m!745549))

(declare-fun m!745551 () Bool)

(assert (=> b!803617 m!745551))

(declare-fun m!745553 () Bool)

(assert (=> b!803617 m!745553))

(declare-fun m!745555 () Bool)

(assert (=> b!803617 m!745555))

(declare-fun m!745557 () Bool)

(assert (=> b!803614 m!745557))

(assert (=> b!803613 m!745543))

(assert (=> b!803613 m!745543))

(declare-fun m!745559 () Bool)

(assert (=> b!803613 m!745559))

(declare-fun m!745561 () Bool)

(assert (=> b!803619 m!745561))

(assert (=> b!803622 m!745543))

(declare-fun m!745563 () Bool)

(assert (=> b!803622 m!745563))

(declare-fun m!745565 () Bool)

(assert (=> b!803622 m!745565))

(assert (=> b!803622 m!745543))

(declare-fun m!745567 () Bool)

(assert (=> b!803622 m!745567))

(declare-fun m!745569 () Bool)

(assert (=> b!803622 m!745569))

(declare-fun m!745571 () Bool)

(assert (=> b!803616 m!745571))

(push 1)

