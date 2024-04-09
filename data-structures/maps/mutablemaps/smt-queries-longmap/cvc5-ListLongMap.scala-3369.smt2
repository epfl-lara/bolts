; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46276 () Bool)

(assert start!46276)

(declare-fun res!313103 () Bool)

(declare-fun e!299176 () Bool)

(assert (=> start!46276 (=> (not res!313103) (not e!299176))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46276 (= res!313103 (validMask!0 mask!3524))))

(assert (=> start!46276 e!299176))

(assert (=> start!46276 true))

(declare-datatypes ((array!32890 0))(
  ( (array!32891 (arr!15819 (Array (_ BitVec 32) (_ BitVec 64))) (size!16183 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32890)

(declare-fun array_inv!11593 (array!32890) Bool)

(assert (=> start!46276 (array_inv!11593 a!3235)))

(declare-fun b!512285 () Bool)

(declare-fun res!313105 () Bool)

(assert (=> b!512285 (=> (not res!313105) (not e!299176))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512285 (= res!313105 (validKeyInArray!0 k!2280))))

(declare-fun b!512286 () Bool)

(declare-fun res!313100 () Bool)

(declare-fun e!299174 () Bool)

(assert (=> b!512286 (=> (not res!313100) (not e!299174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32890 (_ BitVec 32)) Bool)

(assert (=> b!512286 (= res!313100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512287 () Bool)

(declare-fun res!313098 () Bool)

(assert (=> b!512287 (=> (not res!313098) (not e!299174))))

(declare-datatypes ((List!10030 0))(
  ( (Nil!10027) (Cons!10026 (h!10906 (_ BitVec 64)) (t!16266 List!10030)) )
))
(declare-fun arrayNoDuplicates!0 (array!32890 (_ BitVec 32) List!10030) Bool)

(assert (=> b!512287 (= res!313098 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10027))))

(declare-fun b!512288 () Bool)

(declare-fun res!313104 () Bool)

(assert (=> b!512288 (=> (not res!313104) (not e!299176))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!512288 (= res!313104 (and (= (size!16183 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16183 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16183 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512289 () Bool)

(assert (=> b!512289 (= e!299176 e!299174)))

(declare-fun res!313106 () Bool)

(assert (=> b!512289 (=> (not res!313106) (not e!299174))))

(declare-datatypes ((SeekEntryResult!4293 0))(
  ( (MissingZero!4293 (index!19360 (_ BitVec 32))) (Found!4293 (index!19361 (_ BitVec 32))) (Intermediate!4293 (undefined!5105 Bool) (index!19362 (_ BitVec 32)) (x!48335 (_ BitVec 32))) (Undefined!4293) (MissingVacant!4293 (index!19363 (_ BitVec 32))) )
))
(declare-fun lt!234569 () SeekEntryResult!4293)

(assert (=> b!512289 (= res!313106 (or (= lt!234569 (MissingZero!4293 i!1204)) (= lt!234569 (MissingVacant!4293 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32890 (_ BitVec 32)) SeekEntryResult!4293)

(assert (=> b!512289 (= lt!234569 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512290 () Bool)

(declare-fun res!313102 () Bool)

(assert (=> b!512290 (=> (not res!313102) (not e!299176))))

(declare-fun arrayContainsKey!0 (array!32890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512290 (= res!313102 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512291 () Bool)

(declare-fun e!299175 () Bool)

(assert (=> b!512291 (= e!299175 true)))

(declare-fun lt!234571 () SeekEntryResult!4293)

(assert (=> b!512291 (= lt!234571 Undefined!4293)))

(declare-fun b!512292 () Bool)

(assert (=> b!512292 (= e!299174 (not e!299175))))

(declare-fun res!313099 () Bool)

(assert (=> b!512292 (=> res!313099 e!299175)))

(declare-fun lt!234567 () (_ BitVec 32))

(declare-fun lt!234572 () SeekEntryResult!4293)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32890 (_ BitVec 32)) SeekEntryResult!4293)

(assert (=> b!512292 (= res!313099 (= lt!234572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234567 (select (store (arr!15819 a!3235) i!1204 k!2280) j!176) (array!32891 (store (arr!15819 a!3235) i!1204 k!2280) (size!16183 a!3235)) mask!3524)))))

(declare-fun lt!234568 () (_ BitVec 32))

(assert (=> b!512292 (= lt!234572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234568 (select (arr!15819 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512292 (= lt!234567 (toIndex!0 (select (store (arr!15819 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512292 (= lt!234568 (toIndex!0 (select (arr!15819 a!3235) j!176) mask!3524))))

(assert (=> b!512292 (= lt!234571 (Found!4293 j!176))))

(assert (=> b!512292 (= lt!234571 (seekEntryOrOpen!0 (select (arr!15819 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!512292 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15836 0))(
  ( (Unit!15837) )
))
(declare-fun lt!234570 () Unit!15836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32890 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15836)

(assert (=> b!512292 (= lt!234570 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512293 () Bool)

(declare-fun res!313101 () Bool)

(assert (=> b!512293 (=> res!313101 e!299175)))

(assert (=> b!512293 (= res!313101 (or (not (is-Intermediate!4293 lt!234572)) (not (undefined!5105 lt!234572))))))

(declare-fun b!512294 () Bool)

(declare-fun res!313097 () Bool)

(assert (=> b!512294 (=> (not res!313097) (not e!299176))))

(assert (=> b!512294 (= res!313097 (validKeyInArray!0 (select (arr!15819 a!3235) j!176)))))

(assert (= (and start!46276 res!313103) b!512288))

(assert (= (and b!512288 res!313104) b!512294))

(assert (= (and b!512294 res!313097) b!512285))

(assert (= (and b!512285 res!313105) b!512290))

(assert (= (and b!512290 res!313102) b!512289))

(assert (= (and b!512289 res!313106) b!512286))

(assert (= (and b!512286 res!313100) b!512287))

(assert (= (and b!512287 res!313098) b!512292))

(assert (= (and b!512292 (not res!313099)) b!512293))

(assert (= (and b!512293 (not res!313101)) b!512291))

(declare-fun m!493987 () Bool)

(assert (=> b!512289 m!493987))

(declare-fun m!493989 () Bool)

(assert (=> b!512285 m!493989))

(declare-fun m!493991 () Bool)

(assert (=> b!512292 m!493991))

(declare-fun m!493993 () Bool)

(assert (=> b!512292 m!493993))

(declare-fun m!493995 () Bool)

(assert (=> b!512292 m!493995))

(declare-fun m!493997 () Bool)

(assert (=> b!512292 m!493997))

(declare-fun m!493999 () Bool)

(assert (=> b!512292 m!493999))

(declare-fun m!494001 () Bool)

(assert (=> b!512292 m!494001))

(assert (=> b!512292 m!493997))

(assert (=> b!512292 m!493991))

(declare-fun m!494003 () Bool)

(assert (=> b!512292 m!494003))

(assert (=> b!512292 m!493991))

(declare-fun m!494005 () Bool)

(assert (=> b!512292 m!494005))

(assert (=> b!512292 m!493991))

(declare-fun m!494007 () Bool)

(assert (=> b!512292 m!494007))

(assert (=> b!512292 m!493997))

(declare-fun m!494009 () Bool)

(assert (=> b!512292 m!494009))

(assert (=> b!512294 m!493991))

(assert (=> b!512294 m!493991))

(declare-fun m!494011 () Bool)

(assert (=> b!512294 m!494011))

(declare-fun m!494013 () Bool)

(assert (=> b!512287 m!494013))

(declare-fun m!494015 () Bool)

(assert (=> start!46276 m!494015))

(declare-fun m!494017 () Bool)

(assert (=> start!46276 m!494017))

(declare-fun m!494019 () Bool)

(assert (=> b!512286 m!494019))

(declare-fun m!494021 () Bool)

(assert (=> b!512290 m!494021))

(push 1)

