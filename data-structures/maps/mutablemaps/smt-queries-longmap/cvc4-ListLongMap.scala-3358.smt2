; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46214 () Bool)

(assert start!46214)

(declare-fun b!511355 () Bool)

(declare-fun e!298801 () Bool)

(assert (=> b!511355 (= e!298801 true)))

(declare-datatypes ((SeekEntryResult!4262 0))(
  ( (MissingZero!4262 (index!19236 (_ BitVec 32))) (Found!4262 (index!19237 (_ BitVec 32))) (Intermediate!4262 (undefined!5074 Bool) (index!19238 (_ BitVec 32)) (x!48216 (_ BitVec 32))) (Undefined!4262) (MissingVacant!4262 (index!19239 (_ BitVec 32))) )
))
(declare-fun lt!234012 () SeekEntryResult!4262)

(assert (=> b!511355 (= lt!234012 Undefined!4262)))

(declare-fun b!511356 () Bool)

(declare-fun res!312176 () Bool)

(assert (=> b!511356 (=> res!312176 e!298801)))

(declare-fun lt!234013 () SeekEntryResult!4262)

(assert (=> b!511356 (= res!312176 (or (not (is-Intermediate!4262 lt!234013)) (not (undefined!5074 lt!234013))))))

(declare-fun b!511357 () Bool)

(declare-fun e!298804 () Bool)

(declare-fun e!298802 () Bool)

(assert (=> b!511357 (= e!298804 e!298802)))

(declare-fun res!312174 () Bool)

(assert (=> b!511357 (=> (not res!312174) (not e!298802))))

