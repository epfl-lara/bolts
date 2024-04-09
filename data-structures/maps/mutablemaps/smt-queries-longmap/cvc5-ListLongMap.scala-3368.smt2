; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46270 () Bool)

(assert start!46270)

(declare-fun res!313008 () Bool)

(declare-fun e!299138 () Bool)

(assert (=> start!46270 (=> (not res!313008) (not e!299138))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46270 (= res!313008 (validMask!0 mask!3524))))

(assert (=> start!46270 e!299138))

(assert (=> start!46270 true))

(declare-datatypes ((array!32884 0))(
  ( (array!32885 (arr!15816 (Array (_ BitVec 32) (_ BitVec 64))) (size!16180 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32884)

(declare-fun array_inv!11590 (array!32884) Bool)

(assert (=> start!46270 (array_inv!11590 a!3235)))

(declare-fun b!512195 () Bool)

(declare-fun res!313014 () Bool)

(declare-fun e!299137 () Bool)

(assert (=> b!512195 (=> (not res!313014) (not e!299137))))

(declare-datatypes ((List!10027 0))(
  ( (Nil!10024) (Cons!10023 (h!10903 (_ BitVec 64)) (t!16263 List!10027)) )
))
(declare-fun arrayNoDuplicates!0 (array!32884 (_ BitVec 32) List!10027) Bool)

(assert (=> b!512195 (= res!313014 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10024))))

(declare-fun b!512196 () Bool)

(declare-fun res!313011 () Bool)

(assert (=> b!512196 (=> (not res!313011) (not e!299138))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512196 (= res!313011 (validKeyInArray!0 (select (arr!15816 a!3235) j!176)))))

(declare-fun b!512197 () Bool)

(declare-fun e!299140 () Bool)

(assert (=> b!512197 (= e!299137 (not e!299140))))

(declare-fun res!313012 () Bool)

(assert (=> b!512197 (=> res!313012 e!299140)))

(declare-datatypes ((SeekEntryResult!4290 0))(
  ( (MissingZero!4290 (index!19348 (_ BitVec 32))) (Found!4290 (index!19349 (_ BitVec 32))) (Intermediate!4290 (undefined!5102 Bool) (index!19350 (_ BitVec 32)) (x!48324 (_ BitVec 32))) (Undefined!4290) (MissingVacant!4290 (index!19351 (_ BitVec 32))) )
))
(declare-fun lt!234513 () SeekEntryResult!4290)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!234517 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32884 (_ BitVec 32)) SeekEntryResult!4290)

(assert (=> b!512197 (= res!313012 (= lt!234513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234517 (select (store (arr!15816 a!3235) i!1204 k!2280) j!176) (array!32885 (store (arr!15816 a!3235) i!1204 k!2280) (size!16180 a!3235)) mask!3524)))))

(declare-fun lt!234514 () (_ BitVec 32))

