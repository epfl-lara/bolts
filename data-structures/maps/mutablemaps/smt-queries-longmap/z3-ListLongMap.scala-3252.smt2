; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45396 () Bool)

(assert start!45396)

(declare-fun b!498453 () Bool)

(declare-fun res!300675 () Bool)

(declare-fun e!292146 () Bool)

(assert (=> b!498453 (=> res!300675 e!292146)))

(declare-datatypes ((SeekEntryResult!3943 0))(
  ( (MissingZero!3943 (index!17954 (_ BitVec 32))) (Found!3943 (index!17955 (_ BitVec 32))) (Intermediate!3943 (undefined!4755 Bool) (index!17956 (_ BitVec 32)) (x!47031 (_ BitVec 32))) (Undefined!3943) (MissingVacant!3943 (index!17957 (_ BitVec 32))) )
))
(declare-fun lt!225885 () SeekEntryResult!3943)

(get-info :version)

(assert (=> b!498453 (= res!300675 (or (undefined!4755 lt!225885) (not ((_ is Intermediate!3943) lt!225885))))))

(declare-fun b!498454 () Bool)

(declare-datatypes ((Unit!14862 0))(
  ( (Unit!14863) )
))
(declare-fun e!292147 () Unit!14862)

(declare-fun Unit!14864 () Unit!14862)

(assert (=> b!498454 (= e!292147 Unit!14864)))

(declare-fun b!498455 () Bool)

(declare-fun res!300683 () Bool)

(declare-fun e!292141 () Bool)

(assert (=> b!498455 (=> (not res!300683) (not e!292141))))

