; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45280 () Bool)

(assert start!45280)

(declare-fun b!497083 () Bool)

(declare-fun res!299620 () Bool)

(declare-fun e!291397 () Bool)

(assert (=> b!497083 (=> (not res!299620) (not e!291397))))

(declare-datatypes ((array!32128 0))(
  ( (array!32129 (arr!15444 (Array (_ BitVec 32) (_ BitVec 64))) (size!15808 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32128)

(declare-datatypes ((List!9655 0))(
  ( (Nil!9652) (Cons!9651 (h!10522 (_ BitVec 64)) (t!15891 List!9655)) )
))
(declare-fun arrayNoDuplicates!0 (array!32128 (_ BitVec 32) List!9655) Bool)

(assert (=> b!497083 (= res!299620 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9652))))

(declare-fun b!497084 () Bool)

(declare-fun res!299623 () Bool)

(declare-fun e!291399 () Bool)

(assert (=> b!497084 (=> (not res!299623) (not e!291399))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497084 (= res!299623 (validKeyInArray!0 (select (arr!15444 a!3235) j!176)))))

(declare-fun b!497085 () Bool)

(declare-fun e!291398 () Bool)

(assert (=> b!497085 (= e!291398 true)))

(declare-datatypes ((SeekEntryResult!3918 0))(
  ( (MissingZero!3918 (index!17851 (_ BitVec 32))) (Found!3918 (index!17852 (_ BitVec 32))) (Intermediate!3918 (undefined!4730 Bool) (index!17853 (_ BitVec 32)) (x!46933 (_ BitVec 32))) (Undefined!3918) (MissingVacant!3918 (index!17854 (_ BitVec 32))) )
))
(declare-fun lt!225085 () SeekEntryResult!3918)

(assert (=> b!497085 (and (bvslt (x!46933 lt!225085) #b01111111111111111111111111111110) (or (= (select (arr!15444 a!3235) (index!17853 lt!225085)) (select (arr!15444 a!3235) j!176)) (= (select (arr!15444 a!3235) (index!17853 lt!225085)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15444 a!3235) (index!17853 lt!225085)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497086 () Bool)

(declare-fun res!299625 () Bool)

(assert (=> b!497086 (=> (not res!299625) (not e!291399))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!497086 (= res!299625 (validKeyInArray!0 k!2280))))

(declare-fun b!497087 () Bool)

(declare-fun res!299624 () Bool)

(assert (=> b!497087 (=> (not res!299624) (not e!291399))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497087 (= res!299624 (and (= (size!15808 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15808 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15808 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497088 () Bool)

(assert (=> b!497088 (= e!291397 (not e!291398))))

(declare-fun res!299621 () Bool)

(assert (=> b!497088 (=> res!299621 e!291398)))

(declare-fun lt!225086 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32128 (_ BitVec 32)) SeekEntryResult!3918)

(assert (=> b!497088 (= res!299621 (= lt!225085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225086 (select (store (arr!15444 a!3235) i!1204 k!2280) j!176) (array!32129 (store (arr!15444 a!3235) i!1204 k!2280) (size!15808 a!3235)) mask!3524)))))

(declare-fun lt!225088 () (_ BitVec 32))

(assert (=> b!497088 (= lt!225085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225088 (select (arr!15444 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497088 (= lt!225086 (toIndex!0 (select (store (arr!15444 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!497088 (= lt!225088 (toIndex!0 (select (arr!15444 a!3235) j!176) mask!3524))))

(declare-fun e!291400 () Bool)

(assert (=> b!497088 e!291400))

(declare-fun res!299622 () Bool)

(assert (=> b!497088 (=> (not res!299622) (not e!291400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32128 (_ BitVec 32)) Bool)

(assert (=> b!497088 (= res!299622 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14774 0))(
  ( (Unit!14775) )
))
(declare-fun lt!225089 () Unit!14774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14774)

(assert (=> b!497088 (= lt!225089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497089 () Bool)

(declare-fun res!299628 () Bool)

(assert (=> b!497089 (=> res!299628 e!291398)))

(assert (=> b!497089 (= res!299628 (or (undefined!4730 lt!225085) (not (is-Intermediate!3918 lt!225085))))))

(declare-fun b!497090 () Bool)

(declare-fun res!299627 () Bool)

(assert (=> b!497090 (=> (not res!299627) (not e!291397))))

(assert (=> b!497090 (= res!299627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497091 () Bool)

(assert (=> b!497091 (= e!291399 e!291397)))

(declare-fun res!299629 () Bool)

(assert (=> b!497091 (=> (not res!299629) (not e!291397))))

(declare-fun lt!225087 () SeekEntryResult!3918)

(assert (=> b!497091 (= res!299629 (or (= lt!225087 (MissingZero!3918 i!1204)) (= lt!225087 (MissingVacant!3918 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32128 (_ BitVec 32)) SeekEntryResult!3918)

(assert (=> b!497091 (= lt!225087 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497092 () Bool)

(assert (=> b!497092 (= e!291400 (= (seekEntryOrOpen!0 (select (arr!15444 a!3235) j!176) a!3235 mask!3524) (Found!3918 j!176)))))

(declare-fun b!497093 () Bool)

(declare-fun res!299626 () Bool)

(assert (=> b!497093 (=> (not res!299626) (not e!291399))))

(declare-fun arrayContainsKey!0 (array!32128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497093 (= res!299626 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!299630 () Bool)

(assert (=> start!45280 (=> (not res!299630) (not e!291399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45280 (= res!299630 (validMask!0 mask!3524))))

(assert (=> start!45280 e!291399))

(assert (=> start!45280 true))

(declare-fun array_inv!11218 (array!32128) Bool)

(assert (=> start!45280 (array_inv!11218 a!3235)))

(assert (= (and start!45280 res!299630) b!497087))

(assert (= (and b!497087 res!299624) b!497084))

(assert (= (and b!497084 res!299623) b!497086))

(assert (= (and b!497086 res!299625) b!497093))

(assert (= (and b!497093 res!299626) b!497091))

(assert (= (and b!497091 res!299629) b!497090))

(assert (= (and b!497090 res!299627) b!497083))

(assert (= (and b!497083 res!299620) b!497088))

(assert (= (and b!497088 res!299622) b!497092))

(assert (= (and b!497088 (not res!299621)) b!497089))

(assert (= (and b!497089 (not res!299628)) b!497085))

(declare-fun m!478483 () Bool)

(assert (=> b!497091 m!478483))

(declare-fun m!478485 () Bool)

(assert (=> b!497086 m!478485))

(declare-fun m!478487 () Bool)

(assert (=> b!497085 m!478487))

(declare-fun m!478489 () Bool)

(assert (=> b!497085 m!478489))

(assert (=> b!497092 m!478489))

(assert (=> b!497092 m!478489))

(declare-fun m!478491 () Bool)

(assert (=> b!497092 m!478491))

(declare-fun m!478493 () Bool)

(assert (=> b!497083 m!478493))

(declare-fun m!478495 () Bool)

(assert (=> start!45280 m!478495))

(declare-fun m!478497 () Bool)

(assert (=> start!45280 m!478497))

(assert (=> b!497084 m!478489))

(assert (=> b!497084 m!478489))

(declare-fun m!478499 () Bool)

(assert (=> b!497084 m!478499))

(declare-fun m!478501 () Bool)

(assert (=> b!497090 m!478501))

(declare-fun m!478503 () Bool)

(assert (=> b!497088 m!478503))

(declare-fun m!478505 () Bool)

(assert (=> b!497088 m!478505))

(declare-fun m!478507 () Bool)

(assert (=> b!497088 m!478507))

(assert (=> b!497088 m!478489))

(declare-fun m!478509 () Bool)

(assert (=> b!497088 m!478509))

(assert (=> b!497088 m!478489))

(declare-fun m!478511 () Bool)

(assert (=> b!497088 m!478511))

(assert (=> b!497088 m!478507))

(declare-fun m!478513 () Bool)

(assert (=> b!497088 m!478513))

(assert (=> b!497088 m!478507))

(declare-fun m!478515 () Bool)

(assert (=> b!497088 m!478515))

(assert (=> b!497088 m!478489))

(declare-fun m!478517 () Bool)

(assert (=> b!497088 m!478517))

(declare-fun m!478519 () Bool)

(assert (=> b!497093 m!478519))

(push 1)

