; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45296 () Bool)

(assert start!45296)

(declare-fun b!497371 () Bool)

(declare-fun res!299903 () Bool)

(declare-fun e!291536 () Bool)

(assert (=> b!497371 (=> (not res!299903) (not e!291536))))

(declare-datatypes ((array!32144 0))(
  ( (array!32145 (arr!15452 (Array (_ BitVec 32) (_ BitVec 64))) (size!15816 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32144)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497371 (= res!299903 (validKeyInArray!0 (select (arr!15452 a!3235) j!176)))))

(declare-fun b!497372 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!291537 () Bool)

(declare-datatypes ((SeekEntryResult!3926 0))(
  ( (MissingZero!3926 (index!17883 (_ BitVec 32))) (Found!3926 (index!17884 (_ BitVec 32))) (Intermediate!3926 (undefined!4738 Bool) (index!17885 (_ BitVec 32)) (x!46957 (_ BitVec 32))) (Undefined!3926) (MissingVacant!3926 (index!17886 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32144 (_ BitVec 32)) SeekEntryResult!3926)

(assert (=> b!497372 (= e!291537 (= (seekEntryOrOpen!0 (select (arr!15452 a!3235) j!176) a!3235 mask!3524) (Found!3926 j!176)))))

(declare-fun b!497373 () Bool)

(declare-fun res!299894 () Bool)

(declare-fun e!291535 () Bool)

(assert (=> b!497373 (=> res!299894 e!291535)))

(declare-fun lt!225243 () SeekEntryResult!3926)

(assert (=> b!497373 (= res!299894 (or (undefined!4738 lt!225243) (not (is-Intermediate!3926 lt!225243))))))

(declare-fun b!497374 () Bool)

(declare-fun res!299895 () Bool)

(declare-fun e!291538 () Bool)

(assert (=> b!497374 (=> (not res!299895) (not e!291538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32144 (_ BitVec 32)) Bool)

(assert (=> b!497374 (= res!299895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497375 () Bool)

(declare-fun res!299892 () Bool)

(assert (=> b!497375 (=> (not res!299892) (not e!291536))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!497375 (= res!299892 (validKeyInArray!0 k!2280))))

(declare-fun res!299900 () Bool)

(assert (=> start!45296 (=> (not res!299900) (not e!291536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45296 (= res!299900 (validMask!0 mask!3524))))

(assert (=> start!45296 e!291536))

(assert (=> start!45296 true))

(declare-fun array_inv!11226 (array!32144) Bool)

(assert (=> start!45296 (array_inv!11226 a!3235)))

(declare-fun b!497376 () Bool)

(declare-datatypes ((Unit!14794 0))(
  ( (Unit!14795) )
))
(declare-fun e!291532 () Unit!14794)

(declare-fun Unit!14796 () Unit!14794)

(assert (=> b!497376 (= e!291532 Unit!14796)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!225245 () Unit!14794)

(declare-fun lt!225244 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32144 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14794)

(assert (=> b!497376 (= lt!225245 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225244 #b00000000000000000000000000000000 (index!17885 lt!225243) (x!46957 lt!225243) mask!3524))))

(declare-fun lt!225242 () array!32144)

(declare-fun res!299902 () Bool)

(declare-fun lt!225237 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32144 (_ BitVec 32)) SeekEntryResult!3926)

(assert (=> b!497376 (= res!299902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225244 lt!225237 lt!225242 mask!3524) (Intermediate!3926 false (index!17885 lt!225243) (x!46957 lt!225243))))))

(declare-fun e!291534 () Bool)

(assert (=> b!497376 (=> (not res!299902) (not e!291534))))

(assert (=> b!497376 e!291534))

(declare-fun b!497377 () Bool)

(declare-fun res!299893 () Bool)

(assert (=> b!497377 (=> (not res!299893) (not e!291536))))

(declare-fun arrayContainsKey!0 (array!32144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497377 (= res!299893 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497378 () Bool)

(assert (=> b!497378 (= e!291535 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!497378 (and (or (= (select (arr!15452 a!3235) (index!17885 lt!225243)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15452 a!3235) (index!17885 lt!225243)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15452 a!3235) (index!17885 lt!225243)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15452 a!3235) (index!17885 lt!225243)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225240 () Unit!14794)

(assert (=> b!497378 (= lt!225240 e!291532)))

(declare-fun c!59015 () Bool)

(assert (=> b!497378 (= c!59015 (= (select (arr!15452 a!3235) (index!17885 lt!225243)) (select (arr!15452 a!3235) j!176)))))

(assert (=> b!497378 (and (bvslt (x!46957 lt!225243) #b01111111111111111111111111111110) (or (= (select (arr!15452 a!3235) (index!17885 lt!225243)) (select (arr!15452 a!3235) j!176)) (= (select (arr!15452 a!3235) (index!17885 lt!225243)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15452 a!3235) (index!17885 lt!225243)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497379 () Bool)

(declare-fun res!299899 () Bool)

(assert (=> b!497379 (=> (not res!299899) (not e!291538))))

(declare-datatypes ((List!9663 0))(
  ( (Nil!9660) (Cons!9659 (h!10530 (_ BitVec 64)) (t!15899 List!9663)) )
))
(declare-fun arrayNoDuplicates!0 (array!32144 (_ BitVec 32) List!9663) Bool)

(assert (=> b!497379 (= res!299899 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9660))))

(declare-fun b!497380 () Bool)

(declare-fun Unit!14797 () Unit!14794)

(assert (=> b!497380 (= e!291532 Unit!14797)))

(declare-fun b!497381 () Bool)

(declare-fun res!299901 () Bool)

(assert (=> b!497381 (=> (not res!299901) (not e!291536))))

(assert (=> b!497381 (= res!299901 (and (= (size!15816 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15816 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15816 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497382 () Bool)

(assert (=> b!497382 (= e!291534 false)))

(declare-fun b!497383 () Bool)

(assert (=> b!497383 (= e!291536 e!291538)))

(declare-fun res!299896 () Bool)

(assert (=> b!497383 (=> (not res!299896) (not e!291538))))

(declare-fun lt!225241 () SeekEntryResult!3926)

(assert (=> b!497383 (= res!299896 (or (= lt!225241 (MissingZero!3926 i!1204)) (= lt!225241 (MissingVacant!3926 i!1204))))))

(assert (=> b!497383 (= lt!225241 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497384 () Bool)

(assert (=> b!497384 (= e!291538 (not e!291535))))

(declare-fun res!299898 () Bool)

(assert (=> b!497384 (=> res!299898 e!291535)))

(declare-fun lt!225238 () (_ BitVec 32))

(assert (=> b!497384 (= res!299898 (= lt!225243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225238 lt!225237 lt!225242 mask!3524)))))

(assert (=> b!497384 (= lt!225243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225244 (select (arr!15452 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497384 (= lt!225238 (toIndex!0 lt!225237 mask!3524))))

(assert (=> b!497384 (= lt!225237 (select (store (arr!15452 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!497384 (= lt!225244 (toIndex!0 (select (arr!15452 a!3235) j!176) mask!3524))))

(assert (=> b!497384 (= lt!225242 (array!32145 (store (arr!15452 a!3235) i!1204 k!2280) (size!15816 a!3235)))))

(assert (=> b!497384 e!291537))

(declare-fun res!299897 () Bool)

(assert (=> b!497384 (=> (not res!299897) (not e!291537))))

(assert (=> b!497384 (= res!299897 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225239 () Unit!14794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32144 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14794)

(assert (=> b!497384 (= lt!225239 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45296 res!299900) b!497381))

(assert (= (and b!497381 res!299901) b!497371))

(assert (= (and b!497371 res!299903) b!497375))

(assert (= (and b!497375 res!299892) b!497377))

(assert (= (and b!497377 res!299893) b!497383))

(assert (= (and b!497383 res!299896) b!497374))

(assert (= (and b!497374 res!299895) b!497379))

(assert (= (and b!497379 res!299899) b!497384))

(assert (= (and b!497384 res!299897) b!497372))

(assert (= (and b!497384 (not res!299898)) b!497373))

(assert (= (and b!497373 (not res!299894)) b!497378))

(assert (= (and b!497378 c!59015) b!497376))

(assert (= (and b!497378 (not c!59015)) b!497380))

(assert (= (and b!497376 res!299902) b!497382))

(declare-fun m!478795 () Bool)

(assert (=> b!497376 m!478795))

(declare-fun m!478797 () Bool)

(assert (=> b!497376 m!478797))

(declare-fun m!478799 () Bool)

(assert (=> b!497383 m!478799))

(declare-fun m!478801 () Bool)

(assert (=> b!497384 m!478801))

(declare-fun m!478803 () Bool)

(assert (=> b!497384 m!478803))

(declare-fun m!478805 () Bool)

(assert (=> b!497384 m!478805))

(declare-fun m!478807 () Bool)

(assert (=> b!497384 m!478807))

(declare-fun m!478809 () Bool)

(assert (=> b!497384 m!478809))

(declare-fun m!478811 () Bool)

(assert (=> b!497384 m!478811))

(assert (=> b!497384 m!478801))

(declare-fun m!478813 () Bool)

(assert (=> b!497384 m!478813))

(assert (=> b!497384 m!478801))

(declare-fun m!478815 () Bool)

(assert (=> b!497384 m!478815))

(declare-fun m!478817 () Bool)

(assert (=> b!497384 m!478817))

(declare-fun m!478819 () Bool)

(assert (=> b!497374 m!478819))

(declare-fun m!478821 () Bool)

(assert (=> b!497378 m!478821))

(assert (=> b!497378 m!478801))

(declare-fun m!478823 () Bool)

(assert (=> start!45296 m!478823))

(declare-fun m!478825 () Bool)

(assert (=> start!45296 m!478825))

(assert (=> b!497371 m!478801))

(assert (=> b!497371 m!478801))

(declare-fun m!478827 () Bool)

(assert (=> b!497371 m!478827))

(assert (=> b!497372 m!478801))

(assert (=> b!497372 m!478801))

(declare-fun m!478829 () Bool)

(assert (=> b!497372 m!478829))

(declare-fun m!478831 () Bool)

(assert (=> b!497379 m!478831))

(declare-fun m!478833 () Bool)

(assert (=> b!497377 m!478833))

(declare-fun m!478835 () Bool)

(assert (=> b!497375 m!478835))

(push 1)