(declare-datatypes ((array!32181 0))(
  ( (array!32182 (arr!15469 (Array (_ BitVec 32) (_ BitVec 64))) (size!15833 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32181)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498455 (= res!300683 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498456 () Bool)

(declare-fun res!300671 () Bool)

(declare-fun e!292145 () Bool)

(assert (=> b!498456 (=> (not res!300671) (not e!292145))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32181 (_ BitVec 32)) Bool)

(assert (=> b!498456 (= res!300671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498457 () Bool)

(declare-fun e!292144 () Bool)

(assert (=> b!498457 (= e!292146 e!292144)))

(declare-fun res!300679 () Bool)

(assert (=> b!498457 (=> res!300679 e!292144)))

(declare-fun lt!225886 () (_ BitVec 32))

(assert (=> b!498457 (= res!300679 (or (bvsgt #b00000000000000000000000000000000 (x!47031 lt!225885)) (bvsgt (x!47031 lt!225885) #b01111111111111111111111111111110) (bvslt lt!225886 #b00000000000000000000000000000000) (bvsge lt!225886 (size!15833 a!3235)) (bvslt (index!17956 lt!225885) #b00000000000000000000000000000000) (bvsge (index!17956 lt!225885) (size!15833 a!3235)) (not (= lt!225885 (Intermediate!3943 false (index!17956 lt!225885) (x!47031 lt!225885))))))))

(assert (=> b!498457 (and (or (= (select (arr!15469 a!3235) (index!17956 lt!225885)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15469 a!3235) (index!17956 lt!225885)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15469 a!3235) (index!17956 lt!225885)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15469 a!3235) (index!17956 lt!225885)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225889 () Unit!14862)

(assert (=> b!498457 (= lt!225889 e!292147)))

(declare-fun c!59168 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498457 (= c!59168 (= (select (arr!15469 a!3235) (index!17956 lt!225885)) (select (arr!15469 a!3235) j!176)))))

(assert (=> b!498457 (and (bvslt (x!47031 lt!225885) #b01111111111111111111111111111110) (or (= (select (arr!15469 a!3235) (index!17956 lt!225885)) (select (arr!15469 a!3235) j!176)) (= (select (arr!15469 a!3235) (index!17956 lt!225885)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15469 a!3235) (index!17956 lt!225885)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!300681 () Bool)

(assert (=> start!45396 (=> (not res!300681) (not e!292141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45396 (= res!300681 (validMask!0 mask!3524))))

(assert (=> start!45396 e!292141))

(assert (=> start!45396 true))

(declare-fun array_inv!11243 (array!32181) Bool)

(assert (=> start!45396 (array_inv!11243 a!3235)))

(declare-fun e!292142 () Bool)

(declare-fun b!498458 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32181 (_ BitVec 32)) SeekEntryResult!3943)

(assert (=> b!498458 (= e!292142 (= (seekEntryOrOpen!0 (select (arr!15469 a!3235) j!176) a!3235 mask!3524) (Found!3943 j!176)))))

(declare-fun b!498459 () Bool)

(assert (=> b!498459 (= e!292145 (not e!292146))))

(declare-fun res!300677 () Bool)

(assert (=> b!498459 (=> res!300677 e!292146)))

(declare-fun lt!225884 () array!32181)

(declare-fun lt!225890 () (_ BitVec 32))

(declare-fun lt!225888 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32181 (_ BitVec 32)) SeekEntryResult!3943)

(assert (=> b!498459 (= res!300677 (= lt!225885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225890 lt!225888 lt!225884 mask!3524)))))

(assert (=> b!498459 (= lt!225885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225886 (select (arr!15469 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498459 (= lt!225890 (toIndex!0 lt!225888 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498459 (= lt!225888 (select (store (arr!15469 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498459 (= lt!225886 (toIndex!0 (select (arr!15469 a!3235) j!176) mask!3524))))

(assert (=> b!498459 (= lt!225884 (array!32182 (store (arr!15469 a!3235) i!1204 k0!2280) (size!15833 a!3235)))))

(assert (=> b!498459 e!292142))

(declare-fun res!300678 () Bool)

(assert (=> b!498459 (=> (not res!300678) (not e!292142))))

(assert (=> b!498459 (= res!300678 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225881 () Unit!14862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14862)

(assert (=> b!498459 (= lt!225881 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498460 () Bool)

(declare-fun res!300682 () Bool)

(assert (=> b!498460 (=> (not res!300682) (not e!292141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498460 (= res!300682 (validKeyInArray!0 k0!2280))))

(declare-fun b!498461 () Bool)

(declare-fun res!300673 () Bool)

(assert (=> b!498461 (=> (not res!300673) (not e!292145))))

(declare-datatypes ((List!9680 0))(
  ( (Nil!9677) (Cons!9676 (h!10550 (_ BitVec 64)) (t!15916 List!9680)) )
))
(declare-fun arrayNoDuplicates!0 (array!32181 (_ BitVec 32) List!9680) Bool)

(assert (=> b!498461 (= res!300673 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9677))))

(declare-fun b!498462 () Bool)

(assert (=> b!498462 (= e!292141 e!292145)))

(declare-fun res!300676 () Bool)

(assert (=> b!498462 (=> (not res!300676) (not e!292145))))

(declare-fun lt!225882 () SeekEntryResult!3943)

(assert (=> b!498462 (= res!300676 (or (= lt!225882 (MissingZero!3943 i!1204)) (= lt!225882 (MissingVacant!3943 i!1204))))))

(assert (=> b!498462 (= lt!225882 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498463 () Bool)

(declare-fun res!300674 () Bool)

(assert (=> b!498463 (=> (not res!300674) (not e!292141))))

(assert (=> b!498463 (= res!300674 (and (= (size!15833 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15833 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15833 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498464 () Bool)

(declare-fun Unit!14865 () Unit!14862)

(assert (=> b!498464 (= e!292147 Unit!14865)))

(declare-fun lt!225883 () Unit!14862)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14862)

(assert (=> b!498464 (= lt!225883 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225886 #b00000000000000000000000000000000 (index!17956 lt!225885) (x!47031 lt!225885) mask!3524))))

(declare-fun res!300672 () Bool)

(assert (=> b!498464 (= res!300672 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225886 lt!225888 lt!225884 mask!3524) (Intermediate!3943 false (index!17956 lt!225885) (x!47031 lt!225885))))))

(declare-fun e!292143 () Bool)

(assert (=> b!498464 (=> (not res!300672) (not e!292143))))

(assert (=> b!498464 e!292143))

(declare-fun b!498465 () Bool)

(assert (=> b!498465 (= e!292143 false)))

(declare-fun b!498466 () Bool)

(assert (=> b!498466 (= e!292144 true)))

(declare-fun lt!225887 () SeekEntryResult!3943)

(assert (=> b!498466 (= lt!225887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225886 lt!225888 lt!225884 mask!3524))))

(declare-fun b!498467 () Bool)

(declare-fun res!300680 () Bool)

(assert (=> b!498467 (=> (not res!300680) (not e!292141))))

(assert (=> b!498467 (= res!300680 (validKeyInArray!0 (select (arr!15469 a!3235) j!176)))))

(assert (= (and start!45396 res!300681) b!498463))

(assert (= (and b!498463 res!300674) b!498467))

(assert (= (and b!498467 res!300680) b!498460))

(assert (= (and b!498460 res!300682) b!498455))

(assert (= (and b!498455 res!300683) b!498462))

(assert (= (and b!498462 res!300676) b!498456))

(assert (= (and b!498456 res!300671) b!498461))

(assert (= (and b!498461 res!300673) b!498459))

(assert (= (and b!498459 res!300678) b!498458))

(assert (= (and b!498459 (not res!300677)) b!498453))

(assert (= (and b!498453 (not res!300675)) b!498457))

(assert (= (and b!498457 c!59168) b!498464))

(assert (= (and b!498457 (not c!59168)) b!498454))

(assert (= (and b!498464 res!300672) b!498465))

(assert (= (and b!498457 (not res!300679)) b!498466))

(declare-fun m!479743 () Bool)

(assert (=> b!498458 m!479743))

(assert (=> b!498458 m!479743))

(declare-fun m!479745 () Bool)

(assert (=> b!498458 m!479745))

(declare-fun m!479747 () Bool)

(assert (=> b!498461 m!479747))

(declare-fun m!479749 () Bool)

(assert (=> start!45396 m!479749))

(declare-fun m!479751 () Bool)

(assert (=> start!45396 m!479751))

(declare-fun m!479753 () Bool)

(assert (=> b!498460 m!479753))

(declare-fun m!479755 () Bool)

(assert (=> b!498457 m!479755))

(assert (=> b!498457 m!479743))

(declare-fun m!479757 () Bool)

(assert (=> b!498455 m!479757))

(declare-fun m!479759 () Bool)

(assert (=> b!498464 m!479759))

(declare-fun m!479761 () Bool)

(assert (=> b!498464 m!479761))

(declare-fun m!479763 () Bool)

(assert (=> b!498456 m!479763))

(declare-fun m!479765 () Bool)

(assert (=> b!498459 m!479765))

(declare-fun m!479767 () Bool)

(assert (=> b!498459 m!479767))

(declare-fun m!479769 () Bool)

(assert (=> b!498459 m!479769))

(declare-fun m!479771 () Bool)

(assert (=> b!498459 m!479771))

(assert (=> b!498459 m!479743))

(declare-fun m!479773 () Bool)

(assert (=> b!498459 m!479773))

(assert (=> b!498459 m!479743))

(declare-fun m!479775 () Bool)

(assert (=> b!498459 m!479775))

(assert (=> b!498459 m!479743))

(declare-fun m!479777 () Bool)

(assert (=> b!498459 m!479777))

(declare-fun m!479779 () Bool)

(assert (=> b!498459 m!479779))

(declare-fun m!479781 () Bool)

(assert (=> b!498462 m!479781))

(assert (=> b!498467 m!479743))

(assert (=> b!498467 m!479743))

(declare-fun m!479783 () Bool)

(assert (=> b!498467 m!479783))

(assert (=> b!498466 m!479761))

(check-sat (not b!498460) (not b!498458) (not b!498466) (not b!498455) (not b!498456) (not b!498462) (not b!498459) (not b!498461) (not start!45396) (not b!498467) (not b!498464))
(check-sat)
