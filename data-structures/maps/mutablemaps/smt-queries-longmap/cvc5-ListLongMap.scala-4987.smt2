; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68452 () Bool)

(assert start!68452)

(declare-fun b!795210 () Bool)

(declare-fun res!539902 () Bool)

(declare-fun e!441412 () Bool)

(assert (=> b!795210 (=> (not res!539902) (not e!441412))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795210 (= res!539902 (validKeyInArray!0 k!2044))))

(declare-fun b!795211 () Bool)

(declare-fun res!539904 () Bool)

(declare-fun e!441414 () Bool)

(assert (=> b!795211 (=> (not res!539904) (not e!441414))))

(declare-datatypes ((array!43193 0))(
  ( (array!43194 (arr!20673 (Array (_ BitVec 32) (_ BitVec 64))) (size!21094 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43193)

(declare-datatypes ((List!14689 0))(
  ( (Nil!14686) (Cons!14685 (h!15814 (_ BitVec 64)) (t!21012 List!14689)) )
))
(declare-fun arrayNoDuplicates!0 (array!43193 (_ BitVec 32) List!14689) Bool)

(assert (=> b!795211 (= res!539904 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14686))))

(declare-fun b!795212 () Bool)

(declare-fun res!539907 () Bool)

(assert (=> b!795212 (=> (not res!539907) (not e!441412))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795212 (= res!539907 (and (= (size!21094 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21094 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21094 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795213 () Bool)

(assert (=> b!795213 (= e!441412 e!441414)))

(declare-fun res!539899 () Bool)

(assert (=> b!795213 (=> (not res!539899) (not e!441414))))

(declare-datatypes ((SeekEntryResult!8271 0))(
  ( (MissingZero!8271 (index!35451 (_ BitVec 32))) (Found!8271 (index!35452 (_ BitVec 32))) (Intermediate!8271 (undefined!9083 Bool) (index!35453 (_ BitVec 32)) (x!66398 (_ BitVec 32))) (Undefined!8271) (MissingVacant!8271 (index!35454 (_ BitVec 32))) )
))
(declare-fun lt!354489 () SeekEntryResult!8271)

(assert (=> b!795213 (= res!539899 (or (= lt!354489 (MissingZero!8271 i!1163)) (= lt!354489 (MissingVacant!8271 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43193 (_ BitVec 32)) SeekEntryResult!8271)

(assert (=> b!795213 (= lt!354489 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795214 () Bool)

(declare-fun res!539900 () Bool)

(assert (=> b!795214 (=> (not res!539900) (not e!441414))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795214 (= res!539900 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21094 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20673 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21094 a!3170)) (= (select (arr!20673 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795215 () Bool)

(declare-fun res!539905 () Bool)

(assert (=> b!795215 (=> (not res!539905) (not e!441412))))

(declare-fun arrayContainsKey!0 (array!43193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795215 (= res!539905 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!539903 () Bool)

(assert (=> start!68452 (=> (not res!539903) (not e!441412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68452 (= res!539903 (validMask!0 mask!3266))))

(assert (=> start!68452 e!441412))

(assert (=> start!68452 true))

(declare-fun array_inv!16447 (array!43193) Bool)

(assert (=> start!68452 (array_inv!16447 a!3170)))

(declare-fun b!795216 () Bool)

(declare-fun e!441415 () Bool)

(assert (=> b!795216 (= e!441414 e!441415)))

(declare-fun res!539901 () Bool)

(assert (=> b!795216 (=> (not res!539901) (not e!441415))))

(declare-fun lt!354487 () array!43193)

(declare-fun lt!354486 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43193 (_ BitVec 32)) SeekEntryResult!8271)

(assert (=> b!795216 (= res!539901 (= (seekEntryOrOpen!0 lt!354486 lt!354487 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354486 lt!354487 mask!3266)))))

(assert (=> b!795216 (= lt!354486 (select (store (arr!20673 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795216 (= lt!354487 (array!43194 (store (arr!20673 a!3170) i!1163 k!2044) (size!21094 a!3170)))))

(declare-fun b!795217 () Bool)

(declare-fun res!539906 () Bool)

(assert (=> b!795217 (=> (not res!539906) (not e!441412))))

(assert (=> b!795217 (= res!539906 (validKeyInArray!0 (select (arr!20673 a!3170) j!153)))))

(declare-fun b!795218 () Bool)

(declare-fun res!539908 () Bool)

(assert (=> b!795218 (=> (not res!539908) (not e!441414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43193 (_ BitVec 32)) Bool)

(assert (=> b!795218 (= res!539908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun lt!354488 () SeekEntryResult!8271)

(declare-fun lt!354490 () SeekEntryResult!8271)

(declare-fun b!795219 () Bool)

(assert (=> b!795219 (= e!441415 (and (= lt!354490 lt!354488) (= lt!354488 (Found!8271 j!153)) (= (select (arr!20673 a!3170) index!1236) (select (arr!20673 a!3170) j!153)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(assert (=> b!795219 (= lt!354488 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20673 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795219 (= lt!354490 (seekEntryOrOpen!0 (select (arr!20673 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68452 res!539903) b!795212))

(assert (= (and b!795212 res!539907) b!795217))

(assert (= (and b!795217 res!539906) b!795210))

(assert (= (and b!795210 res!539902) b!795215))

(assert (= (and b!795215 res!539905) b!795213))

(assert (= (and b!795213 res!539899) b!795218))

(assert (= (and b!795218 res!539908) b!795211))

(assert (= (and b!795211 res!539904) b!795214))

(assert (= (and b!795214 res!539900) b!795216))

(assert (= (and b!795216 res!539901) b!795219))

(declare-fun m!735931 () Bool)

(assert (=> b!795216 m!735931))

(declare-fun m!735933 () Bool)

(assert (=> b!795216 m!735933))

(declare-fun m!735935 () Bool)

(assert (=> b!795216 m!735935))

(declare-fun m!735937 () Bool)

(assert (=> b!795216 m!735937))

(declare-fun m!735939 () Bool)

(assert (=> b!795211 m!735939))

(declare-fun m!735941 () Bool)

(assert (=> b!795219 m!735941))

(declare-fun m!735943 () Bool)

(assert (=> b!795219 m!735943))

(assert (=> b!795219 m!735943))

(declare-fun m!735945 () Bool)

(assert (=> b!795219 m!735945))

(assert (=> b!795219 m!735943))

(declare-fun m!735947 () Bool)

(assert (=> b!795219 m!735947))

(assert (=> b!795217 m!735943))

(assert (=> b!795217 m!735943))

(declare-fun m!735949 () Bool)

(assert (=> b!795217 m!735949))

(declare-fun m!735951 () Bool)

(assert (=> start!68452 m!735951))

(declare-fun m!735953 () Bool)

(assert (=> start!68452 m!735953))

(declare-fun m!735955 () Bool)

(assert (=> b!795210 m!735955))

(declare-fun m!735957 () Bool)

(assert (=> b!795213 m!735957))

(declare-fun m!735959 () Bool)

(assert (=> b!795215 m!735959))

(declare-fun m!735961 () Bool)

(assert (=> b!795218 m!735961))

(declare-fun m!735963 () Bool)

(assert (=> b!795214 m!735963))

(declare-fun m!735965 () Bool)

(assert (=> b!795214 m!735965))

(push 1)

