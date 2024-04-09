; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45198 () Bool)

(assert start!45198)

(declare-fun b!495730 () Bool)

(declare-fun res!298274 () Bool)

(declare-fun e!290784 () Bool)

(assert (=> b!495730 (=> (not res!298274) (not e!290784))))

(declare-datatypes ((array!32046 0))(
  ( (array!32047 (arr!15403 (Array (_ BitVec 32) (_ BitVec 64))) (size!15767 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32046)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495730 (= res!298274 (validKeyInArray!0 (select (arr!15403 a!3235) j!176)))))

(declare-fun b!495731 () Bool)

(declare-fun e!290782 () Bool)

(assert (=> b!495731 (= e!290782 true)))

(declare-datatypes ((SeekEntryResult!3877 0))(
  ( (MissingZero!3877 (index!17687 (_ BitVec 32))) (Found!3877 (index!17688 (_ BitVec 32))) (Intermediate!3877 (undefined!4689 Bool) (index!17689 (_ BitVec 32)) (x!46780 (_ BitVec 32))) (Undefined!3877) (MissingVacant!3877 (index!17690 (_ BitVec 32))) )
))
(declare-fun lt!224470 () SeekEntryResult!3877)

(assert (=> b!495731 (and (bvslt (x!46780 lt!224470) #b01111111111111111111111111111110) (or (= (select (arr!15403 a!3235) (index!17689 lt!224470)) (select (arr!15403 a!3235) j!176)) (= (select (arr!15403 a!3235) (index!17689 lt!224470)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15403 a!3235) (index!17689 lt!224470)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495732 () Bool)

(declare-fun res!298276 () Bool)

(declare-fun e!290783 () Bool)

(assert (=> b!495732 (=> (not res!298276) (not e!290783))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32046 (_ BitVec 32)) Bool)

(assert (=> b!495732 (= res!298276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495733 () Bool)

(assert (=> b!495733 (= e!290784 e!290783)))

(declare-fun res!298277 () Bool)

(assert (=> b!495733 (=> (not res!298277) (not e!290783))))

(declare-fun lt!224473 () SeekEntryResult!3877)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495733 (= res!298277 (or (= lt!224473 (MissingZero!3877 i!1204)) (= lt!224473 (MissingVacant!3877 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32046 (_ BitVec 32)) SeekEntryResult!3877)

(assert (=> b!495733 (= lt!224473 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495734 () Bool)

(declare-fun res!298272 () Bool)

(assert (=> b!495734 (=> res!298272 e!290782)))

(get-info :version)

(assert (=> b!495734 (= res!298272 (or (undefined!4689 lt!224470) (not ((_ is Intermediate!3877) lt!224470))))))

(declare-fun b!495735 () Bool)

(declare-fun res!298269 () Bool)

(assert (=> b!495735 (=> (not res!298269) (not e!290784))))

(declare-fun arrayContainsKey!0 (array!32046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495735 (= res!298269 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495736 () Bool)

(declare-fun res!298271 () Bool)

(assert (=> b!495736 (=> (not res!298271) (not e!290783))))

(declare-datatypes ((List!9614 0))(
  ( (Nil!9611) (Cons!9610 (h!10481 (_ BitVec 64)) (t!15850 List!9614)) )
))
(declare-fun arrayNoDuplicates!0 (array!32046 (_ BitVec 32) List!9614) Bool)

(assert (=> b!495736 (= res!298271 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9611))))

(declare-fun res!298273 () Bool)

(assert (=> start!45198 (=> (not res!298273) (not e!290784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45198 (= res!298273 (validMask!0 mask!3524))))

(assert (=> start!45198 e!290784))

(assert (=> start!45198 true))

(declare-fun array_inv!11177 (array!32046) Bool)

(assert (=> start!45198 (array_inv!11177 a!3235)))

(declare-fun b!495737 () Bool)

(declare-fun res!298267 () Bool)

(assert (=> b!495737 (=> (not res!298267) (not e!290784))))

(assert (=> b!495737 (= res!298267 (validKeyInArray!0 k0!2280))))

(declare-fun b!495738 () Bool)

(declare-fun res!298270 () Bool)

(assert (=> b!495738 (=> (not res!298270) (not e!290784))))

(assert (=> b!495738 (= res!298270 (and (= (size!15767 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15767 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15767 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!290781 () Bool)

(declare-fun b!495739 () Bool)

(assert (=> b!495739 (= e!290781 (= (seekEntryOrOpen!0 (select (arr!15403 a!3235) j!176) a!3235 mask!3524) (Found!3877 j!176)))))

(declare-fun b!495740 () Bool)

(assert (=> b!495740 (= e!290783 (not e!290782))))

(declare-fun res!298268 () Bool)

(assert (=> b!495740 (=> res!298268 e!290782)))

(declare-fun lt!224472 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32046 (_ BitVec 32)) SeekEntryResult!3877)

(assert (=> b!495740 (= res!298268 (= lt!224470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224472 (select (store (arr!15403 a!3235) i!1204 k0!2280) j!176) (array!32047 (store (arr!15403 a!3235) i!1204 k0!2280) (size!15767 a!3235)) mask!3524)))))

(declare-fun lt!224471 () (_ BitVec 32))

(assert (=> b!495740 (= lt!224470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224471 (select (arr!15403 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495740 (= lt!224472 (toIndex!0 (select (store (arr!15403 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495740 (= lt!224471 (toIndex!0 (select (arr!15403 a!3235) j!176) mask!3524))))

(assert (=> b!495740 e!290781))

(declare-fun res!298275 () Bool)

(assert (=> b!495740 (=> (not res!298275) (not e!290781))))

(assert (=> b!495740 (= res!298275 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14692 0))(
  ( (Unit!14693) )
))
(declare-fun lt!224474 () Unit!14692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14692)

(assert (=> b!495740 (= lt!224474 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45198 res!298273) b!495738))

(assert (= (and b!495738 res!298270) b!495730))

(assert (= (and b!495730 res!298274) b!495737))

(assert (= (and b!495737 res!298267) b!495735))

(assert (= (and b!495735 res!298269) b!495733))

(assert (= (and b!495733 res!298277) b!495732))

(assert (= (and b!495732 res!298276) b!495736))

(assert (= (and b!495736 res!298271) b!495740))

(assert (= (and b!495740 res!298275) b!495739))

(assert (= (and b!495740 (not res!298268)) b!495734))

(assert (= (and b!495734 (not res!298272)) b!495731))

(declare-fun m!476925 () Bool)

(assert (=> b!495736 m!476925))

(declare-fun m!476927 () Bool)

(assert (=> b!495737 m!476927))

(declare-fun m!476929 () Bool)

(assert (=> b!495739 m!476929))

(assert (=> b!495739 m!476929))

(declare-fun m!476931 () Bool)

(assert (=> b!495739 m!476931))

(declare-fun m!476933 () Bool)

(assert (=> b!495735 m!476933))

(declare-fun m!476935 () Bool)

(assert (=> b!495731 m!476935))

(assert (=> b!495731 m!476929))

(declare-fun m!476937 () Bool)

(assert (=> b!495732 m!476937))

(assert (=> b!495730 m!476929))

(assert (=> b!495730 m!476929))

(declare-fun m!476939 () Bool)

(assert (=> b!495730 m!476939))

(declare-fun m!476941 () Bool)

(assert (=> start!45198 m!476941))

(declare-fun m!476943 () Bool)

(assert (=> start!45198 m!476943))

(declare-fun m!476945 () Bool)

(assert (=> b!495733 m!476945))

(assert (=> b!495740 m!476929))

(declare-fun m!476947 () Bool)

(assert (=> b!495740 m!476947))

(declare-fun m!476949 () Bool)

(assert (=> b!495740 m!476949))

(declare-fun m!476951 () Bool)

(assert (=> b!495740 m!476951))

(declare-fun m!476953 () Bool)

(assert (=> b!495740 m!476953))

(assert (=> b!495740 m!476929))

(declare-fun m!476955 () Bool)

(assert (=> b!495740 m!476955))

(assert (=> b!495740 m!476929))

(declare-fun m!476957 () Bool)

(assert (=> b!495740 m!476957))

(assert (=> b!495740 m!476953))

(declare-fun m!476959 () Bool)

(assert (=> b!495740 m!476959))

(assert (=> b!495740 m!476953))

(declare-fun m!476961 () Bool)

(assert (=> b!495740 m!476961))

(check-sat (not b!495732) (not b!495740) (not b!495735) (not start!45198) (not b!495736) (not b!495739) (not b!495730) (not b!495737) (not b!495733))
(check-sat)
