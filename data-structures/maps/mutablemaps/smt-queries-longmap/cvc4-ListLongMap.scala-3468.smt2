; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48152 () Bool)

(assert start!48152)

(declare-fun b!530107 () Bool)

(declare-fun e!308882 () Bool)

(assert (=> b!530107 (= e!308882 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!244631 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4592 0))(
  ( (MissingZero!4592 (index!20592 (_ BitVec 32))) (Found!4592 (index!20593 (_ BitVec 32))) (Intermediate!4592 (undefined!5404 Bool) (index!20594 (_ BitVec 32)) (x!49585 (_ BitVec 32))) (Undefined!4592) (MissingVacant!4592 (index!20595 (_ BitVec 32))) )
))
(declare-fun lt!244637 () SeekEntryResult!4592)

(declare-datatypes ((array!33548 0))(
  ( (array!33549 (arr!16118 (Array (_ BitVec 32) (_ BitVec 64))) (size!16482 (_ BitVec 32))) )
))
(declare-fun lt!244633 () array!33548)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33548 (_ BitVec 32)) SeekEntryResult!4592)

(assert (=> b!530107 (= lt!244637 (seekEntryOrOpen!0 lt!244631 lt!244633 mask!3524))))

(assert (=> b!530107 false))

(declare-fun b!530108 () Bool)

(declare-fun res!325966 () Bool)

(declare-fun e!308879 () Bool)

(assert (=> b!530108 (=> (not res!325966) (not e!308879))))

