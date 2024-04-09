; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68724 () Bool)

(assert start!68724)

(declare-fun b!799890 () Bool)

(declare-fun res!544591 () Bool)

(declare-fun e!443550 () Bool)

(assert (=> b!799890 (=> (not res!544591) (not e!443550))))

(declare-datatypes ((array!43465 0))(
  ( (array!43466 (arr!20809 (Array (_ BitVec 32) (_ BitVec 64))) (size!21230 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43465)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799890 (= res!544591 (validKeyInArray!0 (select (arr!20809 a!3170) j!153)))))

(declare-fun b!799891 () Bool)

(declare-fun e!443553 () Bool)

(declare-fun e!443549 () Bool)

(assert (=> b!799891 (= e!443553 e!443549)))

(declare-fun res!544587 () Bool)

(assert (=> b!799891 (=> (not res!544587) (not e!443549))))

(declare-fun lt!357322 () array!43465)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357318 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8407 0))(
  ( (MissingZero!8407 (index!35995 (_ BitVec 32))) (Found!8407 (index!35996 (_ BitVec 32))) (Intermediate!8407 (undefined!9219 Bool) (index!35997 (_ BitVec 32)) (x!66894 (_ BitVec 32))) (Undefined!8407) (MissingVacant!8407 (index!35998 (_ BitVec 32))) )
))
(declare-fun lt!357320 () SeekEntryResult!8407)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43465 (_ BitVec 32)) SeekEntryResult!8407)

