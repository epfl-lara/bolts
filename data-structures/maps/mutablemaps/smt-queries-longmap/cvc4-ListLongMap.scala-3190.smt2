; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44780 () Bool)

(assert start!44780)

(declare-fun b!491301 () Bool)

(declare-fun res!294392 () Bool)

(declare-fun e!288675 () Bool)

(assert (=> b!491301 (=> (not res!294392) (not e!288675))))

(declare-datatypes ((array!31799 0))(
  ( (array!31800 (arr!15284 (Array (_ BitVec 32) (_ BitVec 64))) (size!15648 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31799)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491301 (= res!294392 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491302 () Bool)

(declare-fun res!294390 () Bool)

(assert (=> b!491302 (=> (not res!294390) (not e!288675))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491302 (= res!294390 (validKeyInArray!0 (select (arr!15284 a!3235) j!176)))))

(declare-fun b!491303 () Bool)

(declare-fun res!294391 () Bool)

(assert (=> b!491303 (=> (not res!294391) (not e!288675))))

(assert (=> b!491303 (= res!294391 (validKeyInArray!0 k!2280))))

(declare-fun b!491304 () Bool)

(declare-fun res!294395 () Bool)

(declare-fun e!288673 () Bool)

(assert (=> b!491304 (=> (not res!294395) (not e!288673))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31799 (_ BitVec 32)) Bool)

(assert (=> b!491304 (= res!294395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!294393 () Bool)

(assert (=> start!44780 (=> (not res!294393) (not e!288675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44780 (= res!294393 (validMask!0 mask!3524))))

(assert (=> start!44780 e!288675))

(assert (=> start!44780 true))

(declare-fun array_inv!11058 (array!31799) Bool)

(assert (=> start!44780 (array_inv!11058 a!3235)))

(declare-fun b!491305 () Bool)

(assert (=> b!491305 (= e!288675 e!288673)))

(declare-fun res!294387 () Bool)

(assert (=> b!491305 (=> (not res!294387) (not e!288673))))

(declare-datatypes ((SeekEntryResult!3758 0))(
  ( (MissingZero!3758 (index!17211 (_ BitVec 32))) (Found!3758 (index!17212 (_ BitVec 32))) (Intermediate!3758 (undefined!4570 Bool) (index!17213 (_ BitVec 32)) (x!46323 (_ BitVec 32))) (Undefined!3758) (MissingVacant!3758 (index!17214 (_ BitVec 32))) )
))
(declare-fun lt!222154 () SeekEntryResult!3758)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491305 (= res!294387 (or (= lt!222154 (MissingZero!3758 i!1204)) (= lt!222154 (MissingVacant!3758 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31799 (_ BitVec 32)) SeekEntryResult!3758)

(assert (=> b!491305 (= lt!222154 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491306 () Bool)

(declare-fun e!288674 () Bool)

(assert (=> b!491306 (= e!288673 (not e!288674))))

(declare-fun res!294394 () Bool)

(assert (=> b!491306 (=> res!294394 e!288674)))

(declare-fun lt!222156 () array!31799)

(declare-fun lt!222158 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31799 (_ BitVec 32)) SeekEntryResult!3758)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491306 (= res!294394 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15284 a!3235) j!176) mask!3524) (select (arr!15284 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222158 mask!3524) lt!222158 lt!222156 mask!3524))))))

(assert (=> b!491306 (= lt!222158 (select (store (arr!15284 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491306 (= lt!222156 (array!31800 (store (arr!15284 a!3235) i!1204 k!2280) (size!15648 a!3235)))))

(declare-fun lt!222153 () SeekEntryResult!3758)

(assert (=> b!491306 (= lt!222153 (Found!3758 j!176))))

(assert (=> b!491306 (= lt!222153 (seekEntryOrOpen!0 (select (arr!15284 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491306 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14454 0))(
  ( (Unit!14455) )
))
(declare-fun lt!222157 () Unit!14454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14454)

(assert (=> b!491306 (= lt!222157 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491307 () Bool)

(declare-fun res!294389 () Bool)

(assert (=> b!491307 (=> (not res!294389) (not e!288673))))

(declare-datatypes ((List!9495 0))(
  ( (Nil!9492) (Cons!9491 (h!10353 (_ BitVec 64)) (t!15731 List!9495)) )
))
(declare-fun arrayNoDuplicates!0 (array!31799 (_ BitVec 32) List!9495) Bool)

(assert (=> b!491307 (= res!294389 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9492))))

(declare-fun b!491308 () Bool)

(assert (=> b!491308 (= e!288674 true)))

(assert (=> b!491308 (= lt!222153 (seekEntryOrOpen!0 lt!222158 lt!222156 mask!3524))))

(declare-fun lt!222155 () Unit!14454)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31799 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14454)

(assert (=> b!491308 (= lt!222155 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491309 () Bool)

(declare-fun res!294388 () Bool)

(assert (=> b!491309 (=> (not res!294388) (not e!288675))))

(assert (=> b!491309 (= res!294388 (and (= (size!15648 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15648 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15648 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44780 res!294393) b!491309))

(assert (= (and b!491309 res!294388) b!491302))

(assert (= (and b!491302 res!294390) b!491303))

(assert (= (and b!491303 res!294391) b!491301))

(assert (= (and b!491301 res!294392) b!491305))

(assert (= (and b!491305 res!294387) b!491304))

(assert (= (and b!491304 res!294395) b!491307))

(assert (= (and b!491307 res!294389) b!491306))

(assert (= (and b!491306 (not res!294394)) b!491308))

(declare-fun m!471945 () Bool)

(assert (=> b!491306 m!471945))

(declare-fun m!471947 () Bool)

(assert (=> b!491306 m!471947))

(declare-fun m!471949 () Bool)

(assert (=> b!491306 m!471949))

(declare-fun m!471951 () Bool)

(assert (=> b!491306 m!471951))

(declare-fun m!471953 () Bool)

(assert (=> b!491306 m!471953))

(declare-fun m!471955 () Bool)

(assert (=> b!491306 m!471955))

(declare-fun m!471957 () Bool)

(assert (=> b!491306 m!471957))

(assert (=> b!491306 m!471955))

(declare-fun m!471959 () Bool)

(assert (=> b!491306 m!471959))

(assert (=> b!491306 m!471955))

(declare-fun m!471961 () Bool)

(assert (=> b!491306 m!471961))

(assert (=> b!491306 m!471957))

(assert (=> b!491306 m!471955))

(declare-fun m!471963 () Bool)

(assert (=> b!491306 m!471963))

(assert (=> b!491306 m!471951))

(declare-fun m!471965 () Bool)

(assert (=> b!491303 m!471965))

(declare-fun m!471967 () Bool)

(assert (=> b!491307 m!471967))

(declare-fun m!471969 () Bool)

(assert (=> b!491301 m!471969))

(declare-fun m!471971 () Bool)

(assert (=> start!44780 m!471971))

(declare-fun m!471973 () Bool)

(assert (=> start!44780 m!471973))

(assert (=> b!491302 m!471955))

(assert (=> b!491302 m!471955))

(declare-fun m!471975 () Bool)

(assert (=> b!491302 m!471975))

(declare-fun m!471977 () Bool)

(assert (=> b!491304 m!471977))

(declare-fun m!471979 () Bool)

(assert (=> b!491305 m!471979))

(declare-fun m!471981 () Bool)

(assert (=> b!491308 m!471981))

(declare-fun m!471983 () Bool)

(assert (=> b!491308 m!471983))

(push 1)

