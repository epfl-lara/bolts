; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50614 () Bool)

(assert start!50614)

(declare-fun b!552659 () Bool)

(declare-fun res!345227 () Bool)

(declare-fun e!318887 () Bool)

(assert (=> b!552659 (=> (not res!345227) (not e!318887))))

(declare-datatypes ((array!34793 0))(
  ( (array!34794 (arr!16702 (Array (_ BitVec 32) (_ BitVec 64))) (size!17066 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34793)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552659 (= res!345227 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552660 () Bool)

(declare-fun e!318886 () Bool)

(assert (=> b!552660 (= e!318887 e!318886)))

(declare-fun res!345230 () Bool)

(assert (=> b!552660 (=> (not res!345230) (not e!318886))))

(declare-datatypes ((SeekEntryResult!5158 0))(
  ( (MissingZero!5158 (index!22859 (_ BitVec 32))) (Found!5158 (index!22860 (_ BitVec 32))) (Intermediate!5158 (undefined!5970 Bool) (index!22861 (_ BitVec 32)) (x!51819 (_ BitVec 32))) (Undefined!5158) (MissingVacant!5158 (index!22862 (_ BitVec 32))) )
))
(declare-fun lt!251270 () SeekEntryResult!5158)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552660 (= res!345230 (or (= lt!251270 (MissingZero!5158 i!1132)) (= lt!251270 (MissingVacant!5158 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34793 (_ BitVec 32)) SeekEntryResult!5158)

(assert (=> b!552660 (= lt!251270 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552662 () Bool)

(declare-fun res!345221 () Bool)

(assert (=> b!552662 (=> (not res!345221) (not e!318887))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!552662 (= res!345221 (and (= (size!17066 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17066 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17066 a!3118)) (not (= i!1132 j!142))))))

(declare-fun e!318888 () Bool)

(declare-fun b!552663 () Bool)

(assert (=> b!552663 (= e!318888 (= (seekEntryOrOpen!0 (select (arr!16702 a!3118) j!142) a!3118 mask!3119) (Found!5158 j!142)))))

(declare-fun b!552664 () Bool)

(declare-fun res!345223 () Bool)

(assert (=> b!552664 (=> (not res!345223) (not e!318887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552664 (= res!345223 (validKeyInArray!0 (select (arr!16702 a!3118) j!142)))))

(declare-fun b!552665 () Bool)

(declare-fun res!345228 () Bool)

(assert (=> b!552665 (=> (not res!345228) (not e!318886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34793 (_ BitVec 32)) Bool)

(assert (=> b!552665 (= res!345228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552666 () Bool)

(declare-fun res!345225 () Bool)

(assert (=> b!552666 (=> (not res!345225) (not e!318886))))

(declare-datatypes ((List!10835 0))(
  ( (Nil!10832) (Cons!10831 (h!11816 (_ BitVec 64)) (t!17071 List!10835)) )
))
(declare-fun arrayNoDuplicates!0 (array!34793 (_ BitVec 32) List!10835) Bool)

(assert (=> b!552666 (= res!345225 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10832))))

(declare-fun b!552661 () Bool)

(declare-fun e!318889 () Bool)

(declare-fun lt!251268 () SeekEntryResult!5158)

(get-info :version)

(assert (=> b!552661 (= e!318889 (not (or (not ((_ is Intermediate!5158) lt!251268)) (not (undefined!5970 lt!251268)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!552661 e!318888))

(declare-fun res!345226 () Bool)

(assert (=> b!552661 (=> (not res!345226) (not e!318888))))

(assert (=> b!552661 (= res!345226 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17090 0))(
  ( (Unit!17091) )
))
(declare-fun lt!251266 () Unit!17090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17090)

(assert (=> b!552661 (= lt!251266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!345224 () Bool)

(assert (=> start!50614 (=> (not res!345224) (not e!318887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50614 (= res!345224 (validMask!0 mask!3119))))

(assert (=> start!50614 e!318887))

(assert (=> start!50614 true))

(declare-fun array_inv!12476 (array!34793) Bool)

(assert (=> start!50614 (array_inv!12476 a!3118)))

(declare-fun b!552667 () Bool)

(declare-fun res!345229 () Bool)

(assert (=> b!552667 (=> (not res!345229) (not e!318887))))

(assert (=> b!552667 (= res!345229 (validKeyInArray!0 k0!1914))))

(declare-fun b!552668 () Bool)

(assert (=> b!552668 (= e!318886 e!318889)))

(declare-fun res!345222 () Bool)

(assert (=> b!552668 (=> (not res!345222) (not e!318889))))

(declare-fun lt!251267 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34793 (_ BitVec 32)) SeekEntryResult!5158)

(assert (=> b!552668 (= res!345222 (= lt!251268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251267 (select (store (arr!16702 a!3118) i!1132 k0!1914) j!142) (array!34794 (store (arr!16702 a!3118) i!1132 k0!1914) (size!17066 a!3118)) mask!3119)))))

(declare-fun lt!251269 () (_ BitVec 32))

(assert (=> b!552668 (= lt!251268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251269 (select (arr!16702 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552668 (= lt!251267 (toIndex!0 (select (store (arr!16702 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!552668 (= lt!251269 (toIndex!0 (select (arr!16702 a!3118) j!142) mask!3119))))

(assert (= (and start!50614 res!345224) b!552662))

(assert (= (and b!552662 res!345221) b!552664))

(assert (= (and b!552664 res!345223) b!552667))

(assert (= (and b!552667 res!345229) b!552659))

(assert (= (and b!552659 res!345227) b!552660))

(assert (= (and b!552660 res!345230) b!552665))

(assert (= (and b!552665 res!345228) b!552666))

(assert (= (and b!552666 res!345225) b!552668))

(assert (= (and b!552668 res!345222) b!552661))

(assert (= (and b!552661 res!345226) b!552663))

(declare-fun m!529663 () Bool)

(assert (=> b!552664 m!529663))

(assert (=> b!552664 m!529663))

(declare-fun m!529665 () Bool)

(assert (=> b!552664 m!529665))

(declare-fun m!529667 () Bool)

(assert (=> b!552661 m!529667))

(declare-fun m!529669 () Bool)

(assert (=> b!552661 m!529669))

(declare-fun m!529671 () Bool)

(assert (=> start!50614 m!529671))

(declare-fun m!529673 () Bool)

(assert (=> start!50614 m!529673))

(assert (=> b!552663 m!529663))

(assert (=> b!552663 m!529663))

(declare-fun m!529675 () Bool)

(assert (=> b!552663 m!529675))

(declare-fun m!529677 () Bool)

(assert (=> b!552660 m!529677))

(declare-fun m!529679 () Bool)

(assert (=> b!552666 m!529679))

(declare-fun m!529681 () Bool)

(assert (=> b!552659 m!529681))

(declare-fun m!529683 () Bool)

(assert (=> b!552667 m!529683))

(declare-fun m!529685 () Bool)

(assert (=> b!552665 m!529685))

(assert (=> b!552668 m!529663))

(declare-fun m!529687 () Bool)

(assert (=> b!552668 m!529687))

(assert (=> b!552668 m!529663))

(assert (=> b!552668 m!529663))

(declare-fun m!529689 () Bool)

(assert (=> b!552668 m!529689))

(declare-fun m!529691 () Bool)

(assert (=> b!552668 m!529691))

(assert (=> b!552668 m!529691))

(declare-fun m!529693 () Bool)

(assert (=> b!552668 m!529693))

(declare-fun m!529695 () Bool)

(assert (=> b!552668 m!529695))

(assert (=> b!552668 m!529691))

(declare-fun m!529697 () Bool)

(assert (=> b!552668 m!529697))

(check-sat (not b!552665) (not b!552664) (not b!552663) (not b!552661) (not b!552667) (not b!552660) (not b!552666) (not start!50614) (not b!552659) (not b!552668))
(check-sat)
