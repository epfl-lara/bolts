; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68772 () Bool)

(assert start!68772)

(declare-fun b!800826 () Bool)

(declare-fun res!545522 () Bool)

(declare-fun e!443985 () Bool)

(assert (=> b!800826 (=> (not res!545522) (not e!443985))))

(declare-datatypes ((array!43513 0))(
  ( (array!43514 (arr!20833 (Array (_ BitVec 32) (_ BitVec 64))) (size!21254 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43513)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800826 (= res!545522 (and (= (size!21254 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21254 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21254 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800827 () Bool)

(declare-fun res!545526 () Bool)

(assert (=> b!800827 (=> (not res!545526) (not e!443985))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800827 (= res!545526 (validKeyInArray!0 k0!2044))))

(declare-fun b!800828 () Bool)

(declare-fun res!545523 () Bool)

(assert (=> b!800828 (=> (not res!545523) (not e!443985))))

(assert (=> b!800828 (= res!545523 (validKeyInArray!0 (select (arr!20833 a!3170) j!153)))))

(declare-fun b!800829 () Bool)

(declare-fun res!545527 () Bool)

(declare-fun e!443982 () Bool)

(assert (=> b!800829 (=> (not res!545527) (not e!443982))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800829 (= res!545527 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21254 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20833 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21254 a!3170)) (= (select (arr!20833 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800830 () Bool)

(declare-fun res!545519 () Bool)

(declare-fun e!443984 () Bool)

(assert (=> b!800830 (=> (not res!545519) (not e!443984))))

(declare-fun lt!357891 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8431 0))(
  ( (MissingZero!8431 (index!36091 (_ BitVec 32))) (Found!8431 (index!36092 (_ BitVec 32))) (Intermediate!8431 (undefined!9243 Bool) (index!36093 (_ BitVec 32)) (x!66982 (_ BitVec 32))) (Undefined!8431) (MissingVacant!8431 (index!36094 (_ BitVec 32))) )
))
(declare-fun lt!357893 () SeekEntryResult!8431)

(declare-fun lt!357898 () (_ BitVec 64))

(declare-fun lt!357892 () array!43513)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43513 (_ BitVec 32)) SeekEntryResult!8431)

(assert (=> b!800830 (= res!545519 (= lt!357893 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357891 vacantAfter!23 lt!357898 lt!357892 mask!3266)))))

(declare-fun b!800831 () Bool)

(assert (=> b!800831 (= e!443984 false)))

(declare-fun lt!357897 () SeekEntryResult!8431)

(assert (=> b!800831 (= lt!357897 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357891 vacantBefore!23 (select (arr!20833 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800832 () Bool)

(assert (=> b!800832 (= e!443985 e!443982)))

(declare-fun res!545516 () Bool)

(assert (=> b!800832 (=> (not res!545516) (not e!443982))))

(declare-fun lt!357895 () SeekEntryResult!8431)

(assert (=> b!800832 (= res!545516 (or (= lt!357895 (MissingZero!8431 i!1163)) (= lt!357895 (MissingVacant!8431 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43513 (_ BitVec 32)) SeekEntryResult!8431)

(assert (=> b!800832 (= lt!357895 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!545517 () Bool)

(assert (=> start!68772 (=> (not res!545517) (not e!443985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68772 (= res!545517 (validMask!0 mask!3266))))

(assert (=> start!68772 e!443985))

(assert (=> start!68772 true))

(declare-fun array_inv!16607 (array!43513) Bool)

(assert (=> start!68772 (array_inv!16607 a!3170)))

(declare-fun b!800833 () Bool)

(declare-fun e!443986 () Bool)

(declare-fun e!443981 () Bool)

(assert (=> b!800833 (= e!443986 e!443981)))

(declare-fun res!545525 () Bool)

(assert (=> b!800833 (=> (not res!545525) (not e!443981))))

(declare-fun lt!357894 () SeekEntryResult!8431)

(declare-fun lt!357896 () SeekEntryResult!8431)

(assert (=> b!800833 (= res!545525 (and (= lt!357896 lt!357894) (= lt!357894 (Found!8431 j!153)) (not (= (select (arr!20833 a!3170) index!1236) (select (arr!20833 a!3170) j!153)))))))

(assert (=> b!800833 (= lt!357894 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20833 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800833 (= lt!357896 (seekEntryOrOpen!0 (select (arr!20833 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800834 () Bool)

(declare-fun res!545520 () Bool)

(assert (=> b!800834 (=> (not res!545520) (not e!443982))))

(declare-datatypes ((List!14849 0))(
  ( (Nil!14846) (Cons!14845 (h!15974 (_ BitVec 64)) (t!21172 List!14849)) )
))
(declare-fun arrayNoDuplicates!0 (array!43513 (_ BitVec 32) List!14849) Bool)

(assert (=> b!800834 (= res!545520 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14846))))

(declare-fun b!800835 () Bool)

(declare-fun res!545524 () Bool)

(assert (=> b!800835 (=> (not res!545524) (not e!443982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43513 (_ BitVec 32)) Bool)

(assert (=> b!800835 (= res!545524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800836 () Bool)

(assert (=> b!800836 (= e!443981 e!443984)))

(declare-fun res!545521 () Bool)

(assert (=> b!800836 (=> (not res!545521) (not e!443984))))

(assert (=> b!800836 (= res!545521 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357891 #b00000000000000000000000000000000) (bvslt lt!357891 (size!21254 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800836 (= lt!357891 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800837 () Bool)

(assert (=> b!800837 (= e!443982 e!443986)))

(declare-fun res!545518 () Bool)

(assert (=> b!800837 (=> (not res!545518) (not e!443986))))

(assert (=> b!800837 (= res!545518 (= lt!357893 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357898 lt!357892 mask!3266)))))

(assert (=> b!800837 (= lt!357893 (seekEntryOrOpen!0 lt!357898 lt!357892 mask!3266))))

(assert (=> b!800837 (= lt!357898 (select (store (arr!20833 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800837 (= lt!357892 (array!43514 (store (arr!20833 a!3170) i!1163 k0!2044) (size!21254 a!3170)))))

(declare-fun b!800838 () Bool)

(declare-fun res!545515 () Bool)

(assert (=> b!800838 (=> (not res!545515) (not e!443985))))

(declare-fun arrayContainsKey!0 (array!43513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800838 (= res!545515 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68772 res!545517) b!800826))

(assert (= (and b!800826 res!545522) b!800828))

(assert (= (and b!800828 res!545523) b!800827))

(assert (= (and b!800827 res!545526) b!800838))

(assert (= (and b!800838 res!545515) b!800832))

(assert (= (and b!800832 res!545516) b!800835))

(assert (= (and b!800835 res!545524) b!800834))

(assert (= (and b!800834 res!545520) b!800829))

(assert (= (and b!800829 res!545527) b!800837))

(assert (= (and b!800837 res!545518) b!800833))

(assert (= (and b!800833 res!545525) b!800836))

(assert (= (and b!800836 res!545521) b!800830))

(assert (= (and b!800830 res!545519) b!800831))

(declare-fun m!742051 () Bool)

(assert (=> b!800828 m!742051))

(assert (=> b!800828 m!742051))

(declare-fun m!742053 () Bool)

(assert (=> b!800828 m!742053))

(declare-fun m!742055 () Bool)

(assert (=> b!800836 m!742055))

(declare-fun m!742057 () Bool)

(assert (=> b!800835 m!742057))

(declare-fun m!742059 () Bool)

(assert (=> b!800832 m!742059))

(declare-fun m!742061 () Bool)

(assert (=> b!800830 m!742061))

(declare-fun m!742063 () Bool)

(assert (=> b!800834 m!742063))

(declare-fun m!742065 () Bool)

(assert (=> b!800838 m!742065))

(declare-fun m!742067 () Bool)

(assert (=> b!800837 m!742067))

(declare-fun m!742069 () Bool)

(assert (=> b!800837 m!742069))

(declare-fun m!742071 () Bool)

(assert (=> b!800837 m!742071))

(declare-fun m!742073 () Bool)

(assert (=> b!800837 m!742073))

(declare-fun m!742075 () Bool)

(assert (=> b!800827 m!742075))

(declare-fun m!742077 () Bool)

(assert (=> start!68772 m!742077))

(declare-fun m!742079 () Bool)

(assert (=> start!68772 m!742079))

(declare-fun m!742081 () Bool)

(assert (=> b!800829 m!742081))

(declare-fun m!742083 () Bool)

(assert (=> b!800829 m!742083))

(declare-fun m!742085 () Bool)

(assert (=> b!800833 m!742085))

(assert (=> b!800833 m!742051))

(assert (=> b!800833 m!742051))

(declare-fun m!742087 () Bool)

(assert (=> b!800833 m!742087))

(assert (=> b!800833 m!742051))

(declare-fun m!742089 () Bool)

(assert (=> b!800833 m!742089))

(assert (=> b!800831 m!742051))

(assert (=> b!800831 m!742051))

(declare-fun m!742091 () Bool)

(assert (=> b!800831 m!742091))

(check-sat (not start!68772) (not b!800827) (not b!800835) (not b!800832) (not b!800837) (not b!800834) (not b!800831) (not b!800838) (not b!800828) (not b!800833) (not b!800836) (not b!800830))
(check-sat)
