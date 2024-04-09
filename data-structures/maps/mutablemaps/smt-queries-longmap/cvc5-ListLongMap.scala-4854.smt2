; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66838 () Bool)

(assert start!66838)

(declare-fun b!770885 () Bool)

(declare-fun res!521653 () Bool)

(declare-fun e!429198 () Bool)

(assert (=> b!770885 (=> (not res!521653) (not e!429198))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42355 0))(
  ( (array!42356 (arr!20274 (Array (_ BitVec 32) (_ BitVec 64))) (size!20695 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42355)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770885 (= res!521653 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20695 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20695 a!3186))))))

(declare-fun b!770886 () Bool)

(declare-fun e!429194 () Bool)

(declare-fun e!429193 () Bool)

(assert (=> b!770886 (= e!429194 e!429193)))

(declare-fun res!521645 () Bool)

(assert (=> b!770886 (=> (not res!521645) (not e!429193))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7881 0))(
  ( (MissingZero!7881 (index!33891 (_ BitVec 32))) (Found!7881 (index!33892 (_ BitVec 32))) (Intermediate!7881 (undefined!8693 Bool) (index!33893 (_ BitVec 32)) (x!64845 (_ BitVec 32))) (Undefined!7881) (MissingVacant!7881 (index!33894 (_ BitVec 32))) )
))
(declare-fun lt!343188 () SeekEntryResult!7881)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42355 (_ BitVec 32)) SeekEntryResult!7881)

(assert (=> b!770886 (= res!521645 (= (seekEntryOrOpen!0 (select (arr!20274 a!3186) j!159) a!3186 mask!3328) lt!343188))))

(assert (=> b!770886 (= lt!343188 (Found!7881 j!159))))

(declare-fun b!770887 () Bool)

(declare-fun res!521650 () Bool)

(declare-fun e!429191 () Bool)

(assert (=> b!770887 (=> (not res!521650) (not e!429191))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770887 (= res!521650 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20274 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770888 () Bool)

(declare-fun e!429192 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42355 (_ BitVec 32)) SeekEntryResult!7881)

(assert (=> b!770888 (= e!429192 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20274 a!3186) j!159) a!3186 mask!3328) (Found!7881 j!159)))))

(declare-fun b!770889 () Bool)

(assert (=> b!770889 (= e!429193 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20274 a!3186) j!159) a!3186 mask!3328) lt!343188))))

(declare-fun b!770890 () Bool)

(declare-datatypes ((Unit!26560 0))(
  ( (Unit!26561) )
))
(declare-fun e!429199 () Unit!26560)

(declare-fun Unit!26562 () Unit!26560)

(assert (=> b!770890 (= e!429199 Unit!26562)))

(declare-fun lt!343186 () (_ BitVec 32))

(declare-fun lt!343182 () SeekEntryResult!7881)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42355 (_ BitVec 32)) SeekEntryResult!7881)

(assert (=> b!770890 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343186 (select (arr!20274 a!3186) j!159) a!3186 mask!3328) lt!343182)))

(declare-fun b!770891 () Bool)

(declare-fun res!521657 () Bool)

(declare-fun e!429195 () Bool)

