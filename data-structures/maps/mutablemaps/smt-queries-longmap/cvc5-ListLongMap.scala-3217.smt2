; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45058 () Bool)

(assert start!45058)

(declare-fun b!494171 () Bool)

(declare-fun res!296900 () Bool)

(declare-fun e!290049 () Bool)

(assert (=> b!494171 (=> (not res!296900) (not e!290049))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494171 (= res!296900 (validKeyInArray!0 k!2280))))

(declare-fun b!494172 () Bool)

(declare-fun res!296892 () Bool)

(assert (=> b!494172 (=> (not res!296892) (not e!290049))))

(declare-datatypes ((array!31963 0))(
  ( (array!31964 (arr!15363 (Array (_ BitVec 32) (_ BitVec 64))) (size!15727 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31963)

(declare-fun arrayContainsKey!0 (array!31963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494172 (= res!296892 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494173 () Bool)

(declare-fun e!290047 () Bool)

(assert (=> b!494173 (= e!290047 true)))

(declare-datatypes ((SeekEntryResult!3837 0))(
  ( (MissingZero!3837 (index!17527 (_ BitVec 32))) (Found!3837 (index!17528 (_ BitVec 32))) (Intermediate!3837 (undefined!4649 Bool) (index!17529 (_ BitVec 32)) (x!46630 (_ BitVec 32))) (Undefined!3837) (MissingVacant!3837 (index!17530 (_ BitVec 32))) )
))
(declare-fun lt!223692 () SeekEntryResult!3837)

(assert (=> b!494173 (= lt!223692 Undefined!3837)))

(declare-fun b!494174 () Bool)

(declare-fun res!296896 () Bool)

(declare-fun e!290048 () Bool)

(assert (=> b!494174 (=> (not res!296896) (not e!290048))))

(declare-datatypes ((List!9574 0))(
  ( (Nil!9571) (Cons!9570 (h!10438 (_ BitVec 64)) (t!15810 List!9574)) )
))
(declare-fun arrayNoDuplicates!0 (array!31963 (_ BitVec 32) List!9574) Bool)

(assert (=> b!494174 (= res!296896 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9571))))

(declare-fun res!296895 () Bool)

(assert (=> start!45058 (=> (not res!296895) (not e!290049))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45058 (= res!296895 (validMask!0 mask!3524))))

(assert (=> start!45058 e!290049))

(assert (=> start!45058 true))

(declare-fun array_inv!11137 (array!31963) Bool)

(assert (=> start!45058 (array_inv!11137 a!3235)))

(declare-fun b!494175 () Bool)

(declare-fun res!296897 () Bool)

(assert (=> b!494175 (=> (not res!296897) (not e!290049))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494175 (= res!296897 (and (= (size!15727 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15727 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15727 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494176 () Bool)

(assert (=> b!494176 (= e!290048 (not e!290047))))

(declare-fun res!296899 () Bool)

(assert (=> b!494176 (=> res!296899 e!290047)))

(declare-fun lt!223693 () (_ BitVec 32))

(declare-fun lt!223694 () SeekEntryResult!3837)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31963 (_ BitVec 32)) SeekEntryResult!3837)

(assert (=> b!494176 (= res!296899 (= lt!223694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223693 (select (store (arr!15363 a!3235) i!1204 k!2280) j!176) (array!31964 (store (arr!15363 a!3235) i!1204 k!2280) (size!15727 a!3235)) mask!3524)))))

(declare-fun lt!223689 () (_ BitVec 32))

(assert (=> b!494176 (= lt!223694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223689 (select (arr!15363 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494176 (= lt!223693 (toIndex!0 (select (store (arr!15363 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494176 (= lt!223689 (toIndex!0 (select (arr!15363 a!3235) j!176) mask!3524))))

(assert (=> b!494176 (= lt!223692 (Found!3837 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31963 (_ BitVec 32)) SeekEntryResult!3837)

(assert (=> b!494176 (= lt!223692 (seekEntryOrOpen!0 (select (arr!15363 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31963 (_ BitVec 32)) Bool)

(assert (=> b!494176 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14612 0))(
  ( (Unit!14613) )
))
(declare-fun lt!223690 () Unit!14612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14612)

(assert (=> b!494176 (= lt!223690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494177 () Bool)

(declare-fun res!296891 () Bool)

(assert (=> b!494177 (=> res!296891 e!290047)))

(assert (=> b!494177 (= res!296891 (or (not (is-Intermediate!3837 lt!223694)) (not (undefined!4649 lt!223694))))))

(declare-fun b!494178 () Bool)

(declare-fun res!296898 () Bool)

(assert (=> b!494178 (=> (not res!296898) (not e!290048))))

(assert (=> b!494178 (= res!296898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494179 () Bool)

(declare-fun res!296893 () Bool)

(assert (=> b!494179 (=> (not res!296893) (not e!290049))))

(assert (=> b!494179 (= res!296893 (validKeyInArray!0 (select (arr!15363 a!3235) j!176)))))

(declare-fun b!494180 () Bool)

(assert (=> b!494180 (= e!290049 e!290048)))

(declare-fun res!296894 () Bool)

(assert (=> b!494180 (=> (not res!296894) (not e!290048))))

(declare-fun lt!223691 () SeekEntryResult!3837)

(assert (=> b!494180 (= res!296894 (or (= lt!223691 (MissingZero!3837 i!1204)) (= lt!223691 (MissingVacant!3837 i!1204))))))

(assert (=> b!494180 (= lt!223691 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45058 res!296895) b!494175))

(assert (= (and b!494175 res!296897) b!494179))

(assert (= (and b!494179 res!296893) b!494171))

(assert (= (and b!494171 res!296900) b!494172))

(assert (= (and b!494172 res!296892) b!494180))

(assert (= (and b!494180 res!296894) b!494178))

(assert (= (and b!494178 res!296898) b!494174))

(assert (= (and b!494174 res!296896) b!494176))

(assert (= (and b!494176 (not res!296899)) b!494177))

(assert (= (and b!494177 (not res!296891)) b!494173))

(declare-fun m!475237 () Bool)

(assert (=> b!494178 m!475237))

(declare-fun m!475239 () Bool)

(assert (=> b!494171 m!475239))

(declare-fun m!475241 () Bool)

(assert (=> b!494174 m!475241))

(declare-fun m!475243 () Bool)

(assert (=> b!494180 m!475243))

(declare-fun m!475245 () Bool)

(assert (=> b!494176 m!475245))

(declare-fun m!475247 () Bool)

(assert (=> b!494176 m!475247))

(declare-fun m!475249 () Bool)

(assert (=> b!494176 m!475249))

(declare-fun m!475251 () Bool)

(assert (=> b!494176 m!475251))

(declare-fun m!475253 () Bool)

(assert (=> b!494176 m!475253))

(assert (=> b!494176 m!475245))

(declare-fun m!475255 () Bool)

(assert (=> b!494176 m!475255))

(declare-fun m!475257 () Bool)

(assert (=> b!494176 m!475257))

(assert (=> b!494176 m!475245))

(declare-fun m!475259 () Bool)

(assert (=> b!494176 m!475259))

(assert (=> b!494176 m!475253))

(declare-fun m!475261 () Bool)

(assert (=> b!494176 m!475261))

(assert (=> b!494176 m!475253))

(declare-fun m!475263 () Bool)

(assert (=> b!494176 m!475263))

(assert (=> b!494176 m!475245))

(assert (=> b!494179 m!475245))

(assert (=> b!494179 m!475245))

(declare-fun m!475265 () Bool)

(assert (=> b!494179 m!475265))

(declare-fun m!475267 () Bool)

(assert (=> b!494172 m!475267))

(declare-fun m!475269 () Bool)

(assert (=> start!45058 m!475269))

(declare-fun m!475271 () Bool)

(assert (=> start!45058 m!475271))

(push 1)

