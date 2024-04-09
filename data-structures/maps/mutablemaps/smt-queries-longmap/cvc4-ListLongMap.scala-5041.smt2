; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68780 () Bool)

(assert start!68780)

(declare-fun b!800982 () Bool)

(declare-fun res!545683 () Bool)

(declare-fun e!444056 () Bool)

(assert (=> b!800982 (=> (not res!545683) (not e!444056))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800982 (= res!545683 (validKeyInArray!0 k!2044))))

(declare-fun b!800983 () Bool)

(declare-fun res!545680 () Bool)

(declare-fun e!444053 () Bool)

(assert (=> b!800983 (=> (not res!545680) (not e!444053))))

(declare-datatypes ((array!43521 0))(
  ( (array!43522 (arr!20837 (Array (_ BitVec 32) (_ BitVec 64))) (size!21258 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43521)

(declare-datatypes ((List!14853 0))(
  ( (Nil!14850) (Cons!14849 (h!15978 (_ BitVec 64)) (t!21176 List!14853)) )
))
(declare-fun arrayNoDuplicates!0 (array!43521 (_ BitVec 32) List!14853) Bool)

(assert (=> b!800983 (= res!545680 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14850))))

(declare-fun b!800984 () Bool)

(declare-fun e!444058 () Bool)

(assert (=> b!800984 (= e!444053 e!444058)))

(declare-fun res!545682 () Bool)

(assert (=> b!800984 (=> (not res!545682) (not e!444058))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357987 () array!43521)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357992 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8435 0))(
  ( (MissingZero!8435 (index!36107 (_ BitVec 32))) (Found!8435 (index!36108 (_ BitVec 32))) (Intermediate!8435 (undefined!9247 Bool) (index!36109 (_ BitVec 32)) (x!66994 (_ BitVec 32))) (Undefined!8435) (MissingVacant!8435 (index!36110 (_ BitVec 32))) )
))
(declare-fun lt!357989 () SeekEntryResult!8435)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43521 (_ BitVec 32)) SeekEntryResult!8435)

