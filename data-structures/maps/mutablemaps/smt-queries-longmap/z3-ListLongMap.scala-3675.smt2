; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50686 () Bool)

(assert start!50686)

(declare-fun e!319363 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34865 0))(
  ( (array!34866 (arr!16738 (Array (_ BitVec 32) (_ BitVec 64))) (size!17102 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34865)

(declare-fun b!553748 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5194 0))(
  ( (MissingZero!5194 (index!23003 (_ BitVec 32))) (Found!5194 (index!23004 (_ BitVec 32))) (Intermediate!5194 (undefined!6006 Bool) (index!23005 (_ BitVec 32)) (x!51951 (_ BitVec 32))) (Undefined!5194) (MissingVacant!5194 (index!23006 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34865 (_ BitVec 32)) SeekEntryResult!5194)

(assert (=> b!553748 (= e!319363 (= (seekEntryOrOpen!0 (select (arr!16738 a!3118) j!142) a!3118 mask!3119) (Found!5194 j!142)))))

(declare-fun b!553750 () Bool)

(declare-fun res!346317 () Bool)

(declare-fun e!319364 () Bool)

(assert (=> b!553750 (=> (not res!346317) (not e!319364))))

(declare-datatypes ((List!10871 0))(
  ( (Nil!10868) (Cons!10867 (h!11852 (_ BitVec 64)) (t!17107 List!10871)) )
))
(declare-fun arrayNoDuplicates!0 (array!34865 (_ BitVec 32) List!10871) Bool)

(assert (=> b!553750 (= res!346317 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10868))))

(declare-fun b!553751 () Bool)

(declare-fun res!346312 () Bool)

(assert (=> b!553751 (=> (not res!346312) (not e!319364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34865 (_ BitVec 32)) Bool)

(assert (=> b!553751 (= res!346312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553752 () Bool)

(declare-fun e!319366 () Bool)

(assert (=> b!553752 (= e!319364 e!319366)))

(declare-fun res!346319 () Bool)

(assert (=> b!553752 (=> (not res!346319) (not e!319366))))

(declare-fun lt!251591 () SeekEntryResult!5194)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun lt!251592 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34865 (_ BitVec 32)) SeekEntryResult!5194)

(assert (=> b!553752 (= res!346319 (= lt!251591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251592 (select (store (arr!16738 a!3118) i!1132 k0!1914) j!142) (array!34866 (store (arr!16738 a!3118) i!1132 k0!1914) (size!17102 a!3118)) mask!3119)))))

(declare-fun lt!251594 () (_ BitVec 32))

(assert (=> b!553752 (= lt!251591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251594 (select (arr!16738 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553752 (= lt!251592 (toIndex!0 (select (store (arr!16738 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!553752 (= lt!251594 (toIndex!0 (select (arr!16738 a!3118) j!142) mask!3119))))

(declare-fun b!553753 () Bool)

(declare-fun res!346316 () Bool)

(declare-fun e!319362 () Bool)

(assert (=> b!553753 (=> (not res!346316) (not e!319362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553753 (= res!346316 (validKeyInArray!0 k0!1914))))

(declare-fun b!553754 () Bool)

(get-info :version)

(assert (=> b!553754 (= e!319366 (not (or (not ((_ is Intermediate!5194) lt!251591)) (undefined!6006 lt!251591) (not (= (select (arr!16738 a!3118) (index!23005 lt!251591)) (select (arr!16738 a!3118) j!142))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!553754 e!319363))

(declare-fun res!346315 () Bool)

(assert (=> b!553754 (=> (not res!346315) (not e!319363))))

(assert (=> b!553754 (= res!346315 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17162 0))(
  ( (Unit!17163) )
))
(declare-fun lt!251593 () Unit!17162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34865 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17162)

(assert (=> b!553754 (= lt!251593 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553755 () Bool)

(declare-fun res!346314 () Bool)

(assert (=> b!553755 (=> (not res!346314) (not e!319362))))

(assert (=> b!553755 (= res!346314 (and (= (size!17102 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17102 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17102 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553756 () Bool)

(assert (=> b!553756 (= e!319362 e!319364)))

(declare-fun res!346313 () Bool)

(assert (=> b!553756 (=> (not res!346313) (not e!319364))))

(declare-fun lt!251590 () SeekEntryResult!5194)

(assert (=> b!553756 (= res!346313 (or (= lt!251590 (MissingZero!5194 i!1132)) (= lt!251590 (MissingVacant!5194 i!1132))))))

(assert (=> b!553756 (= lt!251590 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553757 () Bool)

(declare-fun res!346310 () Bool)

(assert (=> b!553757 (=> (not res!346310) (not e!319362))))

(declare-fun arrayContainsKey!0 (array!34865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553757 (= res!346310 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!346311 () Bool)

(assert (=> start!50686 (=> (not res!346311) (not e!319362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50686 (= res!346311 (validMask!0 mask!3119))))

(assert (=> start!50686 e!319362))

(assert (=> start!50686 true))

(declare-fun array_inv!12512 (array!34865) Bool)

(assert (=> start!50686 (array_inv!12512 a!3118)))

(declare-fun b!553749 () Bool)

(declare-fun res!346318 () Bool)

(assert (=> b!553749 (=> (not res!346318) (not e!319362))))

(assert (=> b!553749 (= res!346318 (validKeyInArray!0 (select (arr!16738 a!3118) j!142)))))

(assert (= (and start!50686 res!346311) b!553755))

(assert (= (and b!553755 res!346314) b!553749))

(assert (= (and b!553749 res!346318) b!553753))

(assert (= (and b!553753 res!346316) b!553757))

(assert (= (and b!553757 res!346310) b!553756))

(assert (= (and b!553756 res!346313) b!553751))

(assert (= (and b!553751 res!346312) b!553750))

(assert (= (and b!553750 res!346317) b!553752))

(assert (= (and b!553752 res!346319) b!553754))

(assert (= (and b!553754 res!346315) b!553748))

(declare-fun m!530973 () Bool)

(assert (=> b!553754 m!530973))

(declare-fun m!530975 () Bool)

(assert (=> b!553754 m!530975))

(declare-fun m!530977 () Bool)

(assert (=> b!553754 m!530977))

(declare-fun m!530979 () Bool)

(assert (=> b!553754 m!530979))

(declare-fun m!530981 () Bool)

(assert (=> b!553750 m!530981))

(declare-fun m!530983 () Bool)

(assert (=> start!50686 m!530983))

(declare-fun m!530985 () Bool)

(assert (=> start!50686 m!530985))

(assert (=> b!553749 m!530975))

(assert (=> b!553749 m!530975))

(declare-fun m!530987 () Bool)

(assert (=> b!553749 m!530987))

(declare-fun m!530989 () Bool)

(assert (=> b!553757 m!530989))

(declare-fun m!530991 () Bool)

(assert (=> b!553756 m!530991))

(assert (=> b!553752 m!530975))

(declare-fun m!530993 () Bool)

(assert (=> b!553752 m!530993))

(declare-fun m!530995 () Bool)

(assert (=> b!553752 m!530995))

(declare-fun m!530997 () Bool)

(assert (=> b!553752 m!530997))

(assert (=> b!553752 m!530975))

(assert (=> b!553752 m!530995))

(declare-fun m!530999 () Bool)

(assert (=> b!553752 m!530999))

(assert (=> b!553752 m!530975))

(declare-fun m!531001 () Bool)

(assert (=> b!553752 m!531001))

(assert (=> b!553752 m!530995))

(declare-fun m!531003 () Bool)

(assert (=> b!553752 m!531003))

(declare-fun m!531005 () Bool)

(assert (=> b!553751 m!531005))

(assert (=> b!553748 m!530975))

(assert (=> b!553748 m!530975))

(declare-fun m!531007 () Bool)

(assert (=> b!553748 m!531007))

(declare-fun m!531009 () Bool)

(assert (=> b!553753 m!531009))

(check-sat (not b!553757) (not start!50686) (not b!553751) (not b!553752) (not b!553753) (not b!553748) (not b!553756) (not b!553754) (not b!553749) (not b!553750))
(check-sat)
