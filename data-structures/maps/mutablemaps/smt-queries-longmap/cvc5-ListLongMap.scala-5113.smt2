; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69412 () Bool)

(assert start!69412)

(declare-fun res!552789 () Bool)

(declare-fun e!447808 () Bool)

(assert (=> start!69412 (=> (not res!552789) (not e!447808))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69412 (= res!552789 (validMask!0 mask!3266))))

(assert (=> start!69412 e!447808))

(assert (=> start!69412 true))

(declare-datatypes ((array!43961 0))(
  ( (array!43962 (arr!21051 (Array (_ BitVec 32) (_ BitVec 64))) (size!21472 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43961)

(declare-fun array_inv!16825 (array!43961) Bool)

(assert (=> start!69412 (array_inv!16825 a!3170)))

(declare-fun b!808883 () Bool)

(declare-fun res!552781 () Bool)

(assert (=> b!808883 (=> (not res!552781) (not e!447808))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808883 (= res!552781 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808884 () Bool)

(declare-fun res!552785 () Bool)

(assert (=> b!808884 (=> (not res!552785) (not e!447808))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808884 (= res!552785 (validKeyInArray!0 (select (arr!21051 a!3170) j!153)))))

(declare-fun b!808885 () Bool)

(declare-fun res!552790 () Bool)

(declare-fun e!447806 () Bool)

(assert (=> b!808885 (=> (not res!552790) (not e!447806))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808885 (= res!552790 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21472 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21051 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21472 a!3170)) (= (select (arr!21051 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808886 () Bool)

(declare-fun e!447807 () Bool)

(assert (=> b!808886 (= e!447806 e!447807)))

(declare-fun res!552786 () Bool)

(assert (=> b!808886 (=> (not res!552786) (not e!447807))))

(declare-fun lt!362479 () array!43961)

(declare-fun lt!362480 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8649 0))(
  ( (MissingZero!8649 (index!36963 (_ BitVec 32))) (Found!8649 (index!36964 (_ BitVec 32))) (Intermediate!8649 (undefined!9461 Bool) (index!36965 (_ BitVec 32)) (x!67802 (_ BitVec 32))) (Undefined!8649) (MissingVacant!8649 (index!36966 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43961 (_ BitVec 32)) SeekEntryResult!8649)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43961 (_ BitVec 32)) SeekEntryResult!8649)

(assert (=> b!808886 (= res!552786 (= (seekEntryOrOpen!0 lt!362480 lt!362479 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362480 lt!362479 mask!3266)))))

(assert (=> b!808886 (= lt!362480 (select (store (arr!21051 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808886 (= lt!362479 (array!43962 (store (arr!21051 a!3170) i!1163 k!2044) (size!21472 a!3170)))))

(declare-fun b!808887 () Bool)

(declare-fun e!447804 () Bool)

(assert (=> b!808887 (= e!447807 e!447804)))

(declare-fun res!552788 () Bool)

(assert (=> b!808887 (=> (not res!552788) (not e!447804))))

(declare-fun lt!362477 () SeekEntryResult!8649)

(declare-fun lt!362478 () SeekEntryResult!8649)

(assert (=> b!808887 (= res!552788 (and (= lt!362478 lt!362477) (= lt!362477 (Found!8649 j!153)) (not (= (select (arr!21051 a!3170) index!1236) (select (arr!21051 a!3170) j!153)))))))

(assert (=> b!808887 (= lt!362477 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21051 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808887 (= lt!362478 (seekEntryOrOpen!0 (select (arr!21051 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808888 () Bool)

(assert (=> b!808888 (= e!447804 false)))

(declare-fun lt!362481 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808888 (= lt!362481 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808889 () Bool)

(declare-fun res!552780 () Bool)

(assert (=> b!808889 (=> (not res!552780) (not e!447808))))

(assert (=> b!808889 (= res!552780 (validKeyInArray!0 k!2044))))

(declare-fun b!808890 () Bool)

(assert (=> b!808890 (= e!447808 e!447806)))

(declare-fun res!552787 () Bool)

(assert (=> b!808890 (=> (not res!552787) (not e!447806))))

(declare-fun lt!362482 () SeekEntryResult!8649)

(assert (=> b!808890 (= res!552787 (or (= lt!362482 (MissingZero!8649 i!1163)) (= lt!362482 (MissingVacant!8649 i!1163))))))

(assert (=> b!808890 (= lt!362482 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808891 () Bool)

(declare-fun res!552782 () Bool)

(assert (=> b!808891 (=> (not res!552782) (not e!447806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43961 (_ BitVec 32)) Bool)

(assert (=> b!808891 (= res!552782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808892 () Bool)

(declare-fun res!552783 () Bool)

(assert (=> b!808892 (=> (not res!552783) (not e!447806))))

(declare-datatypes ((List!15067 0))(
  ( (Nil!15064) (Cons!15063 (h!16192 (_ BitVec 64)) (t!21390 List!15067)) )
))
(declare-fun arrayNoDuplicates!0 (array!43961 (_ BitVec 32) List!15067) Bool)

(assert (=> b!808892 (= res!552783 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15064))))

(declare-fun b!808893 () Bool)

(declare-fun res!552784 () Bool)

(assert (=> b!808893 (=> (not res!552784) (not e!447808))))

(assert (=> b!808893 (= res!552784 (and (= (size!21472 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21472 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21472 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69412 res!552789) b!808893))

(assert (= (and b!808893 res!552784) b!808884))

(assert (= (and b!808884 res!552785) b!808889))

(assert (= (and b!808889 res!552780) b!808883))

(assert (= (and b!808883 res!552781) b!808890))

(assert (= (and b!808890 res!552787) b!808891))

(assert (= (and b!808891 res!552782) b!808892))

(assert (= (and b!808892 res!552783) b!808885))

(assert (= (and b!808885 res!552790) b!808886))

(assert (= (and b!808886 res!552786) b!808887))

(assert (= (and b!808887 res!552788) b!808888))

(declare-fun m!751111 () Bool)

(assert (=> b!808883 m!751111))

(declare-fun m!751113 () Bool)

(assert (=> b!808889 m!751113))

(declare-fun m!751115 () Bool)

(assert (=> b!808888 m!751115))

(declare-fun m!751117 () Bool)

(assert (=> b!808884 m!751117))

(assert (=> b!808884 m!751117))

(declare-fun m!751119 () Bool)

(assert (=> b!808884 m!751119))

(declare-fun m!751121 () Bool)

(assert (=> b!808890 m!751121))

(declare-fun m!751123 () Bool)

(assert (=> b!808892 m!751123))

(declare-fun m!751125 () Bool)

(assert (=> b!808886 m!751125))

(declare-fun m!751127 () Bool)

(assert (=> b!808886 m!751127))

(declare-fun m!751129 () Bool)

(assert (=> b!808886 m!751129))

(declare-fun m!751131 () Bool)

(assert (=> b!808886 m!751131))

(declare-fun m!751133 () Bool)

(assert (=> start!69412 m!751133))

(declare-fun m!751135 () Bool)

(assert (=> start!69412 m!751135))

(declare-fun m!751137 () Bool)

(assert (=> b!808887 m!751137))

(assert (=> b!808887 m!751117))

(assert (=> b!808887 m!751117))

(declare-fun m!751139 () Bool)

(assert (=> b!808887 m!751139))

(assert (=> b!808887 m!751117))

(declare-fun m!751141 () Bool)

(assert (=> b!808887 m!751141))

(declare-fun m!751143 () Bool)

(assert (=> b!808885 m!751143))

(declare-fun m!751145 () Bool)

(assert (=> b!808885 m!751145))

(declare-fun m!751147 () Bool)

(assert (=> b!808891 m!751147))

(push 1)

