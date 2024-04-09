; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50652 () Bool)

(assert start!50652)

(declare-fun b!553237 () Bool)

(declare-fun res!345801 () Bool)

(declare-fun e!319146 () Bool)

(assert (=> b!553237 (=> (not res!345801) (not e!319146))))

(declare-datatypes ((array!34831 0))(
  ( (array!34832 (arr!16721 (Array (_ BitVec 32) (_ BitVec 64))) (size!17085 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34831)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553237 (= res!345801 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553238 () Bool)

(declare-fun res!345808 () Bool)

(declare-fun e!319144 () Bool)

(assert (=> b!553238 (=> (not res!345808) (not e!319144))))

(declare-datatypes ((List!10854 0))(
  ( (Nil!10851) (Cons!10850 (h!11835 (_ BitVec 64)) (t!17090 List!10854)) )
))
(declare-fun arrayNoDuplicates!0 (array!34831 (_ BitVec 32) List!10854) Bool)

(assert (=> b!553238 (= res!345808 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10851))))

(declare-fun b!553239 () Bool)

(declare-fun res!345807 () Bool)

(assert (=> b!553239 (=> (not res!345807) (not e!319146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553239 (= res!345807 (validKeyInArray!0 k!1914))))

(declare-fun b!553240 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!319142 () Bool)

(declare-datatypes ((SeekEntryResult!5177 0))(
  ( (MissingZero!5177 (index!22935 (_ BitVec 32))) (Found!5177 (index!22936 (_ BitVec 32))) (Intermediate!5177 (undefined!5989 Bool) (index!22937 (_ BitVec 32)) (x!51886 (_ BitVec 32))) (Undefined!5177) (MissingVacant!5177 (index!22938 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34831 (_ BitVec 32)) SeekEntryResult!5177)

(assert (=> b!553240 (= e!319142 (= (seekEntryOrOpen!0 (select (arr!16721 a!3118) j!142) a!3118 mask!3119) (Found!5177 j!142)))))

(declare-fun b!553241 () Bool)

(declare-fun e!319145 () Bool)

(declare-fun e!319143 () Bool)

(assert (=> b!553241 (= e!319145 (not e!319143))))

(declare-fun res!345802 () Bool)

(assert (=> b!553241 (=> res!345802 e!319143)))

(declare-fun lt!251447 () SeekEntryResult!5177)

(assert (=> b!553241 (= res!345802 (or (not (is-Intermediate!5177 lt!251447)) (not (undefined!5989 lt!251447)) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!553241 e!319142))

(declare-fun res!345804 () Bool)

(assert (=> b!553241 (=> (not res!345804) (not e!319142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34831 (_ BitVec 32)) Bool)

(assert (=> b!553241 (= res!345804 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17128 0))(
  ( (Unit!17129) )
))
(declare-fun lt!251446 () Unit!17128)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17128)

(assert (=> b!553241 (= lt!251446 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553242 () Bool)

(assert (=> b!553242 (= e!319144 e!319145)))

(declare-fun res!345805 () Bool)

(assert (=> b!553242 (=> (not res!345805) (not e!319145))))

(declare-fun lt!251445 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34831 (_ BitVec 32)) SeekEntryResult!5177)

(assert (=> b!553242 (= res!345805 (= lt!251447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251445 (select (store (arr!16721 a!3118) i!1132 k!1914) j!142) (array!34832 (store (arr!16721 a!3118) i!1132 k!1914) (size!17085 a!3118)) mask!3119)))))

(declare-fun lt!251444 () (_ BitVec 32))

(assert (=> b!553242 (= lt!251447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251444 (select (arr!16721 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553242 (= lt!251445 (toIndex!0 (select (store (arr!16721 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553242 (= lt!251444 (toIndex!0 (select (arr!16721 a!3118) j!142) mask!3119))))

(declare-fun b!553243 () Bool)

(declare-fun res!345800 () Bool)

(assert (=> b!553243 (=> (not res!345800) (not e!319146))))

(assert (=> b!553243 (= res!345800 (and (= (size!17085 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17085 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17085 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553244 () Bool)

(declare-fun res!345799 () Bool)

(assert (=> b!553244 (=> (not res!345799) (not e!319144))))

(assert (=> b!553244 (= res!345799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345809 () Bool)

(assert (=> start!50652 (=> (not res!345809) (not e!319146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50652 (= res!345809 (validMask!0 mask!3119))))

(assert (=> start!50652 e!319146))

(assert (=> start!50652 true))

(declare-fun array_inv!12495 (array!34831) Bool)

(assert (=> start!50652 (array_inv!12495 a!3118)))

(declare-fun b!553245 () Bool)

(assert (=> b!553245 (= e!319143 (validKeyInArray!0 (select (store (arr!16721 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!553246 () Bool)

(assert (=> b!553246 (= e!319146 e!319144)))

(declare-fun res!345803 () Bool)

(assert (=> b!553246 (=> (not res!345803) (not e!319144))))

(declare-fun lt!251443 () SeekEntryResult!5177)

(assert (=> b!553246 (= res!345803 (or (= lt!251443 (MissingZero!5177 i!1132)) (= lt!251443 (MissingVacant!5177 i!1132))))))

(assert (=> b!553246 (= lt!251443 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553247 () Bool)

(declare-fun res!345806 () Bool)

(assert (=> b!553247 (=> (not res!345806) (not e!319146))))

(assert (=> b!553247 (= res!345806 (validKeyInArray!0 (select (arr!16721 a!3118) j!142)))))

(assert (= (and start!50652 res!345809) b!553243))

(assert (= (and b!553243 res!345800) b!553247))

(assert (= (and b!553247 res!345806) b!553239))

(assert (= (and b!553239 res!345807) b!553237))

(assert (= (and b!553237 res!345801) b!553246))

(assert (= (and b!553246 res!345803) b!553244))

(assert (= (and b!553244 res!345799) b!553238))

(assert (= (and b!553238 res!345808) b!553242))

(assert (= (and b!553242 res!345805) b!553241))

(assert (= (and b!553241 res!345804) b!553240))

(assert (= (and b!553241 (not res!345802)) b!553245))

(declare-fun m!530351 () Bool)

(assert (=> b!553244 m!530351))

(declare-fun m!530353 () Bool)

(assert (=> b!553247 m!530353))

(assert (=> b!553247 m!530353))

(declare-fun m!530355 () Bool)

(assert (=> b!553247 m!530355))

(declare-fun m!530357 () Bool)

(assert (=> start!50652 m!530357))

(declare-fun m!530359 () Bool)

(assert (=> start!50652 m!530359))

(declare-fun m!530361 () Bool)

(assert (=> b!553245 m!530361))

(declare-fun m!530363 () Bool)

(assert (=> b!553245 m!530363))

(assert (=> b!553245 m!530363))

(declare-fun m!530365 () Bool)

(assert (=> b!553245 m!530365))

(assert (=> b!553242 m!530353))

(assert (=> b!553242 m!530363))

(assert (=> b!553242 m!530363))

(declare-fun m!530367 () Bool)

(assert (=> b!553242 m!530367))

(assert (=> b!553242 m!530361))

(assert (=> b!553242 m!530363))

(declare-fun m!530369 () Bool)

(assert (=> b!553242 m!530369))

(assert (=> b!553242 m!530353))

(declare-fun m!530371 () Bool)

(assert (=> b!553242 m!530371))

(assert (=> b!553242 m!530353))

(declare-fun m!530373 () Bool)

(assert (=> b!553242 m!530373))

(declare-fun m!530375 () Bool)

(assert (=> b!553246 m!530375))

(declare-fun m!530377 () Bool)

(assert (=> b!553239 m!530377))

(declare-fun m!530379 () Bool)

(assert (=> b!553241 m!530379))

(declare-fun m!530381 () Bool)

(assert (=> b!553241 m!530381))

(assert (=> b!553240 m!530353))

(assert (=> b!553240 m!530353))

(declare-fun m!530383 () Bool)

(assert (=> b!553240 m!530383))

(declare-fun m!530385 () Bool)

(assert (=> b!553237 m!530385))

(declare-fun m!530387 () Bool)

(assert (=> b!553238 m!530387))

(push 1)

