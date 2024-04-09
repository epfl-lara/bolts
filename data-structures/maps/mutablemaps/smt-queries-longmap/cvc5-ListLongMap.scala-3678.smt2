; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50702 () Bool)

(assert start!50702)

(declare-fun b!553997 () Bool)

(declare-fun res!346566 () Bool)

(declare-fun e!319481 () Bool)

(assert (=> b!553997 (=> (not res!346566) (not e!319481))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34881 0))(
  ( (array!34882 (arr!16746 (Array (_ BitVec 32) (_ BitVec 64))) (size!17110 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34881)

(declare-datatypes ((SeekEntryResult!5202 0))(
  ( (MissingZero!5202 (index!23035 (_ BitVec 32))) (Found!5202 (index!23036 (_ BitVec 32))) (Intermediate!5202 (undefined!6014 Bool) (index!23037 (_ BitVec 32)) (x!51983 (_ BitVec 32))) (Undefined!5202) (MissingVacant!5202 (index!23038 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34881 (_ BitVec 32)) SeekEntryResult!5202)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553997 (= res!346566 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16746 a!3118) j!142) mask!3119) (select (arr!16746 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16746 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16746 a!3118) i!1132 k!1914) j!142) (array!34882 (store (arr!16746 a!3118) i!1132 k!1914) (size!17110 a!3118)) mask!3119)))))

(declare-fun b!553998 () Bool)

(declare-fun e!319483 () Bool)

(assert (=> b!553998 (= e!319483 e!319481)))

(declare-fun res!346568 () Bool)

(assert (=> b!553998 (=> (not res!346568) (not e!319481))))

(declare-fun lt!251678 () SeekEntryResult!5202)

(assert (=> b!553998 (= res!346568 (or (= lt!251678 (MissingZero!5202 i!1132)) (= lt!251678 (MissingVacant!5202 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34881 (_ BitVec 32)) SeekEntryResult!5202)

(assert (=> b!553998 (= lt!251678 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun e!319480 () Bool)

(declare-fun b!553999 () Bool)

(assert (=> b!553999 (= e!319480 (= (seekEntryOrOpen!0 (select (arr!16746 a!3118) j!142) a!3118 mask!3119) (Found!5202 j!142)))))

(declare-fun b!554000 () Bool)

(declare-fun res!346561 () Bool)

(assert (=> b!554000 (=> (not res!346561) (not e!319481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34881 (_ BitVec 32)) Bool)

(assert (=> b!554000 (= res!346561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!346565 () Bool)

(assert (=> start!50702 (=> (not res!346565) (not e!319483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50702 (= res!346565 (validMask!0 mask!3119))))

(assert (=> start!50702 e!319483))

(assert (=> start!50702 true))

(declare-fun array_inv!12520 (array!34881) Bool)

(assert (=> start!50702 (array_inv!12520 a!3118)))

(declare-fun b!554001 () Bool)

(declare-fun res!346560 () Bool)

(assert (=> b!554001 (=> (not res!346560) (not e!319481))))

(declare-datatypes ((List!10879 0))(
  ( (Nil!10876) (Cons!10875 (h!11860 (_ BitVec 64)) (t!17115 List!10879)) )
))
(declare-fun arrayNoDuplicates!0 (array!34881 (_ BitVec 32) List!10879) Bool)

(assert (=> b!554001 (= res!346560 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10876))))

(declare-fun b!554002 () Bool)

(declare-fun res!346564 () Bool)

(assert (=> b!554002 (=> (not res!346564) (not e!319483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554002 (= res!346564 (validKeyInArray!0 k!1914))))

(declare-fun b!554003 () Bool)

(assert (=> b!554003 (= e!319481 (not true))))

(assert (=> b!554003 e!319480))

(declare-fun res!346567 () Bool)

(assert (=> b!554003 (=> (not res!346567) (not e!319480))))

(assert (=> b!554003 (= res!346567 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17178 0))(
  ( (Unit!17179) )
))
(declare-fun lt!251677 () Unit!17178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34881 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17178)

(assert (=> b!554003 (= lt!251677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554004 () Bool)

(declare-fun res!346559 () Bool)

(assert (=> b!554004 (=> (not res!346559) (not e!319483))))

(declare-fun arrayContainsKey!0 (array!34881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554004 (= res!346559 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554005 () Bool)

(declare-fun res!346562 () Bool)

(assert (=> b!554005 (=> (not res!346562) (not e!319483))))

(assert (=> b!554005 (= res!346562 (validKeyInArray!0 (select (arr!16746 a!3118) j!142)))))

(declare-fun b!554006 () Bool)

(declare-fun res!346563 () Bool)

(assert (=> b!554006 (=> (not res!346563) (not e!319483))))

(assert (=> b!554006 (= res!346563 (and (= (size!17110 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17110 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17110 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50702 res!346565) b!554006))

(assert (= (and b!554006 res!346563) b!554005))

(assert (= (and b!554005 res!346562) b!554002))

(assert (= (and b!554002 res!346564) b!554004))

(assert (= (and b!554004 res!346559) b!553998))

(assert (= (and b!553998 res!346568) b!554000))

(assert (= (and b!554000 res!346561) b!554001))

(assert (= (and b!554001 res!346560) b!553997))

(assert (= (and b!553997 res!346566) b!554003))

(assert (= (and b!554003 res!346567) b!553999))

(declare-fun m!531277 () Bool)

(assert (=> b!554002 m!531277))

(declare-fun m!531279 () Bool)

(assert (=> start!50702 m!531279))

(declare-fun m!531281 () Bool)

(assert (=> start!50702 m!531281))

(declare-fun m!531283 () Bool)

(assert (=> b!554001 m!531283))

(declare-fun m!531285 () Bool)

(assert (=> b!554005 m!531285))

(assert (=> b!554005 m!531285))

(declare-fun m!531287 () Bool)

(assert (=> b!554005 m!531287))

(assert (=> b!553999 m!531285))

(assert (=> b!553999 m!531285))

(declare-fun m!531289 () Bool)

(assert (=> b!553999 m!531289))

(assert (=> b!553997 m!531285))

(declare-fun m!531291 () Bool)

(assert (=> b!553997 m!531291))

(assert (=> b!553997 m!531285))

(declare-fun m!531293 () Bool)

(assert (=> b!553997 m!531293))

(declare-fun m!531295 () Bool)

(assert (=> b!553997 m!531295))

(assert (=> b!553997 m!531293))

(declare-fun m!531297 () Bool)

(assert (=> b!553997 m!531297))

(assert (=> b!553997 m!531291))

(assert (=> b!553997 m!531285))

(declare-fun m!531299 () Bool)

(assert (=> b!553997 m!531299))

(declare-fun m!531301 () Bool)

(assert (=> b!553997 m!531301))

(assert (=> b!553997 m!531293))

(assert (=> b!553997 m!531295))

(declare-fun m!531303 () Bool)

(assert (=> b!553998 m!531303))

(declare-fun m!531305 () Bool)

(assert (=> b!554000 m!531305))

(declare-fun m!531307 () Bool)

(assert (=> b!554004 m!531307))

(declare-fun m!531309 () Bool)

(assert (=> b!554003 m!531309))

(declare-fun m!531311 () Bool)

(assert (=> b!554003 m!531311))

(push 1)

