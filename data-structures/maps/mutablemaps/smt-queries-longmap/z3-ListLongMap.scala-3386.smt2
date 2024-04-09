; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46740 () Bool)

(assert start!46740)

(declare-fun b!515713 () Bool)

(declare-fun e!301056 () Bool)

(declare-fun e!301054 () Bool)

(assert (=> b!515713 (= e!301056 e!301054)))

(declare-fun res!315431 () Bool)

(assert (=> b!515713 (=> (not res!315431) (not e!301054))))

(declare-datatypes ((SeekEntryResult!4345 0))(
  ( (MissingZero!4345 (index!19568 (_ BitVec 32))) (Found!4345 (index!19569 (_ BitVec 32))) (Intermediate!4345 (undefined!5157 Bool) (index!19570 (_ BitVec 32)) (x!48559 (_ BitVec 32))) (Undefined!4345) (MissingVacant!4345 (index!19571 (_ BitVec 32))) )
))
(declare-fun lt!236138 () SeekEntryResult!4345)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515713 (= res!315431 (or (= lt!236138 (MissingZero!4345 i!1204)) (= lt!236138 (MissingVacant!4345 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33012 0))(
  ( (array!33013 (arr!15871 (Array (_ BitVec 32) (_ BitVec 64))) (size!16235 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33012)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33012 (_ BitVec 32)) SeekEntryResult!4345)

(assert (=> b!515713 (= lt!236138 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515714 () Bool)

(declare-fun res!315429 () Bool)

(assert (=> b!515714 (=> (not res!315429) (not e!301056))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515714 (= res!315429 (validKeyInArray!0 (select (arr!15871 a!3235) j!176)))))

(declare-fun b!515715 () Bool)

(declare-fun res!315433 () Bool)

(declare-fun e!301057 () Bool)

(assert (=> b!515715 (=> res!315433 e!301057)))

(declare-fun lt!236141 () SeekEntryResult!4345)

(get-info :version)

(assert (=> b!515715 (= res!315433 (or (undefined!5157 lt!236141) (not ((_ is Intermediate!4345) lt!236141))))))

(declare-fun b!515716 () Bool)

(declare-fun res!315437 () Bool)

(assert (=> b!515716 (=> (not res!315437) (not e!301056))))

(assert (=> b!515716 (= res!315437 (validKeyInArray!0 k0!2280))))

(declare-fun res!315434 () Bool)

(assert (=> start!46740 (=> (not res!315434) (not e!301056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46740 (= res!315434 (validMask!0 mask!3524))))

(assert (=> start!46740 e!301056))

(assert (=> start!46740 true))

(declare-fun array_inv!11645 (array!33012) Bool)

(assert (=> start!46740 (array_inv!11645 a!3235)))

(declare-fun e!301053 () Bool)

(declare-fun b!515717 () Bool)

(assert (=> b!515717 (= e!301053 (= (seekEntryOrOpen!0 (select (arr!15871 a!3235) j!176) a!3235 mask!3524) (Found!4345 j!176)))))

(declare-fun b!515718 () Bool)

(assert (=> b!515718 (= e!301057 true)))

(assert (=> b!515718 (and (bvslt (x!48559 lt!236141) #b01111111111111111111111111111110) (or (= (select (arr!15871 a!3235) (index!19570 lt!236141)) (select (arr!15871 a!3235) j!176)) (= (select (arr!15871 a!3235) (index!19570 lt!236141)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15871 a!3235) (index!19570 lt!236141)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515719 () Bool)

(declare-fun res!315430 () Bool)

(assert (=> b!515719 (=> (not res!315430) (not e!301054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33012 (_ BitVec 32)) Bool)

(assert (=> b!515719 (= res!315430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515720 () Bool)

(declare-fun res!315436 () Bool)

(assert (=> b!515720 (=> (not res!315436) (not e!301054))))

(declare-datatypes ((List!10082 0))(
  ( (Nil!10079) (Cons!10078 (h!10976 (_ BitVec 64)) (t!16318 List!10082)) )
))
(declare-fun arrayNoDuplicates!0 (array!33012 (_ BitVec 32) List!10082) Bool)

(assert (=> b!515720 (= res!315436 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10079))))

(declare-fun b!515721 () Bool)

(assert (=> b!515721 (= e!301054 (not e!301057))))

(declare-fun res!315428 () Bool)

(assert (=> b!515721 (=> res!315428 e!301057)))

(declare-fun lt!236137 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33012 (_ BitVec 32)) SeekEntryResult!4345)

(assert (=> b!515721 (= res!315428 (= lt!236141 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236137 (select (store (arr!15871 a!3235) i!1204 k0!2280) j!176) (array!33013 (store (arr!15871 a!3235) i!1204 k0!2280) (size!16235 a!3235)) mask!3524)))))

(declare-fun lt!236139 () (_ BitVec 32))

(assert (=> b!515721 (= lt!236141 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236139 (select (arr!15871 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515721 (= lt!236137 (toIndex!0 (select (store (arr!15871 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515721 (= lt!236139 (toIndex!0 (select (arr!15871 a!3235) j!176) mask!3524))))

(assert (=> b!515721 e!301053))

(declare-fun res!315435 () Bool)

(assert (=> b!515721 (=> (not res!315435) (not e!301053))))

(assert (=> b!515721 (= res!315435 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15940 0))(
  ( (Unit!15941) )
))
(declare-fun lt!236140 () Unit!15940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33012 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15940)

(assert (=> b!515721 (= lt!236140 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515722 () Bool)

(declare-fun res!315432 () Bool)

(assert (=> b!515722 (=> (not res!315432) (not e!301056))))

(declare-fun arrayContainsKey!0 (array!33012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515722 (= res!315432 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515723 () Bool)

(declare-fun res!315427 () Bool)

(assert (=> b!515723 (=> (not res!315427) (not e!301056))))

(assert (=> b!515723 (= res!315427 (and (= (size!16235 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16235 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16235 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46740 res!315434) b!515723))

(assert (= (and b!515723 res!315427) b!515714))

(assert (= (and b!515714 res!315429) b!515716))

(assert (= (and b!515716 res!315437) b!515722))

(assert (= (and b!515722 res!315432) b!515713))

(assert (= (and b!515713 res!315431) b!515719))

(assert (= (and b!515719 res!315430) b!515720))

(assert (= (and b!515720 res!315436) b!515721))

(assert (= (and b!515721 res!315435) b!515717))

(assert (= (and b!515721 (not res!315428)) b!515715))

(assert (= (and b!515715 (not res!315433)) b!515718))

(declare-fun m!497157 () Bool)

(assert (=> b!515721 m!497157))

(declare-fun m!497159 () Bool)

(assert (=> b!515721 m!497159))

(declare-fun m!497161 () Bool)

(assert (=> b!515721 m!497161))

(declare-fun m!497163 () Bool)

(assert (=> b!515721 m!497163))

(assert (=> b!515721 m!497161))

(declare-fun m!497165 () Bool)

(assert (=> b!515721 m!497165))

(assert (=> b!515721 m!497159))

(declare-fun m!497167 () Bool)

(assert (=> b!515721 m!497167))

(assert (=> b!515721 m!497159))

(declare-fun m!497169 () Bool)

(assert (=> b!515721 m!497169))

(assert (=> b!515721 m!497161))

(declare-fun m!497171 () Bool)

(assert (=> b!515721 m!497171))

(declare-fun m!497173 () Bool)

(assert (=> b!515721 m!497173))

(declare-fun m!497175 () Bool)

(assert (=> start!46740 m!497175))

(declare-fun m!497177 () Bool)

(assert (=> start!46740 m!497177))

(assert (=> b!515714 m!497161))

(assert (=> b!515714 m!497161))

(declare-fun m!497179 () Bool)

(assert (=> b!515714 m!497179))

(declare-fun m!497181 () Bool)

(assert (=> b!515722 m!497181))

(declare-fun m!497183 () Bool)

(assert (=> b!515719 m!497183))

(declare-fun m!497185 () Bool)

(assert (=> b!515718 m!497185))

(assert (=> b!515718 m!497161))

(declare-fun m!497187 () Bool)

(assert (=> b!515720 m!497187))

(declare-fun m!497189 () Bool)

(assert (=> b!515716 m!497189))

(assert (=> b!515717 m!497161))

(assert (=> b!515717 m!497161))

(declare-fun m!497191 () Bool)

(assert (=> b!515717 m!497191))

(declare-fun m!497193 () Bool)

(assert (=> b!515713 m!497193))

(check-sat (not start!46740) (not b!515722) (not b!515720) (not b!515721) (not b!515716) (not b!515714) (not b!515719) (not b!515713) (not b!515717))
(check-sat)
