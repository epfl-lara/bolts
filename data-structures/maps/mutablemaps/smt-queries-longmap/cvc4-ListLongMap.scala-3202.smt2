; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44972 () Bool)

(assert start!44972)

(declare-fun b!492900 () Bool)

(declare-fun e!289522 () Bool)

(assert (=> b!492900 (= e!289522 (not true))))

(declare-datatypes ((SeekEntryResult!3794 0))(
  ( (MissingZero!3794 (index!17355 (_ BitVec 32))) (Found!3794 (index!17356 (_ BitVec 32))) (Intermediate!3794 (undefined!4606 Bool) (index!17357 (_ BitVec 32)) (x!46467 (_ BitVec 32))) (Undefined!3794) (MissingVacant!3794 (index!17358 (_ BitVec 32))) )
))
(declare-fun lt!222925 () SeekEntryResult!3794)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31877 0))(
  ( (array!31878 (arr!15320 (Array (_ BitVec 32) (_ BitVec 64))) (size!15684 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31877)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222928 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31877 (_ BitVec 32)) SeekEntryResult!3794)

(assert (=> b!492900 (= lt!222925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222928 (select (store (arr!15320 a!3235) i!1204 k!2280) j!176) (array!31878 (store (arr!15320 a!3235) i!1204 k!2280) (size!15684 a!3235)) mask!3524))))

(declare-fun lt!222924 () (_ BitVec 32))

(declare-fun lt!222926 () SeekEntryResult!3794)

(assert (=> b!492900 (= lt!222926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222924 (select (arr!15320 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492900 (= lt!222928 (toIndex!0 (select (store (arr!15320 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492900 (= lt!222924 (toIndex!0 (select (arr!15320 a!3235) j!176) mask!3524))))

(declare-fun e!289524 () Bool)

(assert (=> b!492900 e!289524))

(declare-fun res!295623 () Bool)

(assert (=> b!492900 (=> (not res!295623) (not e!289524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31877 (_ BitVec 32)) Bool)

(assert (=> b!492900 (= res!295623 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14526 0))(
  ( (Unit!14527) )
))
(declare-fun lt!222929 () Unit!14526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14526)

(assert (=> b!492900 (= lt!222929 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492901 () Bool)

(declare-fun res!295621 () Bool)

(declare-fun e!289525 () Bool)

(assert (=> b!492901 (=> (not res!295621) (not e!289525))))

(declare-fun arrayContainsKey!0 (array!31877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492901 (= res!295621 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492902 () Bool)

(declare-fun res!295624 () Bool)

(assert (=> b!492902 (=> (not res!295624) (not e!289522))))

(assert (=> b!492902 (= res!295624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492903 () Bool)

(declare-fun res!295626 () Bool)

(assert (=> b!492903 (=> (not res!295626) (not e!289522))))

(declare-datatypes ((List!9531 0))(
  ( (Nil!9528) (Cons!9527 (h!10395 (_ BitVec 64)) (t!15767 List!9531)) )
))
(declare-fun arrayNoDuplicates!0 (array!31877 (_ BitVec 32) List!9531) Bool)

(assert (=> b!492903 (= res!295626 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9528))))

(declare-fun b!492904 () Bool)

(declare-fun res!295620 () Bool)

(assert (=> b!492904 (=> (not res!295620) (not e!289525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492904 (= res!295620 (validKeyInArray!0 k!2280))))

(declare-fun b!492905 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31877 (_ BitVec 32)) SeekEntryResult!3794)

(assert (=> b!492905 (= e!289524 (= (seekEntryOrOpen!0 (select (arr!15320 a!3235) j!176) a!3235 mask!3524) (Found!3794 j!176)))))

(declare-fun b!492906 () Bool)

(assert (=> b!492906 (= e!289525 e!289522)))

(declare-fun res!295625 () Bool)

(assert (=> b!492906 (=> (not res!295625) (not e!289522))))

(declare-fun lt!222927 () SeekEntryResult!3794)

(assert (=> b!492906 (= res!295625 (or (= lt!222927 (MissingZero!3794 i!1204)) (= lt!222927 (MissingVacant!3794 i!1204))))))

(assert (=> b!492906 (= lt!222927 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492908 () Bool)

(declare-fun res!295622 () Bool)

(assert (=> b!492908 (=> (not res!295622) (not e!289525))))

(assert (=> b!492908 (= res!295622 (and (= (size!15684 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15684 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15684 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!295627 () Bool)

(assert (=> start!44972 (=> (not res!295627) (not e!289525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44972 (= res!295627 (validMask!0 mask!3524))))

(assert (=> start!44972 e!289525))

(assert (=> start!44972 true))

(declare-fun array_inv!11094 (array!31877) Bool)

(assert (=> start!44972 (array_inv!11094 a!3235)))

(declare-fun b!492907 () Bool)

(declare-fun res!295628 () Bool)

(assert (=> b!492907 (=> (not res!295628) (not e!289525))))

(assert (=> b!492907 (= res!295628 (validKeyInArray!0 (select (arr!15320 a!3235) j!176)))))

(assert (= (and start!44972 res!295627) b!492908))

(assert (= (and b!492908 res!295622) b!492907))

(assert (= (and b!492907 res!295628) b!492904))

(assert (= (and b!492904 res!295620) b!492901))

(assert (= (and b!492901 res!295621) b!492906))

(assert (= (and b!492906 res!295625) b!492902))

(assert (= (and b!492902 res!295624) b!492903))

(assert (= (and b!492903 res!295626) b!492900))

(assert (= (and b!492900 res!295623) b!492905))

(declare-fun m!473689 () Bool)

(assert (=> start!44972 m!473689))

(declare-fun m!473691 () Bool)

(assert (=> start!44972 m!473691))

(declare-fun m!473693 () Bool)

(assert (=> b!492905 m!473693))

(assert (=> b!492905 m!473693))

(declare-fun m!473695 () Bool)

(assert (=> b!492905 m!473695))

(declare-fun m!473697 () Bool)

(assert (=> b!492903 m!473697))

(declare-fun m!473699 () Bool)

(assert (=> b!492906 m!473699))

(declare-fun m!473701 () Bool)

(assert (=> b!492900 m!473701))

(declare-fun m!473703 () Bool)

(assert (=> b!492900 m!473703))

(declare-fun m!473705 () Bool)

(assert (=> b!492900 m!473705))

(declare-fun m!473707 () Bool)

(assert (=> b!492900 m!473707))

(assert (=> b!492900 m!473701))

(assert (=> b!492900 m!473693))

(declare-fun m!473709 () Bool)

(assert (=> b!492900 m!473709))

(assert (=> b!492900 m!473693))

(declare-fun m!473711 () Bool)

(assert (=> b!492900 m!473711))

(assert (=> b!492900 m!473693))

(declare-fun m!473713 () Bool)

(assert (=> b!492900 m!473713))

(assert (=> b!492900 m!473701))

(declare-fun m!473715 () Bool)

(assert (=> b!492900 m!473715))

(declare-fun m!473717 () Bool)

(assert (=> b!492901 m!473717))

(assert (=> b!492907 m!473693))

(assert (=> b!492907 m!473693))

(declare-fun m!473719 () Bool)

(assert (=> b!492907 m!473719))

(declare-fun m!473721 () Bool)

(assert (=> b!492902 m!473721))

(declare-fun m!473723 () Bool)

(assert (=> b!492904 m!473723))

(push 1)

