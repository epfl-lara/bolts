; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45256 () Bool)

(assert start!45256)

(declare-fun b!496687 () Bool)

(declare-fun res!299234 () Bool)

(declare-fun e!291220 () Bool)

(assert (=> b!496687 (=> (not res!299234) (not e!291220))))

(declare-datatypes ((array!32104 0))(
  ( (array!32105 (arr!15432 (Array (_ BitVec 32) (_ BitVec 64))) (size!15796 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32104)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32104 (_ BitVec 32)) Bool)

(assert (=> b!496687 (= res!299234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496688 () Bool)

(declare-fun e!291218 () Bool)

(assert (=> b!496688 (= e!291218 e!291220)))

(declare-fun res!299226 () Bool)

(assert (=> b!496688 (=> (not res!299226) (not e!291220))))

(declare-datatypes ((SeekEntryResult!3906 0))(
  ( (MissingZero!3906 (index!17803 (_ BitVec 32))) (Found!3906 (index!17804 (_ BitVec 32))) (Intermediate!3906 (undefined!4718 Bool) (index!17805 (_ BitVec 32)) (x!46889 (_ BitVec 32))) (Undefined!3906) (MissingVacant!3906 (index!17806 (_ BitVec 32))) )
))
(declare-fun lt!224905 () SeekEntryResult!3906)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496688 (= res!299226 (or (= lt!224905 (MissingZero!3906 i!1204)) (= lt!224905 (MissingVacant!3906 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32104 (_ BitVec 32)) SeekEntryResult!3906)

(assert (=> b!496688 (= lt!224905 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496689 () Bool)

(declare-fun e!291216 () Bool)

(assert (=> b!496689 (= e!291220 (not e!291216))))

(declare-fun res!299224 () Bool)

(assert (=> b!496689 (=> res!299224 e!291216)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!224906 () SeekEntryResult!3906)

(declare-fun lt!224909 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32104 (_ BitVec 32)) SeekEntryResult!3906)

(assert (=> b!496689 (= res!299224 (= lt!224906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224909 (select (store (arr!15432 a!3235) i!1204 k!2280) j!176) (array!32105 (store (arr!15432 a!3235) i!1204 k!2280) (size!15796 a!3235)) mask!3524)))))

(declare-fun lt!224907 () (_ BitVec 32))

(assert (=> b!496689 (= lt!224906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224907 (select (arr!15432 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496689 (= lt!224909 (toIndex!0 (select (store (arr!15432 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496689 (= lt!224907 (toIndex!0 (select (arr!15432 a!3235) j!176) mask!3524))))

(declare-fun e!291219 () Bool)

(assert (=> b!496689 e!291219))

(declare-fun res!299233 () Bool)

(assert (=> b!496689 (=> (not res!299233) (not e!291219))))

(assert (=> b!496689 (= res!299233 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14750 0))(
  ( (Unit!14751) )
))
(declare-fun lt!224908 () Unit!14750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14750)

(assert (=> b!496689 (= lt!224908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496690 () Bool)

(assert (=> b!496690 (= e!291216 true)))

(assert (=> b!496690 (and (bvslt (x!46889 lt!224906) #b01111111111111111111111111111110) (or (= (select (arr!15432 a!3235) (index!17805 lt!224906)) (select (arr!15432 a!3235) j!176)) (= (select (arr!15432 a!3235) (index!17805 lt!224906)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15432 a!3235) (index!17805 lt!224906)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496691 () Bool)

(assert (=> b!496691 (= e!291219 (= (seekEntryOrOpen!0 (select (arr!15432 a!3235) j!176) a!3235 mask!3524) (Found!3906 j!176)))))

(declare-fun b!496692 () Bool)

(declare-fun res!299225 () Bool)

(assert (=> b!496692 (=> res!299225 e!291216)))

(assert (=> b!496692 (= res!299225 (or (undefined!4718 lt!224906) (not (is-Intermediate!3906 lt!224906))))))

(declare-fun b!496693 () Bool)

(declare-fun res!299227 () Bool)

(assert (=> b!496693 (=> (not res!299227) (not e!291218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496693 (= res!299227 (validKeyInArray!0 (select (arr!15432 a!3235) j!176)))))

(declare-fun b!496694 () Bool)

(declare-fun res!299228 () Bool)

(assert (=> b!496694 (=> (not res!299228) (not e!291218))))

(declare-fun arrayContainsKey!0 (array!32104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496694 (= res!299228 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496695 () Bool)

(declare-fun res!299229 () Bool)

(assert (=> b!496695 (=> (not res!299229) (not e!291220))))

(declare-datatypes ((List!9643 0))(
  ( (Nil!9640) (Cons!9639 (h!10510 (_ BitVec 64)) (t!15879 List!9643)) )
))
(declare-fun arrayNoDuplicates!0 (array!32104 (_ BitVec 32) List!9643) Bool)

(assert (=> b!496695 (= res!299229 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9640))))

(declare-fun res!299230 () Bool)

(assert (=> start!45256 (=> (not res!299230) (not e!291218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45256 (= res!299230 (validMask!0 mask!3524))))

(assert (=> start!45256 e!291218))

(assert (=> start!45256 true))

(declare-fun array_inv!11206 (array!32104) Bool)

(assert (=> start!45256 (array_inv!11206 a!3235)))

(declare-fun b!496696 () Bool)

(declare-fun res!299231 () Bool)

(assert (=> b!496696 (=> (not res!299231) (not e!291218))))

(assert (=> b!496696 (= res!299231 (validKeyInArray!0 k!2280))))

(declare-fun b!496697 () Bool)

(declare-fun res!299232 () Bool)

(assert (=> b!496697 (=> (not res!299232) (not e!291218))))

(assert (=> b!496697 (= res!299232 (and (= (size!15796 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15796 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15796 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45256 res!299230) b!496697))

(assert (= (and b!496697 res!299232) b!496693))

(assert (= (and b!496693 res!299227) b!496696))

(assert (= (and b!496696 res!299231) b!496694))

(assert (= (and b!496694 res!299228) b!496688))

(assert (= (and b!496688 res!299226) b!496687))

(assert (= (and b!496687 res!299234) b!496695))

(assert (= (and b!496695 res!299229) b!496689))

(assert (= (and b!496689 res!299233) b!496691))

(assert (= (and b!496689 (not res!299224)) b!496692))

(assert (= (and b!496692 (not res!299225)) b!496690))

(declare-fun m!478027 () Bool)

(assert (=> b!496694 m!478027))

(declare-fun m!478029 () Bool)

(assert (=> b!496695 m!478029))

(declare-fun m!478031 () Bool)

(assert (=> b!496693 m!478031))

(assert (=> b!496693 m!478031))

(declare-fun m!478033 () Bool)

(assert (=> b!496693 m!478033))

(assert (=> b!496691 m!478031))

(assert (=> b!496691 m!478031))

(declare-fun m!478035 () Bool)

(assert (=> b!496691 m!478035))

(declare-fun m!478037 () Bool)

(assert (=> b!496690 m!478037))

(assert (=> b!496690 m!478031))

(declare-fun m!478039 () Bool)

(assert (=> b!496689 m!478039))

(declare-fun m!478041 () Bool)

(assert (=> b!496689 m!478041))

(declare-fun m!478043 () Bool)

(assert (=> b!496689 m!478043))

(assert (=> b!496689 m!478043))

(declare-fun m!478045 () Bool)

(assert (=> b!496689 m!478045))

(assert (=> b!496689 m!478031))

(declare-fun m!478047 () Bool)

(assert (=> b!496689 m!478047))

(assert (=> b!496689 m!478031))

(declare-fun m!478049 () Bool)

(assert (=> b!496689 m!478049))

(assert (=> b!496689 m!478031))

(declare-fun m!478051 () Bool)

(assert (=> b!496689 m!478051))

(assert (=> b!496689 m!478043))

(declare-fun m!478053 () Bool)

(assert (=> b!496689 m!478053))

(declare-fun m!478055 () Bool)

(assert (=> start!45256 m!478055))

(declare-fun m!478057 () Bool)

(assert (=> start!45256 m!478057))

(declare-fun m!478059 () Bool)

(assert (=> b!496696 m!478059))

(declare-fun m!478061 () Bool)

(assert (=> b!496687 m!478061))

(declare-fun m!478063 () Bool)

(assert (=> b!496688 m!478063))

(push 1)

