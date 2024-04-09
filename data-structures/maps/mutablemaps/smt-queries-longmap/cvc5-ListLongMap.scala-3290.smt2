; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45694 () Bool)

(assert start!45694)

(declare-fun b!504175 () Bool)

(declare-fun res!305526 () Bool)

(declare-fun e!295210 () Bool)

(assert (=> b!504175 (=> (not res!305526) (not e!295210))))

(declare-datatypes ((array!32410 0))(
  ( (array!32411 (arr!15582 (Array (_ BitVec 32) (_ BitVec 64))) (size!15946 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32410)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504175 (= res!305526 (validKeyInArray!0 (select (arr!15582 a!3235) j!176)))))

(declare-fun b!504176 () Bool)

(declare-datatypes ((Unit!15314 0))(
  ( (Unit!15315) )
))
(declare-fun e!295215 () Unit!15314)

(declare-fun Unit!15316 () Unit!15314)

(assert (=> b!504176 (= e!295215 Unit!15316)))

(declare-datatypes ((SeekEntryResult!4056 0))(
  ( (MissingZero!4056 (index!18412 (_ BitVec 32))) (Found!4056 (index!18413 (_ BitVec 32))) (Intermediate!4056 (undefined!4868 Bool) (index!18414 (_ BitVec 32)) (x!47460 (_ BitVec 32))) (Undefined!4056) (MissingVacant!4056 (index!18415 (_ BitVec 32))) )
))
(declare-fun lt!229588 () SeekEntryResult!4056)

(declare-fun lt!229590 () (_ BitVec 32))

(declare-fun lt!229592 () Unit!15314)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32410 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15314)

(assert (=> b!504176 (= lt!229592 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229590 #b00000000000000000000000000000000 (index!18414 lt!229588) (x!47460 lt!229588) mask!3524))))

(declare-fun res!305522 () Bool)

(declare-fun lt!229591 () (_ BitVec 64))

(declare-fun lt!229593 () array!32410)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32410 (_ BitVec 32)) SeekEntryResult!4056)

(assert (=> b!504176 (= res!305522 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229590 lt!229591 lt!229593 mask!3524) (Intermediate!4056 false (index!18414 lt!229588) (x!47460 lt!229588))))))

(declare-fun e!295208 () Bool)

(assert (=> b!504176 (=> (not res!305522) (not e!295208))))

(assert (=> b!504176 e!295208))

(declare-fun b!504177 () Bool)

(declare-fun e!295214 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32410 (_ BitVec 32)) SeekEntryResult!4056)

(assert (=> b!504177 (= e!295214 (= (seekEntryOrOpen!0 (select (arr!15582 a!3235) j!176) a!3235 mask!3524) (Found!4056 j!176)))))

(declare-fun b!504178 () Bool)

(declare-fun res!305527 () Bool)

(assert (=> b!504178 (=> (not res!305527) (not e!295210))))

