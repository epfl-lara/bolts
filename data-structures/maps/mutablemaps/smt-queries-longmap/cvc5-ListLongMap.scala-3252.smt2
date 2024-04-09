; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45394 () Bool)

(assert start!45394)

(declare-fun res!300632 () Bool)

(declare-fun e!292119 () Bool)

(assert (=> start!45394 (=> (not res!300632) (not e!292119))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45394 (= res!300632 (validMask!0 mask!3524))))

(assert (=> start!45394 e!292119))

(assert (=> start!45394 true))

(declare-datatypes ((array!32179 0))(
  ( (array!32180 (arr!15468 (Array (_ BitVec 32) (_ BitVec 64))) (size!15832 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32179)

(declare-fun array_inv!11242 (array!32179) Bool)

(assert (=> start!45394 (array_inv!11242 a!3235)))

(declare-fun b!498408 () Bool)

(declare-fun res!300635 () Bool)

(declare-fun e!292121 () Bool)

(assert (=> b!498408 (=> (not res!300635) (not e!292121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32179 (_ BitVec 32)) Bool)

(assert (=> b!498408 (= res!300635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498409 () Bool)

(declare-datatypes ((Unit!14858 0))(
  ( (Unit!14859) )
))
(declare-fun e!292120 () Unit!14858)

(declare-fun Unit!14860 () Unit!14858)

(assert (=> b!498409 (= e!292120 Unit!14860)))

(declare-fun b!498410 () Bool)

(declare-fun res!300637 () Bool)

(assert (=> b!498410 (=> (not res!300637) (not e!292119))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498410 (= res!300637 (and (= (size!15832 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15832 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15832 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498411 () Bool)

(declare-fun res!300643 () Bool)

(assert (=> b!498411 (=> (not res!300643) (not e!292119))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498411 (= res!300643 (validKeyInArray!0 k!2280))))

(declare-fun b!498412 () Bool)

(declare-fun e!292123 () Bool)

(declare-datatypes ((SeekEntryResult!3942 0))(
  ( (MissingZero!3942 (index!17950 (_ BitVec 32))) (Found!3942 (index!17951 (_ BitVec 32))) (Intermediate!3942 (undefined!4754 Bool) (index!17952 (_ BitVec 32)) (x!47030 (_ BitVec 32))) (Undefined!3942) (MissingVacant!3942 (index!17953 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32179 (_ BitVec 32)) SeekEntryResult!3942)

(assert (=> b!498412 (= e!292123 (= (seekEntryOrOpen!0 (select (arr!15468 a!3235) j!176) a!3235 mask!3524) (Found!3942 j!176)))))

(declare-fun b!498413 () Bool)

(declare-fun res!300640 () Bool)

(declare-fun e!292117 () Bool)

(assert (=> b!498413 (=> res!300640 e!292117)))

(declare-fun lt!225858 () SeekEntryResult!3942)

(assert (=> b!498413 (= res!300640 (or (undefined!4754 lt!225858) (not (is-Intermediate!3942 lt!225858))))))

(declare-fun b!498414 () Bool)

(declare-fun e!292122 () Bool)

(assert (=> b!498414 (= e!292122 true)))

(declare-fun lt!225860 () array!32179)

(declare-fun lt!225854 () (_ BitVec 32))

(declare-fun lt!225859 () (_ BitVec 64))

(declare-fun lt!225853 () SeekEntryResult!3942)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32179 (_ BitVec 32)) SeekEntryResult!3942)

(assert (=> b!498414 (= lt!225853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225854 lt!225859 lt!225860 mask!3524))))

(declare-fun b!498415 () Bool)

(declare-fun e!292118 () Bool)

(assert (=> b!498415 (= e!292118 false)))

(declare-fun b!498416 () Bool)

(assert (=> b!498416 (= e!292119 e!292121)))

(declare-fun res!300644 () Bool)

(assert (=> b!498416 (=> (not res!300644) (not e!292121))))

(declare-fun lt!225856 () SeekEntryResult!3942)

(assert (=> b!498416 (= res!300644 (or (= lt!225856 (MissingZero!3942 i!1204)) (= lt!225856 (MissingVacant!3942 i!1204))))))

(assert (=> b!498416 (= lt!225856 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498417 () Bool)

(declare-fun Unit!14861 () Unit!14858)

(assert (=> b!498417 (= e!292120 Unit!14861)))

(declare-fun lt!225855 () Unit!14858)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14858)

(assert (=> b!498417 (= lt!225855 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225854 #b00000000000000000000000000000000 (index!17952 lt!225858) (x!47030 lt!225858) mask!3524))))

(declare-fun res!300641 () Bool)

(assert (=> b!498417 (= res!300641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225854 lt!225859 lt!225860 mask!3524) (Intermediate!3942 false (index!17952 lt!225858) (x!47030 lt!225858))))))

(assert (=> b!498417 (=> (not res!300641) (not e!292118))))

(assert (=> b!498417 e!292118))

(declare-fun b!498418 () Bool)

(assert (=> b!498418 (= e!292117 e!292122)))

(declare-fun res!300639 () Bool)

(assert (=> b!498418 (=> res!300639 e!292122)))

(assert (=> b!498418 (= res!300639 (or (bvsgt #b00000000000000000000000000000000 (x!47030 lt!225858)) (bvsgt (x!47030 lt!225858) #b01111111111111111111111111111110) (bvslt lt!225854 #b00000000000000000000000000000000) (bvsge lt!225854 (size!15832 a!3235)) (bvslt (index!17952 lt!225858) #b00000000000000000000000000000000) (bvsge (index!17952 lt!225858) (size!15832 a!3235)) (not (= lt!225858 (Intermediate!3942 false (index!17952 lt!225858) (x!47030 lt!225858))))))))

(assert (=> b!498418 (and (or (= (select (arr!15468 a!3235) (index!17952 lt!225858)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15468 a!3235) (index!17952 lt!225858)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15468 a!3235) (index!17952 lt!225858)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15468 a!3235) (index!17952 lt!225858)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225852 () Unit!14858)

(assert (=> b!498418 (= lt!225852 e!292120)))

(declare-fun c!59165 () Bool)

(assert (=> b!498418 (= c!59165 (= (select (arr!15468 a!3235) (index!17952 lt!225858)) (select (arr!15468 a!3235) j!176)))))

(assert (=> b!498418 (and (bvslt (x!47030 lt!225858) #b01111111111111111111111111111110) (or (= (select (arr!15468 a!3235) (index!17952 lt!225858)) (select (arr!15468 a!3235) j!176)) (= (select (arr!15468 a!3235) (index!17952 lt!225858)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15468 a!3235) (index!17952 lt!225858)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498419 () Bool)

(assert (=> b!498419 (= e!292121 (not e!292117))))

(declare-fun res!300642 () Bool)

(assert (=> b!498419 (=> res!300642 e!292117)))

(declare-fun lt!225857 () (_ BitVec 32))

(assert (=> b!498419 (= res!300642 (= lt!225858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225857 lt!225859 lt!225860 mask!3524)))))

(assert (=> b!498419 (= lt!225858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225854 (select (arr!15468 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498419 (= lt!225857 (toIndex!0 lt!225859 mask!3524))))

(assert (=> b!498419 (= lt!225859 (select (store (arr!15468 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498419 (= lt!225854 (toIndex!0 (select (arr!15468 a!3235) j!176) mask!3524))))

(assert (=> b!498419 (= lt!225860 (array!32180 (store (arr!15468 a!3235) i!1204 k!2280) (size!15832 a!3235)))))

(assert (=> b!498419 e!292123))

(declare-fun res!300633 () Bool)

(assert (=> b!498419 (=> (not res!300633) (not e!292123))))

(assert (=> b!498419 (= res!300633 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225851 () Unit!14858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32179 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14858)

(assert (=> b!498419 (= lt!225851 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498420 () Bool)

(declare-fun res!300636 () Bool)

(assert (=> b!498420 (=> (not res!300636) (not e!292121))))

(declare-datatypes ((List!9679 0))(
  ( (Nil!9676) (Cons!9675 (h!10549 (_ BitVec 64)) (t!15915 List!9679)) )
))
(declare-fun arrayNoDuplicates!0 (array!32179 (_ BitVec 32) List!9679) Bool)

(assert (=> b!498420 (= res!300636 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9676))))

(declare-fun b!498421 () Bool)

(declare-fun res!300634 () Bool)

(assert (=> b!498421 (=> (not res!300634) (not e!292119))))

(declare-fun arrayContainsKey!0 (array!32179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498421 (= res!300634 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498422 () Bool)

(declare-fun res!300638 () Bool)

(assert (=> b!498422 (=> (not res!300638) (not e!292119))))

(assert (=> b!498422 (= res!300638 (validKeyInArray!0 (select (arr!15468 a!3235) j!176)))))

(assert (= (and start!45394 res!300632) b!498410))

(assert (= (and b!498410 res!300637) b!498422))

(assert (= (and b!498422 res!300638) b!498411))

(assert (= (and b!498411 res!300643) b!498421))

(assert (= (and b!498421 res!300634) b!498416))

(assert (= (and b!498416 res!300644) b!498408))

(assert (= (and b!498408 res!300635) b!498420))

(assert (= (and b!498420 res!300636) b!498419))

(assert (= (and b!498419 res!300633) b!498412))

(assert (= (and b!498419 (not res!300642)) b!498413))

(assert (= (and b!498413 (not res!300640)) b!498418))

(assert (= (and b!498418 c!59165) b!498417))

(assert (= (and b!498418 (not c!59165)) b!498409))

(assert (= (and b!498417 res!300641) b!498415))

(assert (= (and b!498418 (not res!300639)) b!498414))

(declare-fun m!479701 () Bool)

(assert (=> b!498421 m!479701))

(declare-fun m!479703 () Bool)

(assert (=> b!498419 m!479703))

(declare-fun m!479705 () Bool)

(assert (=> b!498419 m!479705))

(declare-fun m!479707 () Bool)

(assert (=> b!498419 m!479707))

(declare-fun m!479709 () Bool)

(assert (=> b!498419 m!479709))

(declare-fun m!479711 () Bool)

(assert (=> b!498419 m!479711))

(declare-fun m!479713 () Bool)

(assert (=> b!498419 m!479713))

(assert (=> b!498419 m!479709))

(assert (=> b!498419 m!479709))

(declare-fun m!479715 () Bool)

(assert (=> b!498419 m!479715))

(declare-fun m!479717 () Bool)

(assert (=> b!498419 m!479717))

(declare-fun m!479719 () Bool)

(assert (=> b!498419 m!479719))

(declare-fun m!479721 () Bool)

(assert (=> b!498414 m!479721))

(declare-fun m!479723 () Bool)

(assert (=> start!45394 m!479723))

(declare-fun m!479725 () Bool)

(assert (=> start!45394 m!479725))

(assert (=> b!498412 m!479709))

(assert (=> b!498412 m!479709))

(declare-fun m!479727 () Bool)

(assert (=> b!498412 m!479727))

(declare-fun m!479729 () Bool)

(assert (=> b!498420 m!479729))

(assert (=> b!498422 m!479709))

(assert (=> b!498422 m!479709))

(declare-fun m!479731 () Bool)

(assert (=> b!498422 m!479731))

(declare-fun m!479733 () Bool)

(assert (=> b!498411 m!479733))

(declare-fun m!479735 () Bool)

(assert (=> b!498418 m!479735))

(assert (=> b!498418 m!479709))

(declare-fun m!479737 () Bool)

(assert (=> b!498417 m!479737))

(assert (=> b!498417 m!479721))

(declare-fun m!479739 () Bool)

(assert (=> b!498408 m!479739))

(declare-fun m!479741 () Bool)

(assert (=> b!498416 m!479741))

(push 1)

