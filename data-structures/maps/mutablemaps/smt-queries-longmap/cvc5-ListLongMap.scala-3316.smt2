; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45850 () Bool)

(assert start!45850)

(declare-fun b!507448 () Bool)

(declare-fun res!308566 () Bool)

(declare-fun e!296967 () Bool)

(assert (=> b!507448 (=> (not res!308566) (not e!296967))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507448 (= res!308566 (validKeyInArray!0 k!2280))))

(declare-fun b!507449 () Bool)

(declare-fun res!308558 () Bool)

(declare-fun e!296968 () Bool)

(assert (=> b!507449 (=> (not res!308558) (not e!296968))))

(declare-datatypes ((array!32566 0))(
  ( (array!32567 (arr!15660 (Array (_ BitVec 32) (_ BitVec 64))) (size!16024 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32566)

(declare-datatypes ((List!9871 0))(
  ( (Nil!9868) (Cons!9867 (h!10744 (_ BitVec 64)) (t!16107 List!9871)) )
))
(declare-fun arrayNoDuplicates!0 (array!32566 (_ BitVec 32) List!9871) Bool)

(assert (=> b!507449 (= res!308558 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9868))))

(declare-fun b!507450 () Bool)

(declare-fun e!296969 () Bool)

(assert (=> b!507450 (= e!296969 true)))

(declare-fun lt!231857 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!231858 () array!32566)

(declare-datatypes ((SeekEntryResult!4134 0))(
  ( (MissingZero!4134 (index!18724 (_ BitVec 32))) (Found!4134 (index!18725 (_ BitVec 32))) (Intermediate!4134 (undefined!4946 Bool) (index!18726 (_ BitVec 32)) (x!47746 (_ BitVec 32))) (Undefined!4134) (MissingVacant!4134 (index!18727 (_ BitVec 32))) )
))
(declare-fun lt!231859 () SeekEntryResult!4134)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32566 (_ BitVec 32)) SeekEntryResult!4134)

(assert (=> b!507450 (= lt!231859 (seekEntryOrOpen!0 lt!231857 lt!231858 mask!3524))))

(assert (=> b!507450 false))

(declare-fun b!507451 () Bool)

(declare-fun e!296966 () Bool)

(assert (=> b!507451 (= e!296966 e!296969)))

(declare-fun res!308563 () Bool)

(assert (=> b!507451 (=> res!308563 e!296969)))

(declare-fun lt!231856 () Bool)

(declare-fun lt!231852 () SeekEntryResult!4134)

(assert (=> b!507451 (= res!308563 (or (and (not lt!231856) (undefined!4946 lt!231852)) (and (not lt!231856) (not (undefined!4946 lt!231852)))))))

(assert (=> b!507451 (= lt!231856 (not (is-Intermediate!4134 lt!231852)))))

(declare-fun e!296971 () Bool)

(declare-fun b!507452 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507452 (= e!296971 (= (seekEntryOrOpen!0 (select (arr!15660 a!3235) j!176) a!3235 mask!3524) (Found!4134 j!176)))))

(declare-fun b!507453 () Bool)

(declare-fun res!308567 () Bool)

