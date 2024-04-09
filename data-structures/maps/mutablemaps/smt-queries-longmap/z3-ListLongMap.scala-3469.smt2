; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48156 () Bool)

(assert start!48156)

(declare-fun res!326034 () Bool)

(declare-fun e!308920 () Bool)

(assert (=> start!48156 (=> (not res!326034) (not e!308920))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48156 (= res!326034 (validMask!0 mask!3524))))

(assert (=> start!48156 e!308920))

(assert (=> start!48156 true))

(declare-datatypes ((array!33552 0))(
  ( (array!33553 (arr!16120 (Array (_ BitVec 32) (_ BitVec 64))) (size!16484 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33552)

(declare-fun array_inv!11894 (array!33552) Bool)

(assert (=> start!48156 (array_inv!11894 a!3235)))

(declare-fun b!530173 () Bool)

(declare-fun res!326038 () Bool)

(assert (=> b!530173 (=> (not res!326038) (not e!308920))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530173 (= res!326038 (validKeyInArray!0 k0!2280))))

(declare-fun b!530174 () Bool)

(declare-fun res!326036 () Bool)

(declare-fun e!308917 () Bool)

(assert (=> b!530174 (=> (not res!326036) (not e!308917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33552 (_ BitVec 32)) Bool)

(assert (=> b!530174 (= res!326036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530175 () Bool)

(declare-fun e!308919 () Bool)

(assert (=> b!530175 (= e!308917 (not e!308919))))

(declare-fun res!326030 () Bool)

(assert (=> b!530175 (=> res!326030 e!308919)))

(declare-datatypes ((SeekEntryResult!4594 0))(
  ( (MissingZero!4594 (index!20600 (_ BitVec 32))) (Found!4594 (index!20601 (_ BitVec 32))) (Intermediate!4594 (undefined!5406 Bool) (index!20602 (_ BitVec 32)) (x!49595 (_ BitVec 32))) (Undefined!4594) (MissingVacant!4594 (index!20603 (_ BitVec 32))) )
))
(declare-fun lt!244683 () SeekEntryResult!4594)

(declare-fun lt!244685 () (_ BitVec 32))

(declare-fun lt!244684 () array!33552)

(declare-fun lt!244690 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33552 (_ BitVec 32)) SeekEntryResult!4594)

(assert (=> b!530175 (= res!326030 (= lt!244683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244685 lt!244690 lt!244684 mask!3524)))))

(declare-fun lt!244691 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!530175 (= lt!244683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244691 (select (arr!16120 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530175 (= lt!244685 (toIndex!0 lt!244690 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!530175 (= lt!244690 (select (store (arr!16120 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!530175 (= lt!244691 (toIndex!0 (select (arr!16120 a!3235) j!176) mask!3524))))

(assert (=> b!530175 (= lt!244684 (array!33553 (store (arr!16120 a!3235) i!1204 k0!2280) (size!16484 a!3235)))))

(declare-fun e!308916 () Bool)

(assert (=> b!530175 e!308916))

(declare-fun res!326035 () Bool)

(assert (=> b!530175 (=> (not res!326035) (not e!308916))))

(assert (=> b!530175 (= res!326035 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16792 0))(
  ( (Unit!16793) )
))
(declare-fun lt!244686 () Unit!16792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16792)

(assert (=> b!530175 (= lt!244686 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!530176 () Bool)

(declare-fun e!308915 () Bool)

(assert (=> b!530176 (= e!308919 e!308915)))

(declare-fun res!326037 () Bool)

(assert (=> b!530176 (=> res!326037 e!308915)))

(declare-fun lt!244687 () Bool)

(assert (=> b!530176 (= res!326037 (or (and (not lt!244687) (undefined!5406 lt!244683)) (and (not lt!244687) (not (undefined!5406 lt!244683)))))))

(get-info :version)

(assert (=> b!530176 (= lt!244687 (not ((_ is Intermediate!4594) lt!244683)))))

(declare-fun b!530177 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33552 (_ BitVec 32)) SeekEntryResult!4594)

(assert (=> b!530177 (= e!308916 (= (seekEntryOrOpen!0 (select (arr!16120 a!3235) j!176) a!3235 mask!3524) (Found!4594 j!176)))))

(declare-fun b!530178 () Bool)

(declare-fun res!326029 () Bool)

(assert (=> b!530178 (=> (not res!326029) (not e!308920))))

(declare-fun arrayContainsKey!0 (array!33552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530178 (= res!326029 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!530179 () Bool)

(declare-fun res!326033 () Bool)

(assert (=> b!530179 (=> (not res!326033) (not e!308920))))

(assert (=> b!530179 (= res!326033 (and (= (size!16484 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16484 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16484 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530180 () Bool)

(declare-fun res!326032 () Bool)

(assert (=> b!530180 (=> (not res!326032) (not e!308917))))

(declare-datatypes ((List!10331 0))(
  ( (Nil!10328) (Cons!10327 (h!11267 (_ BitVec 64)) (t!16567 List!10331)) )
))
(declare-fun arrayNoDuplicates!0 (array!33552 (_ BitVec 32) List!10331) Bool)

(assert (=> b!530180 (= res!326032 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10328))))

(declare-fun b!530181 () Bool)

(assert (=> b!530181 (= e!308915 true)))

(declare-fun lt!244689 () SeekEntryResult!4594)

(assert (=> b!530181 (= lt!244689 (seekEntryOrOpen!0 lt!244690 lt!244684 mask!3524))))

(assert (=> b!530181 false))

(declare-fun b!530182 () Bool)

(assert (=> b!530182 (= e!308920 e!308917)))

(declare-fun res!326039 () Bool)

(assert (=> b!530182 (=> (not res!326039) (not e!308917))))

(declare-fun lt!244688 () SeekEntryResult!4594)

(assert (=> b!530182 (= res!326039 (or (= lt!244688 (MissingZero!4594 i!1204)) (= lt!244688 (MissingVacant!4594 i!1204))))))

(assert (=> b!530182 (= lt!244688 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!530183 () Bool)

(declare-fun res!326031 () Bool)

(assert (=> b!530183 (=> (not res!326031) (not e!308920))))

(assert (=> b!530183 (= res!326031 (validKeyInArray!0 (select (arr!16120 a!3235) j!176)))))

(assert (= (and start!48156 res!326034) b!530179))

(assert (= (and b!530179 res!326033) b!530183))

(assert (= (and b!530183 res!326031) b!530173))

(assert (= (and b!530173 res!326038) b!530178))

(assert (= (and b!530178 res!326029) b!530182))

(assert (= (and b!530182 res!326039) b!530174))

(assert (= (and b!530174 res!326036) b!530180))

(assert (= (and b!530180 res!326032) b!530175))

(assert (= (and b!530175 res!326035) b!530177))

(assert (= (and b!530175 (not res!326030)) b!530176))

(assert (= (and b!530176 (not res!326037)) b!530181))

(declare-fun m!510783 () Bool)

(assert (=> b!530182 m!510783))

(declare-fun m!510785 () Bool)

(assert (=> b!530178 m!510785))

(declare-fun m!510787 () Bool)

(assert (=> b!530183 m!510787))

(assert (=> b!530183 m!510787))

(declare-fun m!510789 () Bool)

(assert (=> b!530183 m!510789))

(declare-fun m!510791 () Bool)

(assert (=> b!530173 m!510791))

(declare-fun m!510793 () Bool)

(assert (=> b!530180 m!510793))

(assert (=> b!530177 m!510787))

(assert (=> b!530177 m!510787))

(declare-fun m!510795 () Bool)

(assert (=> b!530177 m!510795))

(declare-fun m!510797 () Bool)

(assert (=> b!530174 m!510797))

(declare-fun m!510799 () Bool)

(assert (=> start!48156 m!510799))

(declare-fun m!510801 () Bool)

(assert (=> start!48156 m!510801))

(declare-fun m!510803 () Bool)

(assert (=> b!530175 m!510803))

(declare-fun m!510805 () Bool)

(assert (=> b!530175 m!510805))

(declare-fun m!510807 () Bool)

(assert (=> b!530175 m!510807))

(declare-fun m!510809 () Bool)

(assert (=> b!530175 m!510809))

(declare-fun m!510811 () Bool)

(assert (=> b!530175 m!510811))

(assert (=> b!530175 m!510787))

(declare-fun m!510813 () Bool)

(assert (=> b!530175 m!510813))

(assert (=> b!530175 m!510787))

(declare-fun m!510815 () Bool)

(assert (=> b!530175 m!510815))

(assert (=> b!530175 m!510787))

(declare-fun m!510817 () Bool)

(assert (=> b!530175 m!510817))

(declare-fun m!510819 () Bool)

(assert (=> b!530181 m!510819))

(check-sat (not b!530183) (not b!530175) (not b!530174) (not b!530180) (not b!530181) (not b!530182) (not b!530177) (not b!530178) (not b!530173) (not start!48156))
(check-sat)
