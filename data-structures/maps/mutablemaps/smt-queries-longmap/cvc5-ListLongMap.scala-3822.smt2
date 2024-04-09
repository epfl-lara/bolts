; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52436 () Bool)

(assert start!52436)

(declare-fun b!571919 () Bool)

(declare-fun res!361582 () Bool)

(declare-fun e!328968 () Bool)

(assert (=> b!571919 (=> (not res!361582) (not e!328968))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571919 (= res!361582 (validKeyInArray!0 k!1914))))

(declare-fun b!571920 () Bool)

(declare-fun res!361579 () Bool)

(assert (=> b!571920 (=> (not res!361579) (not e!328968))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35787 0))(
  ( (array!35788 (arr!17178 (Array (_ BitVec 32) (_ BitVec 64))) (size!17542 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35787)

(assert (=> b!571920 (= res!361579 (and (= (size!17542 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17542 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17542 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!361585 () Bool)

(assert (=> start!52436 (=> (not res!361585) (not e!328968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52436 (= res!361585 (validMask!0 mask!3119))))

(assert (=> start!52436 e!328968))

(assert (=> start!52436 true))

(declare-fun array_inv!12952 (array!35787) Bool)

(assert (=> start!52436 (array_inv!12952 a!3118)))

(declare-fun b!571921 () Bool)

(declare-fun e!328974 () Bool)

(declare-fun e!328973 () Bool)

(assert (=> b!571921 (= e!328974 e!328973)))

(declare-fun res!361581 () Bool)

(assert (=> b!571921 (=> (not res!361581) (not e!328973))))

(declare-fun lt!260980 () (_ BitVec 32))

(declare-fun lt!260978 () array!35787)

(declare-fun lt!260977 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5634 0))(
  ( (MissingZero!5634 (index!24763 (_ BitVec 32))) (Found!5634 (index!24764 (_ BitVec 32))) (Intermediate!5634 (undefined!6446 Bool) (index!24765 (_ BitVec 32)) (x!53666 (_ BitVec 32))) (Undefined!5634) (MissingVacant!5634 (index!24766 (_ BitVec 32))) )
))
(declare-fun lt!260979 () SeekEntryResult!5634)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35787 (_ BitVec 32)) SeekEntryResult!5634)

(assert (=> b!571921 (= res!361581 (= lt!260979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260980 lt!260977 lt!260978 mask!3119)))))

(declare-fun lt!260973 () (_ BitVec 32))

(assert (=> b!571921 (= lt!260979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260973 (select (arr!17178 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571921 (= lt!260980 (toIndex!0 lt!260977 mask!3119))))

(assert (=> b!571921 (= lt!260977 (select (store (arr!17178 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571921 (= lt!260973 (toIndex!0 (select (arr!17178 a!3118) j!142) mask!3119))))

(assert (=> b!571921 (= lt!260978 (array!35788 (store (arr!17178 a!3118) i!1132 k!1914) (size!17542 a!3118)))))

(declare-fun b!571922 () Bool)

(declare-fun e!328972 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35787 (_ BitVec 32)) SeekEntryResult!5634)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35787 (_ BitVec 32)) SeekEntryResult!5634)

(assert (=> b!571922 (= e!328972 (= (seekEntryOrOpen!0 lt!260977 lt!260978 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53666 lt!260979) (index!24765 lt!260979) (index!24765 lt!260979) lt!260977 lt!260978 mask!3119)))))

(declare-fun b!571923 () Bool)

(assert (=> b!571923 (= e!328968 e!328974)))

(declare-fun res!361577 () Bool)

(assert (=> b!571923 (=> (not res!361577) (not e!328974))))

(declare-fun lt!260975 () SeekEntryResult!5634)

(assert (=> b!571923 (= res!361577 (or (= lt!260975 (MissingZero!5634 i!1132)) (= lt!260975 (MissingVacant!5634 i!1132))))))

(assert (=> b!571923 (= lt!260975 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571924 () Bool)

(declare-fun res!361587 () Bool)

(assert (=> b!571924 (=> (not res!361587) (not e!328974))))

(declare-datatypes ((List!11311 0))(
  ( (Nil!11308) (Cons!11307 (h!12334 (_ BitVec 64)) (t!17547 List!11311)) )
))
(declare-fun arrayNoDuplicates!0 (array!35787 (_ BitVec 32) List!11311) Bool)

(assert (=> b!571924 (= res!361587 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11308))))

(declare-fun b!571925 () Bool)

(declare-fun e!328970 () Bool)

(declare-fun e!328971 () Bool)

(assert (=> b!571925 (= e!328970 e!328971)))

(declare-fun res!361578 () Bool)

(assert (=> b!571925 (=> res!361578 e!328971)))

(assert (=> b!571925 (= res!361578 (or (undefined!6446 lt!260979) (not (is-Intermediate!5634 lt!260979))))))

(declare-fun b!571926 () Bool)

(declare-fun e!328975 () Bool)

(assert (=> b!571926 (= e!328975 e!328972)))

(declare-fun res!361583 () Bool)

(assert (=> b!571926 (=> (not res!361583) (not e!328972))))

(declare-fun lt!260974 () SeekEntryResult!5634)

(assert (=> b!571926 (= res!361583 (= lt!260974 (seekKeyOrZeroReturnVacant!0 (x!53666 lt!260979) (index!24765 lt!260979) (index!24765 lt!260979) (select (arr!17178 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571927 () Bool)

(declare-fun res!361584 () Bool)

(assert (=> b!571927 (=> (not res!361584) (not e!328968))))

(assert (=> b!571927 (= res!361584 (validKeyInArray!0 (select (arr!17178 a!3118) j!142)))))

(declare-fun b!571928 () Bool)

(declare-fun res!361588 () Bool)

(assert (=> b!571928 (=> (not res!361588) (not e!328968))))

(declare-fun arrayContainsKey!0 (array!35787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571928 (= res!361588 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571929 () Bool)

(assert (=> b!571929 (= e!328971 e!328975)))

(declare-fun res!361580 () Bool)

(assert (=> b!571929 (=> res!361580 e!328975)))

(declare-fun lt!260976 () (_ BitVec 64))

(assert (=> b!571929 (= res!361580 (or (= lt!260976 (select (arr!17178 a!3118) j!142)) (= lt!260976 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571929 (= lt!260976 (select (arr!17178 a!3118) (index!24765 lt!260979)))))

(declare-fun b!571930 () Bool)

(assert (=> b!571930 (= e!328973 (not true))))

(assert (=> b!571930 e!328970))

(declare-fun res!361586 () Bool)

(assert (=> b!571930 (=> (not res!361586) (not e!328970))))

(assert (=> b!571930 (= res!361586 (= lt!260974 (Found!5634 j!142)))))

(assert (=> b!571930 (= lt!260974 (seekEntryOrOpen!0 (select (arr!17178 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35787 (_ BitVec 32)) Bool)

(assert (=> b!571930 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17970 0))(
  ( (Unit!17971) )
))
(declare-fun lt!260981 () Unit!17970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17970)

(assert (=> b!571930 (= lt!260981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571931 () Bool)

(declare-fun res!361589 () Bool)

(assert (=> b!571931 (=> (not res!361589) (not e!328974))))

(assert (=> b!571931 (= res!361589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52436 res!361585) b!571920))

(assert (= (and b!571920 res!361579) b!571927))

(assert (= (and b!571927 res!361584) b!571919))

(assert (= (and b!571919 res!361582) b!571928))

(assert (= (and b!571928 res!361588) b!571923))

(assert (= (and b!571923 res!361577) b!571931))

(assert (= (and b!571931 res!361589) b!571924))

(assert (= (and b!571924 res!361587) b!571921))

(assert (= (and b!571921 res!361581) b!571930))

(assert (= (and b!571930 res!361586) b!571925))

(assert (= (and b!571925 (not res!361578)) b!571929))

(assert (= (and b!571929 (not res!361580)) b!571926))

(assert (= (and b!571926 res!361583) b!571922))

(declare-fun m!550891 () Bool)

(assert (=> b!571926 m!550891))

(assert (=> b!571926 m!550891))

(declare-fun m!550893 () Bool)

(assert (=> b!571926 m!550893))

(assert (=> b!571929 m!550891))

(declare-fun m!550895 () Bool)

(assert (=> b!571929 m!550895))

(declare-fun m!550897 () Bool)

(assert (=> b!571922 m!550897))

(declare-fun m!550899 () Bool)

(assert (=> b!571922 m!550899))

(declare-fun m!550901 () Bool)

(assert (=> b!571919 m!550901))

(declare-fun m!550903 () Bool)

(assert (=> b!571924 m!550903))

(declare-fun m!550905 () Bool)

(assert (=> b!571923 m!550905))

(declare-fun m!550907 () Bool)

(assert (=> start!52436 m!550907))

(declare-fun m!550909 () Bool)

(assert (=> start!52436 m!550909))

(declare-fun m!550911 () Bool)

(assert (=> b!571931 m!550911))

(declare-fun m!550913 () Bool)

(assert (=> b!571928 m!550913))

(assert (=> b!571921 m!550891))

(declare-fun m!550915 () Bool)

(assert (=> b!571921 m!550915))

(declare-fun m!550917 () Bool)

(assert (=> b!571921 m!550917))

(declare-fun m!550919 () Bool)

(assert (=> b!571921 m!550919))

(declare-fun m!550921 () Bool)

(assert (=> b!571921 m!550921))

(declare-fun m!550923 () Bool)

(assert (=> b!571921 m!550923))

(assert (=> b!571921 m!550891))

(assert (=> b!571921 m!550891))

(declare-fun m!550925 () Bool)

(assert (=> b!571921 m!550925))

(assert (=> b!571927 m!550891))

(assert (=> b!571927 m!550891))

(declare-fun m!550927 () Bool)

(assert (=> b!571927 m!550927))

(assert (=> b!571930 m!550891))

(assert (=> b!571930 m!550891))

(declare-fun m!550929 () Bool)

(assert (=> b!571930 m!550929))

(declare-fun m!550931 () Bool)

(assert (=> b!571930 m!550931))

(declare-fun m!550933 () Bool)

(assert (=> b!571930 m!550933))

(push 1)

