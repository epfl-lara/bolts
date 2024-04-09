; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44994 () Bool)

(assert start!44994)

(declare-fun b!493211 () Bool)

(declare-fun e!289663 () Bool)

(assert (=> b!493211 (= e!289663 true)))

(declare-datatypes ((SeekEntryResult!3805 0))(
  ( (MissingZero!3805 (index!17399 (_ BitVec 32))) (Found!3805 (index!17400 (_ BitVec 32))) (Intermediate!3805 (undefined!4617 Bool) (index!17401 (_ BitVec 32)) (x!46510 (_ BitVec 32))) (Undefined!3805) (MissingVacant!3805 (index!17402 (_ BitVec 32))) )
))
(declare-fun lt!223117 () SeekEntryResult!3805)

(assert (=> b!493211 (= lt!223117 Undefined!3805)))

(declare-fun b!493213 () Bool)

(declare-fun res!295931 () Bool)

(assert (=> b!493213 (=> res!295931 e!289663)))

(declare-fun lt!223116 () SeekEntryResult!3805)

(get-info :version)

(assert (=> b!493213 (= res!295931 (or (not ((_ is Intermediate!3805) lt!223116)) (not (undefined!4617 lt!223116))))))

(declare-fun b!493214 () Bool)

(declare-fun e!289665 () Bool)

(assert (=> b!493214 (= e!289665 (not e!289663))))

(declare-fun res!295932 () Bool)

(assert (=> b!493214 (=> res!295932 e!289663)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31899 0))(
  ( (array!31900 (arr!15331 (Array (_ BitVec 32) (_ BitVec 64))) (size!15695 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31899)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!223114 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31899 (_ BitVec 32)) SeekEntryResult!3805)

(assert (=> b!493214 (= res!295932 (= lt!223116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223114 (select (store (arr!15331 a!3235) i!1204 k0!2280) j!176) (array!31900 (store (arr!15331 a!3235) i!1204 k0!2280) (size!15695 a!3235)) mask!3524)))))

(declare-fun lt!223113 () (_ BitVec 32))

