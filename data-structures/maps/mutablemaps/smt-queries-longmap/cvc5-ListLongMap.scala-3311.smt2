; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45820 () Bool)

(assert start!45820)

(declare-fun b!506953 () Bool)

(declare-fun res!308070 () Bool)

(declare-fun e!296698 () Bool)

(assert (=> b!506953 (=> (not res!308070) (not e!296698))))

(declare-datatypes ((array!32536 0))(
  ( (array!32537 (arr!15645 (Array (_ BitVec 32) (_ BitVec 64))) (size!16009 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32536)

(declare-datatypes ((List!9856 0))(
  ( (Nil!9853) (Cons!9852 (h!10729 (_ BitVec 64)) (t!16092 List!9856)) )
))
(declare-fun arrayNoDuplicates!0 (array!32536 (_ BitVec 32) List!9856) Bool)

(assert (=> b!506953 (= res!308070 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9853))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!296696 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!506954 () Bool)

(declare-datatypes ((SeekEntryResult!4119 0))(
  ( (MissingZero!4119 (index!18664 (_ BitVec 32))) (Found!4119 (index!18665 (_ BitVec 32))) (Intermediate!4119 (undefined!4931 Bool) (index!18666 (_ BitVec 32)) (x!47691 (_ BitVec 32))) (Undefined!4119) (MissingVacant!4119 (index!18667 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32536 (_ BitVec 32)) SeekEntryResult!4119)

(assert (=> b!506954 (= e!296696 (= (seekEntryOrOpen!0 (select (arr!15645 a!3235) j!176) a!3235 mask!3524) (Found!4119 j!176)))))

(declare-fun b!506955 () Bool)

(declare-fun res!308062 () Bool)

(assert (=> b!506955 (=> (not res!308062) (not e!296698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32536 (_ BitVec 32)) Bool)

(assert (=> b!506955 (= res!308062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506956 () Bool)

(declare-fun e!296701 () Bool)

(declare-fun e!296700 () Bool)

(assert (=> b!506956 (= e!296701 e!296700)))

(declare-fun res!308067 () Bool)

(assert (=> b!506956 (=> res!308067 e!296700)))

(declare-fun lt!231455 () Bool)

(declare-fun lt!231448 () SeekEntryResult!4119)

(assert (=> b!506956 (= res!308067 (or (and (not lt!231455) (undefined!4931 lt!231448)) (and (not lt!231455) (not (undefined!4931 lt!231448)))))))

(assert (=> b!506956 (= lt!231455 (not (is-Intermediate!4119 lt!231448)))))

(declare-fun b!506957 () Bool)

(assert (=> b!506957 (= e!296698 (not e!296701))))

(declare-fun res!308072 () Bool)

(assert (=> b!506957 (=> res!308072 e!296701)))

(declare-fun lt!231454 () array!32536)

(declare-fun lt!231451 () (_ BitVec 32))

(declare-fun lt!231452 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32536 (_ BitVec 32)) SeekEntryResult!4119)

(assert (=> b!506957 (= res!308072 (= lt!231448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231451 lt!231452 lt!231454 mask!3524)))))

(declare-fun lt!231449 () (_ BitVec 32))

(assert (=> b!506957 (= lt!231448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231449 (select (arr!15645 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506957 (= lt!231451 (toIndex!0 lt!231452 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506957 (= lt!231452 (select (store (arr!15645 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!506957 (= lt!231449 (toIndex!0 (select (arr!15645 a!3235) j!176) mask!3524))))

(assert (=> b!506957 (= lt!231454 (array!32537 (store (arr!15645 a!3235) i!1204 k!2280) (size!16009 a!3235)))))

(assert (=> b!506957 e!296696))

(declare-fun res!308063 () Bool)

(assert (=> b!506957 (=> (not res!308063) (not e!296696))))

(assert (=> b!506957 (= res!308063 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15518 0))(
  ( (Unit!15519) )
))
(declare-fun lt!231447 () Unit!15518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15518)

(assert (=> b!506957 (= lt!231447 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!308069 () Bool)

(declare-fun e!296699 () Bool)

(assert (=> start!45820 (=> (not res!308069) (not e!296699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45820 (= res!308069 (validMask!0 mask!3524))))

(assert (=> start!45820 e!296699))

(assert (=> start!45820 true))

(declare-fun array_inv!11419 (array!32536) Bool)

(assert (=> start!45820 (array_inv!11419 a!3235)))

(declare-fun b!506958 () Bool)

(declare-fun res!308066 () Bool)

(assert (=> b!506958 (=> (not res!308066) (not e!296699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506958 (= res!308066 (validKeyInArray!0 k!2280))))

(declare-fun b!506959 () Bool)

(assert (=> b!506959 (= e!296700 true)))

(declare-fun lt!231450 () SeekEntryResult!4119)

(assert (=> b!506959 (= lt!231450 (seekEntryOrOpen!0 lt!231452 lt!231454 mask!3524))))

(assert (=> b!506959 false))

(declare-fun b!506960 () Bool)

(assert (=> b!506960 (= e!296699 e!296698)))

(declare-fun res!308071 () Bool)

(assert (=> b!506960 (=> (not res!308071) (not e!296698))))

(declare-fun lt!231453 () SeekEntryResult!4119)

(assert (=> b!506960 (= res!308071 (or (= lt!231453 (MissingZero!4119 i!1204)) (= lt!231453 (MissingVacant!4119 i!1204))))))

(assert (=> b!506960 (= lt!231453 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506961 () Bool)

(declare-fun res!308065 () Bool)

(assert (=> b!506961 (=> (not res!308065) (not e!296699))))

(assert (=> b!506961 (= res!308065 (and (= (size!16009 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16009 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16009 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506962 () Bool)

(declare-fun res!308068 () Bool)

(assert (=> b!506962 (=> (not res!308068) (not e!296699))))

(declare-fun arrayContainsKey!0 (array!32536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506962 (= res!308068 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506963 () Bool)

(declare-fun res!308064 () Bool)

(assert (=> b!506963 (=> (not res!308064) (not e!296699))))

(assert (=> b!506963 (= res!308064 (validKeyInArray!0 (select (arr!15645 a!3235) j!176)))))

(assert (= (and start!45820 res!308069) b!506961))

(assert (= (and b!506961 res!308065) b!506963))

(assert (= (and b!506963 res!308064) b!506958))

(assert (= (and b!506958 res!308066) b!506962))

(assert (= (and b!506962 res!308068) b!506960))

(assert (= (and b!506960 res!308071) b!506955))

(assert (= (and b!506955 res!308062) b!506953))

(assert (= (and b!506953 res!308070) b!506957))

(assert (= (and b!506957 res!308063) b!506954))

(assert (= (and b!506957 (not res!308072)) b!506956))

(assert (= (and b!506956 (not res!308067)) b!506959))

(declare-fun m!487717 () Bool)

(assert (=> b!506963 m!487717))

(assert (=> b!506963 m!487717))

(declare-fun m!487719 () Bool)

(assert (=> b!506963 m!487719))

(assert (=> b!506954 m!487717))

(assert (=> b!506954 m!487717))

(declare-fun m!487721 () Bool)

(assert (=> b!506954 m!487721))

(declare-fun m!487723 () Bool)

(assert (=> b!506957 m!487723))

(assert (=> b!506957 m!487717))

(declare-fun m!487725 () Bool)

(assert (=> b!506957 m!487725))

(assert (=> b!506957 m!487717))

(declare-fun m!487727 () Bool)

(assert (=> b!506957 m!487727))

(declare-fun m!487729 () Bool)

(assert (=> b!506957 m!487729))

(assert (=> b!506957 m!487717))

(declare-fun m!487731 () Bool)

(assert (=> b!506957 m!487731))

(declare-fun m!487733 () Bool)

(assert (=> b!506957 m!487733))

(declare-fun m!487735 () Bool)

(assert (=> b!506957 m!487735))

(declare-fun m!487737 () Bool)

(assert (=> b!506957 m!487737))

(declare-fun m!487739 () Bool)

(assert (=> b!506959 m!487739))

(declare-fun m!487741 () Bool)

(assert (=> b!506962 m!487741))

(declare-fun m!487743 () Bool)

(assert (=> b!506958 m!487743))

(declare-fun m!487745 () Bool)

(assert (=> b!506960 m!487745))

(declare-fun m!487747 () Bool)

(assert (=> start!45820 m!487747))

(declare-fun m!487749 () Bool)

(assert (=> start!45820 m!487749))

(declare-fun m!487751 () Bool)

(assert (=> b!506955 m!487751))

(declare-fun m!487753 () Bool)

(assert (=> b!506953 m!487753))

(push 1)

