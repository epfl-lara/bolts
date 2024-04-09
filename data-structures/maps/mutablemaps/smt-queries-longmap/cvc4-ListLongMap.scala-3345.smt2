; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46076 () Bool)

(assert start!46076)

(declare-fun b!509994 () Bool)

(declare-fun res!310991 () Bool)

(declare-fun e!298149 () Bool)

(assert (=> b!509994 (=> (not res!310991) (not e!298149))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32747 0))(
  ( (array!32748 (arr!15749 (Array (_ BitVec 32) (_ BitVec 64))) (size!16113 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32747)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509994 (= res!310991 (and (= (size!16113 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16113 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16113 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509995 () Bool)

(declare-fun res!310990 () Bool)

(declare-fun e!298147 () Bool)

(assert (=> b!509995 (=> (not res!310990) (not e!298147))))

(declare-datatypes ((List!9960 0))(
  ( (Nil!9957) (Cons!9956 (h!10833 (_ BitVec 64)) (t!16196 List!9960)) )
))
(declare-fun arrayNoDuplicates!0 (array!32747 (_ BitVec 32) List!9960) Bool)

(assert (=> b!509995 (= res!310990 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9957))))

(declare-fun b!509996 () Bool)

(declare-fun e!298150 () Bool)

(assert (=> b!509996 (= e!298147 (not e!298150))))

(declare-fun res!310996 () Bool)

(assert (=> b!509996 (=> res!310996 e!298150)))

(declare-fun lt!233180 () (_ BitVec 64))

(declare-fun lt!233178 () array!32747)

(declare-datatypes ((SeekEntryResult!4223 0))(
  ( (MissingZero!4223 (index!19080 (_ BitVec 32))) (Found!4223 (index!19081 (_ BitVec 32))) (Intermediate!4223 (undefined!5035 Bool) (index!19082 (_ BitVec 32)) (x!48067 (_ BitVec 32))) (Undefined!4223) (MissingVacant!4223 (index!19083 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32747 (_ BitVec 32)) SeekEntryResult!4223)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509996 (= res!310996 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15749 a!3235) j!176) mask!3524) (select (arr!15749 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233180 mask!3524) lt!233180 lt!233178 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!509996 (= lt!233180 (select (store (arr!15749 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!509996 (= lt!233178 (array!32748 (store (arr!15749 a!3235) i!1204 k!2280) (size!16113 a!3235)))))

(declare-fun lt!233183 () SeekEntryResult!4223)

(assert (=> b!509996 (= lt!233183 (Found!4223 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32747 (_ BitVec 32)) SeekEntryResult!4223)

(assert (=> b!509996 (= lt!233183 (seekEntryOrOpen!0 (select (arr!15749 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32747 (_ BitVec 32)) Bool)

(assert (=> b!509996 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15696 0))(
  ( (Unit!15697) )
))
(declare-fun lt!233179 () Unit!15696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15696)

(assert (=> b!509996 (= lt!233179 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!310994 () Bool)

(assert (=> start!46076 (=> (not res!310994) (not e!298149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46076 (= res!310994 (validMask!0 mask!3524))))

(assert (=> start!46076 e!298149))

(assert (=> start!46076 true))

(declare-fun array_inv!11523 (array!32747) Bool)

(assert (=> start!46076 (array_inv!11523 a!3235)))

(declare-fun b!509997 () Bool)

(declare-fun res!310997 () Bool)

(assert (=> b!509997 (=> (not res!310997) (not e!298149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509997 (= res!310997 (validKeyInArray!0 k!2280))))

(declare-fun b!509998 () Bool)

(assert (=> b!509998 (= e!298149 e!298147)))

(declare-fun res!310993 () Bool)

(assert (=> b!509998 (=> (not res!310993) (not e!298147))))

(declare-fun lt!233181 () SeekEntryResult!4223)

(assert (=> b!509998 (= res!310993 (or (= lt!233181 (MissingZero!4223 i!1204)) (= lt!233181 (MissingVacant!4223 i!1204))))))

(assert (=> b!509998 (= lt!233181 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509999 () Bool)

(declare-fun res!310992 () Bool)

(assert (=> b!509999 (=> (not res!310992) (not e!298147))))

(assert (=> b!509999 (= res!310992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510000 () Bool)

(assert (=> b!510000 (= e!298150 true)))

(assert (=> b!510000 (= lt!233183 (seekEntryOrOpen!0 lt!233180 lt!233178 mask!3524))))

(declare-fun lt!233182 () Unit!15696)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15696)

(assert (=> b!510000 (= lt!233182 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510001 () Bool)

(declare-fun res!310995 () Bool)

(assert (=> b!510001 (=> (not res!310995) (not e!298149))))

(declare-fun arrayContainsKey!0 (array!32747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510001 (= res!310995 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510002 () Bool)

(declare-fun res!310989 () Bool)

(assert (=> b!510002 (=> (not res!310989) (not e!298149))))

(assert (=> b!510002 (= res!310989 (validKeyInArray!0 (select (arr!15749 a!3235) j!176)))))

(assert (= (and start!46076 res!310994) b!509994))

(assert (= (and b!509994 res!310991) b!510002))

(assert (= (and b!510002 res!310989) b!509997))

(assert (= (and b!509997 res!310997) b!510001))

(assert (= (and b!510001 res!310995) b!509998))

(assert (= (and b!509998 res!310993) b!509999))

(assert (= (and b!509999 res!310992) b!509995))

(assert (= (and b!509995 res!310990) b!509996))

(assert (= (and b!509996 (not res!310996)) b!510000))

(declare-fun m!491175 () Bool)

(assert (=> b!509995 m!491175))

(declare-fun m!491177 () Bool)

(assert (=> b!509997 m!491177))

(declare-fun m!491179 () Bool)

(assert (=> b!510000 m!491179))

(declare-fun m!491181 () Bool)

(assert (=> b!510000 m!491181))

(declare-fun m!491183 () Bool)

(assert (=> b!509999 m!491183))

(declare-fun m!491185 () Bool)

(assert (=> b!509998 m!491185))

(declare-fun m!491187 () Bool)

(assert (=> b!510002 m!491187))

(assert (=> b!510002 m!491187))

(declare-fun m!491189 () Bool)

(assert (=> b!510002 m!491189))

(declare-fun m!491191 () Bool)

(assert (=> b!509996 m!491191))

(declare-fun m!491193 () Bool)

(assert (=> b!509996 m!491193))

(declare-fun m!491195 () Bool)

(assert (=> b!509996 m!491195))

(declare-fun m!491197 () Bool)

(assert (=> b!509996 m!491197))

(assert (=> b!509996 m!491187))

(declare-fun m!491199 () Bool)

(assert (=> b!509996 m!491199))

(declare-fun m!491201 () Bool)

(assert (=> b!509996 m!491201))

(assert (=> b!509996 m!491187))

(assert (=> b!509996 m!491197))

(assert (=> b!509996 m!491201))

(declare-fun m!491203 () Bool)

(assert (=> b!509996 m!491203))

(assert (=> b!509996 m!491187))

(declare-fun m!491205 () Bool)

(assert (=> b!509996 m!491205))

(assert (=> b!509996 m!491187))

(declare-fun m!491207 () Bool)

(assert (=> b!509996 m!491207))

(declare-fun m!491209 () Bool)

(assert (=> start!46076 m!491209))

(declare-fun m!491211 () Bool)

(assert (=> start!46076 m!491211))

(declare-fun m!491213 () Bool)

(assert (=> b!510001 m!491213))

(push 1)

