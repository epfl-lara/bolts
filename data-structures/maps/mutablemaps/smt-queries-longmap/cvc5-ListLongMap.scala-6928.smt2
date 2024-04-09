; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87160 () Bool)

(assert start!87160)

(declare-fun b!1010211 () Bool)

(declare-fun res!678711 () Bool)

(declare-fun e!568373 () Bool)

(assert (=> b!1010211 (=> (not res!678711) (not e!568373))))

(declare-datatypes ((array!63622 0))(
  ( (array!63623 (arr!30625 (Array (_ BitVec 32) (_ BitVec 64))) (size!31128 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63622)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010211 (= res!678711 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31128 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31128 a!3219))))))

(declare-fun b!1010212 () Bool)

(declare-fun res!678712 () Bool)

(declare-fun e!568371 () Bool)

(assert (=> b!1010212 (=> (not res!678712) (not e!568371))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010212 (= res!678712 (validKeyInArray!0 (select (arr!30625 a!3219) j!170)))))

(declare-fun b!1010213 () Bool)

(declare-fun res!678716 () Bool)

(assert (=> b!1010213 (=> (not res!678716) (not e!568373))))

(declare-datatypes ((List!21427 0))(
  ( (Nil!21424) (Cons!21423 (h!22615 (_ BitVec 64)) (t!30436 List!21427)) )
))
(declare-fun arrayNoDuplicates!0 (array!63622 (_ BitVec 32) List!21427) Bool)

(assert (=> b!1010213 (= res!678716 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21424))))

(declare-fun b!1010214 () Bool)

(declare-fun res!678710 () Bool)

