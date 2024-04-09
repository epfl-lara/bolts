; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45250 () Bool)

(assert start!45250)

(declare-fun b!496588 () Bool)

(declare-fun e!291174 () Bool)

(declare-fun e!291175 () Bool)

(assert (=> b!496588 (= e!291174 e!291175)))

(declare-fun res!299126 () Bool)

(assert (=> b!496588 (=> (not res!299126) (not e!291175))))

(declare-datatypes ((SeekEntryResult!3903 0))(
  ( (MissingZero!3903 (index!17791 (_ BitVec 32))) (Found!3903 (index!17792 (_ BitVec 32))) (Intermediate!3903 (undefined!4715 Bool) (index!17793 (_ BitVec 32)) (x!46878 (_ BitVec 32))) (Undefined!3903) (MissingVacant!3903 (index!17794 (_ BitVec 32))) )
))
(declare-fun lt!224860 () SeekEntryResult!3903)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496588 (= res!299126 (or (= lt!224860 (MissingZero!3903 i!1204)) (= lt!224860 (MissingVacant!3903 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32098 0))(
  ( (array!32099 (arr!15429 (Array (_ BitVec 32) (_ BitVec 64))) (size!15793 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32098)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32098 (_ BitVec 32)) SeekEntryResult!3903)

(assert (=> b!496588 (= lt!224860 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!291172 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!496589 () Bool)

(assert (=> b!496589 (= e!291172 (= (seekEntryOrOpen!0 (select (arr!15429 a!3235) j!176) a!3235 mask!3524) (Found!3903 j!176)))))

(declare-fun b!496590 () Bool)

(declare-fun res!299133 () Bool)

(assert (=> b!496590 (=> (not res!299133) (not e!291174))))

(assert (=> b!496590 (= res!299133 (and (= (size!15793 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15793 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15793 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496591 () Bool)

(declare-fun res!299130 () Bool)

(assert (=> b!496591 (=> (not res!299130) (not e!291174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496591 (= res!299130 (validKeyInArray!0 (select (arr!15429 a!3235) j!176)))))

(declare-fun b!496592 () Bool)

(declare-fun res!299127 () Bool)

(assert (=> b!496592 (=> (not res!299127) (not e!291174))))

(assert (=> b!496592 (= res!299127 (validKeyInArray!0 k!2280))))

(declare-fun res!299128 () Bool)

(assert (=> start!45250 (=> (not res!299128) (not e!291174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45250 (= res!299128 (validMask!0 mask!3524))))

(assert (=> start!45250 e!291174))

(assert (=> start!45250 true))

(declare-fun array_inv!11203 (array!32098) Bool)

(assert (=> start!45250 (array_inv!11203 a!3235)))

(declare-fun b!496593 () Bool)

(declare-fun e!291171 () Bool)

(assert (=> b!496593 (= e!291175 (not e!291171))))

(declare-fun res!299131 () Bool)

(assert (=> b!496593 (=> res!299131 e!291171)))

(declare-fun lt!224861 () (_ BitVec 32))

(declare-fun lt!224864 () SeekEntryResult!3903)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32098 (_ BitVec 32)) SeekEntryResult!3903)

(assert (=> b!496593 (= res!299131 (= lt!224864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224861 (select (store (arr!15429 a!3235) i!1204 k!2280) j!176) (array!32099 (store (arr!15429 a!3235) i!1204 k!2280) (size!15793 a!3235)) mask!3524)))))

(declare-fun lt!224863 () (_ BitVec 32))

(assert (=> b!496593 (= lt!224864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224863 (select (arr!15429 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496593 (= lt!224861 (toIndex!0 (select (store (arr!15429 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496593 (= lt!224863 (toIndex!0 (select (arr!15429 a!3235) j!176) mask!3524))))

(assert (=> b!496593 e!291172))

(declare-fun res!299129 () Bool)

(assert (=> b!496593 (=> (not res!299129) (not e!291172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32098 (_ BitVec 32)) Bool)

(assert (=> b!496593 (= res!299129 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14744 0))(
  ( (Unit!14745) )
))
(declare-fun lt!224862 () Unit!14744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32098 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14744)

(assert (=> b!496593 (= lt!224862 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496594 () Bool)

(declare-fun res!299135 () Bool)

(assert (=> b!496594 (=> (not res!299135) (not e!291175))))

(declare-datatypes ((List!9640 0))(
  ( (Nil!9637) (Cons!9636 (h!10507 (_ BitVec 64)) (t!15876 List!9640)) )
))
(declare-fun arrayNoDuplicates!0 (array!32098 (_ BitVec 32) List!9640) Bool)

(assert (=> b!496594 (= res!299135 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9637))))

(declare-fun b!496595 () Bool)

(declare-fun res!299134 () Bool)

(assert (=> b!496595 (=> res!299134 e!291171)))

(assert (=> b!496595 (= res!299134 (or (undefined!4715 lt!224864) (not (is-Intermediate!3903 lt!224864))))))

(declare-fun b!496596 () Bool)

(declare-fun res!299132 () Bool)

(assert (=> b!496596 (=> (not res!299132) (not e!291175))))

(assert (=> b!496596 (= res!299132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496597 () Bool)

(declare-fun res!299125 () Bool)

(assert (=> b!496597 (=> (not res!299125) (not e!291174))))

(declare-fun arrayContainsKey!0 (array!32098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496597 (= res!299125 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496598 () Bool)

(assert (=> b!496598 (= e!291171 true)))

(assert (=> b!496598 (and (bvslt (x!46878 lt!224864) #b01111111111111111111111111111110) (or (= (select (arr!15429 a!3235) (index!17793 lt!224864)) (select (arr!15429 a!3235) j!176)) (= (select (arr!15429 a!3235) (index!17793 lt!224864)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15429 a!3235) (index!17793 lt!224864)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45250 res!299128) b!496590))

(assert (= (and b!496590 res!299133) b!496591))

(assert (= (and b!496591 res!299130) b!496592))

(assert (= (and b!496592 res!299127) b!496597))

(assert (= (and b!496597 res!299125) b!496588))

(assert (= (and b!496588 res!299126) b!496596))

(assert (= (and b!496596 res!299132) b!496594))

(assert (= (and b!496594 res!299135) b!496593))

(assert (= (and b!496593 res!299129) b!496589))

(assert (= (and b!496593 (not res!299131)) b!496595))

(assert (= (and b!496595 (not res!299134)) b!496598))

(declare-fun m!477913 () Bool)

(assert (=> b!496592 m!477913))

(declare-fun m!477915 () Bool)

(assert (=> b!496591 m!477915))

(assert (=> b!496591 m!477915))

(declare-fun m!477917 () Bool)

(assert (=> b!496591 m!477917))

(declare-fun m!477919 () Bool)

(assert (=> b!496593 m!477919))

(declare-fun m!477921 () Bool)

(assert (=> b!496593 m!477921))

(declare-fun m!477923 () Bool)

(assert (=> b!496593 m!477923))

(assert (=> b!496593 m!477923))

(declare-fun m!477925 () Bool)

(assert (=> b!496593 m!477925))

(assert (=> b!496593 m!477915))

(declare-fun m!477927 () Bool)

(assert (=> b!496593 m!477927))

(assert (=> b!496593 m!477915))

(assert (=> b!496593 m!477923))

(declare-fun m!477929 () Bool)

(assert (=> b!496593 m!477929))

(declare-fun m!477931 () Bool)

(assert (=> b!496593 m!477931))

(assert (=> b!496593 m!477915))

(declare-fun m!477933 () Bool)

(assert (=> b!496593 m!477933))

(declare-fun m!477935 () Bool)

(assert (=> b!496594 m!477935))

(assert (=> b!496589 m!477915))

(assert (=> b!496589 m!477915))

(declare-fun m!477937 () Bool)

(assert (=> b!496589 m!477937))

(declare-fun m!477939 () Bool)

(assert (=> b!496596 m!477939))

(declare-fun m!477941 () Bool)

(assert (=> b!496588 m!477941))

(declare-fun m!477943 () Bool)

(assert (=> b!496597 m!477943))

(declare-fun m!477945 () Bool)

(assert (=> b!496598 m!477945))

(assert (=> b!496598 m!477915))

(declare-fun m!477947 () Bool)

(assert (=> start!45250 m!477947))

(declare-fun m!477949 () Bool)

(assert (=> start!45250 m!477949))

(push 1)

