; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68416 () Bool)

(assert start!68416)

(declare-fun b!794654 () Bool)

(declare-fun res!539345 () Bool)

(declare-fun e!441198 () Bool)

(assert (=> b!794654 (=> (not res!539345) (not e!441198))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43157 0))(
  ( (array!43158 (arr!20655 (Array (_ BitVec 32) (_ BitVec 64))) (size!21076 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43157)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794654 (= res!539345 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21076 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20655 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21076 a!3170)) (= (select (arr!20655 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!539346 () Bool)

(declare-fun e!441196 () Bool)

(assert (=> start!68416 (=> (not res!539346) (not e!441196))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68416 (= res!539346 (validMask!0 mask!3266))))

(assert (=> start!68416 e!441196))

(assert (=> start!68416 true))

(declare-fun array_inv!16429 (array!43157) Bool)

(assert (=> start!68416 (array_inv!16429 a!3170)))

(declare-fun b!794655 () Bool)

(declare-fun res!539349 () Bool)

(assert (=> b!794655 (=> (not res!539349) (not e!441196))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794655 (= res!539349 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794656 () Bool)

(declare-fun res!539351 () Bool)

(assert (=> b!794656 (=> (not res!539351) (not e!441196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794656 (= res!539351 (validKeyInArray!0 k!2044))))

(declare-fun b!794657 () Bool)

(declare-fun res!539350 () Bool)

(declare-fun e!441197 () Bool)

(assert (=> b!794657 (=> (not res!539350) (not e!441197))))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8253 0))(
  ( (MissingZero!8253 (index!35379 (_ BitVec 32))) (Found!8253 (index!35380 (_ BitVec 32))) (Intermediate!8253 (undefined!9065 Bool) (index!35381 (_ BitVec 32)) (x!66332 (_ BitVec 32))) (Undefined!8253) (MissingVacant!8253 (index!35382 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43157 (_ BitVec 32)) SeekEntryResult!8253)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43157 (_ BitVec 32)) SeekEntryResult!8253)

(assert (=> b!794657 (= res!539350 (= (seekEntryOrOpen!0 (select (arr!20655 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20655 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794658 () Bool)

(declare-fun res!539343 () Bool)

(assert (=> b!794658 (=> (not res!539343) (not e!441196))))

(assert (=> b!794658 (= res!539343 (validKeyInArray!0 (select (arr!20655 a!3170) j!153)))))

(declare-fun b!794659 () Bool)

(assert (=> b!794659 (= e!441198 e!441197)))

(declare-fun res!539352 () Bool)

(assert (=> b!794659 (=> (not res!539352) (not e!441197))))

(declare-fun lt!354250 () (_ BitVec 64))

(declare-fun lt!354249 () array!43157)

(assert (=> b!794659 (= res!539352 (= (seekEntryOrOpen!0 lt!354250 lt!354249 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354250 lt!354249 mask!3266)))))

(assert (=> b!794659 (= lt!354250 (select (store (arr!20655 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794659 (= lt!354249 (array!43158 (store (arr!20655 a!3170) i!1163 k!2044) (size!21076 a!3170)))))

(declare-fun b!794660 () Bool)

(declare-fun res!539353 () Bool)

(assert (=> b!794660 (=> (not res!539353) (not e!441196))))

(assert (=> b!794660 (= res!539353 (and (= (size!21076 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21076 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21076 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794661 () Bool)

(assert (=> b!794661 (= e!441196 e!441198)))

(declare-fun res!539344 () Bool)

(assert (=> b!794661 (=> (not res!539344) (not e!441198))))

(declare-fun lt!354248 () SeekEntryResult!8253)

(assert (=> b!794661 (= res!539344 (or (= lt!354248 (MissingZero!8253 i!1163)) (= lt!354248 (MissingVacant!8253 i!1163))))))

(assert (=> b!794661 (= lt!354248 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794662 () Bool)

(assert (=> b!794662 (= e!441197 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!794663 () Bool)

(declare-fun res!539348 () Bool)

(assert (=> b!794663 (=> (not res!539348) (not e!441198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43157 (_ BitVec 32)) Bool)

(assert (=> b!794663 (= res!539348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794664 () Bool)

(declare-fun res!539347 () Bool)

(assert (=> b!794664 (=> (not res!539347) (not e!441198))))

(declare-datatypes ((List!14671 0))(
  ( (Nil!14668) (Cons!14667 (h!15796 (_ BitVec 64)) (t!20994 List!14671)) )
))
(declare-fun arrayNoDuplicates!0 (array!43157 (_ BitVec 32) List!14671) Bool)

(assert (=> b!794664 (= res!539347 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14668))))

(assert (= (and start!68416 res!539346) b!794660))

(assert (= (and b!794660 res!539353) b!794658))

(assert (= (and b!794658 res!539343) b!794656))

(assert (= (and b!794656 res!539351) b!794655))

(assert (= (and b!794655 res!539349) b!794661))

(assert (= (and b!794661 res!539344) b!794663))

(assert (= (and b!794663 res!539348) b!794664))

(assert (= (and b!794664 res!539347) b!794654))

(assert (= (and b!794654 res!539345) b!794659))

(assert (= (and b!794659 res!539352) b!794657))

(assert (= (and b!794657 res!539350) b!794662))

(declare-fun m!735319 () Bool)

(assert (=> start!68416 m!735319))

(declare-fun m!735321 () Bool)

(assert (=> start!68416 m!735321))

(declare-fun m!735323 () Bool)

(assert (=> b!794654 m!735323))

(declare-fun m!735325 () Bool)

(assert (=> b!794654 m!735325))

(declare-fun m!735327 () Bool)

(assert (=> b!794657 m!735327))

(assert (=> b!794657 m!735327))

(declare-fun m!735329 () Bool)

(assert (=> b!794657 m!735329))

(assert (=> b!794657 m!735327))

(declare-fun m!735331 () Bool)

(assert (=> b!794657 m!735331))

(declare-fun m!735333 () Bool)

(assert (=> b!794656 m!735333))

(assert (=> b!794658 m!735327))

(assert (=> b!794658 m!735327))

(declare-fun m!735335 () Bool)

(assert (=> b!794658 m!735335))

(declare-fun m!735337 () Bool)

(assert (=> b!794659 m!735337))

(declare-fun m!735339 () Bool)

(assert (=> b!794659 m!735339))

(declare-fun m!735341 () Bool)

(assert (=> b!794659 m!735341))

(declare-fun m!735343 () Bool)

(assert (=> b!794659 m!735343))

(declare-fun m!735345 () Bool)

(assert (=> b!794655 m!735345))

(declare-fun m!735347 () Bool)

(assert (=> b!794661 m!735347))

(declare-fun m!735349 () Bool)

(assert (=> b!794663 m!735349))

(declare-fun m!735351 () Bool)

(assert (=> b!794664 m!735351))

(push 1)

(assert (not b!794664))

(assert (not b!794655))

(assert (not b!794657))

(assert (not b!794659))

(assert (not b!794661))

(assert (not b!794656))

(assert (not b!794663))

(assert (not b!794658))

(assert (not start!68416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

