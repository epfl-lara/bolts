; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68606 () Bool)

(assert start!68606)

(declare-fun b!797771 () Bool)

(declare-fun res!542468 () Bool)

(declare-fun e!442591 () Bool)

(assert (=> b!797771 (=> (not res!542468) (not e!442591))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43347 0))(
  ( (array!43348 (arr!20750 (Array (_ BitVec 32) (_ BitVec 64))) (size!21171 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43347)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!797771 (= res!542468 (and (= (size!21171 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21171 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21171 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797772 () Bool)

(declare-fun e!442589 () Bool)

(declare-fun e!442588 () Bool)

(assert (=> b!797772 (= e!442589 e!442588)))

(declare-fun res!542465 () Bool)

(assert (=> b!797772 (=> (not res!542465) (not e!442588))))

(declare-datatypes ((SeekEntryResult!8348 0))(
  ( (MissingZero!8348 (index!35759 (_ BitVec 32))) (Found!8348 (index!35760 (_ BitVec 32))) (Intermediate!8348 (undefined!9160 Bool) (index!35761 (_ BitVec 32)) (x!66675 (_ BitVec 32))) (Undefined!8348) (MissingVacant!8348 (index!35762 (_ BitVec 32))) )
))
(declare-fun lt!356039 () SeekEntryResult!8348)

(declare-fun lt!356035 () SeekEntryResult!8348)

(assert (=> b!797772 (= res!542465 (= lt!356039 lt!356035))))

(declare-fun lt!356041 () array!43347)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356036 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43347 (_ BitVec 32)) SeekEntryResult!8348)

(assert (=> b!797772 (= lt!356035 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356036 lt!356041 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43347 (_ BitVec 32)) SeekEntryResult!8348)

(assert (=> b!797772 (= lt!356039 (seekEntryOrOpen!0 lt!356036 lt!356041 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!797772 (= lt!356036 (select (store (arr!20750 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797772 (= lt!356041 (array!43348 (store (arr!20750 a!3170) i!1163 k!2044) (size!21171 a!3170)))))

(declare-fun b!797773 () Bool)

(declare-fun res!542469 () Bool)

(assert (=> b!797773 (=> (not res!542469) (not e!442591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797773 (= res!542469 (validKeyInArray!0 k!2044))))

(declare-fun b!797774 () Bool)

(declare-fun res!542467 () Bool)

(assert (=> b!797774 (=> (not res!542467) (not e!442591))))

(assert (=> b!797774 (= res!542467 (validKeyInArray!0 (select (arr!20750 a!3170) j!153)))))

(declare-fun b!797775 () Bool)

(declare-fun res!542470 () Bool)

(assert (=> b!797775 (=> (not res!542470) (not e!442589))))

(declare-datatypes ((List!14766 0))(
  ( (Nil!14763) (Cons!14762 (h!15891 (_ BitVec 64)) (t!21089 List!14766)) )
))
(declare-fun arrayNoDuplicates!0 (array!43347 (_ BitVec 32) List!14766) Bool)

(assert (=> b!797775 (= res!542470 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14763))))

(declare-fun b!797776 () Bool)

(assert (=> b!797776 (= e!442591 e!442589)))

(declare-fun res!542462 () Bool)

(assert (=> b!797776 (=> (not res!542462) (not e!442589))))

(declare-fun lt!356038 () SeekEntryResult!8348)

(assert (=> b!797776 (= res!542462 (or (= lt!356038 (MissingZero!8348 i!1163)) (= lt!356038 (MissingVacant!8348 i!1163))))))

(assert (=> b!797776 (= lt!356038 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797777 () Bool)

(declare-fun res!542461 () Bool)

(assert (=> b!797777 (=> (not res!542461) (not e!442589))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797777 (= res!542461 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21171 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20750 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21171 a!3170)) (= (select (arr!20750 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797778 () Bool)

(declare-fun res!542464 () Bool)

(assert (=> b!797778 (=> (not res!542464) (not e!442589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43347 (_ BitVec 32)) Bool)

(assert (=> b!797778 (= res!542464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!542463 () Bool)

(assert (=> start!68606 (=> (not res!542463) (not e!442591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68606 (= res!542463 (validMask!0 mask!3266))))

(assert (=> start!68606 e!442591))

(assert (=> start!68606 true))

(declare-fun array_inv!16524 (array!43347) Bool)

(assert (=> start!68606 (array_inv!16524 a!3170)))

(declare-fun b!797779 () Bool)

(declare-fun e!442587 () Bool)

(assert (=> b!797779 (= e!442587 (not true))))

(assert (=> b!797779 (= lt!356035 (Found!8348 index!1236))))

(declare-fun b!797780 () Bool)

(assert (=> b!797780 (= e!442588 e!442587)))

(declare-fun res!542466 () Bool)

(assert (=> b!797780 (=> (not res!542466) (not e!442587))))

(declare-fun lt!356040 () SeekEntryResult!8348)

(declare-fun lt!356037 () SeekEntryResult!8348)

(assert (=> b!797780 (= res!542466 (and (= lt!356040 lt!356037) (= lt!356037 (Found!8348 j!153)) (= (select (arr!20750 a!3170) index!1236) (select (arr!20750 a!3170) j!153))))))

(assert (=> b!797780 (= lt!356037 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20750 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797780 (= lt!356040 (seekEntryOrOpen!0 (select (arr!20750 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797781 () Bool)

(declare-fun res!542460 () Bool)

(assert (=> b!797781 (=> (not res!542460) (not e!442591))))

(declare-fun arrayContainsKey!0 (array!43347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797781 (= res!542460 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68606 res!542463) b!797771))

(assert (= (and b!797771 res!542468) b!797774))

(assert (= (and b!797774 res!542467) b!797773))

(assert (= (and b!797773 res!542469) b!797781))

(assert (= (and b!797781 res!542460) b!797776))

(assert (= (and b!797776 res!542462) b!797778))

(assert (= (and b!797778 res!542464) b!797775))

(assert (= (and b!797775 res!542470) b!797777))

(assert (= (and b!797777 res!542461) b!797772))

(assert (= (and b!797772 res!542465) b!797780))

(assert (= (and b!797780 res!542466) b!797779))

(declare-fun m!738745 () Bool)

(assert (=> b!797773 m!738745))

(declare-fun m!738747 () Bool)

(assert (=> b!797775 m!738747))

(declare-fun m!738749 () Bool)

(assert (=> b!797772 m!738749))

(declare-fun m!738751 () Bool)

(assert (=> b!797772 m!738751))

(declare-fun m!738753 () Bool)

(assert (=> b!797772 m!738753))

(declare-fun m!738755 () Bool)

(assert (=> b!797772 m!738755))

(declare-fun m!738757 () Bool)

(assert (=> start!68606 m!738757))

(declare-fun m!738759 () Bool)

(assert (=> start!68606 m!738759))

(declare-fun m!738761 () Bool)

(assert (=> b!797781 m!738761))

(declare-fun m!738763 () Bool)

(assert (=> b!797776 m!738763))

(declare-fun m!738765 () Bool)

(assert (=> b!797778 m!738765))

(declare-fun m!738767 () Bool)

(assert (=> b!797777 m!738767))

(declare-fun m!738769 () Bool)

(assert (=> b!797777 m!738769))

(declare-fun m!738771 () Bool)

(assert (=> b!797780 m!738771))

(declare-fun m!738773 () Bool)

(assert (=> b!797780 m!738773))

(assert (=> b!797780 m!738773))

(declare-fun m!738775 () Bool)

(assert (=> b!797780 m!738775))

(assert (=> b!797780 m!738773))

(declare-fun m!738777 () Bool)

(assert (=> b!797780 m!738777))

(assert (=> b!797774 m!738773))

(assert (=> b!797774 m!738773))

(declare-fun m!738779 () Bool)

(assert (=> b!797774 m!738779))

(push 1)

(assert (not b!797780))

(assert (not b!797778))

(assert (not b!797781))

(assert (not b!797772))

(assert (not b!797776))

(assert (not b!797773))

(assert (not start!68606))

(assert (not b!797774))

(assert (not b!797775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

