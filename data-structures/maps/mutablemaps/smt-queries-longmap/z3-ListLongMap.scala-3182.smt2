; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44730 () Bool)

(assert start!44730)

(declare-fun b!490617 () Bool)

(declare-fun e!288366 () Bool)

(declare-fun e!288367 () Bool)

(assert (=> b!490617 (= e!288366 e!288367)))

(declare-fun res!293710 () Bool)

(assert (=> b!490617 (=> (not res!293710) (not e!288367))))

(declare-datatypes ((SeekEntryResult!3733 0))(
  ( (MissingZero!3733 (index!17111 (_ BitVec 32))) (Found!3733 (index!17112 (_ BitVec 32))) (Intermediate!3733 (undefined!4545 Bool) (index!17113 (_ BitVec 32)) (x!46234 (_ BitVec 32))) (Undefined!3733) (MissingVacant!3733 (index!17114 (_ BitVec 32))) )
))
(declare-fun lt!221705 () SeekEntryResult!3733)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490617 (= res!293710 (or (= lt!221705 (MissingZero!3733 i!1204)) (= lt!221705 (MissingVacant!3733 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31749 0))(
  ( (array!31750 (arr!15259 (Array (_ BitVec 32) (_ BitVec 64))) (size!15623 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31749)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31749 (_ BitVec 32)) SeekEntryResult!3733)

(assert (=> b!490617 (= lt!221705 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490618 () Bool)

(declare-fun res!293705 () Bool)

(assert (=> b!490618 (=> (not res!293705) (not e!288367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31749 (_ BitVec 32)) Bool)

(assert (=> b!490618 (= res!293705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!293709 () Bool)

(assert (=> start!44730 (=> (not res!293709) (not e!288366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44730 (= res!293709 (validMask!0 mask!3524))))

(assert (=> start!44730 e!288366))

(assert (=> start!44730 true))

(declare-fun array_inv!11033 (array!31749) Bool)

(assert (=> start!44730 (array_inv!11033 a!3235)))

(declare-fun b!490619 () Bool)

(declare-fun e!288364 () Bool)

(assert (=> b!490619 (= e!288364 true)))

(declare-fun lt!221703 () array!31749)

(declare-fun lt!221704 () (_ BitVec 64))

(declare-fun lt!221707 () SeekEntryResult!3733)

(assert (=> b!490619 (= lt!221707 (seekEntryOrOpen!0 lt!221704 lt!221703 mask!3524))))

(declare-datatypes ((Unit!14404 0))(
  ( (Unit!14405) )
))
(declare-fun lt!221708 () Unit!14404)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31749 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14404)

(assert (=> b!490619 (= lt!221708 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!490620 () Bool)

(declare-fun res!293707 () Bool)

(assert (=> b!490620 (=> (not res!293707) (not e!288367))))

(declare-datatypes ((List!9470 0))(
  ( (Nil!9467) (Cons!9466 (h!10328 (_ BitVec 64)) (t!15706 List!9470)) )
))
(declare-fun arrayNoDuplicates!0 (array!31749 (_ BitVec 32) List!9470) Bool)

(assert (=> b!490620 (= res!293707 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9467))))

(declare-fun b!490621 () Bool)

(declare-fun res!293704 () Bool)

(assert (=> b!490621 (=> (not res!293704) (not e!288366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490621 (= res!293704 (validKeyInArray!0 k0!2280))))

(declare-fun b!490622 () Bool)

(assert (=> b!490622 (= e!288367 (not e!288364))))

(declare-fun res!293703 () Bool)

(assert (=> b!490622 (=> res!293703 e!288364)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31749 (_ BitVec 32)) SeekEntryResult!3733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490622 (= res!293703 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15259 a!3235) j!176) mask!3524) (select (arr!15259 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221704 mask!3524) lt!221704 lt!221703 mask!3524))))))

(assert (=> b!490622 (= lt!221704 (select (store (arr!15259 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490622 (= lt!221703 (array!31750 (store (arr!15259 a!3235) i!1204 k0!2280) (size!15623 a!3235)))))

(assert (=> b!490622 (= lt!221707 (Found!3733 j!176))))

(assert (=> b!490622 (= lt!221707 (seekEntryOrOpen!0 (select (arr!15259 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490622 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221706 () Unit!14404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14404)

(assert (=> b!490622 (= lt!221706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490623 () Bool)

(declare-fun res!293708 () Bool)

(assert (=> b!490623 (=> (not res!293708) (not e!288366))))

(declare-fun arrayContainsKey!0 (array!31749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490623 (= res!293708 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490624 () Bool)

(declare-fun res!293706 () Bool)

(assert (=> b!490624 (=> (not res!293706) (not e!288366))))

(assert (=> b!490624 (= res!293706 (validKeyInArray!0 (select (arr!15259 a!3235) j!176)))))

(declare-fun b!490625 () Bool)

(declare-fun res!293711 () Bool)

(assert (=> b!490625 (=> (not res!293711) (not e!288366))))

(assert (=> b!490625 (= res!293711 (and (= (size!15623 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15623 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15623 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44730 res!293709) b!490625))

(assert (= (and b!490625 res!293711) b!490624))

(assert (= (and b!490624 res!293706) b!490621))

(assert (= (and b!490621 res!293704) b!490623))

(assert (= (and b!490623 res!293708) b!490617))

(assert (= (and b!490617 res!293710) b!490618))

(assert (= (and b!490618 res!293705) b!490620))

(assert (= (and b!490620 res!293707) b!490622))

(assert (= (and b!490622 (not res!293703)) b!490619))

(declare-fun m!470939 () Bool)

(assert (=> b!490617 m!470939))

(declare-fun m!470941 () Bool)

(assert (=> b!490620 m!470941))

(declare-fun m!470943 () Bool)

(assert (=> b!490622 m!470943))

(declare-fun m!470945 () Bool)

(assert (=> b!490622 m!470945))

(declare-fun m!470947 () Bool)

(assert (=> b!490622 m!470947))

(declare-fun m!470949 () Bool)

(assert (=> b!490622 m!470949))

(declare-fun m!470951 () Bool)

(assert (=> b!490622 m!470951))

(assert (=> b!490622 m!470949))

(declare-fun m!470953 () Bool)

(assert (=> b!490622 m!470953))

(assert (=> b!490622 m!470949))

(declare-fun m!470955 () Bool)

(assert (=> b!490622 m!470955))

(declare-fun m!470957 () Bool)

(assert (=> b!490622 m!470957))

(declare-fun m!470959 () Bool)

(assert (=> b!490622 m!470959))

(assert (=> b!490622 m!470951))

(assert (=> b!490622 m!470949))

(declare-fun m!470961 () Bool)

(assert (=> b!490622 m!470961))

(assert (=> b!490622 m!470957))

(declare-fun m!470963 () Bool)

(assert (=> start!44730 m!470963))

(declare-fun m!470965 () Bool)

(assert (=> start!44730 m!470965))

(declare-fun m!470967 () Bool)

(assert (=> b!490623 m!470967))

(assert (=> b!490624 m!470949))

(assert (=> b!490624 m!470949))

(declare-fun m!470969 () Bool)

(assert (=> b!490624 m!470969))

(declare-fun m!470971 () Bool)

(assert (=> b!490619 m!470971))

(declare-fun m!470973 () Bool)

(assert (=> b!490619 m!470973))

(declare-fun m!470975 () Bool)

(assert (=> b!490621 m!470975))

(declare-fun m!470977 () Bool)

(assert (=> b!490618 m!470977))

(check-sat (not b!490623) (not b!490624) (not start!44730) (not b!490621) (not b!490617) (not b!490622) (not b!490619) (not b!490620) (not b!490618))
(check-sat)
