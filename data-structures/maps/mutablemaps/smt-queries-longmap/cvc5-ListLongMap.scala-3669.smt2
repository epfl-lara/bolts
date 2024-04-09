; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50648 () Bool)

(assert start!50648)

(declare-fun b!553171 () Bool)

(declare-fun res!345739 () Bool)

(declare-fun e!319106 () Bool)

(assert (=> b!553171 (=> (not res!345739) (not e!319106))))

(declare-datatypes ((array!34827 0))(
  ( (array!34828 (arr!16719 (Array (_ BitVec 32) (_ BitVec 64))) (size!17083 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34827)

(declare-datatypes ((List!10852 0))(
  ( (Nil!10849) (Cons!10848 (h!11833 (_ BitVec 64)) (t!17088 List!10852)) )
))
(declare-fun arrayNoDuplicates!0 (array!34827 (_ BitVec 32) List!10852) Bool)

(assert (=> b!553171 (= res!345739 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10849))))

(declare-fun b!553172 () Bool)

(declare-fun res!345734 () Bool)

(declare-fun e!319109 () Bool)

(assert (=> b!553172 (=> (not res!345734) (not e!319109))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553172 (= res!345734 (validKeyInArray!0 k!1914))))

(declare-fun b!553173 () Bool)

(declare-fun res!345733 () Bool)

(assert (=> b!553173 (=> (not res!345733) (not e!319109))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!553173 (= res!345733 (validKeyInArray!0 (select (arr!16719 a!3118) j!142)))))

(declare-fun b!553175 () Bool)

(declare-fun e!319108 () Bool)

(assert (=> b!553175 (= e!319106 e!319108)))

(declare-fun res!345740 () Bool)

(assert (=> b!553175 (=> (not res!345740) (not e!319108))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5175 0))(
  ( (MissingZero!5175 (index!22927 (_ BitVec 32))) (Found!5175 (index!22928 (_ BitVec 32))) (Intermediate!5175 (undefined!5987 Bool) (index!22929 (_ BitVec 32)) (x!51884 (_ BitVec 32))) (Undefined!5175) (MissingVacant!5175 (index!22930 (_ BitVec 32))) )
))
(declare-fun lt!251414 () SeekEntryResult!5175)

(declare-fun lt!251415 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34827 (_ BitVec 32)) SeekEntryResult!5175)

(assert (=> b!553175 (= res!345740 (= lt!251414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251415 (select (store (arr!16719 a!3118) i!1132 k!1914) j!142) (array!34828 (store (arr!16719 a!3118) i!1132 k!1914) (size!17083 a!3118)) mask!3119)))))

(declare-fun lt!251416 () (_ BitVec 32))

