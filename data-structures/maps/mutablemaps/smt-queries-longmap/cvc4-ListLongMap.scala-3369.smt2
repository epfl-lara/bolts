; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46280 () Bool)

(assert start!46280)

(declare-fun b!512345 () Bool)

(declare-fun e!299200 () Bool)

(assert (=> b!512345 (= e!299200 true)))

(declare-datatypes ((SeekEntryResult!4295 0))(
  ( (MissingZero!4295 (index!19368 (_ BitVec 32))) (Found!4295 (index!19369 (_ BitVec 32))) (Intermediate!4295 (undefined!5107 Bool) (index!19370 (_ BitVec 32)) (x!48337 (_ BitVec 32))) (Undefined!4295) (MissingVacant!4295 (index!19371 (_ BitVec 32))) )
))
(declare-fun lt!234608 () SeekEntryResult!4295)

(assert (=> b!512345 (= lt!234608 Undefined!4295)))

(declare-fun b!512346 () Bool)

(declare-fun res!313166 () Bool)

(declare-fun e!299198 () Bool)

(assert (=> b!512346 (=> (not res!313166) (not e!299198))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32894 0))(
  ( (array!32895 (arr!15821 (Array (_ BitVec 32) (_ BitVec 64))) (size!16185 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32894)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!512346 (= res!313166 (and (= (size!16185 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16185 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16185 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512347 () Bool)

(declare-fun e!299197 () Bool)

(assert (=> b!512347 (= e!299198 e!299197)))

(declare-fun res!313160 () Bool)

(assert (=> b!512347 (=> (not res!313160) (not e!299197))))

(declare-fun lt!234603 () SeekEntryResult!4295)

(assert (=> b!512347 (= res!313160 (or (= lt!234603 (MissingZero!4295 i!1204)) (= lt!234603 (MissingVacant!4295 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32894 (_ BitVec 32)) SeekEntryResult!4295)

(assert (=> b!512347 (= lt!234603 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512348 () Bool)

(declare-fun res!313164 () Bool)

(assert (=> b!512348 (=> (not res!313164) (not e!299197))))

(declare-datatypes ((List!10032 0))(
  ( (Nil!10029) (Cons!10028 (h!10908 (_ BitVec 64)) (t!16268 List!10032)) )
))
(declare-fun arrayNoDuplicates!0 (array!32894 (_ BitVec 32) List!10032) Bool)

(assert (=> b!512348 (= res!313164 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10029))))

(declare-fun b!512349 () Bool)

(declare-fun res!313165 () Bool)

(assert (=> b!512349 (=> res!313165 e!299200)))

(declare-fun lt!234605 () SeekEntryResult!4295)

(assert (=> b!512349 (= res!313165 (or (not (is-Intermediate!4295 lt!234605)) (not (undefined!5107 lt!234605))))))

(declare-fun b!512350 () Bool)

(declare-fun res!313157 () Bool)

(assert (=> b!512350 (=> (not res!313157) (not e!299198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512350 (= res!313157 (validKeyInArray!0 (select (arr!15821 a!3235) j!176)))))

(declare-fun b!512351 () Bool)

(declare-fun res!313161 () Bool)

(assert (=> b!512351 (=> (not res!313161) (not e!299198))))

(assert (=> b!512351 (= res!313161 (validKeyInArray!0 k!2280))))

(declare-fun b!512352 () Bool)

(declare-fun res!313163 () Bool)

(assert (=> b!512352 (=> (not res!313163) (not e!299198))))

(declare-fun arrayContainsKey!0 (array!32894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512352 (= res!313163 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512353 () Bool)

(assert (=> b!512353 (= e!299197 (not e!299200))))

(declare-fun res!313158 () Bool)

(assert (=> b!512353 (=> res!313158 e!299200)))

(declare-fun lt!234607 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32894 (_ BitVec 32)) SeekEntryResult!4295)

(assert (=> b!512353 (= res!313158 (= lt!234605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234607 (select (store (arr!15821 a!3235) i!1204 k!2280) j!176) (array!32895 (store (arr!15821 a!3235) i!1204 k!2280) (size!16185 a!3235)) mask!3524)))))

(declare-fun lt!234606 () (_ BitVec 32))

(assert (=> b!512353 (= lt!234605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234606 (select (arr!15821 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512353 (= lt!234607 (toIndex!0 (select (store (arr!15821 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512353 (= lt!234606 (toIndex!0 (select (arr!15821 a!3235) j!176) mask!3524))))

(assert (=> b!512353 (= lt!234608 (Found!4295 j!176))))

(assert (=> b!512353 (= lt!234608 (seekEntryOrOpen!0 (select (arr!15821 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32894 (_ BitVec 32)) Bool)

(assert (=> b!512353 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15840 0))(
  ( (Unit!15841) )
))
(declare-fun lt!234604 () Unit!15840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15840)

(assert (=> b!512353 (= lt!234604 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!313159 () Bool)

(assert (=> start!46280 (=> (not res!313159) (not e!299198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46280 (= res!313159 (validMask!0 mask!3524))))

(assert (=> start!46280 e!299198))

(assert (=> start!46280 true))

(declare-fun array_inv!11595 (array!32894) Bool)

(assert (=> start!46280 (array_inv!11595 a!3235)))

(declare-fun b!512354 () Bool)

(declare-fun res!313162 () Bool)

(assert (=> b!512354 (=> (not res!313162) (not e!299197))))

(assert (=> b!512354 (= res!313162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46280 res!313159) b!512346))

(assert (= (and b!512346 res!313166) b!512350))

(assert (= (and b!512350 res!313157) b!512351))

(assert (= (and b!512351 res!313161) b!512352))

(assert (= (and b!512352 res!313163) b!512347))

(assert (= (and b!512347 res!313160) b!512354))

(assert (= (and b!512354 res!313162) b!512348))

(assert (= (and b!512348 res!313164) b!512353))

(assert (= (and b!512353 (not res!313158)) b!512349))

(assert (= (and b!512349 (not res!313165)) b!512345))

(declare-fun m!494059 () Bool)

(assert (=> b!512350 m!494059))

(assert (=> b!512350 m!494059))

(declare-fun m!494061 () Bool)

(assert (=> b!512350 m!494061))

(declare-fun m!494063 () Bool)

(assert (=> b!512354 m!494063))

(declare-fun m!494065 () Bool)

(assert (=> b!512351 m!494065))

(declare-fun m!494067 () Bool)

(assert (=> b!512352 m!494067))

(declare-fun m!494069 () Bool)

(assert (=> b!512348 m!494069))

(declare-fun m!494071 () Bool)

(assert (=> b!512353 m!494071))

(declare-fun m!494073 () Bool)

(assert (=> b!512353 m!494073))

(assert (=> b!512353 m!494059))

(declare-fun m!494075 () Bool)

(assert (=> b!512353 m!494075))

(assert (=> b!512353 m!494059))

(declare-fun m!494077 () Bool)

(assert (=> b!512353 m!494077))

(assert (=> b!512353 m!494059))

(declare-fun m!494079 () Bool)

(assert (=> b!512353 m!494079))

(assert (=> b!512353 m!494059))

(declare-fun m!494081 () Bool)

(assert (=> b!512353 m!494081))

(assert (=> b!512353 m!494073))

(declare-fun m!494083 () Bool)

(assert (=> b!512353 m!494083))

(assert (=> b!512353 m!494073))

(declare-fun m!494085 () Bool)

(assert (=> b!512353 m!494085))

(declare-fun m!494087 () Bool)

(assert (=> b!512353 m!494087))

(declare-fun m!494089 () Bool)

(assert (=> start!46280 m!494089))

(declare-fun m!494091 () Bool)

(assert (=> start!46280 m!494091))

(declare-fun m!494093 () Bool)

(assert (=> b!512347 m!494093))

(push 1)

