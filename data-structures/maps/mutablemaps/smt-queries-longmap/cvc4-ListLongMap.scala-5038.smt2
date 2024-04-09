; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68762 () Bool)

(assert start!68762)

(declare-fun b!800631 () Bool)

(declare-fun res!545332 () Bool)

(declare-fun e!443894 () Bool)

(assert (=> b!800631 (=> (not res!545332) (not e!443894))))

(declare-datatypes ((array!43503 0))(
  ( (array!43504 (arr!20828 (Array (_ BitVec 32) (_ BitVec 64))) (size!21249 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43503)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43503 (_ BitVec 32)) Bool)

(assert (=> b!800631 (= res!545332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!545331 () Bool)

(declare-fun e!443895 () Bool)

(assert (=> start!68762 (=> (not res!545331) (not e!443895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68762 (= res!545331 (validMask!0 mask!3266))))

(assert (=> start!68762 e!443895))

(assert (=> start!68762 true))

(declare-fun array_inv!16602 (array!43503) Bool)

(assert (=> start!68762 (array_inv!16602 a!3170)))

(declare-fun b!800632 () Bool)

(declare-fun res!545324 () Bool)

(assert (=> b!800632 (=> (not res!545324) (not e!443895))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800632 (= res!545324 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800633 () Bool)

(declare-fun res!545320 () Bool)

(declare-fun e!443891 () Bool)

(assert (=> b!800633 (=> (not res!545320) (not e!443891))))

(declare-fun lt!357772 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8426 0))(
  ( (MissingZero!8426 (index!36071 (_ BitVec 32))) (Found!8426 (index!36072 (_ BitVec 32))) (Intermediate!8426 (undefined!9238 Bool) (index!36073 (_ BitVec 32)) (x!66961 (_ BitVec 32))) (Undefined!8426) (MissingVacant!8426 (index!36074 (_ BitVec 32))) )
))
(declare-fun lt!357774 () SeekEntryResult!8426)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357777 () (_ BitVec 32))

(declare-fun lt!357778 () array!43503)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43503 (_ BitVec 32)) SeekEntryResult!8426)

(assert (=> b!800633 (= res!545320 (= lt!357774 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357777 vacantAfter!23 lt!357772 lt!357778 mask!3266)))))

(declare-fun b!800634 () Bool)

(declare-fun e!443893 () Bool)

(declare-fun e!443896 () Bool)

(assert (=> b!800634 (= e!443893 e!443896)))

(declare-fun res!545329 () Bool)

(assert (=> b!800634 (=> (not res!545329) (not e!443896))))

(declare-fun lt!357773 () SeekEntryResult!8426)

(declare-fun lt!357771 () SeekEntryResult!8426)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800634 (= res!545329 (and (= lt!357771 lt!357773) (= lt!357773 (Found!8426 j!153)) (not (= (select (arr!20828 a!3170) index!1236) (select (arr!20828 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800634 (= lt!357773 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20828 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43503 (_ BitVec 32)) SeekEntryResult!8426)

(assert (=> b!800634 (= lt!357771 (seekEntryOrOpen!0 (select (arr!20828 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800635 () Bool)

(assert (=> b!800635 (= e!443896 e!443891)))

(declare-fun res!545326 () Bool)

(assert (=> b!800635 (=> (not res!545326) (not e!443891))))

(assert (=> b!800635 (= res!545326 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357777 #b00000000000000000000000000000000) (bvslt lt!357777 (size!21249 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800635 (= lt!357777 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800636 () Bool)

(declare-fun res!545330 () Bool)

(assert (=> b!800636 (=> (not res!545330) (not e!443894))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800636 (= res!545330 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21249 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20828 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21249 a!3170)) (= (select (arr!20828 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800637 () Bool)

(assert (=> b!800637 (= e!443891 false)))

(declare-fun lt!357776 () SeekEntryResult!8426)

(assert (=> b!800637 (= lt!357776 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357777 vacantBefore!23 (select (arr!20828 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800638 () Bool)

(declare-fun res!545325 () Bool)

(assert (=> b!800638 (=> (not res!545325) (not e!443894))))

(declare-datatypes ((List!14844 0))(
  ( (Nil!14841) (Cons!14840 (h!15969 (_ BitVec 64)) (t!21167 List!14844)) )
))
(declare-fun arrayNoDuplicates!0 (array!43503 (_ BitVec 32) List!14844) Bool)

(assert (=> b!800638 (= res!545325 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14841))))

(declare-fun b!800639 () Bool)

(declare-fun res!545323 () Bool)

(assert (=> b!800639 (=> (not res!545323) (not e!443895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800639 (= res!545323 (validKeyInArray!0 k!2044))))

(declare-fun b!800640 () Bool)

(assert (=> b!800640 (= e!443895 e!443894)))

(declare-fun res!545328 () Bool)

(assert (=> b!800640 (=> (not res!545328) (not e!443894))))

(declare-fun lt!357775 () SeekEntryResult!8426)

(assert (=> b!800640 (= res!545328 (or (= lt!357775 (MissingZero!8426 i!1163)) (= lt!357775 (MissingVacant!8426 i!1163))))))

(assert (=> b!800640 (= lt!357775 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800641 () Bool)

(declare-fun res!545321 () Bool)

(assert (=> b!800641 (=> (not res!545321) (not e!443895))))

(assert (=> b!800641 (= res!545321 (and (= (size!21249 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21249 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21249 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800642 () Bool)

(declare-fun res!545322 () Bool)

(assert (=> b!800642 (=> (not res!545322) (not e!443895))))

(assert (=> b!800642 (= res!545322 (validKeyInArray!0 (select (arr!20828 a!3170) j!153)))))

(declare-fun b!800643 () Bool)

(assert (=> b!800643 (= e!443894 e!443893)))

(declare-fun res!545327 () Bool)

(assert (=> b!800643 (=> (not res!545327) (not e!443893))))

(assert (=> b!800643 (= res!545327 (= lt!357774 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357772 lt!357778 mask!3266)))))

(assert (=> b!800643 (= lt!357774 (seekEntryOrOpen!0 lt!357772 lt!357778 mask!3266))))

(assert (=> b!800643 (= lt!357772 (select (store (arr!20828 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800643 (= lt!357778 (array!43504 (store (arr!20828 a!3170) i!1163 k!2044) (size!21249 a!3170)))))

(assert (= (and start!68762 res!545331) b!800641))

(assert (= (and b!800641 res!545321) b!800642))

(assert (= (and b!800642 res!545322) b!800639))

(assert (= (and b!800639 res!545323) b!800632))

(assert (= (and b!800632 res!545324) b!800640))

(assert (= (and b!800640 res!545328) b!800631))

(assert (= (and b!800631 res!545332) b!800638))

(assert (= (and b!800638 res!545325) b!800636))

(assert (= (and b!800636 res!545330) b!800643))

(assert (= (and b!800643 res!545327) b!800634))

(assert (= (and b!800634 res!545329) b!800635))

(assert (= (and b!800635 res!545326) b!800633))

(assert (= (and b!800633 res!545320) b!800637))

(declare-fun m!741841 () Bool)

(assert (=> b!800637 m!741841))

(assert (=> b!800637 m!741841))

(declare-fun m!741843 () Bool)

(assert (=> b!800637 m!741843))

(declare-fun m!741845 () Bool)

(assert (=> b!800640 m!741845))

(declare-fun m!741847 () Bool)

(assert (=> b!800643 m!741847))

(declare-fun m!741849 () Bool)

(assert (=> b!800643 m!741849))

(declare-fun m!741851 () Bool)

(assert (=> b!800643 m!741851))

(declare-fun m!741853 () Bool)

(assert (=> b!800643 m!741853))

(declare-fun m!741855 () Bool)

(assert (=> b!800639 m!741855))

(declare-fun m!741857 () Bool)

(assert (=> start!68762 m!741857))

(declare-fun m!741859 () Bool)

(assert (=> start!68762 m!741859))

(declare-fun m!741861 () Bool)

(assert (=> b!800635 m!741861))

(assert (=> b!800642 m!741841))

(assert (=> b!800642 m!741841))

(declare-fun m!741863 () Bool)

(assert (=> b!800642 m!741863))

(declare-fun m!741865 () Bool)

(assert (=> b!800634 m!741865))

(assert (=> b!800634 m!741841))

(assert (=> b!800634 m!741841))

(declare-fun m!741867 () Bool)

(assert (=> b!800634 m!741867))

(assert (=> b!800634 m!741841))

(declare-fun m!741869 () Bool)

(assert (=> b!800634 m!741869))

(declare-fun m!741871 () Bool)

(assert (=> b!800632 m!741871))

(declare-fun m!741873 () Bool)

(assert (=> b!800633 m!741873))

(declare-fun m!741875 () Bool)

(assert (=> b!800638 m!741875))

(declare-fun m!741877 () Bool)

(assert (=> b!800631 m!741877))

(declare-fun m!741879 () Bool)

(assert (=> b!800636 m!741879))

(declare-fun m!741881 () Bool)

(assert (=> b!800636 m!741881))

(push 1)