(declare-fun arrayContainsKey!0 (array!32410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504178 (= res!305527 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504179 () Bool)

(declare-fun res!305518 () Bool)

(declare-fun e!295216 () Bool)

(assert (=> b!504179 (=> res!305518 e!295216)))

(declare-fun e!295211 () Bool)

(assert (=> b!504179 (= res!305518 e!295211)))

(declare-fun res!305528 () Bool)

(assert (=> b!504179 (=> (not res!305528) (not e!295211))))

(assert (=> b!504179 (= res!305528 (bvsgt #b00000000000000000000000000000000 (x!47460 lt!229588)))))

(declare-fun b!504180 () Bool)

(assert (=> b!504180 (= e!295208 false)))

(declare-fun b!504181 () Bool)

(declare-fun res!305516 () Bool)

(assert (=> b!504181 (=> (not res!305516) (not e!295210))))

(assert (=> b!504181 (= res!305516 (validKeyInArray!0 k!2280))))

(declare-fun b!504182 () Bool)

(declare-fun e!295209 () Bool)

(declare-fun e!295213 () Bool)

(assert (=> b!504182 (= e!295209 (not e!295213))))

(declare-fun res!305519 () Bool)

(assert (=> b!504182 (=> res!305519 e!295213)))

(declare-fun lt!229589 () (_ BitVec 32))

(assert (=> b!504182 (= res!305519 (= lt!229588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229589 lt!229591 lt!229593 mask!3524)))))

(assert (=> b!504182 (= lt!229588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229590 (select (arr!15582 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504182 (= lt!229589 (toIndex!0 lt!229591 mask!3524))))

(assert (=> b!504182 (= lt!229591 (select (store (arr!15582 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504182 (= lt!229590 (toIndex!0 (select (arr!15582 a!3235) j!176) mask!3524))))

(assert (=> b!504182 (= lt!229593 (array!32411 (store (arr!15582 a!3235) i!1204 k!2280) (size!15946 a!3235)))))

(assert (=> b!504182 e!295214))

(declare-fun res!305525 () Bool)

(assert (=> b!504182 (=> (not res!305525) (not e!295214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32410 (_ BitVec 32)) Bool)

(assert (=> b!504182 (= res!305525 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229597 () Unit!15314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32410 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15314)

(assert (=> b!504182 (= lt!229597 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504183 () Bool)

(declare-fun res!305517 () Bool)

(assert (=> b!504183 (=> res!305517 e!295213)))

(assert (=> b!504183 (= res!305517 (or (undefined!4868 lt!229588) (not (is-Intermediate!4056 lt!229588))))))

(declare-fun res!305521 () Bool)

(assert (=> start!45694 (=> (not res!305521) (not e!295210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45694 (= res!305521 (validMask!0 mask!3524))))

(assert (=> start!45694 e!295210))

(assert (=> start!45694 true))

(declare-fun array_inv!11356 (array!32410) Bool)

(assert (=> start!45694 (array_inv!11356 a!3235)))

(declare-fun b!504184 () Bool)

(assert (=> b!504184 (= e!295213 e!295216)))

(declare-fun res!305520 () Bool)

(assert (=> b!504184 (=> res!305520 e!295216)))

(assert (=> b!504184 (= res!305520 (or (bvsgt (x!47460 lt!229588) #b01111111111111111111111111111110) (bvslt lt!229590 #b00000000000000000000000000000000) (bvsge lt!229590 (size!15946 a!3235)) (bvslt (index!18414 lt!229588) #b00000000000000000000000000000000) (bvsge (index!18414 lt!229588) (size!15946 a!3235)) (not (= lt!229588 (Intermediate!4056 false (index!18414 lt!229588) (x!47460 lt!229588))))))))

(assert (=> b!504184 (= (index!18414 lt!229588) i!1204)))

(declare-fun lt!229594 () Unit!15314)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32410 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15314)

(assert (=> b!504184 (= lt!229594 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229590 #b00000000000000000000000000000000 (index!18414 lt!229588) (x!47460 lt!229588) mask!3524))))

(assert (=> b!504184 (and (or (= (select (arr!15582 a!3235) (index!18414 lt!229588)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15582 a!3235) (index!18414 lt!229588)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15582 a!3235) (index!18414 lt!229588)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15582 a!3235) (index!18414 lt!229588)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229596 () Unit!15314)

(assert (=> b!504184 (= lt!229596 e!295215)))

(declare-fun c!59609 () Bool)

(assert (=> b!504184 (= c!59609 (= (select (arr!15582 a!3235) (index!18414 lt!229588)) (select (arr!15582 a!3235) j!176)))))

(assert (=> b!504184 (and (bvslt (x!47460 lt!229588) #b01111111111111111111111111111110) (or (= (select (arr!15582 a!3235) (index!18414 lt!229588)) (select (arr!15582 a!3235) j!176)) (= (select (arr!15582 a!3235) (index!18414 lt!229588)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15582 a!3235) (index!18414 lt!229588)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504185 () Bool)

(declare-fun Unit!15317 () Unit!15314)

(assert (=> b!504185 (= e!295215 Unit!15317)))

(declare-fun b!504186 () Bool)

(assert (=> b!504186 (= e!295216 true)))

(declare-fun lt!229598 () SeekEntryResult!4056)

(assert (=> b!504186 (= lt!229598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229590 lt!229591 lt!229593 mask!3524))))

(declare-fun b!504187 () Bool)

(assert (=> b!504187 (= e!295210 e!295209)))

(declare-fun res!305524 () Bool)

(assert (=> b!504187 (=> (not res!305524) (not e!295209))))

(declare-fun lt!229595 () SeekEntryResult!4056)

(assert (=> b!504187 (= res!305524 (or (= lt!229595 (MissingZero!4056 i!1204)) (= lt!229595 (MissingVacant!4056 i!1204))))))

(assert (=> b!504187 (= lt!229595 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504188 () Bool)

(declare-fun res!305514 () Bool)

(assert (=> b!504188 (=> (not res!305514) (not e!295209))))

(declare-datatypes ((List!9793 0))(
  ( (Nil!9790) (Cons!9789 (h!10666 (_ BitVec 64)) (t!16029 List!9793)) )
))
(declare-fun arrayNoDuplicates!0 (array!32410 (_ BitVec 32) List!9793) Bool)

(assert (=> b!504188 (= res!305514 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9790))))

(declare-fun b!504189 () Bool)

(declare-fun res!305515 () Bool)

(assert (=> b!504189 (=> (not res!305515) (not e!295209))))

(assert (=> b!504189 (= res!305515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504190 () Bool)

(declare-fun res!305523 () Bool)

(assert (=> b!504190 (=> (not res!305523) (not e!295210))))

(assert (=> b!504190 (= res!305523 (and (= (size!15946 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15946 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15946 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504191 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32410 (_ BitVec 32)) SeekEntryResult!4056)

(assert (=> b!504191 (= e!295211 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229590 (index!18414 lt!229588) (select (arr!15582 a!3235) j!176) a!3235 mask!3524) (Found!4056 j!176))))))

(assert (= (and start!45694 res!305521) b!504190))

(assert (= (and b!504190 res!305523) b!504175))

(assert (= (and b!504175 res!305526) b!504181))

(assert (= (and b!504181 res!305516) b!504178))

(assert (= (and b!504178 res!305527) b!504187))

(assert (= (and b!504187 res!305524) b!504189))

(assert (= (and b!504189 res!305515) b!504188))

(assert (= (and b!504188 res!305514) b!504182))

(assert (= (and b!504182 res!305525) b!504177))

(assert (= (and b!504182 (not res!305519)) b!504183))

(assert (= (and b!504183 (not res!305517)) b!504184))

(assert (= (and b!504184 c!59609) b!504176))

(assert (= (and b!504184 (not c!59609)) b!504185))

(assert (= (and b!504176 res!305522) b!504180))

(assert (= (and b!504184 (not res!305520)) b!504179))

(assert (= (and b!504179 res!305528) b!504191))

(assert (= (and b!504179 (not res!305518)) b!504186))

(declare-fun m!484957 () Bool)

(assert (=> b!504184 m!484957))

(declare-fun m!484959 () Bool)

(assert (=> b!504184 m!484959))

(declare-fun m!484961 () Bool)

(assert (=> b!504184 m!484961))

(declare-fun m!484963 () Bool)

(assert (=> b!504178 m!484963))

(declare-fun m!484965 () Bool)

(assert (=> b!504188 m!484965))

(declare-fun m!484967 () Bool)

(assert (=> b!504186 m!484967))

(declare-fun m!484969 () Bool)

(assert (=> b!504182 m!484969))

(declare-fun m!484971 () Bool)

(assert (=> b!504182 m!484971))

(declare-fun m!484973 () Bool)

(assert (=> b!504182 m!484973))

(declare-fun m!484975 () Bool)

(assert (=> b!504182 m!484975))

(declare-fun m!484977 () Bool)

(assert (=> b!504182 m!484977))

(assert (=> b!504182 m!484961))

(declare-fun m!484979 () Bool)

(assert (=> b!504182 m!484979))

(assert (=> b!504182 m!484961))

(declare-fun m!484981 () Bool)

(assert (=> b!504182 m!484981))

(assert (=> b!504182 m!484961))

(declare-fun m!484983 () Bool)

(assert (=> b!504182 m!484983))

(assert (=> b!504177 m!484961))

(assert (=> b!504177 m!484961))

(declare-fun m!484985 () Bool)

(assert (=> b!504177 m!484985))

(declare-fun m!484987 () Bool)

(assert (=> start!45694 m!484987))

(declare-fun m!484989 () Bool)

(assert (=> start!45694 m!484989))

(declare-fun m!484991 () Bool)

(assert (=> b!504181 m!484991))

(assert (=> b!504191 m!484961))

(assert (=> b!504191 m!484961))

(declare-fun m!484993 () Bool)

(assert (=> b!504191 m!484993))

(declare-fun m!484995 () Bool)

(assert (=> b!504189 m!484995))

(declare-fun m!484997 () Bool)

(assert (=> b!504187 m!484997))

(assert (=> b!504175 m!484961))

(assert (=> b!504175 m!484961))

(declare-fun m!484999 () Bool)

(assert (=> b!504175 m!484999))

(declare-fun m!485001 () Bool)

(assert (=> b!504176 m!485001))

(assert (=> b!504176 m!484967))

(push 1)

