; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47736 () Bool)

(assert start!47736)

(declare-fun b!524851 () Bool)

(declare-fun res!321833 () Bool)

(declare-fun e!306059 () Bool)

(assert (=> b!524851 (=> (not res!321833) (not e!306059))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524851 (= res!321833 (validKeyInArray!0 k0!2280))))

(declare-fun b!524852 () Bool)

(declare-datatypes ((Unit!16422 0))(
  ( (Unit!16423) )
))
(declare-fun e!306061 () Unit!16422)

(declare-fun Unit!16424 () Unit!16422)

(assert (=> b!524852 (= e!306061 Unit!16424)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33333 0))(
  ( (array!33334 (arr!16015 (Array (_ BitVec 32) (_ BitVec 64))) (size!16379 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33333)

(declare-fun lt!241081 () (_ BitVec 32))

(declare-fun lt!241083 () Unit!16422)

(declare-datatypes ((SeekEntryResult!4489 0))(
  ( (MissingZero!4489 (index!20168 (_ BitVec 32))) (Found!4489 (index!20169 (_ BitVec 32))) (Intermediate!4489 (undefined!5301 Bool) (index!20170 (_ BitVec 32)) (x!49177 (_ BitVec 32))) (Undefined!4489) (MissingVacant!4489 (index!20171 (_ BitVec 32))) )
))
(declare-fun lt!241082 () SeekEntryResult!4489)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16422)

(assert (=> b!524852 (= lt!241083 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241081 #b00000000000000000000000000000000 (index!20170 lt!241082) (x!49177 lt!241082) mask!3524))))

(declare-fun lt!241084 () array!33333)

(declare-fun lt!241079 () (_ BitVec 64))

(declare-fun res!321823 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33333 (_ BitVec 32)) SeekEntryResult!4489)

(assert (=> b!524852 (= res!321823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241081 lt!241079 lt!241084 mask!3524) (Intermediate!4489 false (index!20170 lt!241082) (x!49177 lt!241082))))))

(declare-fun e!306056 () Bool)

(assert (=> b!524852 (=> (not res!321823) (not e!306056))))

(assert (=> b!524852 e!306056))

(declare-fun b!524853 () Bool)

(declare-fun res!321822 () Bool)

(declare-fun e!306060 () Bool)

(assert (=> b!524853 (=> (not res!321822) (not e!306060))))

(declare-datatypes ((List!10226 0))(
  ( (Nil!10223) (Cons!10222 (h!11153 (_ BitVec 64)) (t!16462 List!10226)) )
))
(declare-fun arrayNoDuplicates!0 (array!33333 (_ BitVec 32) List!10226) Bool)

(assert (=> b!524853 (= res!321822 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10223))))

(declare-fun b!524854 () Bool)

(declare-fun e!306055 () Bool)

(assert (=> b!524854 (= e!306060 (not e!306055))))

(declare-fun res!321828 () Bool)

(assert (=> b!524854 (=> res!321828 e!306055)))

(declare-fun lt!241076 () (_ BitVec 32))

(assert (=> b!524854 (= res!321828 (= lt!241082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241076 lt!241079 lt!241084 mask!3524)))))

