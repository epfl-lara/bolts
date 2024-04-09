; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67018 () Bool)

(assert start!67018)

(declare-fun b!772889 () Bool)

(declare-fun res!522778 () Bool)

(declare-fun e!430287 () Bool)

(assert (=> b!772889 (=> (not res!522778) (not e!430287))))

(declare-datatypes ((array!42397 0))(
  ( (array!42398 (arr!20292 (Array (_ BitVec 32) (_ BitVec 64))) (size!20713 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42397)

(declare-datatypes ((List!14347 0))(
  ( (Nil!14344) (Cons!14343 (h!15448 (_ BitVec 64)) (t!20670 List!14347)) )
))
(declare-fun arrayNoDuplicates!0 (array!42397 (_ BitVec 32) List!14347) Bool)

(assert (=> b!772889 (= res!522778 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14344))))

(declare-fun b!772891 () Bool)

(declare-datatypes ((Unit!26632 0))(
  ( (Unit!26633) )
))
(declare-fun e!430290 () Unit!26632)

(declare-fun Unit!26634 () Unit!26632)

(assert (=> b!772891 (= e!430290 Unit!26634)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7899 0))(
  ( (MissingZero!7899 (index!33963 (_ BitVec 32))) (Found!7899 (index!33964 (_ BitVec 32))) (Intermediate!7899 (undefined!8711 Bool) (index!33965 (_ BitVec 32)) (x!64935 (_ BitVec 32))) (Undefined!7899) (MissingVacant!7899 (index!33966 (_ BitVec 32))) )
))
(declare-fun lt!344146 () SeekEntryResult!7899)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42397 (_ BitVec 32)) SeekEntryResult!7899)

(assert (=> b!772891 (= lt!344146 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20292 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344148 () (_ BitVec 32))

(assert (=> b!772891 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344148 resIntermediateIndex!5 (select (arr!20292 a!3186) j!159) a!3186 mask!3328) (Found!7899 j!159))))

(declare-fun b!772892 () Bool)

(declare-fun e!430291 () Bool)

(declare-fun e!430289 () Bool)

(assert (=> b!772892 (= e!430291 (not e!430289))))

(declare-fun res!522783 () Bool)

(assert (=> b!772892 (=> res!522783 e!430289)))

(declare-fun lt!344153 () SeekEntryResult!7899)

(assert (=> b!772892 (= res!522783 (or (not (is-Intermediate!7899 lt!344153)) (bvsge x!1131 (x!64935 lt!344153))))))

(declare-fun e!430285 () Bool)

(assert (=> b!772892 e!430285))

(declare-fun res!522785 () Bool)

(assert (=> b!772892 (=> (not res!522785) (not e!430285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42397 (_ BitVec 32)) Bool)

(assert (=> b!772892 (= res!522785 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344154 () Unit!26632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26632)

(assert (=> b!772892 (= lt!344154 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!430288 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!772893 () Bool)

(declare-fun lt!344152 () SeekEntryResult!7899)

(assert (=> b!772893 (= e!430288 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20292 a!3186) j!159) a!3186 mask!3328) lt!344152))))

(declare-fun b!772894 () Bool)

(declare-fun res!522789 () Bool)

(declare-fun e!430284 () Bool)

(assert (=> b!772894 (=> (not res!522789) (not e!430284))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772894 (= res!522789 (and (= (size!20713 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20713 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20713 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!430286 () Bool)

(declare-fun b!772895 () Bool)

(assert (=> b!772895 (= e!430286 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20292 a!3186) j!159) a!3186 mask!3328) (Found!7899 j!159)))))

(declare-fun b!772896 () Bool)

(declare-fun res!522792 () Bool)

(assert (=> b!772896 (=> (not res!522792) (not e!430284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772896 (= res!522792 (validKeyInArray!0 (select (arr!20292 a!3186) j!159)))))

(declare-fun b!772897 () Bool)

(declare-fun res!522787 () Bool)

(assert (=> b!772897 (=> (not res!522787) (not e!430287))))

(assert (=> b!772897 (= res!522787 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20713 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20713 a!3186))))))

(declare-fun b!772898 () Bool)

(assert (=> b!772898 (= e!430289 true)))

(declare-fun lt!344150 () Unit!26632)

(assert (=> b!772898 (= lt!344150 e!430290)))

(declare-fun c!85455 () Bool)

(assert (=> b!772898 (= c!85455 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772898 (= lt!344148 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772899 () Bool)

(declare-fun lt!344147 () SeekEntryResult!7899)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42397 (_ BitVec 32)) SeekEntryResult!7899)

(assert (=> b!772899 (= e!430286 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20292 a!3186) j!159) a!3186 mask!3328) lt!344147))))