(assert (=> b!770891 (=> (not res!521657) (not e!429195))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770891 (= res!521657 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!521649 () Bool)

(assert (=> start!66838 (=> (not res!521649) (not e!429195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66838 (= res!521649 (validMask!0 mask!3328))))

(assert (=> start!66838 e!429195))

(assert (=> start!66838 true))

(declare-fun array_inv!16048 (array!42355) Bool)

(assert (=> start!66838 (array_inv!16048 a!3186)))

(declare-fun b!770892 () Bool)

(declare-fun e!429196 () Bool)

(assert (=> b!770892 (= e!429191 e!429196)))

(declare-fun res!521646 () Bool)

(assert (=> b!770892 (=> (not res!521646) (not e!429196))))

(declare-fun lt!343179 () SeekEntryResult!7881)

(declare-fun lt!343180 () SeekEntryResult!7881)

(assert (=> b!770892 (= res!521646 (= lt!343179 lt!343180))))

(declare-fun lt!343189 () (_ BitVec 64))

(declare-fun lt!343185 () array!42355)

(assert (=> b!770892 (= lt!343180 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343189 lt!343185 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770892 (= lt!343179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343189 mask!3328) lt!343189 lt!343185 mask!3328))))

(assert (=> b!770892 (= lt!343189 (select (store (arr!20274 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770892 (= lt!343185 (array!42356 (store (arr!20274 a!3186) i!1173 k!2102) (size!20695 a!3186)))))

(declare-fun b!770893 () Bool)

(declare-fun res!521654 () Bool)

(assert (=> b!770893 (=> (not res!521654) (not e!429198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42355 (_ BitVec 32)) Bool)

(assert (=> b!770893 (= res!521654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770894 () Bool)

(declare-fun e!429190 () Bool)

(assert (=> b!770894 (= e!429190 true)))

(declare-fun lt!343181 () Unit!26560)

(assert (=> b!770894 (= lt!343181 e!429199)))

(declare-fun c!85016 () Bool)

(assert (=> b!770894 (= c!85016 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770894 (= lt!343186 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770895 () Bool)

(declare-fun res!521648 () Bool)

(assert (=> b!770895 (=> (not res!521648) (not e!429195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770895 (= res!521648 (validKeyInArray!0 (select (arr!20274 a!3186) j!159)))))

(declare-fun b!770896 () Bool)

(declare-fun res!521644 () Bool)

(assert (=> b!770896 (=> (not res!521644) (not e!429195))))

(assert (=> b!770896 (= res!521644 (validKeyInArray!0 k!2102))))

(declare-fun b!770897 () Bool)

(assert (=> b!770897 (= e!429198 e!429191)))

(declare-fun res!521656 () Bool)

(assert (=> b!770897 (=> (not res!521656) (not e!429191))))

(assert (=> b!770897 (= res!521656 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20274 a!3186) j!159) mask!3328) (select (arr!20274 a!3186) j!159) a!3186 mask!3328) lt!343182))))

(assert (=> b!770897 (= lt!343182 (Intermediate!7881 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770898 () Bool)

(declare-fun res!521655 () Bool)

(assert (=> b!770898 (=> (not res!521655) (not e!429195))))

(assert (=> b!770898 (= res!521655 (and (= (size!20695 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20695 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20695 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770899 () Bool)

(declare-fun Unit!26563 () Unit!26560)

(assert (=> b!770899 (= e!429199 Unit!26563)))

(declare-fun lt!343187 () SeekEntryResult!7881)

(assert (=> b!770899 (= lt!343187 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20274 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770899 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343186 resIntermediateIndex!5 (select (arr!20274 a!3186) j!159) a!3186 mask!3328) (Found!7881 j!159))))

(declare-fun b!770900 () Bool)

(assert (=> b!770900 (= e!429196 (not e!429190))))

(declare-fun res!521651 () Bool)

(assert (=> b!770900 (=> res!521651 e!429190)))

(assert (=> b!770900 (= res!521651 (or (not (is-Intermediate!7881 lt!343180)) (bvsge x!1131 (x!64845 lt!343180))))))

(assert (=> b!770900 e!429194))

(declare-fun res!521658 () Bool)

(assert (=> b!770900 (=> (not res!521658) (not e!429194))))

(assert (=> b!770900 (= res!521658 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343184 () Unit!26560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26560)

(assert (=> b!770900 (= lt!343184 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770901 () Bool)

(assert (=> b!770901 (= e!429192 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20274 a!3186) j!159) a!3186 mask!3328) lt!343182))))

(declare-fun b!770902 () Bool)

(declare-fun res!521647 () Bool)

(assert (=> b!770902 (=> (not res!521647) (not e!429198))))

(declare-datatypes ((List!14329 0))(
  ( (Nil!14326) (Cons!14325 (h!15424 (_ BitVec 64)) (t!20652 List!14329)) )
))
(declare-fun arrayNoDuplicates!0 (array!42355 (_ BitVec 32) List!14329) Bool)

(assert (=> b!770902 (= res!521647 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14326))))

(declare-fun b!770903 () Bool)

(declare-fun res!521652 () Bool)

(assert (=> b!770903 (=> (not res!521652) (not e!429191))))

(assert (=> b!770903 (= res!521652 e!429192)))

(declare-fun c!85017 () Bool)

(assert (=> b!770903 (= c!85017 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770904 () Bool)

(assert (=> b!770904 (= e!429195 e!429198)))

(declare-fun res!521659 () Bool)

(assert (=> b!770904 (=> (not res!521659) (not e!429198))))

(declare-fun lt!343183 () SeekEntryResult!7881)

(assert (=> b!770904 (= res!521659 (or (= lt!343183 (MissingZero!7881 i!1173)) (= lt!343183 (MissingVacant!7881 i!1173))))))

(assert (=> b!770904 (= lt!343183 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!66838 res!521649) b!770898))

(assert (= (and b!770898 res!521655) b!770895))

(assert (= (and b!770895 res!521648) b!770896))

(assert (= (and b!770896 res!521644) b!770891))

(assert (= (and b!770891 res!521657) b!770904))

(assert (= (and b!770904 res!521659) b!770893))

(assert (= (and b!770893 res!521654) b!770902))

(assert (= (and b!770902 res!521647) b!770885))

(assert (= (and b!770885 res!521653) b!770897))

(assert (= (and b!770897 res!521656) b!770887))

(assert (= (and b!770887 res!521650) b!770903))

(assert (= (and b!770903 c!85017) b!770901))

(assert (= (and b!770903 (not c!85017)) b!770888))

(assert (= (and b!770903 res!521652) b!770892))

(assert (= (and b!770892 res!521646) b!770900))

(assert (= (and b!770900 res!521658) b!770886))

(assert (= (and b!770886 res!521645) b!770889))

(assert (= (and b!770900 (not res!521651)) b!770894))

(assert (= (and b!770894 c!85016) b!770890))

(assert (= (and b!770894 (not c!85016)) b!770899))

(declare-fun m!716167 () Bool)

(assert (=> b!770897 m!716167))

(assert (=> b!770897 m!716167))

(declare-fun m!716169 () Bool)

(assert (=> b!770897 m!716169))

(assert (=> b!770897 m!716169))

(assert (=> b!770897 m!716167))

(declare-fun m!716171 () Bool)

(assert (=> b!770897 m!716171))

(declare-fun m!716173 () Bool)

(assert (=> b!770891 m!716173))

(declare-fun m!716175 () Bool)

(assert (=> start!66838 m!716175))

(declare-fun m!716177 () Bool)

(assert (=> start!66838 m!716177))

(assert (=> b!770889 m!716167))

(assert (=> b!770889 m!716167))

(declare-fun m!716179 () Bool)

(assert (=> b!770889 m!716179))

(declare-fun m!716181 () Bool)

(assert (=> b!770900 m!716181))

(declare-fun m!716183 () Bool)

(assert (=> b!770900 m!716183))

(assert (=> b!770886 m!716167))

(assert (=> b!770886 m!716167))

(declare-fun m!716185 () Bool)

(assert (=> b!770886 m!716185))

(declare-fun m!716187 () Bool)

(assert (=> b!770902 m!716187))

(declare-fun m!716189 () Bool)

(assert (=> b!770894 m!716189))

(assert (=> b!770890 m!716167))

(assert (=> b!770890 m!716167))

(declare-fun m!716191 () Bool)

(assert (=> b!770890 m!716191))

(assert (=> b!770899 m!716167))

(assert (=> b!770899 m!716167))

(declare-fun m!716193 () Bool)

(assert (=> b!770899 m!716193))

(assert (=> b!770899 m!716167))

(declare-fun m!716195 () Bool)

(assert (=> b!770899 m!716195))

(declare-fun m!716197 () Bool)

(assert (=> b!770892 m!716197))

(assert (=> b!770892 m!716197))

(declare-fun m!716199 () Bool)

(assert (=> b!770892 m!716199))

(declare-fun m!716201 () Bool)

(assert (=> b!770892 m!716201))

(declare-fun m!716203 () Bool)

(assert (=> b!770892 m!716203))

(declare-fun m!716205 () Bool)

(assert (=> b!770892 m!716205))

(declare-fun m!716207 () Bool)

(assert (=> b!770893 m!716207))

(declare-fun m!716209 () Bool)

(assert (=> b!770904 m!716209))

(assert (=> b!770888 m!716167))

(assert (=> b!770888 m!716167))

(assert (=> b!770888 m!716193))

(declare-fun m!716211 () Bool)

(assert (=> b!770887 m!716211))

(assert (=> b!770901 m!716167))

(assert (=> b!770901 m!716167))

(declare-fun m!716213 () Bool)

(assert (=> b!770901 m!716213))

(assert (=> b!770895 m!716167))

(assert (=> b!770895 m!716167))

(declare-fun m!716215 () Bool)

(assert (=> b!770895 m!716215))

(declare-fun m!716217 () Bool)

(assert (=> b!770896 m!716217))

(push 1)