(assert (=> b!1010214 (=> (not res!678710) (not e!568371))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010214 (= res!678710 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010215 () Bool)

(declare-fun e!568374 () Bool)

(assert (=> b!1010215 (= e!568374 false)))

(declare-fun lt!446492 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010215 (= lt!446492 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010216 () Bool)

(declare-fun e!568372 () Bool)

(assert (=> b!1010216 (= e!568372 e!568374)))

(declare-fun res!678717 () Bool)

(assert (=> b!1010216 (=> (not res!678717) (not e!568374))))

(declare-fun lt!446491 () (_ BitVec 64))

(declare-fun lt!446494 () array!63622)

(declare-datatypes ((SeekEntryResult!9557 0))(
  ( (MissingZero!9557 (index!40598 (_ BitVec 32))) (Found!9557 (index!40599 (_ BitVec 32))) (Intermediate!9557 (undefined!10369 Bool) (index!40600 (_ BitVec 32)) (x!88036 (_ BitVec 32))) (Undefined!9557) (MissingVacant!9557 (index!40601 (_ BitVec 32))) )
))
(declare-fun lt!446493 () SeekEntryResult!9557)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63622 (_ BitVec 32)) SeekEntryResult!9557)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010216 (= res!678717 (not (= lt!446493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446491 mask!3464) lt!446491 lt!446494 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010216 (= lt!446491 (select (store (arr!30625 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010216 (= lt!446494 (array!63623 (store (arr!30625 a!3219) i!1194 k!2224) (size!31128 a!3219)))))

(declare-fun b!1010217 () Bool)

(declare-fun res!678705 () Bool)

(assert (=> b!1010217 (=> (not res!678705) (not e!568371))))

(assert (=> b!1010217 (= res!678705 (and (= (size!31128 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31128 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31128 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010219 () Bool)

(declare-fun res!678708 () Bool)

(assert (=> b!1010219 (=> (not res!678708) (not e!568373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63622 (_ BitVec 32)) Bool)

(assert (=> b!1010219 (= res!678708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010220 () Bool)

(declare-fun e!568376 () Bool)

(assert (=> b!1010220 (= e!568373 e!568376)))

(declare-fun res!678714 () Bool)

(assert (=> b!1010220 (=> (not res!678714) (not e!568376))))

(declare-fun lt!446496 () SeekEntryResult!9557)

(assert (=> b!1010220 (= res!678714 (= lt!446493 lt!446496))))

(assert (=> b!1010220 (= lt!446496 (Intermediate!9557 false resIndex!38 resX!38))))

(assert (=> b!1010220 (= lt!446493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30625 a!3219) j!170) mask!3464) (select (arr!30625 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010221 () Bool)

(declare-fun res!678706 () Bool)

(assert (=> b!1010221 (=> (not res!678706) (not e!568374))))

(declare-fun lt!446490 () SeekEntryResult!9557)

(assert (=> b!1010221 (= res!678706 (not (= lt!446490 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446491 lt!446494 mask!3464))))))

(declare-fun b!1010222 () Bool)

(assert (=> b!1010222 (= e!568376 e!568372)))

(declare-fun res!678707 () Bool)

(assert (=> b!1010222 (=> (not res!678707) (not e!568372))))

(assert (=> b!1010222 (= res!678707 (= lt!446490 lt!446496))))

(assert (=> b!1010222 (= lt!446490 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30625 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010223 () Bool)

(declare-fun res!678709 () Bool)

(assert (=> b!1010223 (=> (not res!678709) (not e!568374))))

(assert (=> b!1010223 (= res!678709 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010224 () Bool)

(declare-fun res!678715 () Bool)

(assert (=> b!1010224 (=> (not res!678715) (not e!568371))))

(assert (=> b!1010224 (= res!678715 (validKeyInArray!0 k!2224))))

(declare-fun b!1010218 () Bool)

(assert (=> b!1010218 (= e!568371 e!568373)))

(declare-fun res!678713 () Bool)

(assert (=> b!1010218 (=> (not res!678713) (not e!568373))))

(declare-fun lt!446495 () SeekEntryResult!9557)

(assert (=> b!1010218 (= res!678713 (or (= lt!446495 (MissingVacant!9557 i!1194)) (= lt!446495 (MissingZero!9557 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63622 (_ BitVec 32)) SeekEntryResult!9557)

(assert (=> b!1010218 (= lt!446495 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!678718 () Bool)

(assert (=> start!87160 (=> (not res!678718) (not e!568371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87160 (= res!678718 (validMask!0 mask!3464))))

(assert (=> start!87160 e!568371))

(declare-fun array_inv!23615 (array!63622) Bool)

(assert (=> start!87160 (array_inv!23615 a!3219)))

(assert (=> start!87160 true))

(assert (= (and start!87160 res!678718) b!1010217))

(assert (= (and b!1010217 res!678705) b!1010212))

(assert (= (and b!1010212 res!678712) b!1010224))

(assert (= (and b!1010224 res!678715) b!1010214))

(assert (= (and b!1010214 res!678710) b!1010218))

(assert (= (and b!1010218 res!678713) b!1010219))

(assert (= (and b!1010219 res!678708) b!1010213))

(assert (= (and b!1010213 res!678716) b!1010211))

(assert (= (and b!1010211 res!678711) b!1010220))

(assert (= (and b!1010220 res!678714) b!1010222))

(assert (= (and b!1010222 res!678707) b!1010216))

(assert (= (and b!1010216 res!678717) b!1010221))

(assert (= (and b!1010221 res!678706) b!1010223))

(assert (= (and b!1010223 res!678709) b!1010215))

(declare-fun m!934683 () Bool)

(assert (=> b!1010213 m!934683))

(declare-fun m!934685 () Bool)

(assert (=> start!87160 m!934685))

(declare-fun m!934687 () Bool)

(assert (=> start!87160 m!934687))

(declare-fun m!934689 () Bool)

(assert (=> b!1010221 m!934689))

(declare-fun m!934691 () Bool)

(assert (=> b!1010219 m!934691))

(declare-fun m!934693 () Bool)

(assert (=> b!1010215 m!934693))

(declare-fun m!934695 () Bool)

(assert (=> b!1010224 m!934695))

(declare-fun m!934697 () Bool)

(assert (=> b!1010222 m!934697))

(assert (=> b!1010222 m!934697))

(declare-fun m!934699 () Bool)

(assert (=> b!1010222 m!934699))

(assert (=> b!1010220 m!934697))

(assert (=> b!1010220 m!934697))

(declare-fun m!934701 () Bool)

(assert (=> b!1010220 m!934701))

(assert (=> b!1010220 m!934701))

(assert (=> b!1010220 m!934697))

(declare-fun m!934703 () Bool)

(assert (=> b!1010220 m!934703))

(declare-fun m!934705 () Bool)

(assert (=> b!1010214 m!934705))

(assert (=> b!1010212 m!934697))

(assert (=> b!1010212 m!934697))

(declare-fun m!934707 () Bool)

(assert (=> b!1010212 m!934707))

(declare-fun m!934709 () Bool)

(assert (=> b!1010216 m!934709))

(assert (=> b!1010216 m!934709))

(declare-fun m!934711 () Bool)

(assert (=> b!1010216 m!934711))

(declare-fun m!934713 () Bool)

(assert (=> b!1010216 m!934713))

(declare-fun m!934715 () Bool)

(assert (=> b!1010216 m!934715))

(declare-fun m!934717 () Bool)

(assert (=> b!1010218 m!934717))

(push 1)

(assert (not start!87160))

(assert (not b!1010215))

(assert (not b!1010224))

(assert (not b!1010220))

(assert (not b!1010221))

(assert (not b!1010219))

(assert (not b!1010218))

