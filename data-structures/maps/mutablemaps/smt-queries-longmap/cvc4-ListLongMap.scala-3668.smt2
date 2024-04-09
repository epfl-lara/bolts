; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50646 () Bool)

(assert start!50646)

(declare-fun b!553139 () Bool)

(declare-fun res!345701 () Bool)

(declare-fun e!319092 () Bool)

(assert (=> b!553139 (=> (not res!345701) (not e!319092))))

(declare-datatypes ((array!34825 0))(
  ( (array!34826 (arr!16718 (Array (_ BitVec 32) (_ BitVec 64))) (size!17082 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34825)

(declare-datatypes ((List!10851 0))(
  ( (Nil!10848) (Cons!10847 (h!11832 (_ BitVec 64)) (t!17087 List!10851)) )
))
(declare-fun arrayNoDuplicates!0 (array!34825 (_ BitVec 32) List!10851) Bool)

(assert (=> b!553139 (= res!345701 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10848))))

(declare-fun b!553140 () Bool)

(declare-fun res!345702 () Bool)

(declare-fun e!319093 () Bool)

(assert (=> b!553140 (=> (not res!345702) (not e!319093))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553140 (= res!345702 (validKeyInArray!0 (select (arr!16718 a!3118) j!142)))))

(declare-fun b!553141 () Bool)

(declare-fun res!345707 () Bool)

(assert (=> b!553141 (=> (not res!345707) (not e!319093))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553141 (= res!345707 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553142 () Bool)

(declare-fun res!345708 () Bool)

(assert (=> b!553142 (=> (not res!345708) (not e!319092))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5174 0))(
  ( (MissingZero!5174 (index!22923 (_ BitVec 32))) (Found!5174 (index!22924 (_ BitVec 32))) (Intermediate!5174 (undefined!5986 Bool) (index!22925 (_ BitVec 32)) (x!51875 (_ BitVec 32))) (Undefined!5174) (MissingVacant!5174 (index!22926 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34825 (_ BitVec 32)) SeekEntryResult!5174)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553142 (= res!345708 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16718 a!3118) j!142) mask!3119) (select (arr!16718 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16718 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16718 a!3118) i!1132 k!1914) j!142) (array!34826 (store (arr!16718 a!3118) i!1132 k!1914) (size!17082 a!3118)) mask!3119)))))

(declare-fun b!553143 () Bool)

(declare-fun e!319091 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34825 (_ BitVec 32)) SeekEntryResult!5174)

(assert (=> b!553143 (= e!319091 (= (seekEntryOrOpen!0 (select (arr!16718 a!3118) j!142) a!3118 mask!3119) (Found!5174 j!142)))))

(declare-fun b!553144 () Bool)

(declare-fun res!345710 () Bool)

(assert (=> b!553144 (=> (not res!345710) (not e!319093))))

(assert (=> b!553144 (= res!345710 (validKeyInArray!0 k!1914))))

(declare-fun b!553145 () Bool)

(declare-fun res!345706 () Bool)

(assert (=> b!553145 (=> (not res!345706) (not e!319093))))

(assert (=> b!553145 (= res!345706 (and (= (size!17082 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17082 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17082 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!345703 () Bool)

(assert (=> start!50646 (=> (not res!345703) (not e!319093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50646 (= res!345703 (validMask!0 mask!3119))))

(assert (=> start!50646 e!319093))

(assert (=> start!50646 true))

(declare-fun array_inv!12492 (array!34825) Bool)

(assert (=> start!50646 (array_inv!12492 a!3118)))

(declare-fun b!553146 () Bool)

(assert (=> b!553146 (= e!319093 e!319092)))

(declare-fun res!345705 () Bool)

(assert (=> b!553146 (=> (not res!345705) (not e!319092))))

(declare-fun lt!251401 () SeekEntryResult!5174)

(assert (=> b!553146 (= res!345705 (or (= lt!251401 (MissingZero!5174 i!1132)) (= lt!251401 (MissingVacant!5174 i!1132))))))

(assert (=> b!553146 (= lt!251401 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553147 () Bool)

(declare-fun res!345704 () Bool)

(assert (=> b!553147 (=> (not res!345704) (not e!319092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34825 (_ BitVec 32)) Bool)

(assert (=> b!553147 (= res!345704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553148 () Bool)

(assert (=> b!553148 (= e!319092 (not true))))

(assert (=> b!553148 e!319091))

(declare-fun res!345709 () Bool)

(assert (=> b!553148 (=> (not res!345709) (not e!319091))))

(assert (=> b!553148 (= res!345709 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17122 0))(
  ( (Unit!17123) )
))
(declare-fun lt!251402 () Unit!17122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17122)

(assert (=> b!553148 (= lt!251402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50646 res!345703) b!553145))

(assert (= (and b!553145 res!345706) b!553140))

(assert (= (and b!553140 res!345702) b!553144))

(assert (= (and b!553144 res!345710) b!553141))

(assert (= (and b!553141 res!345707) b!553146))

(assert (= (and b!553146 res!345705) b!553147))

(assert (= (and b!553147 res!345704) b!553139))

(assert (= (and b!553139 res!345701) b!553142))

(assert (= (and b!553142 res!345708) b!553148))

(assert (= (and b!553148 res!345709) b!553143))

(declare-fun m!530239 () Bool)

(assert (=> b!553141 m!530239))

(declare-fun m!530241 () Bool)

(assert (=> b!553140 m!530241))

(assert (=> b!553140 m!530241))

(declare-fun m!530243 () Bool)

(assert (=> b!553140 m!530243))

(declare-fun m!530245 () Bool)

(assert (=> b!553146 m!530245))

(assert (=> b!553143 m!530241))

(assert (=> b!553143 m!530241))

(declare-fun m!530247 () Bool)

(assert (=> b!553143 m!530247))

(declare-fun m!530249 () Bool)

(assert (=> b!553139 m!530249))

(declare-fun m!530251 () Bool)

(assert (=> b!553148 m!530251))

(declare-fun m!530253 () Bool)

(assert (=> b!553148 m!530253))

(declare-fun m!530255 () Bool)

(assert (=> b!553144 m!530255))

(declare-fun m!530257 () Bool)

(assert (=> start!50646 m!530257))

(declare-fun m!530259 () Bool)

(assert (=> start!50646 m!530259))

(declare-fun m!530261 () Bool)

(assert (=> b!553147 m!530261))

(assert (=> b!553142 m!530241))

(declare-fun m!530263 () Bool)

(assert (=> b!553142 m!530263))

(assert (=> b!553142 m!530241))

(declare-fun m!530265 () Bool)

(assert (=> b!553142 m!530265))

(declare-fun m!530267 () Bool)

(assert (=> b!553142 m!530267))

(assert (=> b!553142 m!530265))

(declare-fun m!530269 () Bool)

(assert (=> b!553142 m!530269))

(assert (=> b!553142 m!530263))

(assert (=> b!553142 m!530241))

(declare-fun m!530271 () Bool)

(assert (=> b!553142 m!530271))

(declare-fun m!530273 () Bool)

(assert (=> b!553142 m!530273))

(assert (=> b!553142 m!530265))

(assert (=> b!553142 m!530267))

(push 1)

