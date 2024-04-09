; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68708 () Bool)

(assert start!68708)

(declare-fun b!799578 () Bool)

(declare-fun res!544275 () Bool)

(declare-fun e!443408 () Bool)

(assert (=> b!799578 (=> (not res!544275) (not e!443408))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799578 (= res!544275 (validKeyInArray!0 k!2044))))

(declare-fun b!799579 () Bool)

(declare-fun res!544276 () Bool)

(assert (=> b!799579 (=> (not res!544276) (not e!443408))))

(declare-datatypes ((array!43449 0))(
  ( (array!43450 (arr!20801 (Array (_ BitVec 32) (_ BitVec 64))) (size!21222 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43449)

(declare-fun arrayContainsKey!0 (array!43449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799579 (= res!544276 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799580 () Bool)

(declare-fun e!443405 () Bool)

(declare-fun e!443407 () Bool)

(assert (=> b!799580 (= e!443405 e!443407)))

(declare-fun res!544268 () Bool)

(assert (=> b!799580 (=> (not res!544268) (not e!443407))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357130 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357127 () array!43449)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8399 0))(
  ( (MissingZero!8399 (index!35963 (_ BitVec 32))) (Found!8399 (index!35964 (_ BitVec 32))) (Intermediate!8399 (undefined!9211 Bool) (index!35965 (_ BitVec 32)) (x!66862 (_ BitVec 32))) (Undefined!8399) (MissingVacant!8399 (index!35966 (_ BitVec 32))) )
))
(declare-fun lt!357123 () SeekEntryResult!8399)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43449 (_ BitVec 32)) SeekEntryResult!8399)

(assert (=> b!799580 (= res!544268 (= lt!357123 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357130 lt!357127 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43449 (_ BitVec 32)) SeekEntryResult!8399)

(assert (=> b!799580 (= lt!357123 (seekEntryOrOpen!0 lt!357130 lt!357127 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799580 (= lt!357130 (select (store (arr!20801 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799580 (= lt!357127 (array!43450 (store (arr!20801 a!3170) i!1163 k!2044) (size!21222 a!3170)))))

(declare-fun b!799581 () Bool)

(declare-fun res!544278 () Bool)

(assert (=> b!799581 (=> (not res!544278) (not e!443405))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799581 (= res!544278 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21222 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20801 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21222 a!3170)) (= (select (arr!20801 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799582 () Bool)

(declare-fun e!443410 () Bool)

(assert (=> b!799582 (= e!443407 e!443410)))

(declare-fun res!544273 () Bool)

(assert (=> b!799582 (=> (not res!544273) (not e!443410))))

(declare-fun lt!357124 () SeekEntryResult!8399)

(declare-fun lt!357128 () SeekEntryResult!8399)

(assert (=> b!799582 (= res!544273 (and (= lt!357124 lt!357128) (= lt!357128 (Found!8399 j!153)) (not (= (select (arr!20801 a!3170) index!1236) (select (arr!20801 a!3170) j!153)))))))

(assert (=> b!799582 (= lt!357128 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20801 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799582 (= lt!357124 (seekEntryOrOpen!0 (select (arr!20801 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799583 () Bool)

(declare-fun res!544267 () Bool)

(assert (=> b!799583 (=> (not res!544267) (not e!443408))))

(assert (=> b!799583 (= res!544267 (and (= (size!21222 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21222 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21222 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799584 () Bool)

(declare-fun e!443409 () Bool)

(assert (=> b!799584 (= e!443410 e!443409)))

(declare-fun res!544272 () Bool)

(assert (=> b!799584 (=> (not res!544272) (not e!443409))))

(declare-fun lt!357125 () (_ BitVec 32))

(assert (=> b!799584 (= res!544272 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357125 #b00000000000000000000000000000000) (bvslt lt!357125 (size!21222 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799584 (= lt!357125 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799585 () Bool)

(declare-fun res!544270 () Bool)

(assert (=> b!799585 (=> (not res!544270) (not e!443405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43449 (_ BitVec 32)) Bool)

(assert (=> b!799585 (= res!544270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!544269 () Bool)

(assert (=> start!68708 (=> (not res!544269) (not e!443408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68708 (= res!544269 (validMask!0 mask!3266))))

(assert (=> start!68708 e!443408))

(assert (=> start!68708 true))

(declare-fun array_inv!16575 (array!43449) Bool)

(assert (=> start!68708 (array_inv!16575 a!3170)))

(declare-fun b!799586 () Bool)

(assert (=> b!799586 (= e!443409 false)))

(declare-fun lt!357129 () SeekEntryResult!8399)

(assert (=> b!799586 (= lt!357129 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357125 vacantBefore!23 (select (arr!20801 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799587 () Bool)

(declare-fun res!544274 () Bool)

(assert (=> b!799587 (=> (not res!544274) (not e!443409))))

(assert (=> b!799587 (= res!544274 (= lt!357123 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357125 vacantAfter!23 lt!357130 lt!357127 mask!3266)))))

(declare-fun b!799588 () Bool)

(assert (=> b!799588 (= e!443408 e!443405)))

(declare-fun res!544271 () Bool)

(assert (=> b!799588 (=> (not res!544271) (not e!443405))))

(declare-fun lt!357126 () SeekEntryResult!8399)

(assert (=> b!799588 (= res!544271 (or (= lt!357126 (MissingZero!8399 i!1163)) (= lt!357126 (MissingVacant!8399 i!1163))))))

(assert (=> b!799588 (= lt!357126 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799589 () Bool)

(declare-fun res!544277 () Bool)

(assert (=> b!799589 (=> (not res!544277) (not e!443405))))

(declare-datatypes ((List!14817 0))(
  ( (Nil!14814) (Cons!14813 (h!15942 (_ BitVec 64)) (t!21140 List!14817)) )
))
(declare-fun arrayNoDuplicates!0 (array!43449 (_ BitVec 32) List!14817) Bool)

(assert (=> b!799589 (= res!544277 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14814))))

(declare-fun b!799590 () Bool)

(declare-fun res!544279 () Bool)

(assert (=> b!799590 (=> (not res!544279) (not e!443408))))

(assert (=> b!799590 (= res!544279 (validKeyInArray!0 (select (arr!20801 a!3170) j!153)))))

(assert (= (and start!68708 res!544269) b!799583))

(assert (= (and b!799583 res!544267) b!799590))

(assert (= (and b!799590 res!544279) b!799578))

(assert (= (and b!799578 res!544275) b!799579))

(assert (= (and b!799579 res!544276) b!799588))

(assert (= (and b!799588 res!544271) b!799585))

(assert (= (and b!799585 res!544270) b!799589))

(assert (= (and b!799589 res!544277) b!799581))

(assert (= (and b!799581 res!544278) b!799580))

(assert (= (and b!799580 res!544268) b!799582))

(assert (= (and b!799582 res!544273) b!799584))

(assert (= (and b!799584 res!544272) b!799587))

(assert (= (and b!799587 res!544274) b!799586))

(declare-fun m!740707 () Bool)

(assert (=> b!799590 m!740707))

(assert (=> b!799590 m!740707))

(declare-fun m!740709 () Bool)

(assert (=> b!799590 m!740709))

(declare-fun m!740711 () Bool)

(assert (=> b!799588 m!740711))

(declare-fun m!740713 () Bool)

(assert (=> b!799582 m!740713))

(assert (=> b!799582 m!740707))

(assert (=> b!799582 m!740707))

(declare-fun m!740715 () Bool)

(assert (=> b!799582 m!740715))

(assert (=> b!799582 m!740707))

(declare-fun m!740717 () Bool)

(assert (=> b!799582 m!740717))

(declare-fun m!740719 () Bool)

(assert (=> b!799578 m!740719))

(declare-fun m!740721 () Bool)

(assert (=> b!799580 m!740721))

(declare-fun m!740723 () Bool)

(assert (=> b!799580 m!740723))

(declare-fun m!740725 () Bool)

(assert (=> b!799580 m!740725))

(declare-fun m!740727 () Bool)

(assert (=> b!799580 m!740727))

(declare-fun m!740729 () Bool)

(assert (=> b!799585 m!740729))

(declare-fun m!740731 () Bool)

(assert (=> b!799587 m!740731))

(declare-fun m!740733 () Bool)

(assert (=> b!799581 m!740733))

(declare-fun m!740735 () Bool)

(assert (=> b!799581 m!740735))

(declare-fun m!740737 () Bool)

(assert (=> b!799584 m!740737))

(declare-fun m!740739 () Bool)

(assert (=> start!68708 m!740739))

(declare-fun m!740741 () Bool)

(assert (=> start!68708 m!740741))

(assert (=> b!799586 m!740707))

(assert (=> b!799586 m!740707))

(declare-fun m!740743 () Bool)

(assert (=> b!799586 m!740743))

(declare-fun m!740745 () Bool)

(assert (=> b!799589 m!740745))

(declare-fun m!740747 () Bool)

(assert (=> b!799579 m!740747))

(push 1)

