; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50002 () Bool)

(assert start!50002)

(declare-fun b!547858 () Bool)

(declare-fun res!341423 () Bool)

(declare-fun e!316558 () Bool)

(assert (=> b!547858 (=> (not res!341423) (not e!316558))))

(declare-datatypes ((array!34538 0))(
  ( (array!34539 (arr!16585 (Array (_ BitVec 32) (_ BitVec 64))) (size!16949 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34538)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547858 (= res!341423 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547859 () Bool)

(declare-fun res!341420 () Bool)

(declare-fun e!316557 () Bool)

(assert (=> b!547859 (=> (not res!341420) (not e!316557))))

(declare-datatypes ((List!10718 0))(
  ( (Nil!10715) (Cons!10714 (h!11681 (_ BitVec 64)) (t!16954 List!10718)) )
))
(declare-fun arrayNoDuplicates!0 (array!34538 (_ BitVec 32) List!10718) Bool)

(assert (=> b!547859 (= res!341420 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10715))))

(declare-fun b!547860 () Bool)

(declare-fun res!341416 () Bool)

(assert (=> b!547860 (=> (not res!341416) (not e!316558))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547860 (= res!341416 (validKeyInArray!0 (select (arr!16585 a!3118) j!142)))))

(declare-fun res!341419 () Bool)

(assert (=> start!50002 (=> (not res!341419) (not e!316558))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50002 (= res!341419 (validMask!0 mask!3119))))

(assert (=> start!50002 e!316558))

(assert (=> start!50002 true))

(declare-fun array_inv!12359 (array!34538) Bool)

(assert (=> start!50002 (array_inv!12359 a!3118)))

(declare-fun b!547861 () Bool)

(declare-fun res!341421 () Bool)

(assert (=> b!547861 (=> (not res!341421) (not e!316558))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547861 (= res!341421 (and (= (size!16949 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16949 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16949 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547862 () Bool)

(declare-fun res!341422 () Bool)

(assert (=> b!547862 (=> (not res!341422) (not e!316557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34538 (_ BitVec 32)) Bool)

(assert (=> b!547862 (= res!341422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547863 () Bool)

(assert (=> b!547863 (= e!316557 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun lt!249674 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547863 (= lt!249674 (toIndex!0 (select (arr!16585 a!3118) j!142) mask!3119))))

(declare-fun b!547864 () Bool)

(declare-fun res!341418 () Bool)

(assert (=> b!547864 (=> (not res!341418) (not e!316558))))

(assert (=> b!547864 (= res!341418 (validKeyInArray!0 k0!1914))))

(declare-fun b!547865 () Bool)

(assert (=> b!547865 (= e!316558 e!316557)))

(declare-fun res!341417 () Bool)

(assert (=> b!547865 (=> (not res!341417) (not e!316557))))

(declare-datatypes ((SeekEntryResult!5041 0))(
  ( (MissingZero!5041 (index!22391 (_ BitVec 32))) (Found!5041 (index!22392 (_ BitVec 32))) (Intermediate!5041 (undefined!5853 Bool) (index!22393 (_ BitVec 32)) (x!51360 (_ BitVec 32))) (Undefined!5041) (MissingVacant!5041 (index!22394 (_ BitVec 32))) )
))
(declare-fun lt!249673 () SeekEntryResult!5041)

(assert (=> b!547865 (= res!341417 (or (= lt!249673 (MissingZero!5041 i!1132)) (= lt!249673 (MissingVacant!5041 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34538 (_ BitVec 32)) SeekEntryResult!5041)

(assert (=> b!547865 (= lt!249673 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50002 res!341419) b!547861))

(assert (= (and b!547861 res!341421) b!547860))

(assert (= (and b!547860 res!341416) b!547864))

(assert (= (and b!547864 res!341418) b!547858))

(assert (= (and b!547858 res!341423) b!547865))

(assert (= (and b!547865 res!341417) b!547862))

(assert (= (and b!547862 res!341422) b!547859))

(assert (= (and b!547859 res!341420) b!547863))

(declare-fun m!525009 () Bool)

(assert (=> b!547858 m!525009))

(declare-fun m!525011 () Bool)

(assert (=> b!547859 m!525011))

(declare-fun m!525013 () Bool)

(assert (=> b!547864 m!525013))

(declare-fun m!525015 () Bool)

(assert (=> b!547865 m!525015))

(declare-fun m!525017 () Bool)

(assert (=> start!50002 m!525017))

(declare-fun m!525019 () Bool)

(assert (=> start!50002 m!525019))

(declare-fun m!525021 () Bool)

(assert (=> b!547860 m!525021))

(assert (=> b!547860 m!525021))

(declare-fun m!525023 () Bool)

(assert (=> b!547860 m!525023))

(assert (=> b!547863 m!525021))

(assert (=> b!547863 m!525021))

(declare-fun m!525025 () Bool)

(assert (=> b!547863 m!525025))

(declare-fun m!525027 () Bool)

(assert (=> b!547862 m!525027))

(check-sat (not b!547862) (not b!547859) (not b!547858) (not b!547864) (not b!547863) (not b!547865) (not start!50002) (not b!547860))
(check-sat)
