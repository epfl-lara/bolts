; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46694 () Bool)

(assert start!46694)

(declare-fun b!514954 () Bool)

(declare-fun e!300711 () Bool)

(assert (=> b!514954 (= e!300711 true)))

(declare-datatypes ((SeekEntryResult!4322 0))(
  ( (MissingZero!4322 (index!19476 (_ BitVec 32))) (Found!4322 (index!19477 (_ BitVec 32))) (Intermediate!4322 (undefined!5134 Bool) (index!19478 (_ BitVec 32)) (x!48472 (_ BitVec 32))) (Undefined!4322) (MissingVacant!4322 (index!19479 (_ BitVec 32))) )
))
(declare-fun lt!235795 () SeekEntryResult!4322)

(declare-datatypes ((array!32966 0))(
  ( (array!32967 (arr!15848 (Array (_ BitVec 32) (_ BitVec 64))) (size!16212 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32966)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514954 (and (bvslt (x!48472 lt!235795) #b01111111111111111111111111111110) (or (= (select (arr!15848 a!3235) (index!19478 lt!235795)) (select (arr!15848 a!3235) j!176)) (= (select (arr!15848 a!3235) (index!19478 lt!235795)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15848 a!3235) (index!19478 lt!235795)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514955 () Bool)

(declare-fun res!314669 () Bool)

(declare-fun e!300712 () Bool)

(assert (=> b!514955 (=> (not res!314669) (not e!300712))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514955 (= res!314669 (validKeyInArray!0 k!2280))))

(declare-fun b!514956 () Bool)

(declare-fun res!314675 () Bool)

(declare-fun e!300710 () Bool)

(assert (=> b!514956 (=> (not res!314675) (not e!300710))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32966 (_ BitVec 32)) Bool)

(assert (=> b!514956 (= res!314675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514957 () Bool)

(assert (=> b!514957 (= e!300712 e!300710)))

(declare-fun res!314674 () Bool)

(assert (=> b!514957 (=> (not res!314674) (not e!300710))))

(declare-fun lt!235792 () SeekEntryResult!4322)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!514957 (= res!314674 (or (= lt!235792 (MissingZero!4322 i!1204)) (= lt!235792 (MissingVacant!4322 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32966 (_ BitVec 32)) SeekEntryResult!4322)

(assert (=> b!514957 (= lt!235792 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514958 () Bool)

(assert (=> b!514958 (= e!300710 (not e!300711))))

(declare-fun res!314670 () Bool)

(assert (=> b!514958 (=> res!314670 e!300711)))

(declare-fun lt!235796 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32966 (_ BitVec 32)) SeekEntryResult!4322)

(assert (=> b!514958 (= res!314670 (= lt!235795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235796 (select (store (arr!15848 a!3235) i!1204 k!2280) j!176) (array!32967 (store (arr!15848 a!3235) i!1204 k!2280) (size!16212 a!3235)) mask!3524)))))

(declare-fun lt!235794 () (_ BitVec 32))

(assert (=> b!514958 (= lt!235795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235794 (select (arr!15848 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514958 (= lt!235796 (toIndex!0 (select (store (arr!15848 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514958 (= lt!235794 (toIndex!0 (select (arr!15848 a!3235) j!176) mask!3524))))

(declare-fun e!300709 () Bool)

(assert (=> b!514958 e!300709))

(declare-fun res!314672 () Bool)

(assert (=> b!514958 (=> (not res!314672) (not e!300709))))

(assert (=> b!514958 (= res!314672 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15894 0))(
  ( (Unit!15895) )
))
(declare-fun lt!235793 () Unit!15894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32966 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15894)

(assert (=> b!514958 (= lt!235793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514959 () Bool)

(declare-fun res!314671 () Bool)

(assert (=> b!514959 (=> (not res!314671) (not e!300710))))

(declare-datatypes ((List!10059 0))(
  ( (Nil!10056) (Cons!10055 (h!10953 (_ BitVec 64)) (t!16295 List!10059)) )
))
(declare-fun arrayNoDuplicates!0 (array!32966 (_ BitVec 32) List!10059) Bool)

(assert (=> b!514959 (= res!314671 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10056))))

(declare-fun b!514960 () Bool)

(declare-fun res!314677 () Bool)

(assert (=> b!514960 (=> (not res!314677) (not e!300712))))

(assert (=> b!514960 (= res!314677 (and (= (size!16212 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16212 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16212 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514961 () Bool)

(declare-fun res!314673 () Bool)

(assert (=> b!514961 (=> (not res!314673) (not e!300712))))

(assert (=> b!514961 (= res!314673 (validKeyInArray!0 (select (arr!15848 a!3235) j!176)))))

(declare-fun b!514962 () Bool)

(assert (=> b!514962 (= e!300709 (= (seekEntryOrOpen!0 (select (arr!15848 a!3235) j!176) a!3235 mask!3524) (Found!4322 j!176)))))

(declare-fun b!514963 () Bool)

(declare-fun res!314668 () Bool)

(assert (=> b!514963 (=> res!314668 e!300711)))

(assert (=> b!514963 (= res!314668 (or (undefined!5134 lt!235795) (not (is-Intermediate!4322 lt!235795))))))

(declare-fun b!514964 () Bool)

(declare-fun res!314678 () Bool)

(assert (=> b!514964 (=> (not res!314678) (not e!300712))))

(declare-fun arrayContainsKey!0 (array!32966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514964 (= res!314678 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!314676 () Bool)

(assert (=> start!46694 (=> (not res!314676) (not e!300712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46694 (= res!314676 (validMask!0 mask!3524))))

(assert (=> start!46694 e!300712))

(assert (=> start!46694 true))

(declare-fun array_inv!11622 (array!32966) Bool)

(assert (=> start!46694 (array_inv!11622 a!3235)))

(assert (= (and start!46694 res!314676) b!514960))

(assert (= (and b!514960 res!314677) b!514961))

(assert (= (and b!514961 res!314673) b!514955))

(assert (= (and b!514955 res!314669) b!514964))

(assert (= (and b!514964 res!314678) b!514957))

(assert (= (and b!514957 res!314674) b!514956))

(assert (= (and b!514956 res!314675) b!514959))

(assert (= (and b!514959 res!314671) b!514958))

(assert (= (and b!514958 res!314672) b!514962))

(assert (= (and b!514958 (not res!314670)) b!514963))

(assert (= (and b!514963 (not res!314668)) b!514954))

(declare-fun m!496283 () Bool)

(assert (=> b!514955 m!496283))

(declare-fun m!496285 () Bool)

(assert (=> b!514962 m!496285))

(assert (=> b!514962 m!496285))

(declare-fun m!496287 () Bool)

(assert (=> b!514962 m!496287))

(declare-fun m!496289 () Bool)

(assert (=> b!514956 m!496289))

(declare-fun m!496291 () Bool)

(assert (=> start!46694 m!496291))

(declare-fun m!496293 () Bool)

(assert (=> start!46694 m!496293))

(assert (=> b!514961 m!496285))

(assert (=> b!514961 m!496285))

(declare-fun m!496295 () Bool)

(assert (=> b!514961 m!496295))

(declare-fun m!496297 () Bool)

(assert (=> b!514964 m!496297))

(declare-fun m!496299 () Bool)

(assert (=> b!514958 m!496299))

(declare-fun m!496301 () Bool)

(assert (=> b!514958 m!496301))

(declare-fun m!496303 () Bool)

(assert (=> b!514958 m!496303))

(declare-fun m!496305 () Bool)

(assert (=> b!514958 m!496305))

(assert (=> b!514958 m!496285))

(declare-fun m!496307 () Bool)

(assert (=> b!514958 m!496307))

(assert (=> b!514958 m!496285))

(declare-fun m!496309 () Bool)

(assert (=> b!514958 m!496309))

(assert (=> b!514958 m!496299))

(declare-fun m!496311 () Bool)

(assert (=> b!514958 m!496311))

(assert (=> b!514958 m!496285))

(declare-fun m!496313 () Bool)

(assert (=> b!514958 m!496313))

(assert (=> b!514958 m!496299))

(declare-fun m!496315 () Bool)

(assert (=> b!514954 m!496315))

(assert (=> b!514954 m!496285))

(declare-fun m!496317 () Bool)

(assert (=> b!514957 m!496317))

(declare-fun m!496319 () Bool)

(assert (=> b!514959 m!496319))

(push 1)