(assert (=> b!800984 (= res!545682 (= lt!357989 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357992 lt!357987 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43521 (_ BitVec 32)) SeekEntryResult!8435)

(assert (=> b!800984 (= lt!357989 (seekEntryOrOpen!0 lt!357992 lt!357987 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800984 (= lt!357992 (select (store (arr!20837 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800984 (= lt!357987 (array!43522 (store (arr!20837 a!3170) i!1163 k!2044) (size!21258 a!3170)))))

(declare-fun b!800985 () Bool)

(assert (=> b!800985 (= e!444056 e!444053)))

(declare-fun res!545671 () Bool)

(assert (=> b!800985 (=> (not res!545671) (not e!444053))))

(declare-fun lt!357993 () SeekEntryResult!8435)

(assert (=> b!800985 (= res!545671 (or (= lt!357993 (MissingZero!8435 i!1163)) (= lt!357993 (MissingVacant!8435 i!1163))))))

(assert (=> b!800985 (= lt!357993 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800986 () Bool)

(declare-fun res!545672 () Bool)

(assert (=> b!800986 (=> (not res!545672) (not e!444053))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800986 (= res!545672 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21258 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20837 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21258 a!3170)) (= (select (arr!20837 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!545673 () Bool)

(assert (=> start!68780 (=> (not res!545673) (not e!444056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68780 (= res!545673 (validMask!0 mask!3266))))

(assert (=> start!68780 e!444056))

(assert (=> start!68780 true))

(declare-fun array_inv!16611 (array!43521) Bool)

(assert (=> start!68780 (array_inv!16611 a!3170)))

(declare-fun b!800987 () Bool)

(declare-fun e!444054 () Bool)

(assert (=> b!800987 (= e!444054 false)))

(declare-fun lt!357988 () (_ BitVec 32))

(declare-fun lt!357991 () SeekEntryResult!8435)

(assert (=> b!800987 (= lt!357991 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357988 vacantBefore!23 (select (arr!20837 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800988 () Bool)

(declare-fun res!545679 () Bool)

(assert (=> b!800988 (=> (not res!545679) (not e!444056))))

(declare-fun arrayContainsKey!0 (array!43521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800988 (= res!545679 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800989 () Bool)

(declare-fun res!545675 () Bool)

(assert (=> b!800989 (=> (not res!545675) (not e!444053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43521 (_ BitVec 32)) Bool)

(assert (=> b!800989 (= res!545675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800990 () Bool)

(declare-fun e!444055 () Bool)

(assert (=> b!800990 (= e!444058 e!444055)))

(declare-fun res!545676 () Bool)

(assert (=> b!800990 (=> (not res!545676) (not e!444055))))

(declare-fun lt!357990 () SeekEntryResult!8435)

(declare-fun lt!357994 () SeekEntryResult!8435)

(assert (=> b!800990 (= res!545676 (and (= lt!357994 lt!357990) (= lt!357990 (Found!8435 j!153)) (not (= (select (arr!20837 a!3170) index!1236) (select (arr!20837 a!3170) j!153)))))))

(assert (=> b!800990 (= lt!357990 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20837 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800990 (= lt!357994 (seekEntryOrOpen!0 (select (arr!20837 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800991 () Bool)

(declare-fun res!545674 () Bool)

(assert (=> b!800991 (=> (not res!545674) (not e!444054))))

(assert (=> b!800991 (= res!545674 (= lt!357989 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357988 vacantAfter!23 lt!357992 lt!357987 mask!3266)))))

(declare-fun b!800992 () Bool)

(declare-fun res!545678 () Bool)

(assert (=> b!800992 (=> (not res!545678) (not e!444056))))

(assert (=> b!800992 (= res!545678 (validKeyInArray!0 (select (arr!20837 a!3170) j!153)))))

(declare-fun b!800993 () Bool)

(declare-fun res!545677 () Bool)

(assert (=> b!800993 (=> (not res!545677) (not e!444056))))

(assert (=> b!800993 (= res!545677 (and (= (size!21258 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21258 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21258 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800994 () Bool)

(assert (=> b!800994 (= e!444055 e!444054)))

(declare-fun res!545681 () Bool)

(assert (=> b!800994 (=> (not res!545681) (not e!444054))))

(assert (=> b!800994 (= res!545681 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357988 #b00000000000000000000000000000000) (bvslt lt!357988 (size!21258 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800994 (= lt!357988 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68780 res!545673) b!800993))

(assert (= (and b!800993 res!545677) b!800992))

(assert (= (and b!800992 res!545678) b!800982))

(assert (= (and b!800982 res!545683) b!800988))

(assert (= (and b!800988 res!545679) b!800985))

(assert (= (and b!800985 res!545671) b!800989))

(assert (= (and b!800989 res!545675) b!800983))

(assert (= (and b!800983 res!545680) b!800986))

(assert (= (and b!800986 res!545672) b!800984))

(assert (= (and b!800984 res!545682) b!800990))

(assert (= (and b!800990 res!545676) b!800994))

(assert (= (and b!800994 res!545681) b!800991))

(assert (= (and b!800991 res!545674) b!800987))

(declare-fun m!742219 () Bool)

(assert (=> start!68780 m!742219))

(declare-fun m!742221 () Bool)

(assert (=> start!68780 m!742221))

(declare-fun m!742223 () Bool)

(assert (=> b!800989 m!742223))

(declare-fun m!742225 () Bool)

(assert (=> b!800994 m!742225))

(declare-fun m!742227 () Bool)

(assert (=> b!800982 m!742227))

(declare-fun m!742229 () Bool)

(assert (=> b!800988 m!742229))

(declare-fun m!742231 () Bool)

(assert (=> b!800992 m!742231))

(assert (=> b!800992 m!742231))

(declare-fun m!742233 () Bool)

(assert (=> b!800992 m!742233))

(declare-fun m!742235 () Bool)

(assert (=> b!800984 m!742235))

(declare-fun m!742237 () Bool)

(assert (=> b!800984 m!742237))

(declare-fun m!742239 () Bool)

(assert (=> b!800984 m!742239))

(declare-fun m!742241 () Bool)

(assert (=> b!800984 m!742241))

(declare-fun m!742243 () Bool)

(assert (=> b!800991 m!742243))

(declare-fun m!742245 () Bool)

(assert (=> b!800985 m!742245))

(declare-fun m!742247 () Bool)

(assert (=> b!800986 m!742247))

(declare-fun m!742249 () Bool)

(assert (=> b!800986 m!742249))

(assert (=> b!800987 m!742231))

(assert (=> b!800987 m!742231))

(declare-fun m!742251 () Bool)

(assert (=> b!800987 m!742251))

(declare-fun m!742253 () Bool)

(assert (=> b!800983 m!742253))

(declare-fun m!742255 () Bool)

(assert (=> b!800990 m!742255))

(assert (=> b!800990 m!742231))

(assert (=> b!800990 m!742231))

(declare-fun m!742257 () Bool)

(assert (=> b!800990 m!742257))

(assert (=> b!800990 m!742231))

(declare-fun m!742259 () Bool)

(assert (=> b!800990 m!742259))

(push 1)