(declare-fun b!772900 () Bool)

(declare-fun res!522779 () Bool)

(assert (=> b!772900 (=> (not res!522779) (not e!430284))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!772900 (= res!522779 (validKeyInArray!0 k!2102))))

(declare-fun res!522784 () Bool)

(assert (=> start!67018 (=> (not res!522784) (not e!430284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67018 (= res!522784 (validMask!0 mask!3328))))

(assert (=> start!67018 e!430284))

(assert (=> start!67018 true))

(declare-fun array_inv!16066 (array!42397) Bool)

(assert (=> start!67018 (array_inv!16066 a!3186)))

(declare-fun b!772890 () Bool)

(declare-fun res!522791 () Bool)

(declare-fun e!430282 () Bool)

(assert (=> b!772890 (=> (not res!522791) (not e!430282))))

(assert (=> b!772890 (= res!522791 e!430286)))

(declare-fun c!85454 () Bool)

(assert (=> b!772890 (= c!85454 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!772901 () Bool)

(assert (=> b!772901 (= e!430284 e!430287)))

(declare-fun res!522782 () Bool)

(assert (=> b!772901 (=> (not res!522782) (not e!430287))))

(declare-fun lt!344149 () SeekEntryResult!7899)

(assert (=> b!772901 (= res!522782 (or (= lt!344149 (MissingZero!7899 i!1173)) (= lt!344149 (MissingVacant!7899 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42397 (_ BitVec 32)) SeekEntryResult!7899)

(assert (=> b!772901 (= lt!344149 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!772902 () Bool)

(assert (=> b!772902 (= e!430287 e!430282)))

(declare-fun res!522781 () Bool)

(assert (=> b!772902 (=> (not res!522781) (not e!430282))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772902 (= res!522781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20292 a!3186) j!159) mask!3328) (select (arr!20292 a!3186) j!159) a!3186 mask!3328) lt!344147))))

(assert (=> b!772902 (= lt!344147 (Intermediate!7899 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772903 () Bool)

(declare-fun Unit!26635 () Unit!26632)

(assert (=> b!772903 (= e!430290 Unit!26635)))

(assert (=> b!772903 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344148 (select (arr!20292 a!3186) j!159) a!3186 mask!3328) lt!344147)))

(declare-fun b!772904 () Bool)

(declare-fun res!522788 () Bool)

(assert (=> b!772904 (=> (not res!522788) (not e!430282))))

(assert (=> b!772904 (= res!522788 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20292 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772905 () Bool)

(assert (=> b!772905 (= e!430285 e!430288)))

(declare-fun res!522790 () Bool)

(assert (=> b!772905 (=> (not res!522790) (not e!430288))))

(assert (=> b!772905 (= res!522790 (= (seekEntryOrOpen!0 (select (arr!20292 a!3186) j!159) a!3186 mask!3328) lt!344152))))

(assert (=> b!772905 (= lt!344152 (Found!7899 j!159))))

(declare-fun b!772906 () Bool)

(assert (=> b!772906 (= e!430282 e!430291)))

(declare-fun res!522786 () Bool)

(assert (=> b!772906 (=> (not res!522786) (not e!430291))))

(declare-fun lt!344145 () SeekEntryResult!7899)

(assert (=> b!772906 (= res!522786 (= lt!344145 lt!344153))))

(declare-fun lt!344155 () array!42397)

(declare-fun lt!344151 () (_ BitVec 64))

(assert (=> b!772906 (= lt!344153 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344151 lt!344155 mask!3328))))

(assert (=> b!772906 (= lt!344145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344151 mask!3328) lt!344151 lt!344155 mask!3328))))

(assert (=> b!772906 (= lt!344151 (select (store (arr!20292 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!772906 (= lt!344155 (array!42398 (store (arr!20292 a!3186) i!1173 k!2102) (size!20713 a!3186)))))

(declare-fun b!772907 () Bool)

(declare-fun res!522780 () Bool)

(assert (=> b!772907 (=> (not res!522780) (not e!430284))))

(declare-fun arrayContainsKey!0 (array!42397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772907 (= res!522780 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772908 () Bool)

(declare-fun res!522793 () Bool)

(assert (=> b!772908 (=> (not res!522793) (not e!430287))))

(assert (=> b!772908 (= res!522793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67018 res!522784) b!772894))

(assert (= (and b!772894 res!522789) b!772896))

(assert (= (and b!772896 res!522792) b!772900))

(assert (= (and b!772900 res!522779) b!772907))

(assert (= (and b!772907 res!522780) b!772901))

(assert (= (and b!772901 res!522782) b!772908))

(assert (= (and b!772908 res!522793) b!772889))

(assert (= (and b!772889 res!522778) b!772897))

(assert (= (and b!772897 res!522787) b!772902))

(assert (= (and b!772902 res!522781) b!772904))

(assert (= (and b!772904 res!522788) b!772890))

(assert (= (and b!772890 c!85454) b!772899))

(assert (= (and b!772890 (not c!85454)) b!772895))

(assert (= (and b!772890 res!522791) b!772906))

(assert (= (and b!772906 res!522786) b!772892))

(assert (= (and b!772892 res!522785) b!772905))

(assert (= (and b!772905 res!522790) b!772893))

(assert (= (and b!772892 (not res!522783)) b!772898))

(assert (= (and b!772898 c!85455) b!772903))

(assert (= (and b!772898 (not c!85455)) b!772891))

(declare-fun m!717751 () Bool)

(assert (=> b!772895 m!717751))

(assert (=> b!772895 m!717751))

(declare-fun m!717753 () Bool)

(assert (=> b!772895 m!717753))

(declare-fun m!717755 () Bool)

(assert (=> b!772907 m!717755))

(declare-fun m!717757 () Bool)

(assert (=> b!772901 m!717757))

(assert (=> b!772891 m!717751))

(assert (=> b!772891 m!717751))

(assert (=> b!772891 m!717753))

(assert (=> b!772891 m!717751))

(declare-fun m!717759 () Bool)

(assert (=> b!772891 m!717759))

(assert (=> b!772899 m!717751))

(assert (=> b!772899 m!717751))

(declare-fun m!717761 () Bool)

(assert (=> b!772899 m!717761))

(assert (=> b!772905 m!717751))

(assert (=> b!772905 m!717751))

(declare-fun m!717763 () Bool)

(assert (=> b!772905 m!717763))

(declare-fun m!717765 () Bool)

(assert (=> b!772908 m!717765))

(declare-fun m!717767 () Bool)

(assert (=> b!772898 m!717767))

(declare-fun m!717769 () Bool)

(assert (=> b!772906 m!717769))

(declare-fun m!717771 () Bool)

(assert (=> b!772906 m!717771))

(declare-fun m!717773 () Bool)

(assert (=> b!772906 m!717773))

(declare-fun m!717775 () Bool)

(assert (=> b!772906 m!717775))

(assert (=> b!772906 m!717769))

(declare-fun m!717777 () Bool)

(assert (=> b!772906 m!717777))

(assert (=> b!772896 m!717751))

(assert (=> b!772896 m!717751))

(declare-fun m!717779 () Bool)

(assert (=> b!772896 m!717779))

(assert (=> b!772893 m!717751))

(assert (=> b!772893 m!717751))

(declare-fun m!717781 () Bool)

(assert (=> b!772893 m!717781))

(declare-fun m!717783 () Bool)

(assert (=> b!772900 m!717783))

(assert (=> b!772903 m!717751))

(assert (=> b!772903 m!717751))

(declare-fun m!717785 () Bool)

(assert (=> b!772903 m!717785))

(declare-fun m!717787 () Bool)

(assert (=> b!772904 m!717787))

(assert (=> b!772902 m!717751))

(assert (=> b!772902 m!717751))

(declare-fun m!717789 () Bool)

(assert (=> b!772902 m!717789))

(assert (=> b!772902 m!717789))

(assert (=> b!772902 m!717751))

(declare-fun m!717791 () Bool)

(assert (=> b!772902 m!717791))

(declare-fun m!717793 () Bool)

(assert (=> b!772892 m!717793))

(declare-fun m!717795 () Bool)

(assert (=> b!772892 m!717795))

(declare-fun m!717797 () Bool)

(assert (=> b!772889 m!717797))

(declare-fun m!717799 () Bool)

(assert (=> start!67018 m!717799))

(declare-fun m!717801 () Bool)

(assert (=> start!67018 m!717801))

(push 1)