(assert (=> b!524854 (= lt!241082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241081 (select (arr!16015 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524854 (= lt!241076 (toIndex!0 lt!241079 mask!3524))))

(assert (=> b!524854 (= lt!241079 (select (store (arr!16015 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524854 (= lt!241081 (toIndex!0 (select (arr!16015 a!3235) j!176) mask!3524))))

(assert (=> b!524854 (= lt!241084 (array!33334 (store (arr!16015 a!3235) i!1204 k0!2280) (size!16379 a!3235)))))

(declare-fun e!306057 () Bool)

(assert (=> b!524854 e!306057))

(declare-fun res!321825 () Bool)

(assert (=> b!524854 (=> (not res!321825) (not e!306057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33333 (_ BitVec 32)) Bool)

(assert (=> b!524854 (= res!321825 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241085 () Unit!16422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16422)

(assert (=> b!524854 (= lt!241085 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!321831 () Bool)

(assert (=> start!47736 (=> (not res!321831) (not e!306059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47736 (= res!321831 (validMask!0 mask!3524))))

(assert (=> start!47736 e!306059))

(assert (=> start!47736 true))

(declare-fun array_inv!11789 (array!33333) Bool)

(assert (=> start!47736 (array_inv!11789 a!3235)))

(declare-fun b!524855 () Bool)

(declare-fun res!321829 () Bool)

(assert (=> b!524855 (=> (not res!321829) (not e!306059))))

(assert (=> b!524855 (= res!321829 (and (= (size!16379 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16379 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16379 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524856 () Bool)

(declare-fun res!321827 () Bool)

(assert (=> b!524856 (=> (not res!321827) (not e!306059))))

(declare-fun arrayContainsKey!0 (array!33333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524856 (= res!321827 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524857 () Bool)

(declare-fun res!321824 () Bool)

(assert (=> b!524857 (=> (not res!321824) (not e!306060))))

(assert (=> b!524857 (= res!321824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524858 () Bool)

(assert (=> b!524858 (= e!306055 true)))

(assert (=> b!524858 (= (index!20170 lt!241082) i!1204)))

(declare-fun lt!241080 () Unit!16422)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16422)

(assert (=> b!524858 (= lt!241080 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241081 #b00000000000000000000000000000000 (index!20170 lt!241082) (x!49177 lt!241082) mask!3524))))

(assert (=> b!524858 (and (or (= (select (arr!16015 a!3235) (index!20170 lt!241082)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16015 a!3235) (index!20170 lt!241082)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16015 a!3235) (index!20170 lt!241082)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16015 a!3235) (index!20170 lt!241082)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241078 () Unit!16422)

(assert (=> b!524858 (= lt!241078 e!306061)))

(declare-fun c!61820 () Bool)

(assert (=> b!524858 (= c!61820 (= (select (arr!16015 a!3235) (index!20170 lt!241082)) (select (arr!16015 a!3235) j!176)))))

(assert (=> b!524858 (and (bvslt (x!49177 lt!241082) #b01111111111111111111111111111110) (or (= (select (arr!16015 a!3235) (index!20170 lt!241082)) (select (arr!16015 a!3235) j!176)) (= (select (arr!16015 a!3235) (index!20170 lt!241082)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16015 a!3235) (index!20170 lt!241082)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524859 () Bool)

(declare-fun res!321830 () Bool)

(assert (=> b!524859 (=> res!321830 e!306055)))

(get-info :version)

(assert (=> b!524859 (= res!321830 (or (undefined!5301 lt!241082) (not ((_ is Intermediate!4489) lt!241082))))))

(declare-fun b!524860 () Bool)

(assert (=> b!524860 (= e!306059 e!306060)))

(declare-fun res!321832 () Bool)

(assert (=> b!524860 (=> (not res!321832) (not e!306060))))

(declare-fun lt!241077 () SeekEntryResult!4489)

(assert (=> b!524860 (= res!321832 (or (= lt!241077 (MissingZero!4489 i!1204)) (= lt!241077 (MissingVacant!4489 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33333 (_ BitVec 32)) SeekEntryResult!4489)

(assert (=> b!524860 (= lt!241077 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524861 () Bool)

(assert (=> b!524861 (= e!306056 false)))

(declare-fun b!524862 () Bool)

(declare-fun Unit!16425 () Unit!16422)

(assert (=> b!524862 (= e!306061 Unit!16425)))

(declare-fun b!524863 () Bool)

(declare-fun res!321826 () Bool)

(assert (=> b!524863 (=> (not res!321826) (not e!306059))))

(assert (=> b!524863 (= res!321826 (validKeyInArray!0 (select (arr!16015 a!3235) j!176)))))

(declare-fun b!524864 () Bool)

(assert (=> b!524864 (= e!306057 (= (seekEntryOrOpen!0 (select (arr!16015 a!3235) j!176) a!3235 mask!3524) (Found!4489 j!176)))))

(assert (= (and start!47736 res!321831) b!524855))

(assert (= (and b!524855 res!321829) b!524863))

(assert (= (and b!524863 res!321826) b!524851))

(assert (= (and b!524851 res!321833) b!524856))

(assert (= (and b!524856 res!321827) b!524860))

(assert (= (and b!524860 res!321832) b!524857))

(assert (= (and b!524857 res!321824) b!524853))

(assert (= (and b!524853 res!321822) b!524854))

(assert (= (and b!524854 res!321825) b!524864))

(assert (= (and b!524854 (not res!321828)) b!524859))

(assert (= (and b!524859 (not res!321830)) b!524858))

(assert (= (and b!524858 c!61820) b!524852))

(assert (= (and b!524858 (not c!61820)) b!524862))

(assert (= (and b!524852 res!321823) b!524861))

(declare-fun m!505527 () Bool)

(assert (=> b!524852 m!505527))

(declare-fun m!505529 () Bool)

(assert (=> b!524852 m!505529))

(declare-fun m!505531 () Bool)

(assert (=> b!524864 m!505531))

(assert (=> b!524864 m!505531))

(declare-fun m!505533 () Bool)

(assert (=> b!524864 m!505533))

(assert (=> b!524863 m!505531))

(assert (=> b!524863 m!505531))

(declare-fun m!505535 () Bool)

(assert (=> b!524863 m!505535))

(declare-fun m!505537 () Bool)

(assert (=> b!524853 m!505537))

(declare-fun m!505539 () Bool)

(assert (=> start!47736 m!505539))

(declare-fun m!505541 () Bool)

(assert (=> start!47736 m!505541))

(declare-fun m!505543 () Bool)

(assert (=> b!524857 m!505543))

(declare-fun m!505545 () Bool)

(assert (=> b!524858 m!505545))

(declare-fun m!505547 () Bool)

(assert (=> b!524858 m!505547))

(assert (=> b!524858 m!505531))

(declare-fun m!505549 () Bool)

(assert (=> b!524860 m!505549))

(declare-fun m!505551 () Bool)

(assert (=> b!524854 m!505551))

(declare-fun m!505553 () Bool)

(assert (=> b!524854 m!505553))

(declare-fun m!505555 () Bool)

(assert (=> b!524854 m!505555))

(assert (=> b!524854 m!505531))

(declare-fun m!505557 () Bool)

(assert (=> b!524854 m!505557))

(declare-fun m!505559 () Bool)

(assert (=> b!524854 m!505559))

(declare-fun m!505561 () Bool)

(assert (=> b!524854 m!505561))

(assert (=> b!524854 m!505531))

(declare-fun m!505563 () Bool)

(assert (=> b!524854 m!505563))

(declare-fun m!505565 () Bool)

(assert (=> b!524854 m!505565))

(assert (=> b!524854 m!505531))

(declare-fun m!505567 () Bool)

(assert (=> b!524856 m!505567))

(declare-fun m!505569 () Bool)

(assert (=> b!524851 m!505569))

(check-sat (not b!524856) (not b!524864) (not b!524851) (not b!524857) (not b!524863) (not b!524853) (not b!524860) (not b!524854) (not start!47736) (not b!524858) (not b!524852))
(check-sat)
