; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68716 () Bool)

(assert start!68716)

(declare-fun b!799735 () Bool)

(declare-fun e!443482 () Bool)

(assert (=> b!799735 (= e!443482 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43457 0))(
  ( (array!43458 (arr!20805 (Array (_ BitVec 32) (_ BitVec 64))) (size!21226 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43457)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8403 0))(
  ( (MissingZero!8403 (index!35979 (_ BitVec 32))) (Found!8403 (index!35980 (_ BitVec 32))) (Intermediate!8403 (undefined!9215 Bool) (index!35981 (_ BitVec 32)) (x!66882 (_ BitVec 32))) (Undefined!8403) (MissingVacant!8403 (index!35982 (_ BitVec 32))) )
))
(declare-fun lt!357224 () SeekEntryResult!8403)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!357221 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43457 (_ BitVec 32)) SeekEntryResult!8403)

(assert (=> b!799735 (= lt!357224 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357221 vacantBefore!23 (select (arr!20805 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799736 () Bool)

(declare-fun res!544424 () Bool)

(declare-fun e!443478 () Bool)

(assert (=> b!799736 (=> (not res!544424) (not e!443478))))

(declare-datatypes ((List!14821 0))(
  ( (Nil!14818) (Cons!14817 (h!15946 (_ BitVec 64)) (t!21144 List!14821)) )
))
(declare-fun arrayNoDuplicates!0 (array!43457 (_ BitVec 32) List!14821) Bool)

(assert (=> b!799736 (= res!544424 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14818))))

(declare-fun b!799737 () Bool)

(declare-fun res!544432 () Bool)

(declare-fun e!443481 () Bool)

(assert (=> b!799737 (=> (not res!544432) (not e!443481))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799737 (= res!544432 (validKeyInArray!0 k!2044))))

(declare-fun b!799738 () Bool)

(declare-fun e!443479 () Bool)

(assert (=> b!799738 (= e!443479 e!443482)))

(declare-fun res!544433 () Bool)

(assert (=> b!799738 (=> (not res!544433) (not e!443482))))

(assert (=> b!799738 (= res!544433 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357221 #b00000000000000000000000000000000) (bvslt lt!357221 (size!21226 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799738 (= lt!357221 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799739 () Bool)

(declare-fun res!544430 () Bool)

(assert (=> b!799739 (=> (not res!544430) (not e!443481))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799739 (= res!544430 (and (= (size!21226 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21226 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21226 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799740 () Bool)

(declare-fun res!544423 () Bool)

(assert (=> b!799740 (=> (not res!544423) (not e!443478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43457 (_ BitVec 32)) Bool)

(assert (=> b!799740 (= res!544423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799741 () Bool)

(declare-fun res!544435 () Bool)

(assert (=> b!799741 (=> (not res!544435) (not e!443481))))

(assert (=> b!799741 (= res!544435 (validKeyInArray!0 (select (arr!20805 a!3170) j!153)))))

(declare-fun res!544428 () Bool)

(assert (=> start!68716 (=> (not res!544428) (not e!443481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68716 (= res!544428 (validMask!0 mask!3266))))

(assert (=> start!68716 e!443481))

(assert (=> start!68716 true))

(declare-fun array_inv!16579 (array!43457) Bool)

(assert (=> start!68716 (array_inv!16579 a!3170)))

(declare-fun b!799734 () Bool)

(declare-fun e!443480 () Bool)

(assert (=> b!799734 (= e!443480 e!443479)))

(declare-fun res!544425 () Bool)

(assert (=> b!799734 (=> (not res!544425) (not e!443479))))

(declare-fun lt!357222 () SeekEntryResult!8403)

(declare-fun lt!357226 () SeekEntryResult!8403)

(assert (=> b!799734 (= res!544425 (and (= lt!357222 lt!357226) (= lt!357226 (Found!8403 j!153)) (not (= (select (arr!20805 a!3170) index!1236) (select (arr!20805 a!3170) j!153)))))))

(assert (=> b!799734 (= lt!357226 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20805 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43457 (_ BitVec 32)) SeekEntryResult!8403)

(assert (=> b!799734 (= lt!357222 (seekEntryOrOpen!0 (select (arr!20805 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799742 () Bool)

(declare-fun res!544429 () Bool)

(assert (=> b!799742 (=> (not res!544429) (not e!443478))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!799742 (= res!544429 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21226 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20805 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21226 a!3170)) (= (select (arr!20805 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799743 () Bool)

(assert (=> b!799743 (= e!443481 e!443478)))

(declare-fun res!544434 () Bool)

(assert (=> b!799743 (=> (not res!544434) (not e!443478))))

(declare-fun lt!357220 () SeekEntryResult!8403)

(assert (=> b!799743 (= res!544434 (or (= lt!357220 (MissingZero!8403 i!1163)) (= lt!357220 (MissingVacant!8403 i!1163))))))

(assert (=> b!799743 (= lt!357220 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799744 () Bool)

(declare-fun res!544426 () Bool)

(assert (=> b!799744 (=> (not res!544426) (not e!443482))))

(declare-fun lt!357225 () array!43457)

(declare-fun lt!357223 () (_ BitVec 64))

(declare-fun lt!357219 () SeekEntryResult!8403)

(assert (=> b!799744 (= res!544426 (= lt!357219 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357221 vacantAfter!23 lt!357223 lt!357225 mask!3266)))))

(declare-fun b!799745 () Bool)

(declare-fun res!544427 () Bool)

(assert (=> b!799745 (=> (not res!544427) (not e!443481))))

(declare-fun arrayContainsKey!0 (array!43457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799745 (= res!544427 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799746 () Bool)

(assert (=> b!799746 (= e!443478 e!443480)))

(declare-fun res!544431 () Bool)

(assert (=> b!799746 (=> (not res!544431) (not e!443480))))

(assert (=> b!799746 (= res!544431 (= lt!357219 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357223 lt!357225 mask!3266)))))

(assert (=> b!799746 (= lt!357219 (seekEntryOrOpen!0 lt!357223 lt!357225 mask!3266))))

(assert (=> b!799746 (= lt!357223 (select (store (arr!20805 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799746 (= lt!357225 (array!43458 (store (arr!20805 a!3170) i!1163 k!2044) (size!21226 a!3170)))))

(assert (= (and start!68716 res!544428) b!799739))

(assert (= (and b!799739 res!544430) b!799741))

(assert (= (and b!799741 res!544435) b!799737))

(assert (= (and b!799737 res!544432) b!799745))

(assert (= (and b!799745 res!544427) b!799743))

(assert (= (and b!799743 res!544434) b!799740))

(assert (= (and b!799740 res!544423) b!799736))

(assert (= (and b!799736 res!544424) b!799742))

(assert (= (and b!799742 res!544429) b!799746))

(assert (= (and b!799746 res!544431) b!799734))

(assert (= (and b!799734 res!544425) b!799738))

(assert (= (and b!799738 res!544433) b!799744))

(assert (= (and b!799744 res!544426) b!799735))

(declare-fun m!740875 () Bool)

(assert (=> b!799737 m!740875))

(declare-fun m!740877 () Bool)

(assert (=> b!799743 m!740877))

(declare-fun m!740879 () Bool)

(assert (=> b!799738 m!740879))

(declare-fun m!740881 () Bool)

(assert (=> b!799746 m!740881))

(declare-fun m!740883 () Bool)

(assert (=> b!799746 m!740883))

(declare-fun m!740885 () Bool)

(assert (=> b!799746 m!740885))

(declare-fun m!740887 () Bool)

(assert (=> b!799746 m!740887))

(declare-fun m!740889 () Bool)

(assert (=> b!799735 m!740889))

(assert (=> b!799735 m!740889))

(declare-fun m!740891 () Bool)

(assert (=> b!799735 m!740891))

(declare-fun m!740893 () Bool)

(assert (=> b!799736 m!740893))

(declare-fun m!740895 () Bool)

(assert (=> b!799745 m!740895))

(declare-fun m!740897 () Bool)

(assert (=> b!799744 m!740897))

(assert (=> b!799741 m!740889))

(assert (=> b!799741 m!740889))

(declare-fun m!740899 () Bool)

(assert (=> b!799741 m!740899))

(declare-fun m!740901 () Bool)

(assert (=> b!799740 m!740901))

(declare-fun m!740903 () Bool)

(assert (=> start!68716 m!740903))

(declare-fun m!740905 () Bool)

(assert (=> start!68716 m!740905))

(declare-fun m!740907 () Bool)

(assert (=> b!799742 m!740907))

(declare-fun m!740909 () Bool)

(assert (=> b!799742 m!740909))

(declare-fun m!740911 () Bool)

(assert (=> b!799734 m!740911))

(assert (=> b!799734 m!740889))

(assert (=> b!799734 m!740889))

(declare-fun m!740913 () Bool)

(assert (=> b!799734 m!740913))

(assert (=> b!799734 m!740889))

(declare-fun m!740915 () Bool)

(assert (=> b!799734 m!740915))

(push 1)

