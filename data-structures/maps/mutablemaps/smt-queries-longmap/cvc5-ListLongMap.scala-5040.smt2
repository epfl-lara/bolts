; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68770 () Bool)

(assert start!68770)

(declare-fun b!800787 () Bool)

(declare-fun res!545478 () Bool)

(declare-fun e!443965 () Bool)

(assert (=> b!800787 (=> (not res!545478) (not e!443965))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8430 0))(
  ( (MissingZero!8430 (index!36087 (_ BitVec 32))) (Found!8430 (index!36088 (_ BitVec 32))) (Intermediate!8430 (undefined!9242 Bool) (index!36089 (_ BitVec 32)) (x!66981 (_ BitVec 32))) (Undefined!8430) (MissingVacant!8430 (index!36090 (_ BitVec 32))) )
))
(declare-fun lt!357872 () SeekEntryResult!8430)

(declare-fun lt!357868 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!357869 () (_ BitVec 32))

(declare-datatypes ((array!43511 0))(
  ( (array!43512 (arr!20832 (Array (_ BitVec 32) (_ BitVec 64))) (size!21253 (_ BitVec 32))) )
))
(declare-fun lt!357867 () array!43511)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43511 (_ BitVec 32)) SeekEntryResult!8430)

(assert (=> b!800787 (= res!545478 (= lt!357872 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357869 vacantAfter!23 lt!357868 lt!357867 mask!3266)))))

(declare-fun b!800789 () Bool)

(declare-fun e!443964 () Bool)

(assert (=> b!800789 (= e!443964 e!443965)))

(declare-fun res!545485 () Bool)

(assert (=> b!800789 (=> (not res!545485) (not e!443965))))

(declare-fun a!3170 () array!43511)

