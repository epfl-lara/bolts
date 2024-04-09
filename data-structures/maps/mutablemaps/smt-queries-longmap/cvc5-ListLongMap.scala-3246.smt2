; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45292 () Bool)

(assert start!45292)

(declare-fun b!497287 () Bool)

(declare-fun res!299828 () Bool)

(declare-fun e!291496 () Bool)

(assert (=> b!497287 (=> (not res!299828) (not e!291496))))

(declare-datatypes ((array!32140 0))(
  ( (array!32141 (arr!15450 (Array (_ BitVec 32) (_ BitVec 64))) (size!15814 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32140)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32140 (_ BitVec 32)) Bool)

(assert (=> b!497287 (= res!299828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497288 () Bool)

(declare-datatypes ((Unit!14786 0))(
  ( (Unit!14787) )
))
(declare-fun e!291493 () Unit!14786)

(declare-fun Unit!14788 () Unit!14786)

(assert (=> b!497288 (= e!291493 Unit!14788)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!291495 () Bool)

(declare-fun b!497289 () Bool)

(declare-datatypes ((SeekEntryResult!3924 0))(
  ( (MissingZero!3924 (index!17875 (_ BitVec 32))) (Found!3924 (index!17876 (_ BitVec 32))) (Intermediate!3924 (undefined!4736 Bool) (index!17877 (_ BitVec 32)) (x!46955 (_ BitVec 32))) (Undefined!3924) (MissingVacant!3924 (index!17878 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32140 (_ BitVec 32)) SeekEntryResult!3924)

(assert (=> b!497289 (= e!291495 (= (seekEntryOrOpen!0 (select (arr!15450 a!3235) j!176) a!3235 mask!3524) (Found!3924 j!176)))))

(declare-fun b!497290 () Bool)

(declare-fun res!299825 () Bool)

(assert (=> b!497290 (=> (not res!299825) (not e!291496))))

(declare-datatypes ((List!9661 0))(
  ( (Nil!9658) (Cons!9657 (h!10528 (_ BitVec 64)) (t!15897 List!9661)) )
))
(declare-fun arrayNoDuplicates!0 (array!32140 (_ BitVec 32) List!9661) Bool)

(assert (=> b!497290 (= res!299825 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9658))))

(declare-fun b!497291 () Bool)

(declare-fun res!299822 () Bool)

(declare-fun e!291494 () Bool)

(assert (=> b!497291 (=> (not res!299822) (not e!291494))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497291 (= res!299822 (validKeyInArray!0 k!2280))))

(declare-fun b!497292 () Bool)

(declare-fun res!299820 () Bool)

(assert (=> b!497292 (=> (not res!299820) (not e!291494))))

(declare-fun arrayContainsKey!0 (array!32140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497292 (= res!299820 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!299827 () Bool)

(assert (=> start!45292 (=> (not res!299827) (not e!291494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45292 (= res!299827 (validMask!0 mask!3524))))

(assert (=> start!45292 e!291494))

(assert (=> start!45292 true))

(declare-fun array_inv!11224 (array!32140) Bool)

(assert (=> start!45292 (array_inv!11224 a!3235)))

(declare-fun b!497293 () Bool)

(assert (=> b!497293 (= e!291494 e!291496)))

(declare-fun res!299824 () Bool)

(assert (=> b!497293 (=> (not res!299824) (not e!291496))))

(declare-fun lt!225185 () SeekEntryResult!3924)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497293 (= res!299824 (or (= lt!225185 (MissingZero!3924 i!1204)) (= lt!225185 (MissingVacant!3924 i!1204))))))

(assert (=> b!497293 (= lt!225185 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497294 () Bool)

(declare-fun Unit!14789 () Unit!14786)

(assert (=> b!497294 (= e!291493 Unit!14789)))

(declare-fun lt!225190 () SeekEntryResult!3924)

(declare-fun lt!225188 () (_ BitVec 32))

(declare-fun lt!225184 () Unit!14786)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32140 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14786)

(assert (=> b!497294 (= lt!225184 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225188 #b00000000000000000000000000000000 (index!17877 lt!225190) (x!46955 lt!225190) mask!3524))))

(declare-fun lt!225189 () (_ BitVec 64))

(declare-fun lt!225191 () array!32140)

(declare-fun res!299831 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32140 (_ BitVec 32)) SeekEntryResult!3924)

(assert (=> b!497294 (= res!299831 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225188 lt!225189 lt!225191 mask!3524) (Intermediate!3924 false (index!17877 lt!225190) (x!46955 lt!225190))))))

(declare-fun e!291490 () Bool)

(assert (=> b!497294 (=> (not res!299831) (not e!291490))))

(assert (=> b!497294 e!291490))

(declare-fun b!497295 () Bool)

(declare-fun res!299830 () Bool)

(assert (=> b!497295 (=> (not res!299830) (not e!291494))))

(assert (=> b!497295 (= res!299830 (validKeyInArray!0 (select (arr!15450 a!3235) j!176)))))

(declare-fun b!497296 () Bool)

(assert (=> b!497296 (= e!291490 false)))

(declare-fun b!497297 () Bool)

(declare-fun res!299823 () Bool)

(declare-fun e!291491 () Bool)

(assert (=> b!497297 (=> res!299823 e!291491)))

(assert (=> b!497297 (= res!299823 (or (undefined!4736 lt!225190) (not (is-Intermediate!3924 lt!225190))))))

(declare-fun b!497298 () Bool)

(assert (=> b!497298 (= e!291491 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!497298 (and (or (= (select (arr!15450 a!3235) (index!17877 lt!225190)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15450 a!3235) (index!17877 lt!225190)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15450 a!3235) (index!17877 lt!225190)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15450 a!3235) (index!17877 lt!225190)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225186 () Unit!14786)

(assert (=> b!497298 (= lt!225186 e!291493)))

(declare-fun c!59009 () Bool)

(assert (=> b!497298 (= c!59009 (= (select (arr!15450 a!3235) (index!17877 lt!225190)) (select (arr!15450 a!3235) j!176)))))

(assert (=> b!497298 (and (bvslt (x!46955 lt!225190) #b01111111111111111111111111111110) (or (= (select (arr!15450 a!3235) (index!17877 lt!225190)) (select (arr!15450 a!3235) j!176)) (= (select (arr!15450 a!3235) (index!17877 lt!225190)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15450 a!3235) (index!17877 lt!225190)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497299 () Bool)

(assert (=> b!497299 (= e!291496 (not e!291491))))

(declare-fun res!299821 () Bool)

(assert (=> b!497299 (=> res!299821 e!291491)))

(declare-fun lt!225183 () (_ BitVec 32))

(assert (=> b!497299 (= res!299821 (= lt!225190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225183 lt!225189 lt!225191 mask!3524)))))

(assert (=> b!497299 (= lt!225190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225188 (select (arr!15450 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497299 (= lt!225183 (toIndex!0 lt!225189 mask!3524))))

(assert (=> b!497299 (= lt!225189 (select (store (arr!15450 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!497299 (= lt!225188 (toIndex!0 (select (arr!15450 a!3235) j!176) mask!3524))))

(assert (=> b!497299 (= lt!225191 (array!32141 (store (arr!15450 a!3235) i!1204 k!2280) (size!15814 a!3235)))))

(assert (=> b!497299 e!291495))

(declare-fun res!299829 () Bool)

(assert (=> b!497299 (=> (not res!299829) (not e!291495))))

(assert (=> b!497299 (= res!299829 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225187 () Unit!14786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14786)

(assert (=> b!497299 (= lt!225187 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497300 () Bool)

(declare-fun res!299826 () Bool)

(assert (=> b!497300 (=> (not res!299826) (not e!291494))))

(assert (=> b!497300 (= res!299826 (and (= (size!15814 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15814 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15814 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45292 res!299827) b!497300))

(assert (= (and b!497300 res!299826) b!497295))

(assert (= (and b!497295 res!299830) b!497291))

(assert (= (and b!497291 res!299822) b!497292))

(assert (= (and b!497292 res!299820) b!497293))

(assert (= (and b!497293 res!299824) b!497287))

(assert (= (and b!497287 res!299828) b!497290))

(assert (= (and b!497290 res!299825) b!497299))

(assert (= (and b!497299 res!299829) b!497289))

(assert (= (and b!497299 (not res!299821)) b!497297))

(assert (= (and b!497297 (not res!299823)) b!497298))

(assert (= (and b!497298 c!59009) b!497294))

(assert (= (and b!497298 (not c!59009)) b!497288))

(assert (= (and b!497294 res!299831) b!497296))

(declare-fun m!478711 () Bool)

(assert (=> b!497290 m!478711))

(declare-fun m!478713 () Bool)

(assert (=> b!497289 m!478713))

(assert (=> b!497289 m!478713))

(declare-fun m!478715 () Bool)

(assert (=> b!497289 m!478715))

(declare-fun m!478717 () Bool)

(assert (=> b!497299 m!478717))

(declare-fun m!478719 () Bool)

(assert (=> b!497299 m!478719))

(declare-fun m!478721 () Bool)

(assert (=> b!497299 m!478721))

(declare-fun m!478723 () Bool)

(assert (=> b!497299 m!478723))

(assert (=> b!497299 m!478713))

(declare-fun m!478725 () Bool)

(assert (=> b!497299 m!478725))

(assert (=> b!497299 m!478713))

(declare-fun m!478727 () Bool)

(assert (=> b!497299 m!478727))

(assert (=> b!497299 m!478713))

(declare-fun m!478729 () Bool)

(assert (=> b!497299 m!478729))

(declare-fun m!478731 () Bool)

(assert (=> b!497299 m!478731))

(declare-fun m!478733 () Bool)

(assert (=> b!497294 m!478733))

(declare-fun m!478735 () Bool)

(assert (=> b!497294 m!478735))

(declare-fun m!478737 () Bool)

(assert (=> b!497293 m!478737))

(declare-fun m!478739 () Bool)

(assert (=> b!497291 m!478739))

(declare-fun m!478741 () Bool)

(assert (=> start!45292 m!478741))

(declare-fun m!478743 () Bool)

(assert (=> start!45292 m!478743))

(declare-fun m!478745 () Bool)

(assert (=> b!497292 m!478745))

(assert (=> b!497295 m!478713))

(assert (=> b!497295 m!478713))

(declare-fun m!478747 () Bool)

(assert (=> b!497295 m!478747))

(declare-fun m!478749 () Bool)

(assert (=> b!497287 m!478749))

(declare-fun m!478751 () Bool)

(assert (=> b!497298 m!478751))

(assert (=> b!497298 m!478713))

(push 1)

