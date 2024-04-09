; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44684 () Bool)

(assert start!44684)

(declare-fun b!489996 () Bool)

(declare-fun res!293082 () Bool)

(declare-fun e!288088 () Bool)

(assert (=> b!489996 (=> (not res!293082) (not e!288088))))

(declare-datatypes ((array!31703 0))(
  ( (array!31704 (arr!15236 (Array (_ BitVec 32) (_ BitVec 64))) (size!15600 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31703)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31703 (_ BitVec 32)) Bool)

(assert (=> b!489996 (= res!293082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489997 () Bool)

(declare-fun res!293083 () Bool)

(declare-fun e!288091 () Bool)

(assert (=> b!489997 (=> (not res!293083) (not e!288091))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!489997 (= res!293083 (and (= (size!15600 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15600 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15600 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489998 () Bool)

(assert (=> b!489998 (= e!288088 (not true))))

(declare-fun lt!221292 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3710 0))(
  ( (MissingZero!3710 (index!17019 (_ BitVec 32))) (Found!3710 (index!17020 (_ BitVec 32))) (Intermediate!3710 (undefined!4522 Bool) (index!17021 (_ BitVec 32)) (x!46147 (_ BitVec 32))) (Undefined!3710) (MissingVacant!3710 (index!17022 (_ BitVec 32))) )
))
(declare-fun lt!221289 () SeekEntryResult!3710)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31703 (_ BitVec 32)) SeekEntryResult!3710)

(assert (=> b!489998 (= lt!221289 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221292 (select (store (arr!15236 a!3235) i!1204 k!2280) j!176) (array!31704 (store (arr!15236 a!3235) i!1204 k!2280) (size!15600 a!3235)) mask!3524))))

(declare-fun lt!221293 () SeekEntryResult!3710)

(declare-fun lt!221294 () (_ BitVec 32))

(assert (=> b!489998 (= lt!221293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221294 (select (arr!15236 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489998 (= lt!221292 (toIndex!0 (select (store (arr!15236 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489998 (= lt!221294 (toIndex!0 (select (arr!15236 a!3235) j!176) mask!3524))))

(declare-fun e!288090 () Bool)

(assert (=> b!489998 e!288090))

(declare-fun res!293086 () Bool)

(assert (=> b!489998 (=> (not res!293086) (not e!288090))))

(assert (=> b!489998 (= res!293086 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14358 0))(
  ( (Unit!14359) )
))
(declare-fun lt!221291 () Unit!14358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14358)

(assert (=> b!489998 (= lt!221291 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489999 () Bool)

(declare-fun res!293089 () Bool)

(assert (=> b!489999 (=> (not res!293089) (not e!288091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489999 (= res!293089 (validKeyInArray!0 k!2280))))

(declare-fun res!293087 () Bool)

(assert (=> start!44684 (=> (not res!293087) (not e!288091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44684 (= res!293087 (validMask!0 mask!3524))))

(assert (=> start!44684 e!288091))

(assert (=> start!44684 true))

(declare-fun array_inv!11010 (array!31703) Bool)

(assert (=> start!44684 (array_inv!11010 a!3235)))

(declare-fun b!490000 () Bool)

(declare-fun res!293088 () Bool)

(assert (=> b!490000 (=> (not res!293088) (not e!288091))))

(declare-fun arrayContainsKey!0 (array!31703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490000 (= res!293088 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490001 () Bool)

(assert (=> b!490001 (= e!288091 e!288088)))

(declare-fun res!293090 () Bool)

(assert (=> b!490001 (=> (not res!293090) (not e!288088))))

(declare-fun lt!221290 () SeekEntryResult!3710)

(assert (=> b!490001 (= res!293090 (or (= lt!221290 (MissingZero!3710 i!1204)) (= lt!221290 (MissingVacant!3710 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31703 (_ BitVec 32)) SeekEntryResult!3710)

(assert (=> b!490001 (= lt!221290 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490002 () Bool)

(declare-fun res!293084 () Bool)

(assert (=> b!490002 (=> (not res!293084) (not e!288088))))

(declare-datatypes ((List!9447 0))(
  ( (Nil!9444) (Cons!9443 (h!10305 (_ BitVec 64)) (t!15683 List!9447)) )
))
(declare-fun arrayNoDuplicates!0 (array!31703 (_ BitVec 32) List!9447) Bool)

(assert (=> b!490002 (= res!293084 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9444))))

(declare-fun b!490003 () Bool)

(assert (=> b!490003 (= e!288090 (= (seekEntryOrOpen!0 (select (arr!15236 a!3235) j!176) a!3235 mask!3524) (Found!3710 j!176)))))

(declare-fun b!490004 () Bool)

(declare-fun res!293085 () Bool)

(assert (=> b!490004 (=> (not res!293085) (not e!288091))))

(assert (=> b!490004 (= res!293085 (validKeyInArray!0 (select (arr!15236 a!3235) j!176)))))

(assert (= (and start!44684 res!293087) b!489997))

(assert (= (and b!489997 res!293083) b!490004))

(assert (= (and b!490004 res!293085) b!489999))

(assert (= (and b!489999 res!293089) b!490000))

(assert (= (and b!490000 res!293088) b!490001))

(assert (= (and b!490001 res!293090) b!489996))

(assert (= (and b!489996 res!293082) b!490002))

(assert (= (and b!490002 res!293084) b!489998))

(assert (= (and b!489998 res!293086) b!490003))

(declare-fun m!470059 () Bool)

(assert (=> b!490000 m!470059))

(declare-fun m!470061 () Bool)

(assert (=> b!490004 m!470061))

(assert (=> b!490004 m!470061))

(declare-fun m!470063 () Bool)

(assert (=> b!490004 m!470063))

(declare-fun m!470065 () Bool)

(assert (=> b!490001 m!470065))

(declare-fun m!470067 () Bool)

(assert (=> b!489999 m!470067))

(assert (=> b!490003 m!470061))

(assert (=> b!490003 m!470061))

(declare-fun m!470069 () Bool)

(assert (=> b!490003 m!470069))

(declare-fun m!470071 () Bool)

(assert (=> b!489998 m!470071))

(declare-fun m!470073 () Bool)

(assert (=> b!489998 m!470073))

(declare-fun m!470075 () Bool)

(assert (=> b!489998 m!470075))

(assert (=> b!489998 m!470061))

(declare-fun m!470077 () Bool)

(assert (=> b!489998 m!470077))

(assert (=> b!489998 m!470061))

(declare-fun m!470079 () Bool)

(assert (=> b!489998 m!470079))

(assert (=> b!489998 m!470075))

(declare-fun m!470081 () Bool)

(assert (=> b!489998 m!470081))

(assert (=> b!489998 m!470061))

(declare-fun m!470083 () Bool)

(assert (=> b!489998 m!470083))

(assert (=> b!489998 m!470075))

(declare-fun m!470085 () Bool)

(assert (=> b!489998 m!470085))

(declare-fun m!470087 () Bool)

(assert (=> b!490002 m!470087))

(declare-fun m!470089 () Bool)

(assert (=> b!489996 m!470089))

(declare-fun m!470091 () Bool)

(assert (=> start!44684 m!470091))

(declare-fun m!470093 () Bool)

(assert (=> start!44684 m!470093))

(push 1)

