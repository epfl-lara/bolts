; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45204 () Bool)

(assert start!45204)

(declare-fun b!495829 () Bool)

(declare-fun e!290827 () Bool)

(declare-fun e!290826 () Bool)

(assert (=> b!495829 (= e!290827 e!290826)))

(declare-fun res!298366 () Bool)

(assert (=> b!495829 (=> (not res!298366) (not e!290826))))

(declare-datatypes ((SeekEntryResult!3880 0))(
  ( (MissingZero!3880 (index!17699 (_ BitVec 32))) (Found!3880 (index!17700 (_ BitVec 32))) (Intermediate!3880 (undefined!4692 Bool) (index!17701 (_ BitVec 32)) (x!46791 (_ BitVec 32))) (Undefined!3880) (MissingVacant!3880 (index!17702 (_ BitVec 32))) )
))
(declare-fun lt!224519 () SeekEntryResult!3880)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495829 (= res!298366 (or (= lt!224519 (MissingZero!3880 i!1204)) (= lt!224519 (MissingVacant!3880 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32052 0))(
  ( (array!32053 (arr!15406 (Array (_ BitVec 32) (_ BitVec 64))) (size!15770 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32052)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32052 (_ BitVec 32)) SeekEntryResult!3880)

(assert (=> b!495829 (= lt!224519 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495830 () Bool)

(declare-fun res!298373 () Bool)

(assert (=> b!495830 (=> (not res!298373) (not e!290827))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495830 (= res!298373 (and (= (size!15770 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15770 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15770 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495831 () Bool)

(declare-fun e!290828 () Bool)

(assert (=> b!495831 (= e!290826 (not e!290828))))

(declare-fun res!298367 () Bool)

(assert (=> b!495831 (=> res!298367 e!290828)))

(declare-fun lt!224518 () SeekEntryResult!3880)

(declare-fun lt!224516 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32052 (_ BitVec 32)) SeekEntryResult!3880)

(assert (=> b!495831 (= res!298367 (= lt!224518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224516 (select (store (arr!15406 a!3235) i!1204 k0!2280) j!176) (array!32053 (store (arr!15406 a!3235) i!1204 k0!2280) (size!15770 a!3235)) mask!3524)))))

(declare-fun lt!224517 () (_ BitVec 32))

(assert (=> b!495831 (= lt!224518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224517 (select (arr!15406 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495831 (= lt!224516 (toIndex!0 (select (store (arr!15406 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495831 (= lt!224517 (toIndex!0 (select (arr!15406 a!3235) j!176) mask!3524))))

(declare-fun e!290829 () Bool)

(assert (=> b!495831 e!290829))

(declare-fun res!298370 () Bool)

(assert (=> b!495831 (=> (not res!298370) (not e!290829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32052 (_ BitVec 32)) Bool)

(assert (=> b!495831 (= res!298370 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14698 0))(
  ( (Unit!14699) )
))
(declare-fun lt!224515 () Unit!14698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32052 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14698)

(assert (=> b!495831 (= lt!224515 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495832 () Bool)

(declare-fun res!298376 () Bool)

(assert (=> b!495832 (=> (not res!298376) (not e!290826))))

(assert (=> b!495832 (= res!298376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495833 () Bool)

(assert (=> b!495833 (= e!290829 (= (seekEntryOrOpen!0 (select (arr!15406 a!3235) j!176) a!3235 mask!3524) (Found!3880 j!176)))))

(declare-fun res!298369 () Bool)

(assert (=> start!45204 (=> (not res!298369) (not e!290827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45204 (= res!298369 (validMask!0 mask!3524))))

(assert (=> start!45204 e!290827))

(assert (=> start!45204 true))

(declare-fun array_inv!11180 (array!32052) Bool)

(assert (=> start!45204 (array_inv!11180 a!3235)))

(declare-fun b!495834 () Bool)

(assert (=> b!495834 (= e!290828 true)))

(assert (=> b!495834 (and (bvslt (x!46791 lt!224518) #b01111111111111111111111111111110) (or (= (select (arr!15406 a!3235) (index!17701 lt!224518)) (select (arr!15406 a!3235) j!176)) (= (select (arr!15406 a!3235) (index!17701 lt!224518)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15406 a!3235) (index!17701 lt!224518)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495835 () Bool)

(declare-fun res!298371 () Bool)

(assert (=> b!495835 (=> (not res!298371) (not e!290827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495835 (= res!298371 (validKeyInArray!0 (select (arr!15406 a!3235) j!176)))))

(declare-fun b!495836 () Bool)

(declare-fun res!298375 () Bool)

(assert (=> b!495836 (=> (not res!298375) (not e!290827))))

(assert (=> b!495836 (= res!298375 (validKeyInArray!0 k0!2280))))

(declare-fun b!495837 () Bool)

(declare-fun res!298368 () Bool)

(assert (=> b!495837 (=> res!298368 e!290828)))

(get-info :version)

(assert (=> b!495837 (= res!298368 (or (undefined!4692 lt!224518) (not ((_ is Intermediate!3880) lt!224518))))))

(declare-fun b!495838 () Bool)

(declare-fun res!298372 () Bool)

(assert (=> b!495838 (=> (not res!298372) (not e!290827))))

(declare-fun arrayContainsKey!0 (array!32052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495838 (= res!298372 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495839 () Bool)

(declare-fun res!298374 () Bool)

(assert (=> b!495839 (=> (not res!298374) (not e!290826))))

(declare-datatypes ((List!9617 0))(
  ( (Nil!9614) (Cons!9613 (h!10484 (_ BitVec 64)) (t!15853 List!9617)) )
))
(declare-fun arrayNoDuplicates!0 (array!32052 (_ BitVec 32) List!9617) Bool)

(assert (=> b!495839 (= res!298374 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9614))))

(assert (= (and start!45204 res!298369) b!495830))

(assert (= (and b!495830 res!298373) b!495835))

(assert (= (and b!495835 res!298371) b!495836))

(assert (= (and b!495836 res!298375) b!495838))

(assert (= (and b!495838 res!298372) b!495829))

(assert (= (and b!495829 res!298366) b!495832))

(assert (= (and b!495832 res!298376) b!495839))

(assert (= (and b!495839 res!298374) b!495831))

(assert (= (and b!495831 res!298370) b!495833))

(assert (= (and b!495831 (not res!298367)) b!495837))

(assert (= (and b!495837 (not res!298368)) b!495834))

(declare-fun m!477039 () Bool)

(assert (=> b!495834 m!477039))

(declare-fun m!477041 () Bool)

(assert (=> b!495834 m!477041))

(declare-fun m!477043 () Bool)

(assert (=> b!495839 m!477043))

(declare-fun m!477045 () Bool)

(assert (=> b!495838 m!477045))

(declare-fun m!477047 () Bool)

(assert (=> b!495829 m!477047))

(declare-fun m!477049 () Bool)

(assert (=> b!495832 m!477049))

(assert (=> b!495835 m!477041))

(assert (=> b!495835 m!477041))

(declare-fun m!477051 () Bool)

(assert (=> b!495835 m!477051))

(declare-fun m!477053 () Bool)

(assert (=> start!45204 m!477053))

(declare-fun m!477055 () Bool)

(assert (=> start!45204 m!477055))

(assert (=> b!495833 m!477041))

(assert (=> b!495833 m!477041))

(declare-fun m!477057 () Bool)

(assert (=> b!495833 m!477057))

(declare-fun m!477059 () Bool)

(assert (=> b!495831 m!477059))

(declare-fun m!477061 () Bool)

(assert (=> b!495831 m!477061))

(declare-fun m!477063 () Bool)

(assert (=> b!495831 m!477063))

(assert (=> b!495831 m!477059))

(assert (=> b!495831 m!477041))

(declare-fun m!477065 () Bool)

(assert (=> b!495831 m!477065))

(assert (=> b!495831 m!477041))

(declare-fun m!477067 () Bool)

(assert (=> b!495831 m!477067))

(assert (=> b!495831 m!477059))

(declare-fun m!477069 () Bool)

(assert (=> b!495831 m!477069))

(assert (=> b!495831 m!477041))

(declare-fun m!477071 () Bool)

(assert (=> b!495831 m!477071))

(declare-fun m!477073 () Bool)

(assert (=> b!495831 m!477073))

(declare-fun m!477075 () Bool)

(assert (=> b!495836 m!477075))

(check-sat (not b!495833) (not b!495835) (not b!495836) (not b!495832) (not b!495839) (not b!495831) (not b!495838) (not start!45204) (not b!495829))
(check-sat)
