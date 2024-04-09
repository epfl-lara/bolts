; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44776 () Bool)

(assert start!44776)

(declare-fun b!491247 () Bool)

(declare-fun e!288651 () Bool)

(declare-fun e!288652 () Bool)

(assert (=> b!491247 (= e!288651 e!288652)))

(declare-fun res!294338 () Bool)

(assert (=> b!491247 (=> (not res!294338) (not e!288652))))

(declare-datatypes ((SeekEntryResult!3756 0))(
  ( (MissingZero!3756 (index!17203 (_ BitVec 32))) (Found!3756 (index!17204 (_ BitVec 32))) (Intermediate!3756 (undefined!4568 Bool) (index!17205 (_ BitVec 32)) (x!46321 (_ BitVec 32))) (Undefined!3756) (MissingVacant!3756 (index!17206 (_ BitVec 32))) )
))
(declare-fun lt!222118 () SeekEntryResult!3756)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491247 (= res!294338 (or (= lt!222118 (MissingZero!3756 i!1204)) (= lt!222118 (MissingVacant!3756 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31795 0))(
  ( (array!31796 (arr!15282 (Array (_ BitVec 32) (_ BitVec 64))) (size!15646 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31795)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31795 (_ BitVec 32)) SeekEntryResult!3756)

(assert (=> b!491247 (= lt!222118 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491248 () Bool)

(declare-fun res!294335 () Bool)

(assert (=> b!491248 (=> (not res!294335) (not e!288652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31795 (_ BitVec 32)) Bool)

(assert (=> b!491248 (= res!294335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491249 () Bool)

(declare-fun res!294340 () Bool)

(assert (=> b!491249 (=> (not res!294340) (not e!288652))))

(declare-datatypes ((List!9493 0))(
  ( (Nil!9490) (Cons!9489 (h!10351 (_ BitVec 64)) (t!15729 List!9493)) )
))
(declare-fun arrayNoDuplicates!0 (array!31795 (_ BitVec 32) List!9493) Bool)

(assert (=> b!491249 (= res!294340 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9490))))

(declare-fun b!491250 () Bool)

(declare-fun e!288650 () Bool)

(assert (=> b!491250 (= e!288652 (not e!288650))))

(declare-fun res!294339 () Bool)

(assert (=> b!491250 (=> res!294339 e!288650)))

(declare-fun lt!222120 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222119 () array!31795)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31795 (_ BitVec 32)) SeekEntryResult!3756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491250 (= res!294339 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15282 a!3235) j!176) mask!3524) (select (arr!15282 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222120 mask!3524) lt!222120 lt!222119 mask!3524))))))

(assert (=> b!491250 (= lt!222120 (select (store (arr!15282 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491250 (= lt!222119 (array!31796 (store (arr!15282 a!3235) i!1204 k!2280) (size!15646 a!3235)))))

(declare-fun lt!222122 () SeekEntryResult!3756)

(assert (=> b!491250 (= lt!222122 (Found!3756 j!176))))

(assert (=> b!491250 (= lt!222122 (seekEntryOrOpen!0 (select (arr!15282 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491250 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14450 0))(
  ( (Unit!14451) )
))
(declare-fun lt!222117 () Unit!14450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14450)

(assert (=> b!491250 (= lt!222117 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491252 () Bool)

(declare-fun res!294333 () Bool)

(assert (=> b!491252 (=> (not res!294333) (not e!288651))))

(declare-fun arrayContainsKey!0 (array!31795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491252 (= res!294333 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491253 () Bool)

(declare-fun res!294337 () Bool)

(assert (=> b!491253 (=> (not res!294337) (not e!288651))))

(assert (=> b!491253 (= res!294337 (and (= (size!15646 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15646 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15646 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!294334 () Bool)

(assert (=> start!44776 (=> (not res!294334) (not e!288651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44776 (= res!294334 (validMask!0 mask!3524))))

(assert (=> start!44776 e!288651))

(assert (=> start!44776 true))

(declare-fun array_inv!11056 (array!31795) Bool)

(assert (=> start!44776 (array_inv!11056 a!3235)))

(declare-fun b!491251 () Bool)

(declare-fun res!294341 () Bool)

(assert (=> b!491251 (=> (not res!294341) (not e!288651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491251 (= res!294341 (validKeyInArray!0 k!2280))))

(declare-fun b!491254 () Bool)

(declare-fun res!294336 () Bool)

(assert (=> b!491254 (=> (not res!294336) (not e!288651))))

(assert (=> b!491254 (= res!294336 (validKeyInArray!0 (select (arr!15282 a!3235) j!176)))))

(declare-fun b!491255 () Bool)

(assert (=> b!491255 (= e!288650 true)))

(assert (=> b!491255 (= lt!222122 (seekEntryOrOpen!0 lt!222120 lt!222119 mask!3524))))

(declare-fun lt!222121 () Unit!14450)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31795 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14450)

(assert (=> b!491255 (= lt!222121 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!44776 res!294334) b!491253))

(assert (= (and b!491253 res!294337) b!491254))

(assert (= (and b!491254 res!294336) b!491251))

(assert (= (and b!491251 res!294341) b!491252))

(assert (= (and b!491252 res!294333) b!491247))

(assert (= (and b!491247 res!294338) b!491248))

(assert (= (and b!491248 res!294335) b!491249))

(assert (= (and b!491249 res!294340) b!491250))

(assert (= (and b!491250 (not res!294339)) b!491255))

(declare-fun m!471865 () Bool)

(assert (=> b!491247 m!471865))

(declare-fun m!471867 () Bool)

(assert (=> b!491255 m!471867))

(declare-fun m!471869 () Bool)

(assert (=> b!491255 m!471869))

(declare-fun m!471871 () Bool)

(assert (=> b!491252 m!471871))

(declare-fun m!471873 () Bool)

(assert (=> b!491250 m!471873))

(declare-fun m!471875 () Bool)

(assert (=> b!491250 m!471875))

(declare-fun m!471877 () Bool)

(assert (=> b!491250 m!471877))

(declare-fun m!471879 () Bool)

(assert (=> b!491250 m!471879))

(declare-fun m!471881 () Bool)

(assert (=> b!491250 m!471881))

(declare-fun m!471883 () Bool)

(assert (=> b!491250 m!471883))

(declare-fun m!471885 () Bool)

(assert (=> b!491250 m!471885))

(declare-fun m!471887 () Bool)

(assert (=> b!491250 m!471887))

(assert (=> b!491250 m!471885))

(assert (=> b!491250 m!471883))

(assert (=> b!491250 m!471885))

(declare-fun m!471889 () Bool)

(assert (=> b!491250 m!471889))

(assert (=> b!491250 m!471885))

(declare-fun m!471891 () Bool)

(assert (=> b!491250 m!471891))

(assert (=> b!491250 m!471873))

(declare-fun m!471893 () Bool)

(assert (=> b!491251 m!471893))

(declare-fun m!471895 () Bool)

(assert (=> start!44776 m!471895))

(declare-fun m!471897 () Bool)

(assert (=> start!44776 m!471897))

(assert (=> b!491254 m!471885))

(assert (=> b!491254 m!471885))

(declare-fun m!471899 () Bool)

(assert (=> b!491254 m!471899))

(declare-fun m!471901 () Bool)

(assert (=> b!491248 m!471901))

(declare-fun m!471903 () Bool)

(assert (=> b!491249 m!471903))

(push 1)

