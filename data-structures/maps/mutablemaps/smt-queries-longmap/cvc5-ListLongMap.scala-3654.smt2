; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50438 () Bool)

(assert start!50438)

(declare-fun b!551228 () Bool)

(declare-fun res!344156 () Bool)

(declare-fun e!318146 () Bool)

(assert (=> b!551228 (=> (not res!344156) (not e!318146))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34731 0))(
  ( (array!34732 (arr!16674 (Array (_ BitVec 32) (_ BitVec 64))) (size!17038 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34731)

(assert (=> b!551228 (= res!344156 (and (= (size!17038 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17038 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17038 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551229 () Bool)

(declare-fun e!318145 () Bool)

(assert (=> b!551229 (= e!318146 e!318145)))

(declare-fun res!344157 () Bool)

(assert (=> b!551229 (=> (not res!344157) (not e!318145))))

(declare-datatypes ((SeekEntryResult!5130 0))(
  ( (MissingZero!5130 (index!22747 (_ BitVec 32))) (Found!5130 (index!22748 (_ BitVec 32))) (Intermediate!5130 (undefined!5942 Bool) (index!22749 (_ BitVec 32)) (x!51707 (_ BitVec 32))) (Undefined!5130) (MissingVacant!5130 (index!22750 (_ BitVec 32))) )
))
(declare-fun lt!250789 () SeekEntryResult!5130)

(assert (=> b!551229 (= res!344157 (or (= lt!250789 (MissingZero!5130 i!1132)) (= lt!250789 (MissingVacant!5130 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34731 (_ BitVec 32)) SeekEntryResult!5130)

(assert (=> b!551229 (= lt!250789 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551231 () Bool)

(declare-fun res!344161 () Bool)

(assert (=> b!551231 (=> (not res!344161) (not e!318145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34731 (_ BitVec 32)) Bool)

(assert (=> b!551231 (= res!344161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551232 () Bool)

(declare-fun res!344165 () Bool)

(assert (=> b!551232 (=> (not res!344165) (not e!318145))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34731 (_ BitVec 32)) SeekEntryResult!5130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551232 (= res!344165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16674 a!3118) j!142) mask!3119) (select (arr!16674 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16674 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16674 a!3118) i!1132 k!1914) j!142) (array!34732 (store (arr!16674 a!3118) i!1132 k!1914) (size!17038 a!3118)) mask!3119)))))

(declare-fun e!318147 () Bool)

(declare-fun b!551233 () Bool)

(assert (=> b!551233 (= e!318147 (= (seekEntryOrOpen!0 (select (arr!16674 a!3118) j!142) a!3118 mask!3119) (Found!5130 j!142)))))

(declare-fun b!551234 () Bool)

(declare-fun res!344160 () Bool)

(assert (=> b!551234 (=> (not res!344160) (not e!318146))))

(declare-fun arrayContainsKey!0 (array!34731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551234 (= res!344160 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551235 () Bool)

(assert (=> b!551235 (= e!318145 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!551235 e!318147))

(declare-fun res!344163 () Bool)

(assert (=> b!551235 (=> (not res!344163) (not e!318147))))

(assert (=> b!551235 (= res!344163 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17034 0))(
  ( (Unit!17035) )
))
(declare-fun lt!250790 () Unit!17034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17034)

(assert (=> b!551235 (= lt!250790 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551236 () Bool)

(declare-fun res!344158 () Bool)

(assert (=> b!551236 (=> (not res!344158) (not e!318146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551236 (= res!344158 (validKeyInArray!0 (select (arr!16674 a!3118) j!142)))))

(declare-fun b!551237 () Bool)

(declare-fun res!344159 () Bool)

(assert (=> b!551237 (=> (not res!344159) (not e!318145))))

(declare-datatypes ((List!10807 0))(
  ( (Nil!10804) (Cons!10803 (h!11782 (_ BitVec 64)) (t!17043 List!10807)) )
))
(declare-fun arrayNoDuplicates!0 (array!34731 (_ BitVec 32) List!10807) Bool)

(assert (=> b!551237 (= res!344159 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10804))))

(declare-fun res!344164 () Bool)

(assert (=> start!50438 (=> (not res!344164) (not e!318146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50438 (= res!344164 (validMask!0 mask!3119))))

(assert (=> start!50438 e!318146))

(assert (=> start!50438 true))

(declare-fun array_inv!12448 (array!34731) Bool)

(assert (=> start!50438 (array_inv!12448 a!3118)))

(declare-fun b!551230 () Bool)

(declare-fun res!344162 () Bool)

(assert (=> b!551230 (=> (not res!344162) (not e!318146))))

(assert (=> b!551230 (= res!344162 (validKeyInArray!0 k!1914))))

(assert (= (and start!50438 res!344164) b!551228))

(assert (= (and b!551228 res!344156) b!551236))

(assert (= (and b!551236 res!344158) b!551230))

(assert (= (and b!551230 res!344162) b!551234))

(assert (= (and b!551234 res!344160) b!551229))

(assert (= (and b!551229 res!344157) b!551231))

(assert (= (and b!551231 res!344161) b!551237))

(assert (= (and b!551237 res!344159) b!551232))

(assert (= (and b!551232 res!344165) b!551235))

(assert (= (and b!551235 res!344163) b!551233))

(declare-fun m!528247 () Bool)

(assert (=> b!551230 m!528247))

(declare-fun m!528249 () Bool)

(assert (=> b!551231 m!528249))

(declare-fun m!528251 () Bool)

(assert (=> b!551233 m!528251))

(assert (=> b!551233 m!528251))

(declare-fun m!528253 () Bool)

(assert (=> b!551233 m!528253))

(assert (=> b!551232 m!528251))

(declare-fun m!528255 () Bool)

(assert (=> b!551232 m!528255))

(assert (=> b!551232 m!528251))

(declare-fun m!528257 () Bool)

(assert (=> b!551232 m!528257))

(declare-fun m!528259 () Bool)

(assert (=> b!551232 m!528259))

(assert (=> b!551232 m!528257))

(declare-fun m!528261 () Bool)

(assert (=> b!551232 m!528261))

(assert (=> b!551232 m!528255))

(assert (=> b!551232 m!528251))

(declare-fun m!528263 () Bool)

(assert (=> b!551232 m!528263))

(declare-fun m!528265 () Bool)

(assert (=> b!551232 m!528265))

(assert (=> b!551232 m!528257))

(assert (=> b!551232 m!528259))

(declare-fun m!528267 () Bool)

(assert (=> b!551235 m!528267))

(declare-fun m!528269 () Bool)

(assert (=> b!551235 m!528269))

(declare-fun m!528271 () Bool)

(assert (=> b!551234 m!528271))

(assert (=> b!551236 m!528251))

(assert (=> b!551236 m!528251))

(declare-fun m!528273 () Bool)

(assert (=> b!551236 m!528273))

(declare-fun m!528275 () Bool)

(assert (=> start!50438 m!528275))

(declare-fun m!528277 () Bool)

(assert (=> start!50438 m!528277))

(declare-fun m!528279 () Bool)

(assert (=> b!551229 m!528279))

(declare-fun m!528281 () Bool)

(assert (=> b!551237 m!528281))

(push 1)

