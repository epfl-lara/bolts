; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50768 () Bool)

(assert start!50768)

(declare-fun b!554922 () Bool)

(declare-fun e!319888 () Bool)

(declare-fun e!319886 () Bool)

(assert (=> b!554922 (= e!319888 e!319886)))

(declare-fun res!347490 () Bool)

(assert (=> b!554922 (=> (not res!347490) (not e!319886))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!252166 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5235 0))(
  ( (MissingZero!5235 (index!23167 (_ BitVec 32))) (Found!5235 (index!23168 (_ BitVec 32))) (Intermediate!5235 (undefined!6047 Bool) (index!23169 (_ BitVec 32)) (x!52104 (_ BitVec 32))) (Undefined!5235) (MissingVacant!5235 (index!23170 (_ BitVec 32))) )
))
(declare-fun lt!252163 () SeekEntryResult!5235)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34947 0))(
  ( (array!34948 (arr!16779 (Array (_ BitVec 32) (_ BitVec 64))) (size!17143 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34947)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34947 (_ BitVec 32)) SeekEntryResult!5235)

(assert (=> b!554922 (= res!347490 (= lt!252163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252166 (select (store (arr!16779 a!3118) i!1132 k!1914) j!142) (array!34948 (store (arr!16779 a!3118) i!1132 k!1914) (size!17143 a!3118)) mask!3119)))))

(declare-fun lt!252165 () (_ BitVec 32))

