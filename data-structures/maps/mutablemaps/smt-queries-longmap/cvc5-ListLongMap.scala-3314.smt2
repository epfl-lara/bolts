; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45838 () Bool)

(assert start!45838)

(declare-fun b!507250 () Bool)

(declare-fun res!308366 () Bool)

(declare-fun e!296860 () Bool)

(assert (=> b!507250 (=> (not res!308366) (not e!296860))))

(declare-datatypes ((array!32554 0))(
  ( (array!32555 (arr!15654 (Array (_ BitVec 32) (_ BitVec 64))) (size!16018 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32554)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507250 (= res!308366 (validKeyInArray!0 (select (arr!15654 a!3235) j!176)))))

(declare-fun b!507251 () Bool)

(declare-fun e!296863 () Bool)

(declare-fun e!296858 () Bool)

(assert (=> b!507251 (= e!296863 e!296858)))

(declare-fun res!308362 () Bool)

(assert (=> b!507251 (=> res!308362 e!296858)))

(declare-fun lt!231696 () Bool)

(declare-datatypes ((SeekEntryResult!4128 0))(
  ( (MissingZero!4128 (index!18700 (_ BitVec 32))) (Found!4128 (index!18701 (_ BitVec 32))) (Intermediate!4128 (undefined!4940 Bool) (index!18702 (_ BitVec 32)) (x!47724 (_ BitVec 32))) (Undefined!4128) (MissingVacant!4128 (index!18703 (_ BitVec 32))) )
))
(declare-fun lt!231690 () SeekEntryResult!4128)

(assert (=> b!507251 (= res!308362 (or (and (not lt!231696) (undefined!4940 lt!231690)) (and (not lt!231696) (not (undefined!4940 lt!231690)))))))

(assert (=> b!507251 (= lt!231696 (not (is-Intermediate!4128 lt!231690)))))

(declare-fun res!308364 () Bool)

(assert (=> start!45838 (=> (not res!308364) (not e!296860))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45838 (= res!308364 (validMask!0 mask!3524))))

(assert (=> start!45838 e!296860))

(assert (=> start!45838 true))

(declare-fun array_inv!11428 (array!32554) Bool)

(assert (=> start!45838 (array_inv!11428 a!3235)))

(declare-fun b!507252 () Bool)

(declare-fun res!308367 () Bool)

(assert (=> b!507252 (=> (not res!308367) (not e!296860))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507252 (= res!308367 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!296862 () Bool)

(declare-fun b!507253 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32554 (_ BitVec 32)) SeekEntryResult!4128)

(assert (=> b!507253 (= e!296862 (= (seekEntryOrOpen!0 (select (arr!15654 a!3235) j!176) a!3235 mask!3524) (Found!4128 j!176)))))

(declare-fun b!507254 () Bool)

(declare-fun e!296859 () Bool)

(assert (=> b!507254 (= e!296860 e!296859)))

(declare-fun res!308365 () Bool)

(assert (=> b!507254 (=> (not res!308365) (not e!296859))))

(declare-fun lt!231692 () SeekEntryResult!4128)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507254 (= res!308365 (or (= lt!231692 (MissingZero!4128 i!1204)) (= lt!231692 (MissingVacant!4128 i!1204))))))

(assert (=> b!507254 (= lt!231692 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507255 () Bool)

(assert (=> b!507255 (= e!296858 true)))

(declare-fun lt!231691 () array!32554)

(declare-fun lt!231697 () (_ BitVec 64))

(declare-fun lt!231694 () SeekEntryResult!4128)

(assert (=> b!507255 (= lt!231694 (seekEntryOrOpen!0 lt!231697 lt!231691 mask!3524))))

(assert (=> b!507255 false))

(declare-fun b!507256 () Bool)

(declare-fun res!308369 () Bool)

(assert (=> b!507256 (=> (not res!308369) (not e!296859))))

(declare-datatypes ((List!9865 0))(
  ( (Nil!9862) (Cons!9861 (h!10738 (_ BitVec 64)) (t!16101 List!9865)) )
))
(declare-fun arrayNoDuplicates!0 (array!32554 (_ BitVec 32) List!9865) Bool)

(assert (=> b!507256 (= res!308369 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9862))))

(declare-fun b!507257 () Bool)

(declare-fun res!308363 () Bool)

(assert (=> b!507257 (=> (not res!308363) (not e!296859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32554 (_ BitVec 32)) Bool)

(assert (=> b!507257 (= res!308363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507258 () Bool)

(assert (=> b!507258 (= e!296859 (not e!296863))))

(declare-fun res!308361 () Bool)

(assert (=> b!507258 (=> res!308361 e!296863)))

(declare-fun lt!231695 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32554 (_ BitVec 32)) SeekEntryResult!4128)

(assert (=> b!507258 (= res!308361 (= lt!231690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231695 lt!231697 lt!231691 mask!3524)))))

(declare-fun lt!231698 () (_ BitVec 32))

(assert (=> b!507258 (= lt!231690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231698 (select (arr!15654 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507258 (= lt!231695 (toIndex!0 lt!231697 mask!3524))))

(assert (=> b!507258 (= lt!231697 (select (store (arr!15654 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507258 (= lt!231698 (toIndex!0 (select (arr!15654 a!3235) j!176) mask!3524))))

(assert (=> b!507258 (= lt!231691 (array!32555 (store (arr!15654 a!3235) i!1204 k!2280) (size!16018 a!3235)))))

(assert (=> b!507258 e!296862))

(declare-fun res!308359 () Bool)

(assert (=> b!507258 (=> (not res!308359) (not e!296862))))

(assert (=> b!507258 (= res!308359 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15536 0))(
  ( (Unit!15537) )
))
(declare-fun lt!231693 () Unit!15536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15536)

(assert (=> b!507258 (= lt!231693 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507259 () Bool)

(declare-fun res!308368 () Bool)

(assert (=> b!507259 (=> (not res!308368) (not e!296860))))

(assert (=> b!507259 (= res!308368 (and (= (size!16018 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16018 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16018 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507260 () Bool)

(declare-fun res!308360 () Bool)

(assert (=> b!507260 (=> (not res!308360) (not e!296860))))

(assert (=> b!507260 (= res!308360 (validKeyInArray!0 k!2280))))

(assert (= (and start!45838 res!308364) b!507259))

(assert (= (and b!507259 res!308368) b!507250))

(assert (= (and b!507250 res!308366) b!507260))

(assert (= (and b!507260 res!308360) b!507252))

(assert (= (and b!507252 res!308367) b!507254))

(assert (= (and b!507254 res!308365) b!507257))

(assert (= (and b!507257 res!308363) b!507256))

(assert (= (and b!507256 res!308369) b!507258))

(assert (= (and b!507258 res!308359) b!507253))

(assert (= (and b!507258 (not res!308361)) b!507251))

(assert (= (and b!507251 (not res!308362)) b!507255))

(declare-fun m!488059 () Bool)

(assert (=> b!507258 m!488059))

(declare-fun m!488061 () Bool)

(assert (=> b!507258 m!488061))

(declare-fun m!488063 () Bool)

(assert (=> b!507258 m!488063))

(declare-fun m!488065 () Bool)

(assert (=> b!507258 m!488065))

(declare-fun m!488067 () Bool)

(assert (=> b!507258 m!488067))

(declare-fun m!488069 () Bool)

(assert (=> b!507258 m!488069))

(declare-fun m!488071 () Bool)

(assert (=> b!507258 m!488071))

(assert (=> b!507258 m!488069))

(declare-fun m!488073 () Bool)

(assert (=> b!507258 m!488073))

(assert (=> b!507258 m!488069))

(declare-fun m!488075 () Bool)

(assert (=> b!507258 m!488075))

(declare-fun m!488077 () Bool)

(assert (=> b!507252 m!488077))

(declare-fun m!488079 () Bool)

(assert (=> b!507257 m!488079))

(declare-fun m!488081 () Bool)

(assert (=> start!45838 m!488081))

(declare-fun m!488083 () Bool)

(assert (=> start!45838 m!488083))

(assert (=> b!507250 m!488069))

(assert (=> b!507250 m!488069))

(declare-fun m!488085 () Bool)

(assert (=> b!507250 m!488085))

(declare-fun m!488087 () Bool)

(assert (=> b!507254 m!488087))

(declare-fun m!488089 () Bool)

(assert (=> b!507260 m!488089))

(declare-fun m!488091 () Bool)

(assert (=> b!507255 m!488091))

(assert (=> b!507253 m!488069))

(assert (=> b!507253 m!488069))

(declare-fun m!488093 () Bool)

(assert (=> b!507253 m!488093))

(declare-fun m!488095 () Bool)

(assert (=> b!507256 m!488095))

(push 1)

