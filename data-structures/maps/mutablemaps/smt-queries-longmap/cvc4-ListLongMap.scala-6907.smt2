; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86840 () Bool)

(assert start!86840)

(declare-fun b!1006461 () Bool)

(declare-fun res!675715 () Bool)

(declare-fun e!566521 () Bool)

(assert (=> b!1006461 (=> (not res!675715) (not e!566521))))

(declare-datatypes ((array!63491 0))(
  ( (array!63492 (arr!30564 (Array (_ BitVec 32) (_ BitVec 64))) (size!31067 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63491)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006461 (= res!675715 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006462 () Bool)

(declare-fun res!675709 () Bool)

(declare-fun e!566520 () Bool)

(assert (=> b!1006462 (=> (not res!675709) (not e!566520))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006462 (= res!675709 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31067 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31067 a!3219))))))

(declare-fun b!1006463 () Bool)

(declare-fun res!675707 () Bool)

(assert (=> b!1006463 (=> (not res!675707) (not e!566521))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1006463 (= res!675707 (and (= (size!31067 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31067 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31067 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!675714 () Bool)

(assert (=> start!86840 (=> (not res!675714) (not e!566521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86840 (= res!675714 (validMask!0 mask!3464))))

(assert (=> start!86840 e!566521))

(declare-fun array_inv!23554 (array!63491) Bool)

(assert (=> start!86840 (array_inv!23554 a!3219)))

(assert (=> start!86840 true))

(declare-fun b!1006464 () Bool)

(declare-fun res!675706 () Bool)

(assert (=> b!1006464 (=> (not res!675706) (not e!566520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63491 (_ BitVec 32)) Bool)

(assert (=> b!1006464 (= res!675706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006465 () Bool)

(assert (=> b!1006465 (= e!566521 e!566520)))

(declare-fun res!675708 () Bool)

(assert (=> b!1006465 (=> (not res!675708) (not e!566520))))

(declare-datatypes ((SeekEntryResult!9496 0))(
  ( (MissingZero!9496 (index!40354 (_ BitVec 32))) (Found!9496 (index!40355 (_ BitVec 32))) (Intermediate!9496 (undefined!10308 Bool) (index!40356 (_ BitVec 32)) (x!87777 (_ BitVec 32))) (Undefined!9496) (MissingVacant!9496 (index!40357 (_ BitVec 32))) )
))
(declare-fun lt!444775 () SeekEntryResult!9496)

(assert (=> b!1006465 (= res!675708 (or (= lt!444775 (MissingVacant!9496 i!1194)) (= lt!444775 (MissingZero!9496 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63491 (_ BitVec 32)) SeekEntryResult!9496)

(assert (=> b!1006465 (= lt!444775 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006466 () Bool)

(declare-fun res!675713 () Bool)

(declare-fun e!566522 () Bool)

(assert (=> b!1006466 (=> (not res!675713) (not e!566522))))

(declare-fun lt!444777 () SeekEntryResult!9496)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63491 (_ BitVec 32)) SeekEntryResult!9496)

(assert (=> b!1006466 (= res!675713 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30564 a!3219) j!170) a!3219 mask!3464) lt!444777))))

(declare-fun b!1006467 () Bool)

(declare-fun res!675711 () Bool)

(assert (=> b!1006467 (=> (not res!675711) (not e!566521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006467 (= res!675711 (validKeyInArray!0 k!2224))))

(declare-fun b!1006468 () Bool)

(assert (=> b!1006468 (= e!566520 e!566522)))

(declare-fun res!675710 () Bool)

(assert (=> b!1006468 (=> (not res!675710) (not e!566522))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006468 (= res!675710 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30564 a!3219) j!170) mask!3464) (select (arr!30564 a!3219) j!170) a!3219 mask!3464) lt!444777))))

(assert (=> b!1006468 (= lt!444777 (Intermediate!9496 false resIndex!38 resX!38))))

(declare-fun b!1006469 () Bool)

(assert (=> b!1006469 (= e!566522 false)))

(declare-fun lt!444776 () SeekEntryResult!9496)

(assert (=> b!1006469 (= lt!444776 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30564 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30564 a!3219) i!1194 k!2224) j!170) (array!63492 (store (arr!30564 a!3219) i!1194 k!2224) (size!31067 a!3219)) mask!3464))))

(declare-fun b!1006470 () Bool)

(declare-fun res!675712 () Bool)

(assert (=> b!1006470 (=> (not res!675712) (not e!566520))))

(declare-datatypes ((List!21366 0))(
  ( (Nil!21363) (Cons!21362 (h!22545 (_ BitVec 64)) (t!30375 List!21366)) )
))
(declare-fun arrayNoDuplicates!0 (array!63491 (_ BitVec 32) List!21366) Bool)

(assert (=> b!1006470 (= res!675712 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21363))))

(declare-fun b!1006471 () Bool)

(declare-fun res!675705 () Bool)

(assert (=> b!1006471 (=> (not res!675705) (not e!566521))))

(assert (=> b!1006471 (= res!675705 (validKeyInArray!0 (select (arr!30564 a!3219) j!170)))))

(assert (= (and start!86840 res!675714) b!1006463))

(assert (= (and b!1006463 res!675707) b!1006471))

(assert (= (and b!1006471 res!675705) b!1006467))

(assert (= (and b!1006467 res!675711) b!1006461))

(assert (= (and b!1006461 res!675715) b!1006465))

(assert (= (and b!1006465 res!675708) b!1006464))

(assert (= (and b!1006464 res!675706) b!1006470))

(assert (= (and b!1006470 res!675712) b!1006462))

(assert (= (and b!1006462 res!675709) b!1006468))

(assert (= (and b!1006468 res!675710) b!1006466))

(assert (= (and b!1006466 res!675713) b!1006469))

(declare-fun m!931669 () Bool)

(assert (=> b!1006466 m!931669))

(assert (=> b!1006466 m!931669))

(declare-fun m!931671 () Bool)

(assert (=> b!1006466 m!931671))

(assert (=> b!1006471 m!931669))

(assert (=> b!1006471 m!931669))

(declare-fun m!931673 () Bool)

(assert (=> b!1006471 m!931673))

(declare-fun m!931675 () Bool)

(assert (=> b!1006467 m!931675))

(declare-fun m!931677 () Bool)

(assert (=> start!86840 m!931677))

(declare-fun m!931679 () Bool)

(assert (=> start!86840 m!931679))

(declare-fun m!931681 () Bool)

(assert (=> b!1006461 m!931681))

(assert (=> b!1006468 m!931669))

(assert (=> b!1006468 m!931669))

(declare-fun m!931683 () Bool)

(assert (=> b!1006468 m!931683))

(assert (=> b!1006468 m!931683))

(assert (=> b!1006468 m!931669))

(declare-fun m!931685 () Bool)

(assert (=> b!1006468 m!931685))

(declare-fun m!931687 () Bool)

(assert (=> b!1006470 m!931687))

(declare-fun m!931689 () Bool)

(assert (=> b!1006469 m!931689))

(declare-fun m!931691 () Bool)

(assert (=> b!1006469 m!931691))

(assert (=> b!1006469 m!931691))

(declare-fun m!931693 () Bool)

(assert (=> b!1006469 m!931693))

(assert (=> b!1006469 m!931693))

(assert (=> b!1006469 m!931691))

(declare-fun m!931695 () Bool)

(assert (=> b!1006469 m!931695))

(declare-fun m!931697 () Bool)

(assert (=> b!1006465 m!931697))

(declare-fun m!931699 () Bool)

(assert (=> b!1006464 m!931699))

(push 1)

(assert (not b!1006461))

(assert (not b!1006470))

(assert (not b!1006469))

