; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46766 () Bool)

(assert start!46766)

(declare-fun b!516142 () Bool)

(declare-fun res!315856 () Bool)

(declare-fun e!301252 () Bool)

(assert (=> b!516142 (=> (not res!315856) (not e!301252))))

(declare-datatypes ((array!33038 0))(
  ( (array!33039 (arr!15884 (Array (_ BitVec 32) (_ BitVec 64))) (size!16248 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33038)

(declare-datatypes ((List!10095 0))(
  ( (Nil!10092) (Cons!10091 (h!10989 (_ BitVec 64)) (t!16331 List!10095)) )
))
(declare-fun arrayNoDuplicates!0 (array!33038 (_ BitVec 32) List!10095) Bool)

(assert (=> b!516142 (= res!315856 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10092))))

(declare-fun e!301248 () Bool)

(declare-fun b!516143 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4358 0))(
  ( (MissingZero!4358 (index!19620 (_ BitVec 32))) (Found!4358 (index!19621 (_ BitVec 32))) (Intermediate!4358 (undefined!5170 Bool) (index!19622 (_ BitVec 32)) (x!48604 (_ BitVec 32))) (Undefined!4358) (MissingVacant!4358 (index!19623 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33038 (_ BitVec 32)) SeekEntryResult!4358)

(assert (=> b!516143 (= e!301248 (= (seekEntryOrOpen!0 (select (arr!15884 a!3235) j!176) a!3235 mask!3524) (Found!4358 j!176)))))

(declare-fun b!516144 () Bool)

(declare-fun res!315865 () Bool)

(declare-fun e!301249 () Bool)

(assert (=> b!516144 (=> (not res!315865) (not e!301249))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516144 (= res!315865 (and (= (size!16248 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16248 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16248 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516145 () Bool)

(declare-fun res!315864 () Bool)

(assert (=> b!516145 (=> (not res!315864) (not e!301252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33038 (_ BitVec 32)) Bool)

(assert (=> b!516145 (= res!315864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516146 () Bool)

(declare-fun e!301250 () Bool)

(assert (=> b!516146 (= e!301252 (not e!301250))))

(declare-fun res!315862 () Bool)

(assert (=> b!516146 (=> res!315862 e!301250)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!236333 () (_ BitVec 32))

(declare-fun lt!236332 () SeekEntryResult!4358)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33038 (_ BitVec 32)) SeekEntryResult!4358)

(assert (=> b!516146 (= res!315862 (= lt!236332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236333 (select (store (arr!15884 a!3235) i!1204 k!2280) j!176) (array!33039 (store (arr!15884 a!3235) i!1204 k!2280) (size!16248 a!3235)) mask!3524)))))

(declare-fun lt!236335 () (_ BitVec 32))

(assert (=> b!516146 (= lt!236332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236335 (select (arr!15884 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516146 (= lt!236333 (toIndex!0 (select (store (arr!15884 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516146 (= lt!236335 (toIndex!0 (select (arr!15884 a!3235) j!176) mask!3524))))

(assert (=> b!516146 e!301248))

(declare-fun res!315857 () Bool)

(assert (=> b!516146 (=> (not res!315857) (not e!301248))))

(assert (=> b!516146 (= res!315857 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15966 0))(
  ( (Unit!15967) )
))
(declare-fun lt!236334 () Unit!15966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33038 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15966)

(assert (=> b!516146 (= lt!236334 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516148 () Bool)

(declare-fun res!315860 () Bool)

(assert (=> b!516148 (=> (not res!315860) (not e!301249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516148 (= res!315860 (validKeyInArray!0 k!2280))))

(declare-fun b!516147 () Bool)

(assert (=> b!516147 (= e!301249 e!301252)))

(declare-fun res!315859 () Bool)

(assert (=> b!516147 (=> (not res!315859) (not e!301252))))

(declare-fun lt!236336 () SeekEntryResult!4358)

(assert (=> b!516147 (= res!315859 (or (= lt!236336 (MissingZero!4358 i!1204)) (= lt!236336 (MissingVacant!4358 i!1204))))))

(assert (=> b!516147 (= lt!236336 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!315863 () Bool)

(assert (=> start!46766 (=> (not res!315863) (not e!301249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46766 (= res!315863 (validMask!0 mask!3524))))

(assert (=> start!46766 e!301249))

(assert (=> start!46766 true))

(declare-fun array_inv!11658 (array!33038) Bool)

(assert (=> start!46766 (array_inv!11658 a!3235)))

(declare-fun b!516149 () Bool)

(declare-fun res!315858 () Bool)

(assert (=> b!516149 (=> res!315858 e!301250)))

(assert (=> b!516149 (= res!315858 (or (undefined!5170 lt!236332) (not (is-Intermediate!4358 lt!236332))))))

(declare-fun b!516150 () Bool)

(declare-fun res!315866 () Bool)

(assert (=> b!516150 (=> (not res!315866) (not e!301249))))

(declare-fun arrayContainsKey!0 (array!33038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516150 (= res!315866 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516151 () Bool)

(assert (=> b!516151 (= e!301250 true)))

(assert (=> b!516151 (and (bvslt (x!48604 lt!236332) #b01111111111111111111111111111110) (or (= (select (arr!15884 a!3235) (index!19622 lt!236332)) (select (arr!15884 a!3235) j!176)) (= (select (arr!15884 a!3235) (index!19622 lt!236332)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15884 a!3235) (index!19622 lt!236332)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516152 () Bool)

(declare-fun res!315861 () Bool)

(assert (=> b!516152 (=> (not res!315861) (not e!301249))))

(assert (=> b!516152 (= res!315861 (validKeyInArray!0 (select (arr!15884 a!3235) j!176)))))

(assert (= (and start!46766 res!315863) b!516144))

(assert (= (and b!516144 res!315865) b!516152))

(assert (= (and b!516152 res!315861) b!516148))

(assert (= (and b!516148 res!315860) b!516150))

(assert (= (and b!516150 res!315866) b!516147))

(assert (= (and b!516147 res!315859) b!516145))

(assert (= (and b!516145 res!315864) b!516142))

(assert (= (and b!516142 res!315856) b!516146))

(assert (= (and b!516146 res!315857) b!516143))

(assert (= (and b!516146 (not res!315862)) b!516149))

(assert (= (and b!516149 (not res!315858)) b!516151))

(declare-fun m!497651 () Bool)

(assert (=> b!516148 m!497651))

(declare-fun m!497653 () Bool)

(assert (=> b!516151 m!497653))

(declare-fun m!497655 () Bool)

(assert (=> b!516151 m!497655))

(assert (=> b!516152 m!497655))

(assert (=> b!516152 m!497655))

(declare-fun m!497657 () Bool)

(assert (=> b!516152 m!497657))

(declare-fun m!497659 () Bool)

(assert (=> b!516147 m!497659))

(declare-fun m!497661 () Bool)

(assert (=> b!516150 m!497661))

(declare-fun m!497663 () Bool)

(assert (=> b!516145 m!497663))

(declare-fun m!497665 () Bool)

(assert (=> b!516146 m!497665))

(declare-fun m!497667 () Bool)

(assert (=> b!516146 m!497667))

(declare-fun m!497669 () Bool)

(assert (=> b!516146 m!497669))

(assert (=> b!516146 m!497669))

(declare-fun m!497671 () Bool)

(assert (=> b!516146 m!497671))

(assert (=> b!516146 m!497655))

(declare-fun m!497673 () Bool)

(assert (=> b!516146 m!497673))

(assert (=> b!516146 m!497655))

(declare-fun m!497675 () Bool)

(assert (=> b!516146 m!497675))

(assert (=> b!516146 m!497655))

(declare-fun m!497677 () Bool)

(assert (=> b!516146 m!497677))

(assert (=> b!516146 m!497669))

(declare-fun m!497679 () Bool)

(assert (=> b!516146 m!497679))

(declare-fun m!497681 () Bool)

(assert (=> start!46766 m!497681))

(declare-fun m!497683 () Bool)

(assert (=> start!46766 m!497683))

(assert (=> b!516143 m!497655))

(assert (=> b!516143 m!497655))

(declare-fun m!497685 () Bool)

(assert (=> b!516143 m!497685))

(declare-fun m!497687 () Bool)

(assert (=> b!516142 m!497687))

(push 1)