(assert (=> b!493214 (= lt!223116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223113 (select (arr!15331 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493214 (= lt!223114 (toIndex!0 (select (store (arr!15331 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493214 (= lt!223113 (toIndex!0 (select (arr!15331 a!3235) j!176) mask!3524))))

(assert (=> b!493214 (= lt!223117 (Found!3805 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31899 (_ BitVec 32)) SeekEntryResult!3805)

(assert (=> b!493214 (= lt!223117 (seekEntryOrOpen!0 (select (arr!15331 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31899 (_ BitVec 32)) Bool)

(assert (=> b!493214 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14548 0))(
  ( (Unit!14549) )
))
(declare-fun lt!223115 () Unit!14548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14548)

(assert (=> b!493214 (= lt!223115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493215 () Bool)

(declare-fun res!295938 () Bool)

(declare-fun e!289666 () Bool)

(assert (=> b!493215 (=> (not res!295938) (not e!289666))))

(declare-fun arrayContainsKey!0 (array!31899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493215 (= res!295938 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493216 () Bool)

(declare-fun res!295936 () Bool)

(assert (=> b!493216 (=> (not res!295936) (not e!289665))))

(declare-datatypes ((List!9542 0))(
  ( (Nil!9539) (Cons!9538 (h!10406 (_ BitVec 64)) (t!15778 List!9542)) )
))
(declare-fun arrayNoDuplicates!0 (array!31899 (_ BitVec 32) List!9542) Bool)

(assert (=> b!493216 (= res!295936 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9539))))

(declare-fun b!493212 () Bool)

(assert (=> b!493212 (= e!289666 e!289665)))

(declare-fun res!295940 () Bool)

(assert (=> b!493212 (=> (not res!295940) (not e!289665))))

(declare-fun lt!223118 () SeekEntryResult!3805)

(assert (=> b!493212 (= res!295940 (or (= lt!223118 (MissingZero!3805 i!1204)) (= lt!223118 (MissingVacant!3805 i!1204))))))

(assert (=> b!493212 (= lt!223118 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!295939 () Bool)

(assert (=> start!44994 (=> (not res!295939) (not e!289666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44994 (= res!295939 (validMask!0 mask!3524))))

(assert (=> start!44994 e!289666))

(assert (=> start!44994 true))

(declare-fun array_inv!11105 (array!31899) Bool)

(assert (=> start!44994 (array_inv!11105 a!3235)))

(declare-fun b!493217 () Bool)

(declare-fun res!295935 () Bool)

(assert (=> b!493217 (=> (not res!295935) (not e!289666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493217 (= res!295935 (validKeyInArray!0 (select (arr!15331 a!3235) j!176)))))

(declare-fun b!493218 () Bool)

(declare-fun res!295934 () Bool)

(assert (=> b!493218 (=> (not res!295934) (not e!289665))))

(assert (=> b!493218 (= res!295934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493219 () Bool)

(declare-fun res!295933 () Bool)

(assert (=> b!493219 (=> (not res!295933) (not e!289666))))

(assert (=> b!493219 (= res!295933 (and (= (size!15695 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15695 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15695 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493220 () Bool)

(declare-fun res!295937 () Bool)

(assert (=> b!493220 (=> (not res!295937) (not e!289666))))

(assert (=> b!493220 (= res!295937 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44994 res!295939) b!493219))

(assert (= (and b!493219 res!295933) b!493217))

(assert (= (and b!493217 res!295935) b!493220))

(assert (= (and b!493220 res!295937) b!493215))

(assert (= (and b!493215 res!295938) b!493212))

(assert (= (and b!493212 res!295940) b!493218))

(assert (= (and b!493218 res!295934) b!493216))

(assert (= (and b!493216 res!295936) b!493214))

(assert (= (and b!493214 (not res!295932)) b!493213))

(assert (= (and b!493213 (not res!295931)) b!493211))

(declare-fun m!474085 () Bool)

(assert (=> b!493220 m!474085))

(declare-fun m!474087 () Bool)

(assert (=> b!493214 m!474087))

(declare-fun m!474089 () Bool)

(assert (=> b!493214 m!474089))

(declare-fun m!474091 () Bool)

(assert (=> b!493214 m!474091))

(declare-fun m!474093 () Bool)

(assert (=> b!493214 m!474093))

(assert (=> b!493214 m!474089))

(declare-fun m!474095 () Bool)

(assert (=> b!493214 m!474095))

(declare-fun m!474097 () Bool)

(assert (=> b!493214 m!474097))

(declare-fun m!474099 () Bool)

(assert (=> b!493214 m!474099))

(assert (=> b!493214 m!474095))

(declare-fun m!474101 () Bool)

(assert (=> b!493214 m!474101))

(assert (=> b!493214 m!474089))

(declare-fun m!474103 () Bool)

(assert (=> b!493214 m!474103))

(assert (=> b!493214 m!474095))

(declare-fun m!474105 () Bool)

(assert (=> b!493214 m!474105))

(assert (=> b!493214 m!474095))

(declare-fun m!474107 () Bool)

(assert (=> b!493215 m!474107))

(declare-fun m!474109 () Bool)

(assert (=> start!44994 m!474109))

(declare-fun m!474111 () Bool)

(assert (=> start!44994 m!474111))

(assert (=> b!493217 m!474095))

(assert (=> b!493217 m!474095))

(declare-fun m!474113 () Bool)

(assert (=> b!493217 m!474113))

(declare-fun m!474115 () Bool)

(assert (=> b!493218 m!474115))

(declare-fun m!474117 () Bool)

(assert (=> b!493212 m!474117))

(declare-fun m!474119 () Bool)

(assert (=> b!493216 m!474119))

(check-sat (not start!44994) (not b!493216) (not b!493212) (not b!493220) (not b!493218) (not b!493217) (not b!493215) (not b!493214))
(check-sat)