(assert (=> b!507453 (=> (not res!308567) (not e!296968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32566 (_ BitVec 32)) Bool)

(assert (=> b!507453 (= res!308567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507454 () Bool)

(declare-fun res!308564 () Bool)

(assert (=> b!507454 (=> (not res!308564) (not e!296967))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507454 (= res!308564 (and (= (size!16024 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16024 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16024 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507455 () Bool)

(declare-fun res!308560 () Bool)

(assert (=> b!507455 (=> (not res!308560) (not e!296967))))

(assert (=> b!507455 (= res!308560 (validKeyInArray!0 (select (arr!15660 a!3235) j!176)))))

(declare-fun b!507456 () Bool)

(assert (=> b!507456 (= e!296967 e!296968)))

(declare-fun res!308562 () Bool)

(assert (=> b!507456 (=> (not res!308562) (not e!296968))))

(declare-fun lt!231860 () SeekEntryResult!4134)

(assert (=> b!507456 (= res!308562 (or (= lt!231860 (MissingZero!4134 i!1204)) (= lt!231860 (MissingVacant!4134 i!1204))))))

(assert (=> b!507456 (= lt!231860 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507457 () Bool)

(declare-fun res!308565 () Bool)

(assert (=> b!507457 (=> (not res!308565) (not e!296967))))

(declare-fun arrayContainsKey!0 (array!32566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507457 (= res!308565 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507458 () Bool)

(assert (=> b!507458 (= e!296968 (not e!296966))))

(declare-fun res!308561 () Bool)

(assert (=> b!507458 (=> res!308561 e!296966)))

(declare-fun lt!231853 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32566 (_ BitVec 32)) SeekEntryResult!4134)

(assert (=> b!507458 (= res!308561 (= lt!231852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231853 lt!231857 lt!231858 mask!3524)))))

(declare-fun lt!231855 () (_ BitVec 32))

(assert (=> b!507458 (= lt!231852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231855 (select (arr!15660 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507458 (= lt!231853 (toIndex!0 lt!231857 mask!3524))))

(assert (=> b!507458 (= lt!231857 (select (store (arr!15660 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507458 (= lt!231855 (toIndex!0 (select (arr!15660 a!3235) j!176) mask!3524))))

(assert (=> b!507458 (= lt!231858 (array!32567 (store (arr!15660 a!3235) i!1204 k!2280) (size!16024 a!3235)))))

(assert (=> b!507458 e!296971))

(declare-fun res!308557 () Bool)

(assert (=> b!507458 (=> (not res!308557) (not e!296971))))

(assert (=> b!507458 (= res!308557 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15548 0))(
  ( (Unit!15549) )
))
(declare-fun lt!231854 () Unit!15548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15548)

(assert (=> b!507458 (= lt!231854 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!308559 () Bool)

(assert (=> start!45850 (=> (not res!308559) (not e!296967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45850 (= res!308559 (validMask!0 mask!3524))))

(assert (=> start!45850 e!296967))

(assert (=> start!45850 true))

(declare-fun array_inv!11434 (array!32566) Bool)

(assert (=> start!45850 (array_inv!11434 a!3235)))

(assert (= (and start!45850 res!308559) b!507454))

(assert (= (and b!507454 res!308564) b!507455))

(assert (= (and b!507455 res!308560) b!507448))

(assert (= (and b!507448 res!308566) b!507457))

(assert (= (and b!507457 res!308565) b!507456))

(assert (= (and b!507456 res!308562) b!507453))

(assert (= (and b!507453 res!308567) b!507449))

(assert (= (and b!507449 res!308558) b!507458))

(assert (= (and b!507458 res!308557) b!507452))

(assert (= (and b!507458 (not res!308561)) b!507451))

(assert (= (and b!507451 (not res!308563)) b!507450))

(declare-fun m!488287 () Bool)

(assert (=> b!507456 m!488287))

(declare-fun m!488289 () Bool)

(assert (=> b!507453 m!488289))

(declare-fun m!488291 () Bool)

(assert (=> start!45850 m!488291))

(declare-fun m!488293 () Bool)

(assert (=> start!45850 m!488293))

(declare-fun m!488295 () Bool)

(assert (=> b!507455 m!488295))

(assert (=> b!507455 m!488295))

(declare-fun m!488297 () Bool)

(assert (=> b!507455 m!488297))

(declare-fun m!488299 () Bool)

(assert (=> b!507449 m!488299))

(declare-fun m!488301 () Bool)

(assert (=> b!507458 m!488301))

(declare-fun m!488303 () Bool)

(assert (=> b!507458 m!488303))

(assert (=> b!507458 m!488295))

(declare-fun m!488305 () Bool)

(assert (=> b!507458 m!488305))

(assert (=> b!507458 m!488295))

(declare-fun m!488307 () Bool)

(assert (=> b!507458 m!488307))

(declare-fun m!488309 () Bool)

(assert (=> b!507458 m!488309))

(assert (=> b!507458 m!488295))

(declare-fun m!488311 () Bool)

(assert (=> b!507458 m!488311))

(declare-fun m!488313 () Bool)

(assert (=> b!507458 m!488313))

(declare-fun m!488315 () Bool)

(assert (=> b!507458 m!488315))

(declare-fun m!488317 () Bool)

(assert (=> b!507457 m!488317))

(assert (=> b!507452 m!488295))

(assert (=> b!507452 m!488295))

(declare-fun m!488319 () Bool)

(assert (=> b!507452 m!488319))

(declare-fun m!488321 () Bool)

(assert (=> b!507448 m!488321))

(declare-fun m!488323 () Bool)

(assert (=> b!507450 m!488323))

(push 1)

