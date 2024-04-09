; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68704 () Bool)

(assert start!68704)

(declare-fun b!799500 () Bool)

(declare-fun res!544198 () Bool)

(declare-fun e!443371 () Bool)

(assert (=> b!799500 (=> (not res!544198) (not e!443371))))

(declare-datatypes ((array!43445 0))(
  ( (array!43446 (arr!20799 (Array (_ BitVec 32) (_ BitVec 64))) (size!21220 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43445)

(declare-datatypes ((List!14815 0))(
  ( (Nil!14812) (Cons!14811 (h!15940 (_ BitVec 64)) (t!21138 List!14815)) )
))
(declare-fun arrayNoDuplicates!0 (array!43445 (_ BitVec 32) List!14815) Bool)

(assert (=> b!799500 (= res!544198 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14812))))

(declare-fun b!799501 () Bool)

(declare-fun e!443373 () Bool)

(declare-fun e!443372 () Bool)

(assert (=> b!799501 (= e!443373 e!443372)))

(declare-fun res!544199 () Bool)

(assert (=> b!799501 (=> (not res!544199) (not e!443372))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357077 () (_ BitVec 32))

(assert (=> b!799501 (= res!544199 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357077 #b00000000000000000000000000000000) (bvslt lt!357077 (size!21220 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799501 (= lt!357077 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799503 () Bool)

(declare-fun res!544195 () Bool)

(declare-fun e!443370 () Bool)

(assert (=> b!799503 (=> (not res!544195) (not e!443370))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799503 (= res!544195 (and (= (size!21220 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21220 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21220 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799504 () Bool)

(declare-fun res!544196 () Bool)

(assert (=> b!799504 (=> (not res!544196) (not e!443370))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799504 (= res!544196 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799505 () Bool)

(declare-fun res!544190 () Bool)

(assert (=> b!799505 (=> (not res!544190) (not e!443371))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799505 (= res!544190 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21220 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20799 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21220 a!3170)) (= (select (arr!20799 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799506 () Bool)

(declare-fun res!544193 () Bool)

(assert (=> b!799506 (=> (not res!544193) (not e!443372))))

(declare-datatypes ((SeekEntryResult!8397 0))(
  ( (MissingZero!8397 (index!35955 (_ BitVec 32))) (Found!8397 (index!35956 (_ BitVec 32))) (Intermediate!8397 (undefined!9209 Bool) (index!35957 (_ BitVec 32)) (x!66860 (_ BitVec 32))) (Undefined!8397) (MissingVacant!8397 (index!35958 (_ BitVec 32))) )
))
(declare-fun lt!357076 () SeekEntryResult!8397)

(declare-fun lt!357080 () array!43445)

(declare-fun lt!357078 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43445 (_ BitVec 32)) SeekEntryResult!8397)

(assert (=> b!799506 (= res!544193 (= lt!357076 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357077 vacantAfter!23 lt!357078 lt!357080 mask!3266)))))

(declare-fun b!799507 () Bool)

(declare-fun e!443369 () Bool)

(assert (=> b!799507 (= e!443371 e!443369)))

(declare-fun res!544200 () Bool)

(assert (=> b!799507 (=> (not res!544200) (not e!443369))))

(assert (=> b!799507 (= res!544200 (= lt!357076 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357078 lt!357080 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43445 (_ BitVec 32)) SeekEntryResult!8397)

(assert (=> b!799507 (= lt!357076 (seekEntryOrOpen!0 lt!357078 lt!357080 mask!3266))))

(assert (=> b!799507 (= lt!357078 (select (store (arr!20799 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799507 (= lt!357080 (array!43446 (store (arr!20799 a!3170) i!1163 k!2044) (size!21220 a!3170)))))

(declare-fun b!799508 () Bool)

(declare-fun res!544192 () Bool)

(assert (=> b!799508 (=> (not res!544192) (not e!443370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799508 (= res!544192 (validKeyInArray!0 k!2044))))

(declare-fun b!799509 () Bool)

(declare-fun res!544194 () Bool)

(assert (=> b!799509 (=> (not res!544194) (not e!443370))))

(assert (=> b!799509 (= res!544194 (validKeyInArray!0 (select (arr!20799 a!3170) j!153)))))

(declare-fun b!799510 () Bool)

(assert (=> b!799510 (= e!443372 false)))

(declare-fun lt!357082 () SeekEntryResult!8397)

(assert (=> b!799510 (= lt!357082 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357077 vacantBefore!23 (select (arr!20799 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799502 () Bool)

(assert (=> b!799502 (= e!443369 e!443373)))

(declare-fun res!544201 () Bool)

(assert (=> b!799502 (=> (not res!544201) (not e!443373))))

(declare-fun lt!357081 () SeekEntryResult!8397)

(declare-fun lt!357079 () SeekEntryResult!8397)

(assert (=> b!799502 (= res!544201 (and (= lt!357079 lt!357081) (= lt!357081 (Found!8397 j!153)) (not (= (select (arr!20799 a!3170) index!1236) (select (arr!20799 a!3170) j!153)))))))

(assert (=> b!799502 (= lt!357081 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20799 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799502 (= lt!357079 (seekEntryOrOpen!0 (select (arr!20799 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!544191 () Bool)

(assert (=> start!68704 (=> (not res!544191) (not e!443370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68704 (= res!544191 (validMask!0 mask!3266))))

(assert (=> start!68704 e!443370))

(assert (=> start!68704 true))

(declare-fun array_inv!16573 (array!43445) Bool)

(assert (=> start!68704 (array_inv!16573 a!3170)))

(declare-fun b!799511 () Bool)

(declare-fun res!544197 () Bool)

(assert (=> b!799511 (=> (not res!544197) (not e!443371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43445 (_ BitVec 32)) Bool)

(assert (=> b!799511 (= res!544197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799512 () Bool)

(assert (=> b!799512 (= e!443370 e!443371)))

(declare-fun res!544189 () Bool)

(assert (=> b!799512 (=> (not res!544189) (not e!443371))))

(declare-fun lt!357075 () SeekEntryResult!8397)

(assert (=> b!799512 (= res!544189 (or (= lt!357075 (MissingZero!8397 i!1163)) (= lt!357075 (MissingVacant!8397 i!1163))))))

(assert (=> b!799512 (= lt!357075 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68704 res!544191) b!799503))

(assert (= (and b!799503 res!544195) b!799509))

(assert (= (and b!799509 res!544194) b!799508))

(assert (= (and b!799508 res!544192) b!799504))

(assert (= (and b!799504 res!544196) b!799512))

(assert (= (and b!799512 res!544189) b!799511))

(assert (= (and b!799511 res!544197) b!799500))

(assert (= (and b!799500 res!544198) b!799505))

(assert (= (and b!799505 res!544190) b!799507))

(assert (= (and b!799507 res!544200) b!799502))

(assert (= (and b!799502 res!544201) b!799501))

(assert (= (and b!799501 res!544199) b!799506))

(assert (= (and b!799506 res!544193) b!799510))

(declare-fun m!740623 () Bool)

(assert (=> b!799504 m!740623))

(declare-fun m!740625 () Bool)

(assert (=> b!799512 m!740625))

(declare-fun m!740627 () Bool)

(assert (=> b!799510 m!740627))

(assert (=> b!799510 m!740627))

(declare-fun m!740629 () Bool)

(assert (=> b!799510 m!740629))

(declare-fun m!740631 () Bool)

(assert (=> b!799506 m!740631))

(declare-fun m!740633 () Bool)

(assert (=> b!799501 m!740633))

(declare-fun m!740635 () Bool)

(assert (=> b!799502 m!740635))

(assert (=> b!799502 m!740627))

(assert (=> b!799502 m!740627))

(declare-fun m!740637 () Bool)

(assert (=> b!799502 m!740637))

(assert (=> b!799502 m!740627))

(declare-fun m!740639 () Bool)

(assert (=> b!799502 m!740639))

(declare-fun m!740641 () Bool)

(assert (=> b!799505 m!740641))

(declare-fun m!740643 () Bool)

(assert (=> b!799505 m!740643))

(declare-fun m!740645 () Bool)

(assert (=> b!799511 m!740645))

(declare-fun m!740647 () Bool)

(assert (=> start!68704 m!740647))

(declare-fun m!740649 () Bool)

(assert (=> start!68704 m!740649))

(declare-fun m!740651 () Bool)

(assert (=> b!799500 m!740651))

(declare-fun m!740653 () Bool)

(assert (=> b!799508 m!740653))

(assert (=> b!799509 m!740627))

(assert (=> b!799509 m!740627))

(declare-fun m!740655 () Bool)

(assert (=> b!799509 m!740655))

(declare-fun m!740657 () Bool)

(assert (=> b!799507 m!740657))

(declare-fun m!740659 () Bool)

(assert (=> b!799507 m!740659))

(declare-fun m!740661 () Bool)

(assert (=> b!799507 m!740661))

(declare-fun m!740663 () Bool)

(assert (=> b!799507 m!740663))

(push 1)