(assert (=> b!799891 (= res!544587 (= lt!357320 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357318 lt!357322 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43465 (_ BitVec 32)) SeekEntryResult!8407)

(assert (=> b!799891 (= lt!357320 (seekEntryOrOpen!0 lt!357318 lt!357322 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799891 (= lt!357318 (select (store (arr!20809 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799891 (= lt!357322 (array!43466 (store (arr!20809 a!3170) i!1163 k0!2044) (size!21230 a!3170)))))

(declare-fun b!799892 () Bool)

(assert (=> b!799892 (= e!443550 e!443553)))

(declare-fun res!544589 () Bool)

(assert (=> b!799892 (=> (not res!544589) (not e!443553))))

(declare-fun lt!357319 () SeekEntryResult!8407)

(assert (=> b!799892 (= res!544589 (or (= lt!357319 (MissingZero!8407 i!1163)) (= lt!357319 (MissingVacant!8407 i!1163))))))

(assert (=> b!799892 (= lt!357319 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799893 () Bool)

(declare-fun res!544584 () Bool)

(assert (=> b!799893 (=> (not res!544584) (not e!443550))))

(declare-fun arrayContainsKey!0 (array!43465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799893 (= res!544584 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799894 () Bool)

(declare-fun res!544585 () Bool)

(assert (=> b!799894 (=> (not res!544585) (not e!443553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43465 (_ BitVec 32)) Bool)

(assert (=> b!799894 (= res!544585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!544582 () Bool)

(assert (=> start!68724 (=> (not res!544582) (not e!443550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68724 (= res!544582 (validMask!0 mask!3266))))

(assert (=> start!68724 e!443550))

(assert (=> start!68724 true))

(declare-fun array_inv!16583 (array!43465) Bool)

(assert (=> start!68724 (array_inv!16583 a!3170)))

(declare-fun b!799895 () Bool)

(declare-fun e!443551 () Bool)

(assert (=> b!799895 (= e!443551 false)))

(declare-fun lt!357321 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!357316 () SeekEntryResult!8407)

(assert (=> b!799895 (= lt!357316 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357321 vacantBefore!23 (select (arr!20809 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799896 () Bool)

(declare-fun res!544588 () Bool)

(assert (=> b!799896 (=> (not res!544588) (not e!443553))))

(assert (=> b!799896 (= res!544588 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21230 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20809 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21230 a!3170)) (= (select (arr!20809 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799897 () Bool)

(declare-fun e!443554 () Bool)

(assert (=> b!799897 (= e!443549 e!443554)))

(declare-fun res!544583 () Bool)

(assert (=> b!799897 (=> (not res!544583) (not e!443554))))

(declare-fun lt!357315 () SeekEntryResult!8407)

(declare-fun lt!357317 () SeekEntryResult!8407)

(assert (=> b!799897 (= res!544583 (and (= lt!357317 lt!357315) (= lt!357315 (Found!8407 j!153)) (not (= (select (arr!20809 a!3170) index!1236) (select (arr!20809 a!3170) j!153)))))))

(assert (=> b!799897 (= lt!357315 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20809 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799897 (= lt!357317 (seekEntryOrOpen!0 (select (arr!20809 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799898 () Bool)

(declare-fun res!544586 () Bool)

(assert (=> b!799898 (=> (not res!544586) (not e!443551))))

(assert (=> b!799898 (= res!544586 (= lt!357320 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357321 vacantAfter!23 lt!357318 lt!357322 mask!3266)))))

(declare-fun b!799899 () Bool)

(declare-fun res!544579 () Bool)

(assert (=> b!799899 (=> (not res!544579) (not e!443553))))

(declare-datatypes ((List!14825 0))(
  ( (Nil!14822) (Cons!14821 (h!15950 (_ BitVec 64)) (t!21148 List!14825)) )
))
(declare-fun arrayNoDuplicates!0 (array!43465 (_ BitVec 32) List!14825) Bool)

(assert (=> b!799899 (= res!544579 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14822))))

(declare-fun b!799900 () Bool)

(assert (=> b!799900 (= e!443554 e!443551)))

(declare-fun res!544590 () Bool)

(assert (=> b!799900 (=> (not res!544590) (not e!443551))))

(assert (=> b!799900 (= res!544590 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357321 #b00000000000000000000000000000000) (bvslt lt!357321 (size!21230 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799900 (= lt!357321 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799901 () Bool)

(declare-fun res!544581 () Bool)

(assert (=> b!799901 (=> (not res!544581) (not e!443550))))

(assert (=> b!799901 (= res!544581 (and (= (size!21230 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21230 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21230 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799902 () Bool)

(declare-fun res!544580 () Bool)

(assert (=> b!799902 (=> (not res!544580) (not e!443550))))

(assert (=> b!799902 (= res!544580 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68724 res!544582) b!799901))

(assert (= (and b!799901 res!544581) b!799890))

(assert (= (and b!799890 res!544591) b!799902))

(assert (= (and b!799902 res!544580) b!799893))

(assert (= (and b!799893 res!544584) b!799892))

(assert (= (and b!799892 res!544589) b!799894))

(assert (= (and b!799894 res!544585) b!799899))

(assert (= (and b!799899 res!544579) b!799896))

(assert (= (and b!799896 res!544588) b!799891))

(assert (= (and b!799891 res!544587) b!799897))

(assert (= (and b!799897 res!544583) b!799900))

(assert (= (and b!799900 res!544590) b!799898))

(assert (= (and b!799898 res!544586) b!799895))

(declare-fun m!741043 () Bool)

(assert (=> b!799900 m!741043))

(declare-fun m!741045 () Bool)

(assert (=> b!799898 m!741045))

(declare-fun m!741047 () Bool)

(assert (=> b!799895 m!741047))

(assert (=> b!799895 m!741047))

(declare-fun m!741049 () Bool)

(assert (=> b!799895 m!741049))

(declare-fun m!741051 () Bool)

(assert (=> b!799893 m!741051))

(declare-fun m!741053 () Bool)

(assert (=> b!799899 m!741053))

(declare-fun m!741055 () Bool)

(assert (=> start!68724 m!741055))

(declare-fun m!741057 () Bool)

(assert (=> start!68724 m!741057))

(declare-fun m!741059 () Bool)

(assert (=> b!799892 m!741059))

(declare-fun m!741061 () Bool)

(assert (=> b!799896 m!741061))

(declare-fun m!741063 () Bool)

(assert (=> b!799896 m!741063))

(declare-fun m!741065 () Bool)

(assert (=> b!799897 m!741065))

(assert (=> b!799897 m!741047))

(assert (=> b!799897 m!741047))

(declare-fun m!741067 () Bool)

(assert (=> b!799897 m!741067))

(assert (=> b!799897 m!741047))

(declare-fun m!741069 () Bool)

(assert (=> b!799897 m!741069))

(declare-fun m!741071 () Bool)

(assert (=> b!799894 m!741071))

(assert (=> b!799890 m!741047))

(assert (=> b!799890 m!741047))

(declare-fun m!741073 () Bool)

(assert (=> b!799890 m!741073))

(declare-fun m!741075 () Bool)

(assert (=> b!799891 m!741075))

(declare-fun m!741077 () Bool)

(assert (=> b!799891 m!741077))

(declare-fun m!741079 () Bool)

(assert (=> b!799891 m!741079))

(declare-fun m!741081 () Bool)

(assert (=> b!799891 m!741081))

(declare-fun m!741083 () Bool)

(assert (=> b!799902 m!741083))

(check-sat (not b!799892) (not b!799895) (not b!799902) (not b!799897) (not b!799893) (not b!799899) (not b!799900) (not b!799890) (not b!799898) (not start!68724) (not b!799894) (not b!799891))
(check-sat)