(assert (=> b!554922 (= lt!252163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252165 (select (arr!16779 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554922 (= lt!252166 (toIndex!0 (select (store (arr!16779 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554922 (= lt!252165 (toIndex!0 (select (arr!16779 a!3118) j!142) mask!3119))))

(declare-fun b!554923 () Bool)

(declare-fun res!347488 () Bool)

(declare-fun e!319885 () Bool)

(assert (=> b!554923 (=> (not res!347488) (not e!319885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554923 (= res!347488 (validKeyInArray!0 (select (arr!16779 a!3118) j!142)))))

(declare-fun b!554924 () Bool)

(assert (=> b!554924 (= e!319886 (not true))))

(declare-fun lt!252164 () SeekEntryResult!5235)

(assert (=> b!554924 (and (= lt!252164 (Found!5235 j!142)) (or (undefined!6047 lt!252163) (not (is-Intermediate!5235 lt!252163)) (= (select (arr!16779 a!3118) (index!23169 lt!252163)) (select (arr!16779 a!3118) j!142)) (not (= (select (arr!16779 a!3118) (index!23169 lt!252163)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252164 (MissingZero!5235 (index!23169 lt!252163)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34947 (_ BitVec 32)) SeekEntryResult!5235)

(assert (=> b!554924 (= lt!252164 (seekEntryOrOpen!0 (select (arr!16779 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34947 (_ BitVec 32)) Bool)

(assert (=> b!554924 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17244 0))(
  ( (Unit!17245) )
))
(declare-fun lt!252162 () Unit!17244)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17244)

(assert (=> b!554924 (= lt!252162 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554925 () Bool)

(declare-fun res!347487 () Bool)

(assert (=> b!554925 (=> (not res!347487) (not e!319885))))

(assert (=> b!554925 (= res!347487 (and (= (size!17143 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17143 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17143 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!347489 () Bool)

(assert (=> start!50768 (=> (not res!347489) (not e!319885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50768 (= res!347489 (validMask!0 mask!3119))))

(assert (=> start!50768 e!319885))

(assert (=> start!50768 true))

(declare-fun array_inv!12553 (array!34947) Bool)

(assert (=> start!50768 (array_inv!12553 a!3118)))

(declare-fun b!554926 () Bool)

(declare-fun res!347485 () Bool)

(assert (=> b!554926 (=> (not res!347485) (not e!319885))))

(assert (=> b!554926 (= res!347485 (validKeyInArray!0 k!1914))))

(declare-fun b!554927 () Bool)

(assert (=> b!554927 (= e!319885 e!319888)))

(declare-fun res!347491 () Bool)

(assert (=> b!554927 (=> (not res!347491) (not e!319888))))

(declare-fun lt!252167 () SeekEntryResult!5235)

(assert (=> b!554927 (= res!347491 (or (= lt!252167 (MissingZero!5235 i!1132)) (= lt!252167 (MissingVacant!5235 i!1132))))))

(assert (=> b!554927 (= lt!252167 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554928 () Bool)

(declare-fun res!347484 () Bool)

(assert (=> b!554928 (=> (not res!347484) (not e!319888))))

(declare-datatypes ((List!10912 0))(
  ( (Nil!10909) (Cons!10908 (h!11893 (_ BitVec 64)) (t!17148 List!10912)) )
))
(declare-fun arrayNoDuplicates!0 (array!34947 (_ BitVec 32) List!10912) Bool)

(assert (=> b!554928 (= res!347484 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10909))))

(declare-fun b!554929 () Bool)

(declare-fun res!347492 () Bool)

(assert (=> b!554929 (=> (not res!347492) (not e!319885))))

(declare-fun arrayContainsKey!0 (array!34947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554929 (= res!347492 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554930 () Bool)

(declare-fun res!347486 () Bool)

(assert (=> b!554930 (=> (not res!347486) (not e!319888))))

(assert (=> b!554930 (= res!347486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50768 res!347489) b!554925))

(assert (= (and b!554925 res!347487) b!554923))

(assert (= (and b!554923 res!347488) b!554926))

(assert (= (and b!554926 res!347485) b!554929))

(assert (= (and b!554929 res!347492) b!554927))

(assert (= (and b!554927 res!347491) b!554930))

(assert (= (and b!554930 res!347486) b!554928))

(assert (= (and b!554928 res!347484) b!554922))

(assert (= (and b!554922 res!347490) b!554924))

(declare-fun m!532513 () Bool)

(assert (=> b!554928 m!532513))

(declare-fun m!532515 () Bool)

(assert (=> b!554922 m!532515))

(declare-fun m!532517 () Bool)

(assert (=> b!554922 m!532517))

(assert (=> b!554922 m!532515))

(declare-fun m!532519 () Bool)

(assert (=> b!554922 m!532519))

(assert (=> b!554922 m!532515))

(declare-fun m!532521 () Bool)

(assert (=> b!554922 m!532521))

(declare-fun m!532523 () Bool)

(assert (=> b!554922 m!532523))

(assert (=> b!554922 m!532521))

(declare-fun m!532525 () Bool)

(assert (=> b!554922 m!532525))

(assert (=> b!554922 m!532521))

(declare-fun m!532527 () Bool)

(assert (=> b!554922 m!532527))

(declare-fun m!532529 () Bool)

(assert (=> start!50768 m!532529))

(declare-fun m!532531 () Bool)

(assert (=> start!50768 m!532531))

(declare-fun m!532533 () Bool)

(assert (=> b!554930 m!532533))

(declare-fun m!532535 () Bool)

(assert (=> b!554927 m!532535))

(assert (=> b!554923 m!532515))

(assert (=> b!554923 m!532515))

(declare-fun m!532537 () Bool)

(assert (=> b!554923 m!532537))

(declare-fun m!532539 () Bool)

(assert (=> b!554926 m!532539))

(declare-fun m!532541 () Bool)

(assert (=> b!554929 m!532541))

(assert (=> b!554924 m!532515))

(declare-fun m!532543 () Bool)

(assert (=> b!554924 m!532543))

(declare-fun m!532545 () Bool)

(assert (=> b!554924 m!532545))

(declare-fun m!532547 () Bool)

(assert (=> b!554924 m!532547))

(assert (=> b!554924 m!532515))

(declare-fun m!532549 () Bool)

(assert (=> b!554924 m!532549))

(push 1)

