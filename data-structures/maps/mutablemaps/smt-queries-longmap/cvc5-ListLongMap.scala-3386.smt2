; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46738 () Bool)

(assert start!46738)

(declare-fun b!515680 () Bool)

(declare-fun res!315403 () Bool)

(declare-fun e!301040 () Bool)

(assert (=> b!515680 (=> (not res!315403) (not e!301040))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33010 0))(
  ( (array!33011 (arr!15870 (Array (_ BitVec 32) (_ BitVec 64))) (size!16234 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33010)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515680 (= res!315403 (and (= (size!16234 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16234 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16234 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515681 () Bool)

(declare-fun res!315394 () Bool)

(declare-fun e!301041 () Bool)

(assert (=> b!515681 (=> (not res!315394) (not e!301041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33010 (_ BitVec 32)) Bool)

(assert (=> b!515681 (= res!315394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!315397 () Bool)

(assert (=> start!46738 (=> (not res!315397) (not e!301040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46738 (= res!315397 (validMask!0 mask!3524))))

(assert (=> start!46738 e!301040))

(assert (=> start!46738 true))

(declare-fun array_inv!11644 (array!33010) Bool)

(assert (=> start!46738 (array_inv!11644 a!3235)))

(declare-fun b!515682 () Bool)

(declare-fun res!315404 () Bool)

(assert (=> b!515682 (=> (not res!315404) (not e!301040))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515682 (= res!315404 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515683 () Bool)

(declare-fun res!315402 () Bool)

(declare-fun e!301038 () Bool)

(assert (=> b!515683 (=> res!315402 e!301038)))

(declare-datatypes ((SeekEntryResult!4344 0))(
  ( (MissingZero!4344 (index!19564 (_ BitVec 32))) (Found!4344 (index!19565 (_ BitVec 32))) (Intermediate!4344 (undefined!5156 Bool) (index!19566 (_ BitVec 32)) (x!48558 (_ BitVec 32))) (Undefined!4344) (MissingVacant!4344 (index!19567 (_ BitVec 32))) )
))
(declare-fun lt!236126 () SeekEntryResult!4344)

(assert (=> b!515683 (= res!315402 (or (undefined!5156 lt!236126) (not (is-Intermediate!4344 lt!236126))))))

(declare-fun b!515684 () Bool)

(assert (=> b!515684 (= e!301041 (not e!301038))))

(declare-fun res!315396 () Bool)

(assert (=> b!515684 (=> res!315396 e!301038)))

(declare-fun lt!236125 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33010 (_ BitVec 32)) SeekEntryResult!4344)

(assert (=> b!515684 (= res!315396 (= lt!236126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236125 (select (store (arr!15870 a!3235) i!1204 k!2280) j!176) (array!33011 (store (arr!15870 a!3235) i!1204 k!2280) (size!16234 a!3235)) mask!3524)))))

(declare-fun lt!236123 () (_ BitVec 32))

(assert (=> b!515684 (= lt!236126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236123 (select (arr!15870 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515684 (= lt!236125 (toIndex!0 (select (store (arr!15870 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515684 (= lt!236123 (toIndex!0 (select (arr!15870 a!3235) j!176) mask!3524))))

(declare-fun e!301039 () Bool)

(assert (=> b!515684 e!301039))

(declare-fun res!315395 () Bool)

(assert (=> b!515684 (=> (not res!315395) (not e!301039))))

(assert (=> b!515684 (= res!315395 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15938 0))(
  ( (Unit!15939) )
))
(declare-fun lt!236124 () Unit!15938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33010 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15938)

(assert (=> b!515684 (= lt!236124 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515685 () Bool)

(assert (=> b!515685 (= e!301040 e!301041)))

(declare-fun res!315400 () Bool)

(assert (=> b!515685 (=> (not res!315400) (not e!301041))))

(declare-fun lt!236122 () SeekEntryResult!4344)

(assert (=> b!515685 (= res!315400 (or (= lt!236122 (MissingZero!4344 i!1204)) (= lt!236122 (MissingVacant!4344 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33010 (_ BitVec 32)) SeekEntryResult!4344)

(assert (=> b!515685 (= lt!236122 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515686 () Bool)

(declare-fun res!315398 () Bool)

(assert (=> b!515686 (=> (not res!315398) (not e!301040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515686 (= res!315398 (validKeyInArray!0 k!2280))))

(declare-fun b!515687 () Bool)

(declare-fun res!315399 () Bool)

(assert (=> b!515687 (=> (not res!315399) (not e!301041))))

(declare-datatypes ((List!10081 0))(
  ( (Nil!10078) (Cons!10077 (h!10975 (_ BitVec 64)) (t!16317 List!10081)) )
))
(declare-fun arrayNoDuplicates!0 (array!33010 (_ BitVec 32) List!10081) Bool)

(assert (=> b!515687 (= res!315399 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10078))))

(declare-fun b!515688 () Bool)

(declare-fun res!315401 () Bool)

(assert (=> b!515688 (=> (not res!315401) (not e!301040))))

(assert (=> b!515688 (= res!315401 (validKeyInArray!0 (select (arr!15870 a!3235) j!176)))))

(declare-fun b!515689 () Bool)

(assert (=> b!515689 (= e!301039 (= (seekEntryOrOpen!0 (select (arr!15870 a!3235) j!176) a!3235 mask!3524) (Found!4344 j!176)))))

(declare-fun b!515690 () Bool)

(assert (=> b!515690 (= e!301038 true)))

(assert (=> b!515690 (and (bvslt (x!48558 lt!236126) #b01111111111111111111111111111110) (or (= (select (arr!15870 a!3235) (index!19566 lt!236126)) (select (arr!15870 a!3235) j!176)) (= (select (arr!15870 a!3235) (index!19566 lt!236126)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15870 a!3235) (index!19566 lt!236126)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46738 res!315397) b!515680))

(assert (= (and b!515680 res!315403) b!515688))

(assert (= (and b!515688 res!315401) b!515686))

(assert (= (and b!515686 res!315398) b!515682))

(assert (= (and b!515682 res!315404) b!515685))

(assert (= (and b!515685 res!315400) b!515681))

(assert (= (and b!515681 res!315394) b!515687))

(assert (= (and b!515687 res!315399) b!515684))

(assert (= (and b!515684 res!315395) b!515689))

(assert (= (and b!515684 (not res!315396)) b!515683))

(assert (= (and b!515683 (not res!315402)) b!515690))

(declare-fun m!497119 () Bool)

(assert (=> start!46738 m!497119))

(declare-fun m!497121 () Bool)

(assert (=> start!46738 m!497121))

(declare-fun m!497123 () Bool)

(assert (=> b!515686 m!497123))

(declare-fun m!497125 () Bool)

(assert (=> b!515688 m!497125))

(assert (=> b!515688 m!497125))

(declare-fun m!497127 () Bool)

(assert (=> b!515688 m!497127))

(declare-fun m!497129 () Bool)

(assert (=> b!515685 m!497129))

(declare-fun m!497131 () Bool)

(assert (=> b!515681 m!497131))

(assert (=> b!515689 m!497125))

(assert (=> b!515689 m!497125))

(declare-fun m!497133 () Bool)

(assert (=> b!515689 m!497133))

(declare-fun m!497135 () Bool)

(assert (=> b!515687 m!497135))

(declare-fun m!497137 () Bool)

(assert (=> b!515690 m!497137))

(assert (=> b!515690 m!497125))

(declare-fun m!497139 () Bool)

(assert (=> b!515684 m!497139))

(declare-fun m!497141 () Bool)

(assert (=> b!515684 m!497141))

(declare-fun m!497143 () Bool)

(assert (=> b!515684 m!497143))

(assert (=> b!515684 m!497143))

(declare-fun m!497145 () Bool)

(assert (=> b!515684 m!497145))

(assert (=> b!515684 m!497125))

(declare-fun m!497147 () Bool)

(assert (=> b!515684 m!497147))

(assert (=> b!515684 m!497125))

(declare-fun m!497149 () Bool)

(assert (=> b!515684 m!497149))

(assert (=> b!515684 m!497143))

(declare-fun m!497151 () Bool)

(assert (=> b!515684 m!497151))

(assert (=> b!515684 m!497125))

(declare-fun m!497153 () Bool)

(assert (=> b!515684 m!497153))

(declare-fun m!497155 () Bool)

(assert (=> b!515682 m!497155))

(push 1)