(declare-fun a!3235 () array!33548)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!530108 (= res!325966 (and (= (size!16482 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16482 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16482 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530109 () Bool)

(declare-fun e!308883 () Bool)

(assert (=> b!530109 (= e!308879 e!308883)))

(declare-fun res!325968 () Bool)

(assert (=> b!530109 (=> (not res!325968) (not e!308883))))

(declare-fun lt!244632 () SeekEntryResult!4592)

(assert (=> b!530109 (= res!325968 (or (= lt!244632 (MissingZero!4592 i!1204)) (= lt!244632 (MissingVacant!4592 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!530109 (= lt!244632 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!325969 () Bool)

(assert (=> start!48152 (=> (not res!325969) (not e!308879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48152 (= res!325969 (validMask!0 mask!3524))))

(assert (=> start!48152 e!308879))

(assert (=> start!48152 true))

(declare-fun array_inv!11892 (array!33548) Bool)

(assert (=> start!48152 (array_inv!11892 a!3235)))

(declare-fun b!530110 () Bool)

(declare-fun e!308884 () Bool)

(assert (=> b!530110 (= e!308883 (not e!308884))))

(declare-fun res!325965 () Bool)

(assert (=> b!530110 (=> res!325965 e!308884)))

(declare-fun lt!244636 () (_ BitVec 32))

(declare-fun lt!244630 () SeekEntryResult!4592)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33548 (_ BitVec 32)) SeekEntryResult!4592)

(assert (=> b!530110 (= res!325965 (= lt!244630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244636 lt!244631 lt!244633 mask!3524)))))

(declare-fun lt!244629 () (_ BitVec 32))

(assert (=> b!530110 (= lt!244630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244629 (select (arr!16118 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530110 (= lt!244636 (toIndex!0 lt!244631 mask!3524))))

(assert (=> b!530110 (= lt!244631 (select (store (arr!16118 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!530110 (= lt!244629 (toIndex!0 (select (arr!16118 a!3235) j!176) mask!3524))))

(assert (=> b!530110 (= lt!244633 (array!33549 (store (arr!16118 a!3235) i!1204 k!2280) (size!16482 a!3235)))))

(declare-fun e!308880 () Bool)

(assert (=> b!530110 e!308880))

(declare-fun res!325973 () Bool)

(assert (=> b!530110 (=> (not res!325973) (not e!308880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33548 (_ BitVec 32)) Bool)

(assert (=> b!530110 (= res!325973 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16788 0))(
  ( (Unit!16789) )
))
(declare-fun lt!244634 () Unit!16788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16788)

(assert (=> b!530110 (= lt!244634 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!530111 () Bool)

(declare-fun res!325971 () Bool)

(assert (=> b!530111 (=> (not res!325971) (not e!308883))))

(assert (=> b!530111 (= res!325971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530112 () Bool)

(declare-fun res!325972 () Bool)

(assert (=> b!530112 (=> (not res!325972) (not e!308879))))

(declare-fun arrayContainsKey!0 (array!33548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530112 (= res!325972 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!530113 () Bool)

(assert (=> b!530113 (= e!308884 e!308882)))

(declare-fun res!325970 () Bool)

(assert (=> b!530113 (=> res!325970 e!308882)))

(declare-fun lt!244635 () Bool)

(assert (=> b!530113 (= res!325970 (or (and (not lt!244635) (undefined!5404 lt!244630)) (and (not lt!244635) (not (undefined!5404 lt!244630)))))))

(assert (=> b!530113 (= lt!244635 (not (is-Intermediate!4592 lt!244630)))))

(declare-fun b!530114 () Bool)

(assert (=> b!530114 (= e!308880 (= (seekEntryOrOpen!0 (select (arr!16118 a!3235) j!176) a!3235 mask!3524) (Found!4592 j!176)))))

(declare-fun b!530115 () Bool)

(declare-fun res!325964 () Bool)

(assert (=> b!530115 (=> (not res!325964) (not e!308879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530115 (= res!325964 (validKeyInArray!0 k!2280))))

(declare-fun b!530116 () Bool)

(declare-fun res!325963 () Bool)

(assert (=> b!530116 (=> (not res!325963) (not e!308879))))

(assert (=> b!530116 (= res!325963 (validKeyInArray!0 (select (arr!16118 a!3235) j!176)))))

(declare-fun b!530117 () Bool)

(declare-fun res!325967 () Bool)

(assert (=> b!530117 (=> (not res!325967) (not e!308883))))

(declare-datatypes ((List!10329 0))(
  ( (Nil!10326) (Cons!10325 (h!11265 (_ BitVec 64)) (t!16565 List!10329)) )
))
(declare-fun arrayNoDuplicates!0 (array!33548 (_ BitVec 32) List!10329) Bool)

(assert (=> b!530117 (= res!325967 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10326))))

(assert (= (and start!48152 res!325969) b!530108))

(assert (= (and b!530108 res!325966) b!530116))

(assert (= (and b!530116 res!325963) b!530115))

(assert (= (and b!530115 res!325964) b!530112))

(assert (= (and b!530112 res!325972) b!530109))

(assert (= (and b!530109 res!325968) b!530111))

(assert (= (and b!530111 res!325971) b!530117))

(assert (= (and b!530117 res!325967) b!530110))

(assert (= (and b!530110 res!325973) b!530114))

(assert (= (and b!530110 (not res!325965)) b!530113))

(assert (= (and b!530113 (not res!325970)) b!530107))

(declare-fun m!510707 () Bool)

(assert (=> b!530110 m!510707))

(declare-fun m!510709 () Bool)

(assert (=> b!530110 m!510709))

(declare-fun m!510711 () Bool)

(assert (=> b!530110 m!510711))

(declare-fun m!510713 () Bool)

(assert (=> b!530110 m!510713))

(assert (=> b!530110 m!510707))

(declare-fun m!510715 () Bool)

(assert (=> b!530110 m!510715))

(declare-fun m!510717 () Bool)

(assert (=> b!530110 m!510717))

(declare-fun m!510719 () Bool)

(assert (=> b!530110 m!510719))

(assert (=> b!530110 m!510707))

(declare-fun m!510721 () Bool)

(assert (=> b!530110 m!510721))

(declare-fun m!510723 () Bool)

(assert (=> b!530110 m!510723))

(declare-fun m!510725 () Bool)

(assert (=> start!48152 m!510725))

(declare-fun m!510727 () Bool)

(assert (=> start!48152 m!510727))

(declare-fun m!510729 () Bool)

(assert (=> b!530117 m!510729))

(declare-fun m!510731 () Bool)

(assert (=> b!530107 m!510731))

(assert (=> b!530116 m!510707))

(assert (=> b!530116 m!510707))

(declare-fun m!510733 () Bool)

(assert (=> b!530116 m!510733))

(assert (=> b!530114 m!510707))

(assert (=> b!530114 m!510707))

(declare-fun m!510735 () Bool)

(assert (=> b!530114 m!510735))

(declare-fun m!510737 () Bool)

(assert (=> b!530115 m!510737))

(declare-fun m!510739 () Bool)

(assert (=> b!530112 m!510739))

(declare-fun m!510741 () Bool)

(assert (=> b!530111 m!510741))

(declare-fun m!510743 () Bool)

(assert (=> b!530109 m!510743))

(push 1)

