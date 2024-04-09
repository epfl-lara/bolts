; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44968 () Bool)

(assert start!44968)

(declare-fun b!492846 () Bool)

(declare-fun res!295567 () Bool)

(declare-fun e!289499 () Bool)

(assert (=> b!492846 (=> (not res!295567) (not e!289499))))

(declare-datatypes ((array!31873 0))(
  ( (array!31874 (arr!15318 (Array (_ BitVec 32) (_ BitVec 64))) (size!15682 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31873)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31873 (_ BitVec 32)) Bool)

(assert (=> b!492846 (= res!295567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492847 () Bool)

(declare-fun res!295571 () Bool)

(assert (=> b!492847 (=> (not res!295571) (not e!289499))))

(declare-datatypes ((List!9529 0))(
  ( (Nil!9526) (Cons!9525 (h!10393 (_ BitVec 64)) (t!15765 List!9529)) )
))
(declare-fun arrayNoDuplicates!0 (array!31873 (_ BitVec 32) List!9529) Bool)

(assert (=> b!492847 (= res!295571 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9526))))

(declare-fun b!492848 () Bool)

(declare-fun res!295573 () Bool)

(declare-fun e!289501 () Bool)

(assert (=> b!492848 (=> (not res!295573) (not e!289501))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492848 (= res!295573 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492849 () Bool)

(assert (=> b!492849 (= e!289501 e!289499)))

(declare-fun res!295566 () Bool)

(assert (=> b!492849 (=> (not res!295566) (not e!289499))))

(declare-datatypes ((SeekEntryResult!3792 0))(
  ( (MissingZero!3792 (index!17347 (_ BitVec 32))) (Found!3792 (index!17348 (_ BitVec 32))) (Intermediate!3792 (undefined!4604 Bool) (index!17349 (_ BitVec 32)) (x!46465 (_ BitVec 32))) (Undefined!3792) (MissingVacant!3792 (index!17350 (_ BitVec 32))) )
))
(declare-fun lt!222888 () SeekEntryResult!3792)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492849 (= res!295566 (or (= lt!222888 (MissingZero!3792 i!1204)) (= lt!222888 (MissingVacant!3792 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31873 (_ BitVec 32)) SeekEntryResult!3792)

(assert (=> b!492849 (= lt!222888 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492850 () Bool)

(assert (=> b!492850 (= e!289499 (not true))))

(declare-fun lt!222893 () SeekEntryResult!3792)

(declare-fun lt!222891 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31873 (_ BitVec 32)) SeekEntryResult!3792)

(assert (=> b!492850 (= lt!222893 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222891 (select (store (arr!15318 a!3235) i!1204 k!2280) j!176) (array!31874 (store (arr!15318 a!3235) i!1204 k!2280) (size!15682 a!3235)) mask!3524))))

(declare-fun lt!222892 () SeekEntryResult!3792)

(declare-fun lt!222889 () (_ BitVec 32))

(assert (=> b!492850 (= lt!222892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222889 (select (arr!15318 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492850 (= lt!222891 (toIndex!0 (select (store (arr!15318 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492850 (= lt!222889 (toIndex!0 (select (arr!15318 a!3235) j!176) mask!3524))))

(declare-fun e!289500 () Bool)

(assert (=> b!492850 e!289500))

(declare-fun res!295570 () Bool)

(assert (=> b!492850 (=> (not res!295570) (not e!289500))))

(assert (=> b!492850 (= res!295570 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14522 0))(
  ( (Unit!14523) )
))
(declare-fun lt!222890 () Unit!14522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31873 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14522)

(assert (=> b!492850 (= lt!222890 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492851 () Bool)

(assert (=> b!492851 (= e!289500 (= (seekEntryOrOpen!0 (select (arr!15318 a!3235) j!176) a!3235 mask!3524) (Found!3792 j!176)))))

(declare-fun b!492852 () Bool)

(declare-fun res!295574 () Bool)

(assert (=> b!492852 (=> (not res!295574) (not e!289501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492852 (= res!295574 (validKeyInArray!0 (select (arr!15318 a!3235) j!176)))))

(declare-fun b!492853 () Bool)

(declare-fun res!295569 () Bool)

(assert (=> b!492853 (=> (not res!295569) (not e!289501))))

(assert (=> b!492853 (= res!295569 (validKeyInArray!0 k!2280))))

(declare-fun b!492854 () Bool)

(declare-fun res!295568 () Bool)

(assert (=> b!492854 (=> (not res!295568) (not e!289501))))

(assert (=> b!492854 (= res!295568 (and (= (size!15682 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15682 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15682 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!295572 () Bool)

(assert (=> start!44968 (=> (not res!295572) (not e!289501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44968 (= res!295572 (validMask!0 mask!3524))))

(assert (=> start!44968 e!289501))

(assert (=> start!44968 true))

(declare-fun array_inv!11092 (array!31873) Bool)

(assert (=> start!44968 (array_inv!11092 a!3235)))

(assert (= (and start!44968 res!295572) b!492854))

(assert (= (and b!492854 res!295568) b!492852))

(assert (= (and b!492852 res!295574) b!492853))

(assert (= (and b!492853 res!295569) b!492848))

(assert (= (and b!492848 res!295573) b!492849))

(assert (= (and b!492849 res!295566) b!492846))

(assert (= (and b!492846 res!295567) b!492847))

(assert (= (and b!492847 res!295571) b!492850))

(assert (= (and b!492850 res!295570) b!492851))

(declare-fun m!473617 () Bool)

(assert (=> b!492850 m!473617))

(declare-fun m!473619 () Bool)

(assert (=> b!492850 m!473619))

(declare-fun m!473621 () Bool)

(assert (=> b!492850 m!473621))

(declare-fun m!473623 () Bool)

(assert (=> b!492850 m!473623))

(assert (=> b!492850 m!473617))

(declare-fun m!473625 () Bool)

(assert (=> b!492850 m!473625))

(declare-fun m!473627 () Bool)

(assert (=> b!492850 m!473627))

(assert (=> b!492850 m!473625))

(declare-fun m!473629 () Bool)

(assert (=> b!492850 m!473629))

(assert (=> b!492850 m!473617))

(declare-fun m!473631 () Bool)

(assert (=> b!492850 m!473631))

(assert (=> b!492850 m!473625))

(declare-fun m!473633 () Bool)

(assert (=> b!492850 m!473633))

(declare-fun m!473635 () Bool)

(assert (=> b!492848 m!473635))

(assert (=> b!492851 m!473625))

(assert (=> b!492851 m!473625))

(declare-fun m!473637 () Bool)

(assert (=> b!492851 m!473637))

(declare-fun m!473639 () Bool)

(assert (=> b!492849 m!473639))

(assert (=> b!492852 m!473625))

(assert (=> b!492852 m!473625))

(declare-fun m!473641 () Bool)

(assert (=> b!492852 m!473641))

(declare-fun m!473643 () Bool)

(assert (=> start!44968 m!473643))

(declare-fun m!473645 () Bool)

(assert (=> start!44968 m!473645))

(declare-fun m!473647 () Bool)

(assert (=> b!492847 m!473647))

(declare-fun m!473649 () Bool)

(assert (=> b!492853 m!473649))

(declare-fun m!473651 () Bool)

(assert (=> b!492846 m!473651))

(push 1)

(assert (not b!492852))

