; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68438 () Bool)

(assert start!68438)

(declare-fun b!795000 () Bool)

(declare-fun e!441330 () Bool)

(declare-fun e!441331 () Bool)

(assert (=> b!795000 (= e!441330 e!441331)))

(declare-fun res!539694 () Bool)

(assert (=> b!795000 (=> (not res!539694) (not e!441331))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354383 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43179 0))(
  ( (array!43180 (arr!20666 (Array (_ BitVec 32) (_ BitVec 64))) (size!21087 (_ BitVec 32))) )
))
(declare-fun lt!354381 () array!43179)

(declare-datatypes ((SeekEntryResult!8264 0))(
  ( (MissingZero!8264 (index!35423 (_ BitVec 32))) (Found!8264 (index!35424 (_ BitVec 32))) (Intermediate!8264 (undefined!9076 Bool) (index!35425 (_ BitVec 32)) (x!66367 (_ BitVec 32))) (Undefined!8264) (MissingVacant!8264 (index!35426 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43179 (_ BitVec 32)) SeekEntryResult!8264)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43179 (_ BitVec 32)) SeekEntryResult!8264)

(assert (=> b!795000 (= res!539694 (= (seekEntryOrOpen!0 lt!354383 lt!354381 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354383 lt!354381 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43179)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795000 (= lt!354383 (select (store (arr!20666 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795000 (= lt!354381 (array!43180 (store (arr!20666 a!3170) i!1163 k!2044) (size!21087 a!3170)))))

(declare-fun b!795001 () Bool)

(declare-fun res!539690 () Bool)

(assert (=> b!795001 (=> (not res!539690) (not e!441330))))

(declare-datatypes ((List!14682 0))(
  ( (Nil!14679) (Cons!14678 (h!15807 (_ BitVec 64)) (t!21005 List!14682)) )
))
(declare-fun arrayNoDuplicates!0 (array!43179 (_ BitVec 32) List!14682) Bool)

(assert (=> b!795001 (= res!539690 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14679))))

(declare-fun b!795002 () Bool)

(declare-fun res!539691 () Bool)

(declare-fun e!441329 () Bool)

(assert (=> b!795002 (=> (not res!539691) (not e!441329))))

(declare-fun arrayContainsKey!0 (array!43179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795002 (= res!539691 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795003 () Bool)

(declare-fun res!539692 () Bool)

(assert (=> b!795003 (=> (not res!539692) (not e!441329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795003 (= res!539692 (validKeyInArray!0 (select (arr!20666 a!3170) j!153)))))

(declare-fun b!795004 () Bool)

(assert (=> b!795004 (= e!441331 false)))

(declare-fun lt!354384 () SeekEntryResult!8264)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795004 (= lt!354384 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20666 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354385 () SeekEntryResult!8264)

(assert (=> b!795004 (= lt!354385 (seekEntryOrOpen!0 (select (arr!20666 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!539698 () Bool)

(assert (=> start!68438 (=> (not res!539698) (not e!441329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68438 (= res!539698 (validMask!0 mask!3266))))

(assert (=> start!68438 e!441329))

(assert (=> start!68438 true))

(declare-fun array_inv!16440 (array!43179) Bool)

(assert (=> start!68438 (array_inv!16440 a!3170)))

(declare-fun b!795005 () Bool)

(declare-fun res!539696 () Bool)

(assert (=> b!795005 (=> (not res!539696) (not e!441330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43179 (_ BitVec 32)) Bool)

(assert (=> b!795005 (= res!539696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795006 () Bool)

(declare-fun res!539697 () Bool)

(assert (=> b!795006 (=> (not res!539697) (not e!441329))))

(assert (=> b!795006 (= res!539697 (validKeyInArray!0 k!2044))))

(declare-fun b!795007 () Bool)

(assert (=> b!795007 (= e!441329 e!441330)))

(declare-fun res!539689 () Bool)

(assert (=> b!795007 (=> (not res!539689) (not e!441330))))

(declare-fun lt!354382 () SeekEntryResult!8264)

(assert (=> b!795007 (= res!539689 (or (= lt!354382 (MissingZero!8264 i!1163)) (= lt!354382 (MissingVacant!8264 i!1163))))))

(assert (=> b!795007 (= lt!354382 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795008 () Bool)

(declare-fun res!539695 () Bool)

(assert (=> b!795008 (=> (not res!539695) (not e!441330))))

(assert (=> b!795008 (= res!539695 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21087 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20666 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21087 a!3170)) (= (select (arr!20666 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795009 () Bool)

(declare-fun res!539693 () Bool)

(assert (=> b!795009 (=> (not res!539693) (not e!441329))))

(assert (=> b!795009 (= res!539693 (and (= (size!21087 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21087 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21087 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68438 res!539698) b!795009))

(assert (= (and b!795009 res!539693) b!795003))

(assert (= (and b!795003 res!539692) b!795006))

(assert (= (and b!795006 res!539697) b!795002))

(assert (= (and b!795002 res!539691) b!795007))

(assert (= (and b!795007 res!539689) b!795005))

(assert (= (and b!795005 res!539696) b!795001))

(assert (= (and b!795001 res!539690) b!795008))

(assert (= (and b!795008 res!539695) b!795000))

(assert (= (and b!795000 res!539694) b!795004))

(declare-fun m!735693 () Bool)

(assert (=> b!795008 m!735693))

(declare-fun m!735695 () Bool)

(assert (=> b!795008 m!735695))

(declare-fun m!735697 () Bool)

(assert (=> start!68438 m!735697))

(declare-fun m!735699 () Bool)

(assert (=> start!68438 m!735699))

(declare-fun m!735701 () Bool)

(assert (=> b!795004 m!735701))

(assert (=> b!795004 m!735701))

(declare-fun m!735703 () Bool)

(assert (=> b!795004 m!735703))

(assert (=> b!795004 m!735701))

(declare-fun m!735705 () Bool)

(assert (=> b!795004 m!735705))

(declare-fun m!735707 () Bool)

(assert (=> b!795001 m!735707))

(declare-fun m!735709 () Bool)

(assert (=> b!795000 m!735709))

(declare-fun m!735711 () Bool)

(assert (=> b!795000 m!735711))

(declare-fun m!735713 () Bool)

(assert (=> b!795000 m!735713))

(declare-fun m!735715 () Bool)

(assert (=> b!795000 m!735715))

(declare-fun m!735717 () Bool)

(assert (=> b!795005 m!735717))

(assert (=> b!795003 m!735701))

(assert (=> b!795003 m!735701))

(declare-fun m!735719 () Bool)

(assert (=> b!795003 m!735719))

(declare-fun m!735721 () Bool)

(assert (=> b!795007 m!735721))

(declare-fun m!735723 () Bool)

(assert (=> b!795006 m!735723))

(declare-fun m!735725 () Bool)

(assert (=> b!795002 m!735725))

(push 1)

