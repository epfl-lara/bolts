; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50638 () Bool)

(assert start!50638)

(declare-fun b!553019 () Bool)

(declare-fun res!345582 () Bool)

(declare-fun e!319039 () Bool)

(assert (=> b!553019 (=> (not res!345582) (not e!319039))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34817 0))(
  ( (array!34818 (arr!16714 (Array (_ BitVec 32) (_ BitVec 64))) (size!17078 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34817)

(assert (=> b!553019 (= res!345582 (and (= (size!17078 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17078 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17078 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553020 () Bool)

(declare-fun res!345589 () Bool)

(declare-fun e!319038 () Bool)

(assert (=> b!553020 (=> (not res!345589) (not e!319038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34817 (_ BitVec 32)) Bool)

(assert (=> b!553020 (= res!345589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345590 () Bool)

(assert (=> start!50638 (=> (not res!345590) (not e!319039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50638 (= res!345590 (validMask!0 mask!3119))))

(assert (=> start!50638 e!319039))

(assert (=> start!50638 true))

(declare-fun array_inv!12488 (array!34817) Bool)

(assert (=> start!50638 (array_inv!12488 a!3118)))

(declare-fun b!553021 () Bool)

(assert (=> b!553021 (= e!319039 e!319038)))

(declare-fun res!345584 () Bool)

(assert (=> b!553021 (=> (not res!345584) (not e!319038))))

(declare-datatypes ((SeekEntryResult!5170 0))(
  ( (MissingZero!5170 (index!22907 (_ BitVec 32))) (Found!5170 (index!22908 (_ BitVec 32))) (Intermediate!5170 (undefined!5982 Bool) (index!22909 (_ BitVec 32)) (x!51863 (_ BitVec 32))) (Undefined!5170) (MissingVacant!5170 (index!22910 (_ BitVec 32))) )
))
(declare-fun lt!251365 () SeekEntryResult!5170)

(assert (=> b!553021 (= res!345584 (or (= lt!251365 (MissingZero!5170 i!1132)) (= lt!251365 (MissingVacant!5170 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34817 (_ BitVec 32)) SeekEntryResult!5170)

(assert (=> b!553021 (= lt!251365 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553022 () Bool)

(declare-fun res!345585 () Bool)

(assert (=> b!553022 (=> (not res!345585) (not e!319039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553022 (= res!345585 (validKeyInArray!0 k0!1914))))

(declare-fun b!553023 () Bool)

(declare-fun e!319040 () Bool)

(declare-fun lt!251367 () SeekEntryResult!5170)

(get-info :version)

(assert (=> b!553023 (= e!319040 (not (or (not ((_ is Intermediate!5170) lt!251367)) (not (undefined!5982 lt!251367)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!319042 () Bool)

(assert (=> b!553023 e!319042))

(declare-fun res!345581 () Bool)

(assert (=> b!553023 (=> (not res!345581) (not e!319042))))

(assert (=> b!553023 (= res!345581 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17114 0))(
  ( (Unit!17115) )
))
(declare-fun lt!251369 () Unit!17114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17114)

(assert (=> b!553023 (= lt!251369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553024 () Bool)

(declare-fun res!345583 () Bool)

(assert (=> b!553024 (=> (not res!345583) (not e!319039))))

(declare-fun arrayContainsKey!0 (array!34817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553024 (= res!345583 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553025 () Bool)

(declare-fun res!345586 () Bool)

(assert (=> b!553025 (=> (not res!345586) (not e!319039))))

(assert (=> b!553025 (= res!345586 (validKeyInArray!0 (select (arr!16714 a!3118) j!142)))))

(declare-fun b!553026 () Bool)

(declare-fun res!345588 () Bool)

(assert (=> b!553026 (=> (not res!345588) (not e!319038))))

(declare-datatypes ((List!10847 0))(
  ( (Nil!10844) (Cons!10843 (h!11828 (_ BitVec 64)) (t!17083 List!10847)) )
))
(declare-fun arrayNoDuplicates!0 (array!34817 (_ BitVec 32) List!10847) Bool)

(assert (=> b!553026 (= res!345588 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10844))))

(declare-fun b!553027 () Bool)

(assert (=> b!553027 (= e!319042 (= (seekEntryOrOpen!0 (select (arr!16714 a!3118) j!142) a!3118 mask!3119) (Found!5170 j!142)))))

(declare-fun b!553028 () Bool)

(assert (=> b!553028 (= e!319038 e!319040)))

(declare-fun res!345587 () Bool)

(assert (=> b!553028 (=> (not res!345587) (not e!319040))))

(declare-fun lt!251368 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34817 (_ BitVec 32)) SeekEntryResult!5170)

(assert (=> b!553028 (= res!345587 (= lt!251367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251368 (select (store (arr!16714 a!3118) i!1132 k0!1914) j!142) (array!34818 (store (arr!16714 a!3118) i!1132 k0!1914) (size!17078 a!3118)) mask!3119)))))

(declare-fun lt!251366 () (_ BitVec 32))

(assert (=> b!553028 (= lt!251367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251366 (select (arr!16714 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553028 (= lt!251368 (toIndex!0 (select (store (arr!16714 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!553028 (= lt!251366 (toIndex!0 (select (arr!16714 a!3118) j!142) mask!3119))))

(assert (= (and start!50638 res!345590) b!553019))

(assert (= (and b!553019 res!345582) b!553025))

(assert (= (and b!553025 res!345586) b!553022))

(assert (= (and b!553022 res!345585) b!553024))

(assert (= (and b!553024 res!345583) b!553021))

(assert (= (and b!553021 res!345584) b!553020))

(assert (= (and b!553020 res!345589) b!553026))

(assert (= (and b!553026 res!345588) b!553028))

(assert (= (and b!553028 res!345587) b!553023))

(assert (= (and b!553023 res!345581) b!553027))

(declare-fun m!530095 () Bool)

(assert (=> b!553021 m!530095))

(declare-fun m!530097 () Bool)

(assert (=> b!553024 m!530097))

(declare-fun m!530099 () Bool)

(assert (=> b!553022 m!530099))

(declare-fun m!530101 () Bool)

(assert (=> start!50638 m!530101))

(declare-fun m!530103 () Bool)

(assert (=> start!50638 m!530103))

(declare-fun m!530105 () Bool)

(assert (=> b!553027 m!530105))

(assert (=> b!553027 m!530105))

(declare-fun m!530107 () Bool)

(assert (=> b!553027 m!530107))

(declare-fun m!530109 () Bool)

(assert (=> b!553020 m!530109))

(declare-fun m!530111 () Bool)

(assert (=> b!553023 m!530111))

(declare-fun m!530113 () Bool)

(assert (=> b!553023 m!530113))

(assert (=> b!553025 m!530105))

(assert (=> b!553025 m!530105))

(declare-fun m!530115 () Bool)

(assert (=> b!553025 m!530115))

(declare-fun m!530117 () Bool)

(assert (=> b!553026 m!530117))

(assert (=> b!553028 m!530105))

(declare-fun m!530119 () Bool)

(assert (=> b!553028 m!530119))

(declare-fun m!530121 () Bool)

(assert (=> b!553028 m!530121))

(declare-fun m!530123 () Bool)

(assert (=> b!553028 m!530123))

(assert (=> b!553028 m!530105))

(assert (=> b!553028 m!530121))

(assert (=> b!553028 m!530105))

(declare-fun m!530125 () Bool)

(assert (=> b!553028 m!530125))

(declare-fun m!530127 () Bool)

(assert (=> b!553028 m!530127))

(assert (=> b!553028 m!530121))

(declare-fun m!530129 () Bool)

(assert (=> b!553028 m!530129))

(check-sat (not b!553026) (not start!50638) (not b!553024) (not b!553023) (not b!553027) (not b!553022) (not b!553020) (not b!553028) (not b!553021) (not b!553025))
(check-sat)