(assert (=> b!800789 (= res!545485 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357869 #b00000000000000000000000000000000) (bvslt lt!357869 (size!21253 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800789 (= lt!357869 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800790 () Bool)

(declare-fun e!443967 () Bool)

(declare-fun e!443968 () Bool)

(assert (=> b!800790 (= e!443967 e!443968)))

(declare-fun res!545484 () Bool)

(assert (=> b!800790 (=> (not res!545484) (not e!443968))))

(declare-fun lt!357870 () SeekEntryResult!8430)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800790 (= res!545484 (or (= lt!357870 (MissingZero!8430 i!1163)) (= lt!357870 (MissingVacant!8430 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43511 (_ BitVec 32)) SeekEntryResult!8430)

(assert (=> b!800790 (= lt!357870 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800791 () Bool)

(declare-fun res!545481 () Bool)

(assert (=> b!800791 (=> (not res!545481) (not e!443967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800791 (= res!545481 (validKeyInArray!0 k!2044))))

(declare-fun b!800792 () Bool)

(declare-fun e!443963 () Bool)

(assert (=> b!800792 (= e!443968 e!443963)))

(declare-fun res!545476 () Bool)

(assert (=> b!800792 (=> (not res!545476) (not e!443963))))

(assert (=> b!800792 (= res!545476 (= lt!357872 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357868 lt!357867 mask!3266)))))

(assert (=> b!800792 (= lt!357872 (seekEntryOrOpen!0 lt!357868 lt!357867 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800792 (= lt!357868 (select (store (arr!20832 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800792 (= lt!357867 (array!43512 (store (arr!20832 a!3170) i!1163 k!2044) (size!21253 a!3170)))))

(declare-fun b!800793 () Bool)

(declare-fun res!545479 () Bool)

(assert (=> b!800793 (=> (not res!545479) (not e!443968))))

(declare-datatypes ((List!14848 0))(
  ( (Nil!14845) (Cons!14844 (h!15973 (_ BitVec 64)) (t!21171 List!14848)) )
))
(declare-fun arrayNoDuplicates!0 (array!43511 (_ BitVec 32) List!14848) Bool)

(assert (=> b!800793 (= res!545479 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14845))))

(declare-fun b!800794 () Bool)

(declare-fun res!545486 () Bool)

(assert (=> b!800794 (=> (not res!545486) (not e!443967))))

(assert (=> b!800794 (= res!545486 (validKeyInArray!0 (select (arr!20832 a!3170) j!153)))))

(declare-fun b!800795 () Bool)

(declare-fun res!545488 () Bool)

(assert (=> b!800795 (=> (not res!545488) (not e!443968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43511 (_ BitVec 32)) Bool)

(assert (=> b!800795 (= res!545488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800788 () Bool)

(assert (=> b!800788 (= e!443963 e!443964)))

(declare-fun res!545483 () Bool)

(assert (=> b!800788 (=> (not res!545483) (not e!443964))))

(declare-fun lt!357871 () SeekEntryResult!8430)

(declare-fun lt!357873 () SeekEntryResult!8430)

(assert (=> b!800788 (= res!545483 (and (= lt!357871 lt!357873) (= lt!357873 (Found!8430 j!153)) (not (= (select (arr!20832 a!3170) index!1236) (select (arr!20832 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800788 (= lt!357873 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20832 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800788 (= lt!357871 (seekEntryOrOpen!0 (select (arr!20832 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!545487 () Bool)

(assert (=> start!68770 (=> (not res!545487) (not e!443967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68770 (= res!545487 (validMask!0 mask!3266))))

(assert (=> start!68770 e!443967))

(assert (=> start!68770 true))

(declare-fun array_inv!16606 (array!43511) Bool)

(assert (=> start!68770 (array_inv!16606 a!3170)))

(declare-fun b!800796 () Bool)

(declare-fun res!545482 () Bool)

(assert (=> b!800796 (=> (not res!545482) (not e!443967))))

(assert (=> b!800796 (= res!545482 (and (= (size!21253 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21253 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21253 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800797 () Bool)

(declare-fun res!545480 () Bool)

(assert (=> b!800797 (=> (not res!545480) (not e!443968))))

(assert (=> b!800797 (= res!545480 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21253 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20832 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21253 a!3170)) (= (select (arr!20832 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800798 () Bool)

(assert (=> b!800798 (= e!443965 false)))

(declare-fun lt!357874 () SeekEntryResult!8430)

(assert (=> b!800798 (= lt!357874 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357869 vacantBefore!23 (select (arr!20832 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800799 () Bool)

(declare-fun res!545477 () Bool)

(assert (=> b!800799 (=> (not res!545477) (not e!443967))))

(declare-fun arrayContainsKey!0 (array!43511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800799 (= res!545477 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68770 res!545487) b!800796))

(assert (= (and b!800796 res!545482) b!800794))

(assert (= (and b!800794 res!545486) b!800791))

(assert (= (and b!800791 res!545481) b!800799))

(assert (= (and b!800799 res!545477) b!800790))

(assert (= (and b!800790 res!545484) b!800795))

(assert (= (and b!800795 res!545488) b!800793))

(assert (= (and b!800793 res!545479) b!800797))

(assert (= (and b!800797 res!545480) b!800792))

(assert (= (and b!800792 res!545476) b!800788))

(assert (= (and b!800788 res!545483) b!800789))

(assert (= (and b!800789 res!545485) b!800787))

(assert (= (and b!800787 res!545478) b!800798))

(declare-fun m!742009 () Bool)

(assert (=> b!800792 m!742009))

(declare-fun m!742011 () Bool)

(assert (=> b!800792 m!742011))

(declare-fun m!742013 () Bool)

(assert (=> b!800792 m!742013))

(declare-fun m!742015 () Bool)

(assert (=> b!800792 m!742015))

(declare-fun m!742017 () Bool)

(assert (=> b!800791 m!742017))

(declare-fun m!742019 () Bool)

(assert (=> b!800797 m!742019))

(declare-fun m!742021 () Bool)

(assert (=> b!800797 m!742021))

(declare-fun m!742023 () Bool)

(assert (=> b!800787 m!742023))

(declare-fun m!742025 () Bool)

(assert (=> b!800790 m!742025))

(declare-fun m!742027 () Bool)

(assert (=> start!68770 m!742027))

(declare-fun m!742029 () Bool)

(assert (=> start!68770 m!742029))

(declare-fun m!742031 () Bool)

(assert (=> b!800794 m!742031))

(assert (=> b!800794 m!742031))

(declare-fun m!742033 () Bool)

(assert (=> b!800794 m!742033))

(declare-fun m!742035 () Bool)

(assert (=> b!800788 m!742035))

(assert (=> b!800788 m!742031))

(assert (=> b!800788 m!742031))

(declare-fun m!742037 () Bool)

(assert (=> b!800788 m!742037))

(assert (=> b!800788 m!742031))

(declare-fun m!742039 () Bool)

(assert (=> b!800788 m!742039))

(declare-fun m!742041 () Bool)

(assert (=> b!800795 m!742041))

(declare-fun m!742043 () Bool)

(assert (=> b!800799 m!742043))

(declare-fun m!742045 () Bool)

(assert (=> b!800793 m!742045))

(assert (=> b!800798 m!742031))

(assert (=> b!800798 m!742031))

(declare-fun m!742047 () Bool)

(assert (=> b!800798 m!742047))

(declare-fun m!742049 () Bool)

(assert (=> b!800789 m!742049))

(push 1)

