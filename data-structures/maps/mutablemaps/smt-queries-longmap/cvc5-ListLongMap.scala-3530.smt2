; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48766 () Bool)

(assert start!48766)

(declare-fun res!331275 () Bool)

(declare-fun e!311181 () Bool)

(assert (=> start!48766 (=> (not res!331275) (not e!311181))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48766 (= res!331275 (validMask!0 mask!3216))))

(assert (=> start!48766 e!311181))

(assert (=> start!48766 true))

(declare-datatypes ((array!33934 0))(
  ( (array!33935 (arr!16302 (Array (_ BitVec 32) (_ BitVec 64))) (size!16666 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33934)

(declare-fun array_inv!12076 (array!33934) Bool)

(assert (=> start!48766 (array_inv!12076 a!3154)))

(declare-fun b!535910 () Bool)

(declare-fun e!311182 () Bool)

(assert (=> b!535910 (= e!311182 false)))

(declare-datatypes ((SeekEntryResult!4767 0))(
  ( (MissingZero!4767 (index!21292 (_ BitVec 32))) (Found!4767 (index!21293 (_ BitVec 32))) (Intermediate!4767 (undefined!5579 Bool) (index!21294 (_ BitVec 32)) (x!50265 (_ BitVec 32))) (Undefined!4767) (MissingVacant!4767 (index!21295 (_ BitVec 32))) )
))
(declare-fun lt!245955 () SeekEntryResult!4767)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!245957 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33934 (_ BitVec 32)) SeekEntryResult!4767)

(assert (=> b!535910 (= lt!245955 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245957 (select (arr!16302 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535911 () Bool)

(declare-fun res!331265 () Bool)

(declare-fun e!311178 () Bool)

(assert (=> b!535911 (=> (not res!331265) (not e!311178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33934 (_ BitVec 32)) Bool)

(assert (=> b!535911 (= res!331265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535912 () Bool)

(declare-fun res!331277 () Bool)

(assert (=> b!535912 (=> (not res!331277) (not e!311181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535912 (= res!331277 (validKeyInArray!0 (select (arr!16302 a!3154) j!147)))))

(declare-fun b!535913 () Bool)

(declare-fun res!331273 () Bool)

(assert (=> b!535913 (=> (not res!331273) (not e!311178))))

(declare-datatypes ((List!10474 0))(
  ( (Nil!10471) (Cons!10470 (h!11413 (_ BitVec 64)) (t!16710 List!10474)) )
))
(declare-fun arrayNoDuplicates!0 (array!33934 (_ BitVec 32) List!10474) Bool)

(assert (=> b!535913 (= res!331273 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10471))))

(declare-fun b!535914 () Bool)

(declare-fun res!331268 () Bool)

(assert (=> b!535914 (=> (not res!331268) (not e!311181))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535914 (= res!331268 (and (= (size!16666 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16666 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16666 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535915 () Bool)

(declare-fun res!331267 () Bool)

(assert (=> b!535915 (=> (not res!331267) (not e!311181))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!535915 (= res!331267 (validKeyInArray!0 k!1998))))

(declare-fun b!535916 () Bool)

(assert (=> b!535916 (= e!311181 e!311178)))

(declare-fun res!331271 () Bool)

(assert (=> b!535916 (=> (not res!331271) (not e!311178))))

(declare-fun lt!245956 () SeekEntryResult!4767)

(assert (=> b!535916 (= res!331271 (or (= lt!245956 (MissingZero!4767 i!1153)) (= lt!245956 (MissingVacant!4767 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33934 (_ BitVec 32)) SeekEntryResult!4767)

(assert (=> b!535916 (= lt!245956 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535917 () Bool)

(declare-fun res!331266 () Bool)

(assert (=> b!535917 (=> (not res!331266) (not e!311181))))

(declare-fun arrayContainsKey!0 (array!33934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535917 (= res!331266 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535918 () Bool)

(declare-fun res!331274 () Bool)

(declare-fun e!311179 () Bool)

(assert (=> b!535918 (=> (not res!331274) (not e!311179))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!535918 (= res!331274 (and (not (= (select (arr!16302 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16302 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16302 a!3154) index!1177) (select (arr!16302 a!3154) j!147)))))))

(declare-fun b!535919 () Bool)

(assert (=> b!535919 (= e!311179 e!311182)))

(declare-fun res!331272 () Bool)

(assert (=> b!535919 (=> (not res!331272) (not e!311182))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535919 (= res!331272 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245957 #b00000000000000000000000000000000) (bvslt lt!245957 (size!16666 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535919 (= lt!245957 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535920 () Bool)

(declare-fun res!331269 () Bool)

(assert (=> b!535920 (=> (not res!331269) (not e!311179))))

(declare-fun lt!245954 () SeekEntryResult!4767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535920 (= res!331269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16302 a!3154) j!147) mask!3216) (select (arr!16302 a!3154) j!147) a!3154 mask!3216) lt!245954))))

(declare-fun b!535921 () Bool)

(assert (=> b!535921 (= e!311178 e!311179)))

(declare-fun res!331270 () Bool)

(assert (=> b!535921 (=> (not res!331270) (not e!311179))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535921 (= res!331270 (= lt!245954 (Intermediate!4767 false resIndex!32 resX!32)))))

(assert (=> b!535921 (= lt!245954 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16302 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535922 () Bool)

(declare-fun res!331276 () Bool)

(assert (=> b!535922 (=> (not res!331276) (not e!311178))))

(assert (=> b!535922 (= res!331276 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16666 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16666 a!3154)) (= (select (arr!16302 a!3154) resIndex!32) (select (arr!16302 a!3154) j!147))))))

(assert (= (and start!48766 res!331275) b!535914))

(assert (= (and b!535914 res!331268) b!535912))

(assert (= (and b!535912 res!331277) b!535915))

(assert (= (and b!535915 res!331267) b!535917))

(assert (= (and b!535917 res!331266) b!535916))

(assert (= (and b!535916 res!331271) b!535911))

(assert (= (and b!535911 res!331265) b!535913))

(assert (= (and b!535913 res!331273) b!535922))

(assert (= (and b!535922 res!331276) b!535921))

(assert (= (and b!535921 res!331270) b!535920))

(assert (= (and b!535920 res!331269) b!535918))

(assert (= (and b!535918 res!331274) b!535919))

(assert (= (and b!535919 res!331272) b!535910))

(declare-fun m!515419 () Bool)

(assert (=> b!535922 m!515419))

(declare-fun m!515421 () Bool)

(assert (=> b!535922 m!515421))

(assert (=> b!535912 m!515421))

(assert (=> b!535912 m!515421))

(declare-fun m!515423 () Bool)

(assert (=> b!535912 m!515423))

(declare-fun m!515425 () Bool)

(assert (=> b!535916 m!515425))

(declare-fun m!515427 () Bool)

(assert (=> b!535918 m!515427))

(assert (=> b!535918 m!515421))

(declare-fun m!515429 () Bool)

(assert (=> start!48766 m!515429))

(declare-fun m!515431 () Bool)

(assert (=> start!48766 m!515431))

(declare-fun m!515433 () Bool)

(assert (=> b!535917 m!515433))

(declare-fun m!515435 () Bool)

(assert (=> b!535913 m!515435))

(declare-fun m!515437 () Bool)

(assert (=> b!535915 m!515437))

(assert (=> b!535910 m!515421))

(assert (=> b!535910 m!515421))

(declare-fun m!515439 () Bool)

(assert (=> b!535910 m!515439))

(assert (=> b!535921 m!515421))

(assert (=> b!535921 m!515421))

(declare-fun m!515441 () Bool)

(assert (=> b!535921 m!515441))

(declare-fun m!515443 () Bool)

(assert (=> b!535911 m!515443))

(assert (=> b!535920 m!515421))

(assert (=> b!535920 m!515421))

(declare-fun m!515445 () Bool)

(assert (=> b!535920 m!515445))

(assert (=> b!535920 m!515445))

(assert (=> b!535920 m!515421))

(declare-fun m!515447 () Bool)

(assert (=> b!535920 m!515447))

(declare-fun m!515449 () Bool)

(assert (=> b!535919 m!515449))

(push 1)