(assert (=> b!553175 (= lt!251414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251416 (select (arr!16719 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553175 (= lt!251415 (toIndex!0 (select (store (arr!16719 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553175 (= lt!251416 (toIndex!0 (select (arr!16719 a!3118) j!142) mask!3119))))

(declare-fun e!319110 () Bool)

(declare-fun b!553176 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34827 (_ BitVec 32)) SeekEntryResult!5175)

(assert (=> b!553176 (= e!319110 (= (seekEntryOrOpen!0 (select (arr!16719 a!3118) j!142) a!3118 mask!3119) (Found!5175 j!142)))))

(declare-fun b!553174 () Bool)

(declare-fun res!345742 () Bool)

(assert (=> b!553174 (=> (not res!345742) (not e!319106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34827 (_ BitVec 32)) Bool)

(assert (=> b!553174 (= res!345742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345737 () Bool)

(assert (=> start!50648 (=> (not res!345737) (not e!319109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50648 (= res!345737 (validMask!0 mask!3119))))

(assert (=> start!50648 e!319109))

(assert (=> start!50648 true))

(declare-fun array_inv!12493 (array!34827) Bool)

(assert (=> start!50648 (array_inv!12493 a!3118)))

(declare-fun b!553177 () Bool)

(assert (=> b!553177 (= e!319109 e!319106)))

(declare-fun res!345738 () Bool)

(assert (=> b!553177 (=> (not res!345738) (not e!319106))))

(declare-fun lt!251413 () SeekEntryResult!5175)

(assert (=> b!553177 (= res!345738 (or (= lt!251413 (MissingZero!5175 i!1132)) (= lt!251413 (MissingVacant!5175 i!1132))))))

(assert (=> b!553177 (= lt!251413 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553178 () Bool)

(declare-fun e!319107 () Bool)

(assert (=> b!553178 (= e!319108 (not e!319107))))

(declare-fun res!345743 () Bool)

(assert (=> b!553178 (=> res!345743 e!319107)))

(assert (=> b!553178 (= res!345743 (or (not (is-Intermediate!5175 lt!251414)) (not (undefined!5987 lt!251414)) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!553178 e!319110))

(declare-fun res!345736 () Bool)

(assert (=> b!553178 (=> (not res!345736) (not e!319110))))

(assert (=> b!553178 (= res!345736 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17124 0))(
  ( (Unit!17125) )
))
(declare-fun lt!251417 () Unit!17124)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17124)

(assert (=> b!553178 (= lt!251417 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553179 () Bool)

(declare-fun res!345741 () Bool)

(assert (=> b!553179 (=> (not res!345741) (not e!319109))))

(declare-fun arrayContainsKey!0 (array!34827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553179 (= res!345741 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553180 () Bool)

(declare-fun res!345735 () Bool)

(assert (=> b!553180 (=> (not res!345735) (not e!319109))))

(assert (=> b!553180 (= res!345735 (and (= (size!17083 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17083 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17083 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553181 () Bool)

(assert (=> b!553181 (= e!319107 (validKeyInArray!0 (select (store (arr!16719 a!3118) i!1132 k!1914) j!142)))))

(assert (= (and start!50648 res!345737) b!553180))

(assert (= (and b!553180 res!345735) b!553173))

(assert (= (and b!553173 res!345733) b!553172))

(assert (= (and b!553172 res!345734) b!553179))

(assert (= (and b!553179 res!345741) b!553177))

(assert (= (and b!553177 res!345738) b!553174))

(assert (= (and b!553174 res!345742) b!553171))

(assert (= (and b!553171 res!345739) b!553175))

(assert (= (and b!553175 res!345740) b!553178))

(assert (= (and b!553178 res!345736) b!553176))

(assert (= (and b!553178 (not res!345743)) b!553181))

(declare-fun m!530275 () Bool)

(assert (=> b!553173 m!530275))

(assert (=> b!553173 m!530275))

(declare-fun m!530277 () Bool)

(assert (=> b!553173 m!530277))

(declare-fun m!530279 () Bool)

(assert (=> start!50648 m!530279))

(declare-fun m!530281 () Bool)

(assert (=> start!50648 m!530281))

(assert (=> b!553176 m!530275))

(assert (=> b!553176 m!530275))

(declare-fun m!530283 () Bool)

(assert (=> b!553176 m!530283))

(declare-fun m!530285 () Bool)

(assert (=> b!553181 m!530285))

(declare-fun m!530287 () Bool)

(assert (=> b!553181 m!530287))

(assert (=> b!553181 m!530287))

(declare-fun m!530289 () Bool)

(assert (=> b!553181 m!530289))

(declare-fun m!530291 () Bool)

(assert (=> b!553172 m!530291))

(assert (=> b!553175 m!530275))

(declare-fun m!530293 () Bool)

(assert (=> b!553175 m!530293))

(assert (=> b!553175 m!530287))

(declare-fun m!530295 () Bool)

(assert (=> b!553175 m!530295))

(assert (=> b!553175 m!530275))

(assert (=> b!553175 m!530287))

(assert (=> b!553175 m!530275))

(declare-fun m!530297 () Bool)

(assert (=> b!553175 m!530297))

(assert (=> b!553175 m!530285))

(assert (=> b!553175 m!530287))

(declare-fun m!530299 () Bool)

(assert (=> b!553175 m!530299))

(declare-fun m!530301 () Bool)

(assert (=> b!553178 m!530301))

(declare-fun m!530303 () Bool)

(assert (=> b!553178 m!530303))

(declare-fun m!530305 () Bool)

(assert (=> b!553174 m!530305))

(declare-fun m!530307 () Bool)

(assert (=> b!553179 m!530307))

(declare-fun m!530309 () Bool)

(assert (=> b!553171 m!530309))

(declare-fun m!530311 () Bool)

(assert (=> b!553177 m!530311))

(push 1)

