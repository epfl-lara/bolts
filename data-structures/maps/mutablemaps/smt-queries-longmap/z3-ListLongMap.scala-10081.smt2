; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118662 () Bool)

(assert start!118662)

(declare-fun res!927964 () Bool)

(declare-fun e!785552 () Bool)

(assert (=> start!118662 (=> (not res!927964) (not e!785552))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118662 (= res!927964 (validMask!0 mask!2987))))

(assert (=> start!118662 e!785552))

(assert (=> start!118662 true))

(declare-datatypes ((array!94856 0))(
  ( (array!94857 (arr!45800 (Array (_ BitVec 32) (_ BitVec 64))) (size!46351 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94856)

(declare-fun array_inv!34745 (array!94856) Bool)

(assert (=> start!118662 (array_inv!34745 a!2938)))

(declare-fun b!1386737 () Bool)

(declare-fun res!927965 () Bool)

(assert (=> b!1386737 (=> (not res!927965) (not e!785552))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386737 (= res!927965 (and (not (= (select (arr!45800 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45800 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386738 () Bool)

(declare-fun res!927963 () Bool)

(assert (=> b!1386738 (=> (not res!927963) (not e!785552))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386738 (= res!927963 (and (= (size!46351 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46351 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46351 a!2938))))))

(declare-fun b!1386739 () Bool)

(assert (=> b!1386739 (= e!785552 false)))

(declare-datatypes ((Unit!46294 0))(
  ( (Unit!46295) )
))
(declare-fun lt!609532 () Unit!46294)

(declare-fun e!785550 () Unit!46294)

(assert (=> b!1386739 (= lt!609532 e!785550)))

(declare-fun c!128831 () Bool)

(declare-fun e!785551 () Bool)

(assert (=> b!1386739 (= c!128831 e!785551)))

(declare-fun res!927960 () Bool)

(assert (=> b!1386739 (=> (not res!927960) (not e!785551))))

(assert (=> b!1386739 (= res!927960 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386740 () Bool)

(declare-fun res!927962 () Bool)

(assert (=> b!1386740 (=> (not res!927962) (not e!785552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386740 (= res!927962 (validKeyInArray!0 (select (arr!45800 a!2938) i!1065)))))

(declare-fun b!1386741 () Bool)

(declare-fun res!927966 () Bool)

(assert (=> b!1386741 (=> (not res!927966) (not e!785552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94856 (_ BitVec 32)) Bool)

(assert (=> b!1386741 (= res!927966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386742 () Bool)

(declare-fun res!927961 () Bool)

(assert (=> b!1386742 (=> (not res!927961) (not e!785552))))

(declare-datatypes ((List!32508 0))(
  ( (Nil!32505) (Cons!32504 (h!33713 (_ BitVec 64)) (t!47209 List!32508)) )
))
(declare-fun arrayNoDuplicates!0 (array!94856 (_ BitVec 32) List!32508) Bool)

(assert (=> b!1386742 (= res!927961 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32505))))

(declare-fun b!1386743 () Bool)

(declare-fun Unit!46296 () Unit!46294)

(assert (=> b!1386743 (= e!785550 Unit!46296)))

(declare-fun b!1386744 () Bool)

(declare-fun lt!609530 () Unit!46294)

(assert (=> b!1386744 (= e!785550 lt!609530)))

(declare-fun lt!609531 () Unit!46294)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46294)

(assert (=> b!1386744 (= lt!609531 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10165 0))(
  ( (MissingZero!10165 (index!43030 (_ BitVec 32))) (Found!10165 (index!43031 (_ BitVec 32))) (Intermediate!10165 (undefined!10977 Bool) (index!43032 (_ BitVec 32)) (x!124649 (_ BitVec 32))) (Undefined!10165) (MissingVacant!10165 (index!43033 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94856 (_ BitVec 32)) SeekEntryResult!10165)

(assert (=> b!1386744 (= (seekEntryOrOpen!0 (select (arr!45800 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45800 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94857 (store (arr!45800 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46351 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46294)

(assert (=> b!1386744 (= lt!609530 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386744 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386745 () Bool)

(assert (=> b!1386745 (= e!785551 (validKeyInArray!0 (select (arr!45800 a!2938) startIndex!16)))))

(assert (= (and start!118662 res!927964) b!1386738))

(assert (= (and b!1386738 res!927963) b!1386740))

(assert (= (and b!1386740 res!927962) b!1386742))

(assert (= (and b!1386742 res!927961) b!1386741))

(assert (= (and b!1386741 res!927966) b!1386737))

(assert (= (and b!1386737 res!927965) b!1386739))

(assert (= (and b!1386739 res!927960) b!1386745))

(assert (= (and b!1386739 c!128831) b!1386744))

(assert (= (and b!1386739 (not c!128831)) b!1386743))

(declare-fun m!1272203 () Bool)

(assert (=> b!1386742 m!1272203))

(declare-fun m!1272205 () Bool)

(assert (=> b!1386745 m!1272205))

(assert (=> b!1386745 m!1272205))

(declare-fun m!1272207 () Bool)

(assert (=> b!1386745 m!1272207))

(declare-fun m!1272209 () Bool)

(assert (=> b!1386740 m!1272209))

(assert (=> b!1386740 m!1272209))

(declare-fun m!1272211 () Bool)

(assert (=> b!1386740 m!1272211))

(declare-fun m!1272213 () Bool)

(assert (=> start!118662 m!1272213))

(declare-fun m!1272215 () Bool)

(assert (=> start!118662 m!1272215))

(declare-fun m!1272217 () Bool)

(assert (=> b!1386744 m!1272217))

(declare-fun m!1272219 () Bool)

(assert (=> b!1386744 m!1272219))

(assert (=> b!1386744 m!1272219))

(declare-fun m!1272221 () Bool)

(assert (=> b!1386744 m!1272221))

(declare-fun m!1272223 () Bool)

(assert (=> b!1386744 m!1272223))

(declare-fun m!1272225 () Bool)

(assert (=> b!1386744 m!1272225))

(assert (=> b!1386744 m!1272205))

(declare-fun m!1272227 () Bool)

(assert (=> b!1386744 m!1272227))

(assert (=> b!1386744 m!1272205))

(declare-fun m!1272229 () Bool)

(assert (=> b!1386744 m!1272229))

(declare-fun m!1272231 () Bool)

(assert (=> b!1386741 m!1272231))

(assert (=> b!1386737 m!1272209))

(check-sat (not start!118662) (not b!1386745) (not b!1386740) (not b!1386741) (not b!1386742) (not b!1386744))