(declare-fun lt!234010 () SeekEntryResult!4262)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511357 (= res!312174 (or (= lt!234010 (MissingZero!4262 i!1204)) (= lt!234010 (MissingVacant!4262 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32828 0))(
  ( (array!32829 (arr!15788 (Array (_ BitVec 32) (_ BitVec 64))) (size!16152 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32828)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32828 (_ BitVec 32)) SeekEntryResult!4262)

(assert (=> b!511357 (= lt!234010 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511358 () Bool)

(declare-fun res!312172 () Bool)

(assert (=> b!511358 (=> (not res!312172) (not e!298804))))

(declare-fun arrayContainsKey!0 (array!32828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511358 (= res!312172 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511359 () Bool)

(declare-fun res!312175 () Bool)

(assert (=> b!511359 (=> (not res!312175) (not e!298802))))

(declare-datatypes ((List!9999 0))(
  ( (Nil!9996) (Cons!9995 (h!10875 (_ BitVec 64)) (t!16235 List!9999)) )
))
(declare-fun arrayNoDuplicates!0 (array!32828 (_ BitVec 32) List!9999) Bool)

(assert (=> b!511359 (= res!312175 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9996))))

(declare-fun b!511360 () Bool)

(declare-fun res!312171 () Bool)

(assert (=> b!511360 (=> (not res!312171) (not e!298804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511360 (= res!312171 (validKeyInArray!0 k!2280))))

(declare-fun res!312170 () Bool)

(assert (=> start!46214 (=> (not res!312170) (not e!298804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46214 (= res!312170 (validMask!0 mask!3524))))

(assert (=> start!46214 e!298804))

(assert (=> start!46214 true))

(declare-fun array_inv!11562 (array!32828) Bool)

(assert (=> start!46214 (array_inv!11562 a!3235)))

(declare-fun b!511361 () Bool)

(declare-fun res!312167 () Bool)

(assert (=> b!511361 (=> (not res!312167) (not e!298802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32828 (_ BitVec 32)) Bool)

(assert (=> b!511361 (= res!312167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511362 () Bool)

(assert (=> b!511362 (= e!298802 (not e!298801))))

(declare-fun res!312168 () Bool)

(assert (=> b!511362 (=> res!312168 e!298801)))

(declare-fun lt!234014 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32828 (_ BitVec 32)) SeekEntryResult!4262)

(assert (=> b!511362 (= res!312168 (= lt!234013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234014 (select (store (arr!15788 a!3235) i!1204 k!2280) j!176) (array!32829 (store (arr!15788 a!3235) i!1204 k!2280) (size!16152 a!3235)) mask!3524)))))

(declare-fun lt!234009 () (_ BitVec 32))

(assert (=> b!511362 (= lt!234013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234009 (select (arr!15788 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511362 (= lt!234014 (toIndex!0 (select (store (arr!15788 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511362 (= lt!234009 (toIndex!0 (select (arr!15788 a!3235) j!176) mask!3524))))

(assert (=> b!511362 (= lt!234012 (Found!4262 j!176))))

(assert (=> b!511362 (= lt!234012 (seekEntryOrOpen!0 (select (arr!15788 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511362 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15774 0))(
  ( (Unit!15775) )
))
(declare-fun lt!234011 () Unit!15774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15774)

(assert (=> b!511362 (= lt!234011 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511363 () Bool)

(declare-fun res!312169 () Bool)

(assert (=> b!511363 (=> (not res!312169) (not e!298804))))

(assert (=> b!511363 (= res!312169 (and (= (size!16152 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16152 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16152 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511364 () Bool)

(declare-fun res!312173 () Bool)

(assert (=> b!511364 (=> (not res!312173) (not e!298804))))

(assert (=> b!511364 (= res!312173 (validKeyInArray!0 (select (arr!15788 a!3235) j!176)))))

(assert (= (and start!46214 res!312170) b!511363))

(assert (= (and b!511363 res!312169) b!511364))

(assert (= (and b!511364 res!312173) b!511360))

(assert (= (and b!511360 res!312171) b!511358))

(assert (= (and b!511358 res!312172) b!511357))

(assert (= (and b!511357 res!312174) b!511361))

(assert (= (and b!511361 res!312167) b!511359))

(assert (= (and b!511359 res!312175) b!511362))

(assert (= (and b!511362 (not res!312168)) b!511356))

(assert (= (and b!511356 (not res!312176)) b!511355))

(declare-fun m!492871 () Bool)

(assert (=> b!511358 m!492871))

(declare-fun m!492873 () Bool)

(assert (=> b!511362 m!492873))

(declare-fun m!492875 () Bool)

(assert (=> b!511362 m!492875))

(declare-fun m!492877 () Bool)

(assert (=> b!511362 m!492877))

(declare-fun m!492879 () Bool)

(assert (=> b!511362 m!492879))

(declare-fun m!492881 () Bool)

(assert (=> b!511362 m!492881))

(assert (=> b!511362 m!492879))

(declare-fun m!492883 () Bool)

(assert (=> b!511362 m!492883))

(assert (=> b!511362 m!492877))

(declare-fun m!492885 () Bool)

(assert (=> b!511362 m!492885))

(assert (=> b!511362 m!492877))

(declare-fun m!492887 () Bool)

(assert (=> b!511362 m!492887))

(assert (=> b!511362 m!492879))

(declare-fun m!492889 () Bool)

(assert (=> b!511362 m!492889))

(assert (=> b!511362 m!492879))

(declare-fun m!492891 () Bool)

(assert (=> b!511362 m!492891))

(declare-fun m!492893 () Bool)

(assert (=> b!511359 m!492893))

(declare-fun m!492895 () Bool)

(assert (=> b!511361 m!492895))

(declare-fun m!492897 () Bool)

(assert (=> b!511357 m!492897))

(assert (=> b!511364 m!492879))

(assert (=> b!511364 m!492879))

(declare-fun m!492899 () Bool)

(assert (=> b!511364 m!492899))

(declare-fun m!492901 () Bool)

(assert (=> b!511360 m!492901))

(declare-fun m!492903 () Bool)

(assert (=> start!46214 m!492903))

(declare-fun m!492905 () Bool)

(assert (=> start!46214 m!492905))

(push 1)

