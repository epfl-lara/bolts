; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68764 () Bool)

(assert start!68764)

(declare-fun b!800670 () Bool)

(declare-fun res!545367 () Bool)

(declare-fun e!443912 () Bool)

(assert (=> b!800670 (=> (not res!545367) (not e!443912))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800670 (= res!545367 (validKeyInArray!0 k!2044))))

(declare-fun b!800671 () Bool)

(declare-fun res!545371 () Bool)

(declare-fun e!443909 () Bool)

(assert (=> b!800671 (=> (not res!545371) (not e!443909))))

(declare-datatypes ((array!43505 0))(
  ( (array!43506 (arr!20829 (Array (_ BitVec 32) (_ BitVec 64))) (size!21250 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43505)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43505 (_ BitVec 32)) Bool)

(assert (=> b!800671 (= res!545371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800672 () Bool)

(declare-fun res!545362 () Bool)

(assert (=> b!800672 (=> (not res!545362) (not e!443909))))

(declare-datatypes ((List!14845 0))(
  ( (Nil!14842) (Cons!14841 (h!15970 (_ BitVec 64)) (t!21168 List!14845)) )
))
(declare-fun arrayNoDuplicates!0 (array!43505 (_ BitVec 32) List!14845) Bool)

(assert (=> b!800672 (= res!545362 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14842))))

(declare-fun res!545363 () Bool)

(assert (=> start!68764 (=> (not res!545363) (not e!443912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68764 (= res!545363 (validMask!0 mask!3266))))

(assert (=> start!68764 e!443912))

(assert (=> start!68764 true))

(declare-fun array_inv!16603 (array!43505) Bool)

(assert (=> start!68764 (array_inv!16603 a!3170)))

(declare-fun b!800673 () Bool)

(declare-fun res!545369 () Bool)

(assert (=> b!800673 (=> (not res!545369) (not e!443912))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800673 (= res!545369 (validKeyInArray!0 (select (arr!20829 a!3170) j!153)))))

(declare-fun b!800674 () Bool)

(assert (=> b!800674 (= e!443912 e!443909)))

(declare-fun res!545366 () Bool)

(assert (=> b!800674 (=> (not res!545366) (not e!443909))))

(declare-datatypes ((SeekEntryResult!8427 0))(
  ( (MissingZero!8427 (index!36075 (_ BitVec 32))) (Found!8427 (index!36076 (_ BitVec 32))) (Intermediate!8427 (undefined!9239 Bool) (index!36077 (_ BitVec 32)) (x!66970 (_ BitVec 32))) (Undefined!8427) (MissingVacant!8427 (index!36078 (_ BitVec 32))) )
))
(declare-fun lt!357802 () SeekEntryResult!8427)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800674 (= res!545366 (or (= lt!357802 (MissingZero!8427 i!1163)) (= lt!357802 (MissingVacant!8427 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43505 (_ BitVec 32)) SeekEntryResult!8427)

(assert (=> b!800674 (= lt!357802 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800675 () Bool)

(declare-fun res!545359 () Bool)

(assert (=> b!800675 (=> (not res!545359) (not e!443912))))

(assert (=> b!800675 (= res!545359 (and (= (size!21250 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21250 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21250 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800676 () Bool)

(declare-fun res!545365 () Bool)

(declare-fun e!443914 () Bool)

(assert (=> b!800676 (=> (not res!545365) (not e!443914))))

(declare-fun lt!357795 () array!43505)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357798 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357800 () SeekEntryResult!8427)

(declare-fun lt!357799 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43505 (_ BitVec 32)) SeekEntryResult!8427)

(assert (=> b!800676 (= res!545365 (= lt!357800 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357799 vacantAfter!23 lt!357798 lt!357795 mask!3266)))))

(declare-fun b!800677 () Bool)

(declare-fun e!443911 () Bool)

(assert (=> b!800677 (= e!443909 e!443911)))

(declare-fun res!545368 () Bool)

(assert (=> b!800677 (=> (not res!545368) (not e!443911))))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800677 (= res!545368 (= lt!357800 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357798 lt!357795 mask!3266)))))

(assert (=> b!800677 (= lt!357800 (seekEntryOrOpen!0 lt!357798 lt!357795 mask!3266))))

(assert (=> b!800677 (= lt!357798 (select (store (arr!20829 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800677 (= lt!357795 (array!43506 (store (arr!20829 a!3170) i!1163 k!2044) (size!21250 a!3170)))))

(declare-fun b!800678 () Bool)

(declare-fun e!443913 () Bool)

(assert (=> b!800678 (= e!443911 e!443913)))

(declare-fun res!545361 () Bool)

(assert (=> b!800678 (=> (not res!545361) (not e!443913))))

(declare-fun lt!357797 () SeekEntryResult!8427)

(declare-fun lt!357796 () SeekEntryResult!8427)

(assert (=> b!800678 (= res!545361 (and (= lt!357796 lt!357797) (= lt!357797 (Found!8427 j!153)) (not (= (select (arr!20829 a!3170) index!1236) (select (arr!20829 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800678 (= lt!357797 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20829 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800678 (= lt!357796 (seekEntryOrOpen!0 (select (arr!20829 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800679 () Bool)

(assert (=> b!800679 (= e!443914 false)))

(declare-fun lt!357801 () SeekEntryResult!8427)

(assert (=> b!800679 (= lt!357801 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357799 vacantBefore!23 (select (arr!20829 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800680 () Bool)

(assert (=> b!800680 (= e!443913 e!443914)))

(declare-fun res!545360 () Bool)

(assert (=> b!800680 (=> (not res!545360) (not e!443914))))

(assert (=> b!800680 (= res!545360 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357799 #b00000000000000000000000000000000) (bvslt lt!357799 (size!21250 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800680 (= lt!357799 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800681 () Bool)

(declare-fun res!545364 () Bool)

(assert (=> b!800681 (=> (not res!545364) (not e!443912))))

(declare-fun arrayContainsKey!0 (array!43505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800681 (= res!545364 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800682 () Bool)

(declare-fun res!545370 () Bool)

(assert (=> b!800682 (=> (not res!545370) (not e!443909))))

(assert (=> b!800682 (= res!545370 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21250 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20829 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21250 a!3170)) (= (select (arr!20829 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68764 res!545363) b!800675))

(assert (= (and b!800675 res!545359) b!800673))

(assert (= (and b!800673 res!545369) b!800670))

(assert (= (and b!800670 res!545367) b!800681))

(assert (= (and b!800681 res!545364) b!800674))

(assert (= (and b!800674 res!545366) b!800671))

(assert (= (and b!800671 res!545371) b!800672))

(assert (= (and b!800672 res!545362) b!800682))

(assert (= (and b!800682 res!545370) b!800677))

(assert (= (and b!800677 res!545368) b!800678))

(assert (= (and b!800678 res!545361) b!800680))

(assert (= (and b!800680 res!545360) b!800676))

(assert (= (and b!800676 res!545365) b!800679))

(declare-fun m!741883 () Bool)

(assert (=> b!800671 m!741883))

(declare-fun m!741885 () Bool)

(assert (=> b!800682 m!741885))

(declare-fun m!741887 () Bool)

(assert (=> b!800682 m!741887))

(declare-fun m!741889 () Bool)

(assert (=> b!800680 m!741889))

(declare-fun m!741891 () Bool)

(assert (=> b!800673 m!741891))

(assert (=> b!800673 m!741891))

(declare-fun m!741893 () Bool)

(assert (=> b!800673 m!741893))

(assert (=> b!800679 m!741891))

(assert (=> b!800679 m!741891))

(declare-fun m!741895 () Bool)

(assert (=> b!800679 m!741895))

(declare-fun m!741897 () Bool)

(assert (=> b!800674 m!741897))

(declare-fun m!741899 () Bool)

(assert (=> b!800678 m!741899))

(assert (=> b!800678 m!741891))

(assert (=> b!800678 m!741891))

(declare-fun m!741901 () Bool)

(assert (=> b!800678 m!741901))

(assert (=> b!800678 m!741891))

(declare-fun m!741903 () Bool)

(assert (=> b!800678 m!741903))

(declare-fun m!741905 () Bool)

(assert (=> b!800676 m!741905))

(declare-fun m!741907 () Bool)

(assert (=> b!800672 m!741907))

(declare-fun m!741909 () Bool)

(assert (=> b!800670 m!741909))

(declare-fun m!741911 () Bool)

(assert (=> b!800681 m!741911))

(declare-fun m!741913 () Bool)

(assert (=> start!68764 m!741913))

(declare-fun m!741915 () Bool)

(assert (=> start!68764 m!741915))

(declare-fun m!741917 () Bool)

(assert (=> b!800677 m!741917))

(declare-fun m!741919 () Bool)

(assert (=> b!800677 m!741919))

(declare-fun m!741921 () Bool)

(assert (=> b!800677 m!741921))

(declare-fun m!741923 () Bool)

(assert (=> b!800677 m!741923))

(push 1)

