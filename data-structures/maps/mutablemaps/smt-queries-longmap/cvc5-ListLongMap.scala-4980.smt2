; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68410 () Bool)

(assert start!68410)

(declare-fun b!794562 () Bool)

(declare-fun e!441163 () Bool)

(declare-fun e!441160 () Bool)

(assert (=> b!794562 (= e!441163 e!441160)))

(declare-fun res!539253 () Bool)

(assert (=> b!794562 (=> (not res!539253) (not e!441160))))

(declare-fun lt!354207 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43151 0))(
  ( (array!43152 (arr!20652 (Array (_ BitVec 32) (_ BitVec 64))) (size!21073 (_ BitVec 32))) )
))
(declare-fun lt!354210 () array!43151)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8250 0))(
  ( (MissingZero!8250 (index!35367 (_ BitVec 32))) (Found!8250 (index!35368 (_ BitVec 32))) (Intermediate!8250 (undefined!9062 Bool) (index!35369 (_ BitVec 32)) (x!66321 (_ BitVec 32))) (Undefined!8250) (MissingVacant!8250 (index!35370 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43151 (_ BitVec 32)) SeekEntryResult!8250)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43151 (_ BitVec 32)) SeekEntryResult!8250)

(assert (=> b!794562 (= res!539253 (= (seekEntryOrOpen!0 lt!354207 lt!354210 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354207 lt!354210 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43151)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794562 (= lt!354207 (select (store (arr!20652 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794562 (= lt!354210 (array!43152 (store (arr!20652 a!3170) i!1163 k!2044) (size!21073 a!3170)))))

(declare-fun b!794563 () Bool)

(declare-fun res!539258 () Bool)

(declare-fun e!441161 () Bool)

(assert (=> b!794563 (=> (not res!539258) (not e!441161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794563 (= res!539258 (validKeyInArray!0 (select (arr!20652 a!3170) j!153)))))

(declare-fun b!794564 () Bool)

(declare-fun res!539257 () Bool)

(assert (=> b!794564 (=> (not res!539257) (not e!441161))))

(assert (=> b!794564 (= res!539257 (and (= (size!21073 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21073 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21073 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!539251 () Bool)

(assert (=> start!68410 (=> (not res!539251) (not e!441161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68410 (= res!539251 (validMask!0 mask!3266))))

(assert (=> start!68410 e!441161))

(assert (=> start!68410 true))

(declare-fun array_inv!16426 (array!43151) Bool)

(assert (=> start!68410 (array_inv!16426 a!3170)))

(declare-fun b!794565 () Bool)

(declare-fun res!539255 () Bool)

(assert (=> b!794565 (=> (not res!539255) (not e!441161))))

(declare-fun arrayContainsKey!0 (array!43151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794565 (= res!539255 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794566 () Bool)

(assert (=> b!794566 (= e!441160 false)))

(declare-fun lt!354208 () SeekEntryResult!8250)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794566 (= lt!354208 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20652 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354211 () SeekEntryResult!8250)

(assert (=> b!794566 (= lt!354211 (seekEntryOrOpen!0 (select (arr!20652 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794567 () Bool)

(declare-fun res!539252 () Bool)

(assert (=> b!794567 (=> (not res!539252) (not e!441163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43151 (_ BitVec 32)) Bool)

(assert (=> b!794567 (= res!539252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794568 () Bool)

(declare-fun res!539259 () Bool)

(assert (=> b!794568 (=> (not res!539259) (not e!441161))))

(assert (=> b!794568 (= res!539259 (validKeyInArray!0 k!2044))))

(declare-fun b!794569 () Bool)

(declare-fun res!539254 () Bool)

(assert (=> b!794569 (=> (not res!539254) (not e!441163))))

(declare-datatypes ((List!14668 0))(
  ( (Nil!14665) (Cons!14664 (h!15793 (_ BitVec 64)) (t!20991 List!14668)) )
))
(declare-fun arrayNoDuplicates!0 (array!43151 (_ BitVec 32) List!14668) Bool)

(assert (=> b!794569 (= res!539254 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14665))))

(declare-fun b!794570 () Bool)

(declare-fun res!539256 () Bool)

(assert (=> b!794570 (=> (not res!539256) (not e!441163))))

(assert (=> b!794570 (= res!539256 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21073 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20652 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21073 a!3170)) (= (select (arr!20652 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794571 () Bool)

(assert (=> b!794571 (= e!441161 e!441163)))

(declare-fun res!539260 () Bool)

(assert (=> b!794571 (=> (not res!539260) (not e!441163))))

(declare-fun lt!354209 () SeekEntryResult!8250)

(assert (=> b!794571 (= res!539260 (or (= lt!354209 (MissingZero!8250 i!1163)) (= lt!354209 (MissingVacant!8250 i!1163))))))

(assert (=> b!794571 (= lt!354209 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68410 res!539251) b!794564))

(assert (= (and b!794564 res!539257) b!794563))

(assert (= (and b!794563 res!539258) b!794568))

(assert (= (and b!794568 res!539259) b!794565))

(assert (= (and b!794565 res!539255) b!794571))

(assert (= (and b!794571 res!539260) b!794567))

(assert (= (and b!794567 res!539252) b!794569))

(assert (= (and b!794569 res!539254) b!794570))

(assert (= (and b!794570 res!539256) b!794562))

(assert (= (and b!794562 res!539253) b!794566))

(declare-fun m!735217 () Bool)

(assert (=> b!794569 m!735217))

(declare-fun m!735219 () Bool)

(assert (=> b!794571 m!735219))

(declare-fun m!735221 () Bool)

(assert (=> b!794563 m!735221))

(assert (=> b!794563 m!735221))

(declare-fun m!735223 () Bool)

(assert (=> b!794563 m!735223))

(declare-fun m!735225 () Bool)

(assert (=> b!794570 m!735225))

(declare-fun m!735227 () Bool)

(assert (=> b!794570 m!735227))

(assert (=> b!794566 m!735221))

(assert (=> b!794566 m!735221))

(declare-fun m!735229 () Bool)

(assert (=> b!794566 m!735229))

(assert (=> b!794566 m!735221))

(declare-fun m!735231 () Bool)

(assert (=> b!794566 m!735231))

(declare-fun m!735233 () Bool)

(assert (=> start!68410 m!735233))

(declare-fun m!735235 () Bool)

(assert (=> start!68410 m!735235))

(declare-fun m!735237 () Bool)

(assert (=> b!794565 m!735237))

(declare-fun m!735239 () Bool)

(assert (=> b!794567 m!735239))

(declare-fun m!735241 () Bool)

(assert (=> b!794562 m!735241))

(declare-fun m!735243 () Bool)

(assert (=> b!794562 m!735243))

(declare-fun m!735245 () Bool)

(assert (=> b!794562 m!735245))

(declare-fun m!735247 () Bool)

(assert (=> b!794562 m!735247))

(declare-fun m!735249 () Bool)

(assert (=> b!794568 m!735249))

(push 1)

