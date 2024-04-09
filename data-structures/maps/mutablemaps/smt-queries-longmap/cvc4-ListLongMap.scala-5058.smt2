; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68882 () Bool)

(assert start!68882)

(declare-fun b!802766 () Bool)

(declare-fun res!547462 () Bool)

(declare-fun e!444886 () Bool)

(assert (=> b!802766 (=> (not res!547462) (not e!444886))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43623 0))(
  ( (array!43624 (arr!20888 (Array (_ BitVec 32) (_ BitVec 64))) (size!21309 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43623)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802766 (= res!547462 (and (= (size!21309 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21309 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21309 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802767 () Bool)

(declare-fun res!547459 () Bool)

(declare-fun e!444884 () Bool)

(assert (=> b!802767 (=> (not res!547459) (not e!444884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43623 (_ BitVec 32)) Bool)

(assert (=> b!802767 (= res!547459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802768 () Bool)

(declare-fun res!547464 () Bool)

(assert (=> b!802768 (=> (not res!547464) (not e!444886))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802768 (= res!547464 (validKeyInArray!0 k!2044))))

(declare-fun b!802769 () Bool)

(declare-fun res!547465 () Bool)

(assert (=> b!802769 (=> (not res!547465) (not e!444886))))

(assert (=> b!802769 (= res!547465 (validKeyInArray!0 (select (arr!20888 a!3170) j!153)))))

(declare-fun b!802770 () Bool)

(declare-fun res!547460 () Bool)

(assert (=> b!802770 (=> (not res!547460) (not e!444884))))

(declare-datatypes ((List!14904 0))(
  ( (Nil!14901) (Cons!14900 (h!16029 (_ BitVec 64)) (t!21227 List!14904)) )
))
(declare-fun arrayNoDuplicates!0 (array!43623 (_ BitVec 32) List!14904) Bool)

(assert (=> b!802770 (= res!547460 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14901))))

(declare-fun b!802771 () Bool)

(declare-fun res!547455 () Bool)

(assert (=> b!802771 (=> (not res!547455) (not e!444886))))

(declare-fun arrayContainsKey!0 (array!43623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802771 (= res!547455 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802772 () Bool)

(declare-fun res!547461 () Bool)

(assert (=> b!802772 (=> (not res!547461) (not e!444884))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802772 (= res!547461 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21309 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20888 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21309 a!3170)) (= (select (arr!20888 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802773 () Bool)

(declare-fun e!444882 () Bool)

(assert (=> b!802773 (= e!444882 (not true))))

(declare-fun lt!359149 () (_ BitVec 64))

(declare-fun lt!359153 () array!43623)

(declare-fun lt!359152 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8486 0))(
  ( (MissingZero!8486 (index!36311 (_ BitVec 32))) (Found!8486 (index!36312 (_ BitVec 32))) (Intermediate!8486 (undefined!9298 Bool) (index!36313 (_ BitVec 32)) (x!67181 (_ BitVec 32))) (Undefined!8486) (MissingVacant!8486 (index!36314 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43623 (_ BitVec 32)) SeekEntryResult!8486)

(assert (=> b!802773 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359152 vacantAfter!23 lt!359149 lt!359153 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359152 vacantBefore!23 (select (arr!20888 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27514 0))(
  ( (Unit!27515) )
))
(declare-fun lt!359150 () Unit!27514)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43623 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27514)

(assert (=> b!802773 (= lt!359150 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359152 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802773 (= lt!359152 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802774 () Bool)

(declare-fun e!444883 () Bool)

(assert (=> b!802774 (= e!444884 e!444883)))

(declare-fun res!547458 () Bool)

(assert (=> b!802774 (=> (not res!547458) (not e!444883))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43623 (_ BitVec 32)) SeekEntryResult!8486)

(assert (=> b!802774 (= res!547458 (= (seekEntryOrOpen!0 lt!359149 lt!359153 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359149 lt!359153 mask!3266)))))

(assert (=> b!802774 (= lt!359149 (select (store (arr!20888 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802774 (= lt!359153 (array!43624 (store (arr!20888 a!3170) i!1163 k!2044) (size!21309 a!3170)))))

(declare-fun b!802775 () Bool)

(assert (=> b!802775 (= e!444886 e!444884)))

(declare-fun res!547463 () Bool)

(assert (=> b!802775 (=> (not res!547463) (not e!444884))))

(declare-fun lt!359154 () SeekEntryResult!8486)

(assert (=> b!802775 (= res!547463 (or (= lt!359154 (MissingZero!8486 i!1163)) (= lt!359154 (MissingVacant!8486 i!1163))))))

(assert (=> b!802775 (= lt!359154 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!547456 () Bool)

(assert (=> start!68882 (=> (not res!547456) (not e!444886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68882 (= res!547456 (validMask!0 mask!3266))))

(assert (=> start!68882 e!444886))

(assert (=> start!68882 true))

(declare-fun array_inv!16662 (array!43623) Bool)

(assert (=> start!68882 (array_inv!16662 a!3170)))

(declare-fun b!802776 () Bool)

(assert (=> b!802776 (= e!444883 e!444882)))

(declare-fun res!547457 () Bool)

(assert (=> b!802776 (=> (not res!547457) (not e!444882))))

(declare-fun lt!359155 () SeekEntryResult!8486)

(declare-fun lt!359151 () SeekEntryResult!8486)

(assert (=> b!802776 (= res!547457 (and (= lt!359151 lt!359155) (= lt!359155 (Found!8486 j!153)) (not (= (select (arr!20888 a!3170) index!1236) (select (arr!20888 a!3170) j!153)))))))

(assert (=> b!802776 (= lt!359155 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20888 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802776 (= lt!359151 (seekEntryOrOpen!0 (select (arr!20888 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68882 res!547456) b!802766))

(assert (= (and b!802766 res!547462) b!802769))

(assert (= (and b!802769 res!547465) b!802768))

(assert (= (and b!802768 res!547464) b!802771))

(assert (= (and b!802771 res!547455) b!802775))

(assert (= (and b!802775 res!547463) b!802767))

(assert (= (and b!802767 res!547459) b!802770))

(assert (= (and b!802770 res!547460) b!802772))

(assert (= (and b!802772 res!547461) b!802774))

(assert (= (and b!802774 res!547458) b!802776))

(assert (= (and b!802776 res!547457) b!802773))

(declare-fun m!744455 () Bool)

(assert (=> b!802771 m!744455))

(declare-fun m!744457 () Bool)

(assert (=> b!802774 m!744457))

(declare-fun m!744459 () Bool)

(assert (=> b!802774 m!744459))

(declare-fun m!744461 () Bool)

(assert (=> b!802774 m!744461))

(declare-fun m!744463 () Bool)

(assert (=> b!802774 m!744463))

(declare-fun m!744465 () Bool)

(assert (=> b!802772 m!744465))

(declare-fun m!744467 () Bool)

(assert (=> b!802772 m!744467))

(declare-fun m!744469 () Bool)

(assert (=> b!802775 m!744469))

(declare-fun m!744471 () Bool)

(assert (=> b!802769 m!744471))

(assert (=> b!802769 m!744471))

(declare-fun m!744473 () Bool)

(assert (=> b!802769 m!744473))

(declare-fun m!744475 () Bool)

(assert (=> start!68882 m!744475))

(declare-fun m!744477 () Bool)

(assert (=> start!68882 m!744477))

(assert (=> b!802773 m!744471))

(declare-fun m!744479 () Bool)

(assert (=> b!802773 m!744479))

(declare-fun m!744481 () Bool)

(assert (=> b!802773 m!744481))

(declare-fun m!744483 () Bool)

(assert (=> b!802773 m!744483))

(assert (=> b!802773 m!744471))

(declare-fun m!744485 () Bool)

(assert (=> b!802773 m!744485))

(declare-fun m!744487 () Bool)

(assert (=> b!802767 m!744487))

(declare-fun m!744489 () Bool)

(assert (=> b!802770 m!744489))

(declare-fun m!744491 () Bool)

(assert (=> b!802768 m!744491))

(declare-fun m!744493 () Bool)

(assert (=> b!802776 m!744493))

(assert (=> b!802776 m!744471))

(assert (=> b!802776 m!744471))

(declare-fun m!744495 () Bool)

(assert (=> b!802776 m!744495))

(assert (=> b!802776 m!744471))

(declare-fun m!744497 () Bool)

(assert (=> b!802776 m!744497))

(push 1)

