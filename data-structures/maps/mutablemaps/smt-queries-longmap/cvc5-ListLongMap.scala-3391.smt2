; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46768 () Bool)

(assert start!46768)

(declare-fun b!516175 () Bool)

(declare-fun e!301265 () Bool)

(assert (=> b!516175 (= e!301265 true)))

(declare-datatypes ((SeekEntryResult!4359 0))(
  ( (MissingZero!4359 (index!19624 (_ BitVec 32))) (Found!4359 (index!19625 (_ BitVec 32))) (Intermediate!4359 (undefined!5171 Bool) (index!19626 (_ BitVec 32)) (x!48613 (_ BitVec 32))) (Undefined!4359) (MissingVacant!4359 (index!19627 (_ BitVec 32))) )
))
(declare-fun lt!236348 () SeekEntryResult!4359)

(declare-datatypes ((array!33040 0))(
  ( (array!33041 (arr!15885 (Array (_ BitVec 32) (_ BitVec 64))) (size!16249 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33040)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!516175 (and (bvslt (x!48613 lt!236348) #b01111111111111111111111111111110) (or (= (select (arr!15885 a!3235) (index!19626 lt!236348)) (select (arr!15885 a!3235) j!176)) (= (select (arr!15885 a!3235) (index!19626 lt!236348)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15885 a!3235) (index!19626 lt!236348)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516177 () Bool)

(declare-fun res!315899 () Bool)

(declare-fun e!301263 () Bool)

(assert (=> b!516177 (=> (not res!315899) (not e!301263))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516177 (= res!315899 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516178 () Bool)

(declare-fun e!301266 () Bool)

(assert (=> b!516178 (= e!301266 (not e!301265))))

(declare-fun res!315897 () Bool)

(assert (=> b!516178 (=> res!315897 e!301265)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!236350 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33040 (_ BitVec 32)) SeekEntryResult!4359)

(assert (=> b!516178 (= res!315897 (= lt!236348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236350 (select (store (arr!15885 a!3235) i!1204 k!2280) j!176) (array!33041 (store (arr!15885 a!3235) i!1204 k!2280) (size!16249 a!3235)) mask!3524)))))

(declare-fun lt!236347 () (_ BitVec 32))

(assert (=> b!516178 (= lt!236348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236347 (select (arr!15885 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516178 (= lt!236350 (toIndex!0 (select (store (arr!15885 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516178 (= lt!236347 (toIndex!0 (select (arr!15885 a!3235) j!176) mask!3524))))

(declare-fun e!301264 () Bool)

(assert (=> b!516178 e!301264))

(declare-fun res!315896 () Bool)

(assert (=> b!516178 (=> (not res!315896) (not e!301264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33040 (_ BitVec 32)) Bool)

(assert (=> b!516178 (= res!315896 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15968 0))(
  ( (Unit!15969) )
))
(declare-fun lt!236349 () Unit!15968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33040 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15968)

(assert (=> b!516178 (= lt!236349 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516179 () Bool)

(declare-fun res!315894 () Bool)

(assert (=> b!516179 (=> res!315894 e!301265)))

(assert (=> b!516179 (= res!315894 (or (undefined!5171 lt!236348) (not (is-Intermediate!4359 lt!236348))))))

(declare-fun b!516180 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33040 (_ BitVec 32)) SeekEntryResult!4359)

(assert (=> b!516180 (= e!301264 (= (seekEntryOrOpen!0 (select (arr!15885 a!3235) j!176) a!3235 mask!3524) (Found!4359 j!176)))))

(declare-fun b!516181 () Bool)

(declare-fun res!315893 () Bool)

(assert (=> b!516181 (=> (not res!315893) (not e!301266))))

(declare-datatypes ((List!10096 0))(
  ( (Nil!10093) (Cons!10092 (h!10990 (_ BitVec 64)) (t!16332 List!10096)) )
))
(declare-fun arrayNoDuplicates!0 (array!33040 (_ BitVec 32) List!10096) Bool)

(assert (=> b!516181 (= res!315893 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10093))))

(declare-fun b!516182 () Bool)

(assert (=> b!516182 (= e!301263 e!301266)))

(declare-fun res!315898 () Bool)

(assert (=> b!516182 (=> (not res!315898) (not e!301266))))

(declare-fun lt!236351 () SeekEntryResult!4359)

(assert (=> b!516182 (= res!315898 (or (= lt!236351 (MissingZero!4359 i!1204)) (= lt!236351 (MissingVacant!4359 i!1204))))))

(assert (=> b!516182 (= lt!236351 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516183 () Bool)

(declare-fun res!315892 () Bool)

(assert (=> b!516183 (=> (not res!315892) (not e!301263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516183 (= res!315892 (validKeyInArray!0 k!2280))))

(declare-fun res!315891 () Bool)

(assert (=> start!46768 (=> (not res!315891) (not e!301263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46768 (= res!315891 (validMask!0 mask!3524))))

(assert (=> start!46768 e!301263))

(assert (=> start!46768 true))

(declare-fun array_inv!11659 (array!33040) Bool)

(assert (=> start!46768 (array_inv!11659 a!3235)))

(declare-fun b!516176 () Bool)

(declare-fun res!315889 () Bool)

(assert (=> b!516176 (=> (not res!315889) (not e!301266))))

(assert (=> b!516176 (= res!315889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516184 () Bool)

(declare-fun res!315890 () Bool)

(assert (=> b!516184 (=> (not res!315890) (not e!301263))))

(assert (=> b!516184 (= res!315890 (and (= (size!16249 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16249 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16249 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516185 () Bool)

(declare-fun res!315895 () Bool)

(assert (=> b!516185 (=> (not res!315895) (not e!301263))))

(assert (=> b!516185 (= res!315895 (validKeyInArray!0 (select (arr!15885 a!3235) j!176)))))

(assert (= (and start!46768 res!315891) b!516184))

(assert (= (and b!516184 res!315890) b!516185))

(assert (= (and b!516185 res!315895) b!516183))

(assert (= (and b!516183 res!315892) b!516177))

(assert (= (and b!516177 res!315899) b!516182))

(assert (= (and b!516182 res!315898) b!516176))

(assert (= (and b!516176 res!315889) b!516181))

(assert (= (and b!516181 res!315893) b!516178))

(assert (= (and b!516178 res!315896) b!516180))

(assert (= (and b!516178 (not res!315897)) b!516179))

(assert (= (and b!516179 (not res!315894)) b!516175))

(declare-fun m!497689 () Bool)

(assert (=> b!516176 m!497689))

(declare-fun m!497691 () Bool)

(assert (=> b!516183 m!497691))

(declare-fun m!497693 () Bool)

(assert (=> b!516177 m!497693))

(declare-fun m!497695 () Bool)

(assert (=> b!516178 m!497695))

(declare-fun m!497697 () Bool)

(assert (=> b!516178 m!497697))

(declare-fun m!497699 () Bool)

(assert (=> b!516178 m!497699))

(assert (=> b!516178 m!497699))

(declare-fun m!497701 () Bool)

(assert (=> b!516178 m!497701))

(declare-fun m!497703 () Bool)

(assert (=> b!516178 m!497703))

(declare-fun m!497705 () Bool)

(assert (=> b!516178 m!497705))

(declare-fun m!497707 () Bool)

(assert (=> b!516178 m!497707))

(assert (=> b!516178 m!497699))

(declare-fun m!497709 () Bool)

(assert (=> b!516178 m!497709))

(assert (=> b!516178 m!497703))

(declare-fun m!497711 () Bool)

(assert (=> b!516178 m!497711))

(assert (=> b!516178 m!497703))

(declare-fun m!497713 () Bool)

(assert (=> b!516181 m!497713))

(assert (=> b!516180 m!497703))

(assert (=> b!516180 m!497703))

(declare-fun m!497715 () Bool)

(assert (=> b!516180 m!497715))

(declare-fun m!497717 () Bool)

(assert (=> start!46768 m!497717))

(declare-fun m!497719 () Bool)

(assert (=> start!46768 m!497719))

(declare-fun m!497721 () Bool)

(assert (=> b!516175 m!497721))

(assert (=> b!516175 m!497703))

(declare-fun m!497723 () Bool)

(assert (=> b!516182 m!497723))

(assert (=> b!516185 m!497703))

(assert (=> b!516185 m!497703))

(declare-fun m!497725 () Bool)

(assert (=> b!516185 m!497725))

(push 1)

