; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69026 () Bool)

(assert start!69026)

(declare-fun b!804864 () Bool)

(declare-fun e!445819 () Bool)

(declare-fun e!445822 () Bool)

(assert (=> b!804864 (= e!445819 e!445822)))

(declare-fun res!549559 () Bool)

(assert (=> b!804864 (=> (not res!549559) (not e!445822))))

(declare-datatypes ((SeekEntryResult!8558 0))(
  ( (MissingZero!8558 (index!36599 (_ BitVec 32))) (Found!8558 (index!36600 (_ BitVec 32))) (Intermediate!8558 (undefined!9370 Bool) (index!36601 (_ BitVec 32)) (x!67445 (_ BitVec 32))) (Undefined!8558) (MissingVacant!8558 (index!36602 (_ BitVec 32))) )
))
(declare-fun lt!360369 () SeekEntryResult!8558)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804864 (= res!549559 (or (= lt!360369 (MissingZero!8558 i!1163)) (= lt!360369 (MissingVacant!8558 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43767 0))(
  ( (array!43768 (arr!20960 (Array (_ BitVec 32) (_ BitVec 64))) (size!21381 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43767)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43767 (_ BitVec 32)) SeekEntryResult!8558)

(assert (=> b!804864 (= lt!360369 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804866 () Bool)

(declare-fun res!549553 () Bool)

(assert (=> b!804866 (=> (not res!549553) (not e!445819))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804866 (= res!549553 (validKeyInArray!0 (select (arr!20960 a!3170) j!153)))))

(declare-fun b!804867 () Bool)

(declare-fun res!549556 () Bool)

(assert (=> b!804867 (=> (not res!549556) (not e!445822))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!804867 (= res!549556 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21381 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20960 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21381 a!3170)) (= (select (arr!20960 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804868 () Bool)

(declare-fun res!549557 () Bool)

(assert (=> b!804868 (=> (not res!549557) (not e!445819))))

(assert (=> b!804868 (= res!549557 (and (= (size!21381 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21381 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21381 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804869 () Bool)

(declare-fun res!549562 () Bool)

(assert (=> b!804869 (=> (not res!549562) (not e!445822))))

(declare-datatypes ((List!14976 0))(
  ( (Nil!14973) (Cons!14972 (h!16101 (_ BitVec 64)) (t!21299 List!14976)) )
))
(declare-fun arrayNoDuplicates!0 (array!43767 (_ BitVec 32) List!14976) Bool)

(assert (=> b!804869 (= res!549562 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14973))))

(declare-fun b!804870 () Bool)

(declare-fun res!549561 () Bool)

(assert (=> b!804870 (=> (not res!549561) (not e!445819))))

(declare-fun arrayContainsKey!0 (array!43767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804870 (= res!549561 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804871 () Bool)

(declare-fun res!549554 () Bool)

(assert (=> b!804871 (=> (not res!549554) (not e!445822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43767 (_ BitVec 32)) Bool)

(assert (=> b!804871 (= res!549554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804872 () Bool)

(declare-fun e!445821 () Bool)

(assert (=> b!804872 (= e!445822 e!445821)))

(declare-fun res!549560 () Bool)

(assert (=> b!804872 (=> (not res!549560) (not e!445821))))

(declare-fun lt!360370 () (_ BitVec 64))

(declare-fun lt!360366 () array!43767)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43767 (_ BitVec 32)) SeekEntryResult!8558)

(assert (=> b!804872 (= res!549560 (= (seekEntryOrOpen!0 lt!360370 lt!360366 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360370 lt!360366 mask!3266)))))

(assert (=> b!804872 (= lt!360370 (select (store (arr!20960 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804872 (= lt!360366 (array!43768 (store (arr!20960 a!3170) i!1163 k!2044) (size!21381 a!3170)))))

(declare-fun b!804873 () Bool)

(assert (=> b!804873 (= e!445821 false)))

(declare-fun lt!360367 () SeekEntryResult!8558)

(assert (=> b!804873 (= lt!360367 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20960 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360368 () SeekEntryResult!8558)

(assert (=> b!804873 (= lt!360368 (seekEntryOrOpen!0 (select (arr!20960 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!549555 () Bool)

(assert (=> start!69026 (=> (not res!549555) (not e!445819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69026 (= res!549555 (validMask!0 mask!3266))))

(assert (=> start!69026 e!445819))

(assert (=> start!69026 true))

(declare-fun array_inv!16734 (array!43767) Bool)

(assert (=> start!69026 (array_inv!16734 a!3170)))

(declare-fun b!804865 () Bool)

(declare-fun res!549558 () Bool)

(assert (=> b!804865 (=> (not res!549558) (not e!445819))))

(assert (=> b!804865 (= res!549558 (validKeyInArray!0 k!2044))))

(assert (= (and start!69026 res!549555) b!804868))

(assert (= (and b!804868 res!549557) b!804866))

(assert (= (and b!804866 res!549553) b!804865))

(assert (= (and b!804865 res!549558) b!804870))

(assert (= (and b!804870 res!549561) b!804864))

(assert (= (and b!804864 res!549559) b!804871))

(assert (= (and b!804871 res!549554) b!804869))

(assert (= (and b!804869 res!549562) b!804867))

(assert (= (and b!804867 res!549556) b!804872))

(assert (= (and b!804872 res!549560) b!804873))

(declare-fun m!746853 () Bool)

(assert (=> b!804873 m!746853))

(assert (=> b!804873 m!746853))

(declare-fun m!746855 () Bool)

(assert (=> b!804873 m!746855))

(assert (=> b!804873 m!746853))

(declare-fun m!746857 () Bool)

(assert (=> b!804873 m!746857))

(assert (=> b!804866 m!746853))

(assert (=> b!804866 m!746853))

(declare-fun m!746859 () Bool)

(assert (=> b!804866 m!746859))

(declare-fun m!746861 () Bool)

(assert (=> b!804871 m!746861))

(declare-fun m!746863 () Bool)

(assert (=> b!804869 m!746863))

(declare-fun m!746865 () Bool)

(assert (=> b!804867 m!746865))

(declare-fun m!746867 () Bool)

(assert (=> b!804867 m!746867))

(declare-fun m!746869 () Bool)

(assert (=> b!804864 m!746869))

(declare-fun m!746871 () Bool)

(assert (=> b!804865 m!746871))

(declare-fun m!746873 () Bool)

(assert (=> b!804870 m!746873))

(declare-fun m!746875 () Bool)

(assert (=> b!804872 m!746875))

(declare-fun m!746877 () Bool)

(assert (=> b!804872 m!746877))

(declare-fun m!746879 () Bool)

(assert (=> b!804872 m!746879))

(declare-fun m!746881 () Bool)

(assert (=> b!804872 m!746881))

(declare-fun m!746883 () Bool)

(assert (=> start!69026 m!746883))

(declare-fun m!746885 () Bool)

(assert (=> start!69026 m!746885))

(push 1)

(assert (not b!804872))

(assert (not b!804871))

