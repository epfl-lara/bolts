; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50728 () Bool)

(assert start!50728)

(declare-fun b!554382 () Bool)

(declare-fun res!346952 () Bool)

(declare-fun e!319646 () Bool)

(assert (=> b!554382 (=> (not res!346952) (not e!319646))))

(declare-datatypes ((array!34907 0))(
  ( (array!34908 (arr!16759 (Array (_ BitVec 32) (_ BitVec 64))) (size!17123 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34907)

(declare-datatypes ((List!10892 0))(
  ( (Nil!10889) (Cons!10888 (h!11873 (_ BitVec 64)) (t!17128 List!10892)) )
))
(declare-fun arrayNoDuplicates!0 (array!34907 (_ BitVec 32) List!10892) Bool)

(assert (=> b!554382 (= res!346952 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10889))))

(declare-fun b!554383 () Bool)

(declare-fun res!346947 () Bool)

(declare-fun e!319645 () Bool)

(assert (=> b!554383 (=> (not res!346947) (not e!319645))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554383 (= res!346947 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554384 () Bool)

(declare-fun e!319647 () Bool)

(assert (=> b!554384 (= e!319646 e!319647)))

(declare-fun res!346944 () Bool)

(assert (=> b!554384 (=> (not res!346944) (not e!319647))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!251803 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5215 0))(
  ( (MissingZero!5215 (index!23087 (_ BitVec 32))) (Found!5215 (index!23088 (_ BitVec 32))) (Intermediate!5215 (undefined!6027 Bool) (index!23089 (_ BitVec 32)) (x!52028 (_ BitVec 32))) (Undefined!5215) (MissingVacant!5215 (index!23090 (_ BitVec 32))) )
))
(declare-fun lt!251805 () SeekEntryResult!5215)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34907 (_ BitVec 32)) SeekEntryResult!5215)

(assert (=> b!554384 (= res!346944 (= lt!251805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251803 (select (store (arr!16759 a!3118) i!1132 k0!1914) j!142) (array!34908 (store (arr!16759 a!3118) i!1132 k0!1914) (size!17123 a!3118)) mask!3119)))))

(declare-fun lt!251802 () (_ BitVec 32))

(assert (=> b!554384 (= lt!251805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251802 (select (arr!16759 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554384 (= lt!251803 (toIndex!0 (select (store (arr!16759 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554384 (= lt!251802 (toIndex!0 (select (arr!16759 a!3118) j!142) mask!3119))))

(declare-fun b!554385 () Bool)

(assert (=> b!554385 (= e!319645 e!319646)))

(declare-fun res!346950 () Bool)

(assert (=> b!554385 (=> (not res!346950) (not e!319646))))

(declare-fun lt!251807 () SeekEntryResult!5215)

(assert (=> b!554385 (= res!346950 (or (= lt!251807 (MissingZero!5215 i!1132)) (= lt!251807 (MissingVacant!5215 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34907 (_ BitVec 32)) SeekEntryResult!5215)

(assert (=> b!554385 (= lt!251807 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554386 () Bool)

(declare-fun res!346951 () Bool)

(assert (=> b!554386 (=> (not res!346951) (not e!319645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554386 (= res!346951 (validKeyInArray!0 (select (arr!16759 a!3118) j!142)))))

(declare-fun b!554387 () Bool)

(declare-fun res!346949 () Bool)

(assert (=> b!554387 (=> (not res!346949) (not e!319646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34907 (_ BitVec 32)) Bool)

(assert (=> b!554387 (= res!346949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554388 () Bool)

(declare-fun res!346945 () Bool)

(assert (=> b!554388 (=> (not res!346945) (not e!319645))))

(assert (=> b!554388 (= res!346945 (and (= (size!17123 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17123 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17123 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554389 () Bool)

(assert (=> b!554389 (= e!319647 (not true))))

(declare-fun lt!251806 () SeekEntryResult!5215)

(get-info :version)

(assert (=> b!554389 (and (= lt!251806 (Found!5215 j!142)) (or (undefined!6027 lt!251805) (not ((_ is Intermediate!5215) lt!251805)) (= (select (arr!16759 a!3118) (index!23089 lt!251805)) (select (arr!16759 a!3118) j!142)) (not (= (select (arr!16759 a!3118) (index!23089 lt!251805)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251806 (MissingZero!5215 (index!23089 lt!251805)))))))

(assert (=> b!554389 (= lt!251806 (seekEntryOrOpen!0 (select (arr!16759 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554389 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17204 0))(
  ( (Unit!17205) )
))
(declare-fun lt!251804 () Unit!17204)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34907 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17204)

(assert (=> b!554389 (= lt!251804 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!346948 () Bool)

(assert (=> start!50728 (=> (not res!346948) (not e!319645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50728 (= res!346948 (validMask!0 mask!3119))))

(assert (=> start!50728 e!319645))

(assert (=> start!50728 true))

(declare-fun array_inv!12533 (array!34907) Bool)

(assert (=> start!50728 (array_inv!12533 a!3118)))

(declare-fun b!554390 () Bool)

(declare-fun res!346946 () Bool)

(assert (=> b!554390 (=> (not res!346946) (not e!319645))))

(assert (=> b!554390 (= res!346946 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50728 res!346948) b!554388))

(assert (= (and b!554388 res!346945) b!554386))

(assert (= (and b!554386 res!346951) b!554390))

(assert (= (and b!554390 res!346946) b!554383))

(assert (= (and b!554383 res!346947) b!554385))

(assert (= (and b!554385 res!346950) b!554387))

(assert (= (and b!554387 res!346949) b!554382))

(assert (= (and b!554382 res!346952) b!554384))

(assert (= (and b!554384 res!346944) b!554389))

(declare-fun m!531753 () Bool)

(assert (=> b!554383 m!531753))

(declare-fun m!531755 () Bool)

(assert (=> b!554387 m!531755))

(declare-fun m!531757 () Bool)

(assert (=> start!50728 m!531757))

(declare-fun m!531759 () Bool)

(assert (=> start!50728 m!531759))

(declare-fun m!531761 () Bool)

(assert (=> b!554389 m!531761))

(declare-fun m!531763 () Bool)

(assert (=> b!554389 m!531763))

(declare-fun m!531765 () Bool)

(assert (=> b!554389 m!531765))

(declare-fun m!531767 () Bool)

(assert (=> b!554389 m!531767))

(assert (=> b!554389 m!531763))

(declare-fun m!531769 () Bool)

(assert (=> b!554389 m!531769))

(assert (=> b!554386 m!531763))

(assert (=> b!554386 m!531763))

(declare-fun m!531771 () Bool)

(assert (=> b!554386 m!531771))

(assert (=> b!554384 m!531763))

(declare-fun m!531773 () Bool)

(assert (=> b!554384 m!531773))

(assert (=> b!554384 m!531763))

(declare-fun m!531775 () Bool)

(assert (=> b!554384 m!531775))

(assert (=> b!554384 m!531763))

(declare-fun m!531777 () Bool)

(assert (=> b!554384 m!531777))

(declare-fun m!531779 () Bool)

(assert (=> b!554384 m!531779))

(assert (=> b!554384 m!531777))

(declare-fun m!531781 () Bool)

(assert (=> b!554384 m!531781))

(assert (=> b!554384 m!531777))

(declare-fun m!531783 () Bool)

(assert (=> b!554384 m!531783))

(declare-fun m!531785 () Bool)

(assert (=> b!554382 m!531785))

(declare-fun m!531787 () Bool)

(assert (=> b!554390 m!531787))

(declare-fun m!531789 () Bool)

(assert (=> b!554385 m!531789))

(check-sat (not b!554387) (not b!554382) (not b!554384) (not start!50728) (not b!554389) (not b!554386) (not b!554383) (not b!554385) (not b!554390))
(check-sat)