(assert (=> b!512197 (= lt!234513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234514 (select (arr!15816 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512197 (= lt!234517 (toIndex!0 (select (store (arr!15816 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512197 (= lt!234514 (toIndex!0 (select (arr!15816 a!3235) j!176) mask!3524))))

(declare-fun lt!234516 () SeekEntryResult!4290)

(assert (=> b!512197 (= lt!234516 (Found!4290 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32884 (_ BitVec 32)) SeekEntryResult!4290)

(assert (=> b!512197 (= lt!234516 (seekEntryOrOpen!0 (select (arr!15816 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32884 (_ BitVec 32)) Bool)

(assert (=> b!512197 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15830 0))(
  ( (Unit!15831) )
))
(declare-fun lt!234515 () Unit!15830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32884 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15830)

(assert (=> b!512197 (= lt!234515 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512198 () Bool)

(declare-fun res!313015 () Bool)

(assert (=> b!512198 (=> (not res!313015) (not e!299137))))

(assert (=> b!512198 (= res!313015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512199 () Bool)

(assert (=> b!512199 (= e!299140 true)))

(assert (=> b!512199 (= lt!234516 Undefined!4290)))

(declare-fun b!512200 () Bool)

(declare-fun res!313013 () Bool)

(assert (=> b!512200 (=> (not res!313013) (not e!299138))))

(declare-fun arrayContainsKey!0 (array!32884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512200 (= res!313013 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512201 () Bool)

(declare-fun res!313007 () Bool)

(assert (=> b!512201 (=> res!313007 e!299140)))

(assert (=> b!512201 (= res!313007 (or (not (is-Intermediate!4290 lt!234513)) (not (undefined!5102 lt!234513))))))

(declare-fun b!512202 () Bool)

(assert (=> b!512202 (= e!299138 e!299137)))

(declare-fun res!313016 () Bool)

(assert (=> b!512202 (=> (not res!313016) (not e!299137))))

(declare-fun lt!234518 () SeekEntryResult!4290)

(assert (=> b!512202 (= res!313016 (or (= lt!234518 (MissingZero!4290 i!1204)) (= lt!234518 (MissingVacant!4290 i!1204))))))

(assert (=> b!512202 (= lt!234518 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512203 () Bool)

(declare-fun res!313010 () Bool)

(assert (=> b!512203 (=> (not res!313010) (not e!299138))))

(assert (=> b!512203 (= res!313010 (validKeyInArray!0 k!2280))))

(declare-fun b!512204 () Bool)

(declare-fun res!313009 () Bool)

(assert (=> b!512204 (=> (not res!313009) (not e!299138))))

(assert (=> b!512204 (= res!313009 (and (= (size!16180 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16180 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16180 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46270 res!313008) b!512204))

(assert (= (and b!512204 res!313009) b!512196))

(assert (= (and b!512196 res!313011) b!512203))

(assert (= (and b!512203 res!313010) b!512200))

(assert (= (and b!512200 res!313013) b!512202))

(assert (= (and b!512202 res!313016) b!512198))

(assert (= (and b!512198 res!313015) b!512195))

(assert (= (and b!512195 res!313014) b!512197))

(assert (= (and b!512197 (not res!313012)) b!512201))

(assert (= (and b!512201 (not res!313007)) b!512199))

(declare-fun m!493879 () Bool)

(assert (=> b!512200 m!493879))

(declare-fun m!493881 () Bool)

(assert (=> b!512195 m!493881))

(declare-fun m!493883 () Bool)

(assert (=> b!512202 m!493883))

(declare-fun m!493885 () Bool)

(assert (=> b!512197 m!493885))

(declare-fun m!493887 () Bool)

(assert (=> b!512197 m!493887))

(declare-fun m!493889 () Bool)

(assert (=> b!512197 m!493889))

(declare-fun m!493891 () Bool)

(assert (=> b!512197 m!493891))

(declare-fun m!493893 () Bool)

(assert (=> b!512197 m!493893))

(assert (=> b!512197 m!493889))

(declare-fun m!493895 () Bool)

(assert (=> b!512197 m!493895))

(assert (=> b!512197 m!493891))

(declare-fun m!493897 () Bool)

(assert (=> b!512197 m!493897))

(assert (=> b!512197 m!493891))

(declare-fun m!493899 () Bool)

(assert (=> b!512197 m!493899))

(assert (=> b!512197 m!493891))

(declare-fun m!493901 () Bool)

(assert (=> b!512197 m!493901))

(assert (=> b!512197 m!493889))

(declare-fun m!493903 () Bool)

(assert (=> b!512197 m!493903))

(assert (=> b!512196 m!493891))

(assert (=> b!512196 m!493891))

(declare-fun m!493905 () Bool)

(assert (=> b!512196 m!493905))

(declare-fun m!493907 () Bool)

(assert (=> b!512198 m!493907))

(declare-fun m!493909 () Bool)

(assert (=> start!46270 m!493909))

(declare-fun m!493911 () Bool)

(assert (=> start!46270 m!493911))

(declare-fun m!493913 () Bool)

(assert (=> b!512203 m!493913))

(push 1)

