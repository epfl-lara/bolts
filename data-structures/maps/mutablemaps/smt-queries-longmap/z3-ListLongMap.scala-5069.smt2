; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68946 () Bool)

(assert start!68946)

(declare-fun b!803885 () Bool)

(declare-fun e!445428 () Bool)

(declare-fun e!445425 () Bool)

(assert (=> b!803885 (= e!445428 e!445425)))

(declare-fun res!548579 () Bool)

(assert (=> b!803885 (=> (not res!548579) (not e!445425))))

(declare-datatypes ((SeekEntryResult!8518 0))(
  ( (MissingZero!8518 (index!36439 (_ BitVec 32))) (Found!8518 (index!36440 (_ BitVec 32))) (Intermediate!8518 (undefined!9330 Bool) (index!36441 (_ BitVec 32)) (x!67301 (_ BitVec 32))) (Undefined!8518) (MissingVacant!8518 (index!36442 (_ BitVec 32))) )
))
(declare-fun lt!359989 () SeekEntryResult!8518)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803885 (= res!548579 (or (= lt!359989 (MissingZero!8518 i!1163)) (= lt!359989 (MissingVacant!8518 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43687 0))(
  ( (array!43688 (arr!20920 (Array (_ BitVec 32) (_ BitVec 64))) (size!21341 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43687)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43687 (_ BitVec 32)) SeekEntryResult!8518)

(assert (=> b!803885 (= lt!359989 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803886 () Bool)

(declare-fun e!445429 () Bool)

(assert (=> b!803886 (= e!445425 e!445429)))

(declare-fun res!548576 () Bool)

(assert (=> b!803886 (=> (not res!548576) (not e!445429))))

(declare-fun lt!359986 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!359985 () array!43687)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43687 (_ BitVec 32)) SeekEntryResult!8518)

(assert (=> b!803886 (= res!548576 (= (seekEntryOrOpen!0 lt!359986 lt!359985 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359986 lt!359985 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803886 (= lt!359986 (select (store (arr!20920 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803886 (= lt!359985 (array!43688 (store (arr!20920 a!3170) i!1163 k0!2044) (size!21341 a!3170)))))

(declare-fun b!803887 () Bool)

(declare-fun res!548582 () Bool)

(assert (=> b!803887 (=> (not res!548582) (not e!445428))))

(assert (=> b!803887 (= res!548582 (and (= (size!21341 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21341 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21341 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803888 () Bool)

(declare-fun e!445427 () Bool)

(assert (=> b!803888 (= e!445427 (not true))))

(declare-fun lt!359988 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803888 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359988 vacantAfter!23 lt!359986 lt!359985 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359988 vacantBefore!23 (select (arr!20920 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27578 0))(
  ( (Unit!27579) )
))
(declare-fun lt!359987 () Unit!27578)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43687 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27578)

(assert (=> b!803888 (= lt!359987 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359988 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803888 (= lt!359988 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803889 () Bool)

(declare-fun res!548584 () Bool)

(assert (=> b!803889 (=> (not res!548584) (not e!445425))))

(assert (=> b!803889 (= res!548584 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21341 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20920 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21341 a!3170)) (= (select (arr!20920 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803890 () Bool)

(declare-fun res!548580 () Bool)

(assert (=> b!803890 (=> (not res!548580) (not e!445425))))

(declare-datatypes ((List!14936 0))(
  ( (Nil!14933) (Cons!14932 (h!16061 (_ BitVec 64)) (t!21259 List!14936)) )
))
(declare-fun arrayNoDuplicates!0 (array!43687 (_ BitVec 32) List!14936) Bool)

(assert (=> b!803890 (= res!548580 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14933))))

(declare-fun b!803891 () Bool)

(assert (=> b!803891 (= e!445429 e!445427)))

(declare-fun res!548578 () Bool)

(assert (=> b!803891 (=> (not res!548578) (not e!445427))))

(declare-fun lt!359983 () SeekEntryResult!8518)

(declare-fun lt!359984 () SeekEntryResult!8518)

(assert (=> b!803891 (= res!548578 (and (= lt!359983 lt!359984) (= lt!359984 (Found!8518 j!153)) (not (= (select (arr!20920 a!3170) index!1236) (select (arr!20920 a!3170) j!153)))))))

(assert (=> b!803891 (= lt!359984 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20920 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803891 (= lt!359983 (seekEntryOrOpen!0 (select (arr!20920 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803892 () Bool)

(declare-fun res!548574 () Bool)

(assert (=> b!803892 (=> (not res!548574) (not e!445428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803892 (= res!548574 (validKeyInArray!0 (select (arr!20920 a!3170) j!153)))))

(declare-fun res!548577 () Bool)

(assert (=> start!68946 (=> (not res!548577) (not e!445428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68946 (= res!548577 (validMask!0 mask!3266))))

(assert (=> start!68946 e!445428))

(assert (=> start!68946 true))

(declare-fun array_inv!16694 (array!43687) Bool)

(assert (=> start!68946 (array_inv!16694 a!3170)))

(declare-fun b!803893 () Bool)

(declare-fun res!548581 () Bool)

(assert (=> b!803893 (=> (not res!548581) (not e!445425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43687 (_ BitVec 32)) Bool)

(assert (=> b!803893 (= res!548581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803894 () Bool)

(declare-fun res!548583 () Bool)

(assert (=> b!803894 (=> (not res!548583) (not e!445428))))

(declare-fun arrayContainsKey!0 (array!43687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803894 (= res!548583 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803895 () Bool)

(declare-fun res!548575 () Bool)

(assert (=> b!803895 (=> (not res!548575) (not e!445428))))

(assert (=> b!803895 (= res!548575 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68946 res!548577) b!803887))

(assert (= (and b!803887 res!548582) b!803892))

(assert (= (and b!803892 res!548574) b!803895))

(assert (= (and b!803895 res!548575) b!803894))

(assert (= (and b!803894 res!548583) b!803885))

(assert (= (and b!803885 res!548579) b!803893))

(assert (= (and b!803893 res!548581) b!803890))

(assert (= (and b!803890 res!548580) b!803889))

(assert (= (and b!803889 res!548584) b!803886))

(assert (= (and b!803886 res!548576) b!803891))

(assert (= (and b!803891 res!548578) b!803888))

(declare-fun m!745881 () Bool)

(assert (=> b!803893 m!745881))

(declare-fun m!745883 () Bool)

(assert (=> b!803885 m!745883))

(declare-fun m!745885 () Bool)

(assert (=> b!803889 m!745885))

(declare-fun m!745887 () Bool)

(assert (=> b!803889 m!745887))

(declare-fun m!745889 () Bool)

(assert (=> b!803891 m!745889))

(declare-fun m!745891 () Bool)

(assert (=> b!803891 m!745891))

(assert (=> b!803891 m!745891))

(declare-fun m!745893 () Bool)

(assert (=> b!803891 m!745893))

(assert (=> b!803891 m!745891))

(declare-fun m!745895 () Bool)

(assert (=> b!803891 m!745895))

(declare-fun m!745897 () Bool)

(assert (=> b!803886 m!745897))

(declare-fun m!745899 () Bool)

(assert (=> b!803886 m!745899))

(declare-fun m!745901 () Bool)

(assert (=> b!803886 m!745901))

(declare-fun m!745903 () Bool)

(assert (=> b!803886 m!745903))

(declare-fun m!745905 () Bool)

(assert (=> start!68946 m!745905))

(declare-fun m!745907 () Bool)

(assert (=> start!68946 m!745907))

(assert (=> b!803888 m!745891))

(declare-fun m!745909 () Bool)

(assert (=> b!803888 m!745909))

(declare-fun m!745911 () Bool)

(assert (=> b!803888 m!745911))

(declare-fun m!745913 () Bool)

(assert (=> b!803888 m!745913))

(assert (=> b!803888 m!745891))

(declare-fun m!745915 () Bool)

(assert (=> b!803888 m!745915))

(declare-fun m!745917 () Bool)

(assert (=> b!803894 m!745917))

(declare-fun m!745919 () Bool)

(assert (=> b!803890 m!745919))

(assert (=> b!803892 m!745891))

(assert (=> b!803892 m!745891))

(declare-fun m!745921 () Bool)

(assert (=> b!803892 m!745921))

(declare-fun m!745923 () Bool)

(assert (=> b!803895 m!745923))

(check-sat (not start!68946) (not b!803895) (not b!803886) (not b!803894) (not b!803891) (not b!803888) (not b!803890) (not b!803892) (not b!803893) (not b!803885))
(check-sat)
