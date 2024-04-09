; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66584 () Bool)

(assert start!66584)

(declare-fun b!766881 () Bool)

(declare-fun res!518856 () Bool)

(declare-fun e!427087 () Bool)

(assert (=> b!766881 (=> (not res!518856) (not e!427087))))

(declare-datatypes ((array!42247 0))(
  ( (array!42248 (arr!20223 (Array (_ BitVec 32) (_ BitVec 64))) (size!20644 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42247)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42247 (_ BitVec 32)) Bool)

(assert (=> b!766881 (= res!518856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766882 () Bool)

(declare-fun res!518863 () Bool)

(declare-fun e!427082 () Bool)

(assert (=> b!766882 (=> (not res!518863) (not e!427082))))

(declare-fun e!427081 () Bool)

(assert (=> b!766882 (= res!518863 e!427081)))

(declare-fun c!84405 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766882 (= c!84405 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!766883 () Bool)

(declare-fun res!518864 () Bool)

(declare-fun e!427084 () Bool)

(assert (=> b!766883 (=> (not res!518864) (not e!427084))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766883 (= res!518864 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!766884 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7830 0))(
  ( (MissingZero!7830 (index!33687 (_ BitVec 32))) (Found!7830 (index!33688 (_ BitVec 32))) (Intermediate!7830 (undefined!8642 Bool) (index!33689 (_ BitVec 32)) (x!64633 (_ BitVec 32))) (Undefined!7830) (MissingVacant!7830 (index!33690 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42247 (_ BitVec 32)) SeekEntryResult!7830)

(assert (=> b!766884 (= e!427081 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20223 a!3186) j!159) a!3186 mask!3328) (Found!7830 j!159)))))

(declare-fun lt!341145 () SeekEntryResult!7830)

(declare-fun b!766885 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42247 (_ BitVec 32)) SeekEntryResult!7830)

(assert (=> b!766885 (= e!427081 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20223 a!3186) j!159) a!3186 mask!3328) lt!341145))))

(declare-fun b!766886 () Bool)

(declare-fun e!427085 () Bool)

(assert (=> b!766886 (= e!427082 e!427085)))

(declare-fun res!518855 () Bool)

(assert (=> b!766886 (=> (not res!518855) (not e!427085))))

(declare-fun lt!341151 () SeekEntryResult!7830)

(declare-fun lt!341152 () SeekEntryResult!7830)

(assert (=> b!766886 (= res!518855 (= lt!341151 lt!341152))))

(declare-fun lt!341149 () array!42247)

(declare-fun lt!341150 () (_ BitVec 64))

(assert (=> b!766886 (= lt!341152 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341150 lt!341149 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766886 (= lt!341151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341150 mask!3328) lt!341150 lt!341149 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766886 (= lt!341150 (select (store (arr!20223 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766886 (= lt!341149 (array!42248 (store (arr!20223 a!3186) i!1173 k!2102) (size!20644 a!3186)))))

(declare-fun b!766888 () Bool)

(declare-fun e!427088 () Bool)

(assert (=> b!766888 (= e!427085 (not e!427088))))

(declare-fun res!518854 () Bool)

(assert (=> b!766888 (=> res!518854 e!427088)))

(assert (=> b!766888 (= res!518854 (or (not (is-Intermediate!7830 lt!341152)) (bvsge x!1131 (x!64633 lt!341152))))))

(declare-fun e!427086 () Bool)

(assert (=> b!766888 e!427086))

(declare-fun res!518862 () Bool)

(assert (=> b!766888 (=> (not res!518862) (not e!427086))))

(assert (=> b!766888 (= res!518862 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26386 0))(
  ( (Unit!26387) )
))
(declare-fun lt!341148 () Unit!26386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26386)

(assert (=> b!766888 (= lt!341148 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766889 () Bool)

(declare-fun e!427080 () Bool)

(assert (=> b!766889 (= e!427086 e!427080)))

(declare-fun res!518853 () Bool)

(assert (=> b!766889 (=> (not res!518853) (not e!427080))))

(declare-fun lt!341147 () SeekEntryResult!7830)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42247 (_ BitVec 32)) SeekEntryResult!7830)

(assert (=> b!766889 (= res!518853 (= (seekEntryOrOpen!0 (select (arr!20223 a!3186) j!159) a!3186 mask!3328) lt!341147))))

(assert (=> b!766889 (= lt!341147 (Found!7830 j!159))))

(declare-fun b!766890 () Bool)

(assert (=> b!766890 (= e!427080 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20223 a!3186) j!159) a!3186 mask!3328) lt!341147))))

(declare-fun b!766891 () Bool)

(assert (=> b!766891 (= e!427088 true)))

(declare-fun lt!341144 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766891 (= lt!341144 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766892 () Bool)

(assert (=> b!766892 (= e!427087 e!427082)))

(declare-fun res!518857 () Bool)

(assert (=> b!766892 (=> (not res!518857) (not e!427082))))

(assert (=> b!766892 (= res!518857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20223 a!3186) j!159) mask!3328) (select (arr!20223 a!3186) j!159) a!3186 mask!3328) lt!341145))))

(assert (=> b!766892 (= lt!341145 (Intermediate!7830 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766893 () Bool)

(declare-fun res!518868 () Bool)

(assert (=> b!766893 (=> (not res!518868) (not e!427082))))

(assert (=> b!766893 (= res!518868 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20223 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766894 () Bool)

(assert (=> b!766894 (= e!427084 e!427087)))

(declare-fun res!518858 () Bool)

(assert (=> b!766894 (=> (not res!518858) (not e!427087))))

(declare-fun lt!341146 () SeekEntryResult!7830)

(assert (=> b!766894 (= res!518858 (or (= lt!341146 (MissingZero!7830 i!1173)) (= lt!341146 (MissingVacant!7830 i!1173))))))

(assert (=> b!766894 (= lt!341146 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!766895 () Bool)

(declare-fun res!518866 () Bool)

(assert (=> b!766895 (=> (not res!518866) (not e!427087))))

(declare-datatypes ((List!14278 0))(
  ( (Nil!14275) (Cons!14274 (h!15367 (_ BitVec 64)) (t!20601 List!14278)) )
))
(declare-fun arrayNoDuplicates!0 (array!42247 (_ BitVec 32) List!14278) Bool)

(assert (=> b!766895 (= res!518866 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14275))))

(declare-fun b!766896 () Bool)

(declare-fun res!518859 () Bool)

(assert (=> b!766896 (=> (not res!518859) (not e!427084))))

(declare-fun arrayContainsKey!0 (array!42247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766896 (= res!518859 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766887 () Bool)

(declare-fun res!518860 () Bool)

(assert (=> b!766887 (=> (not res!518860) (not e!427084))))

(assert (=> b!766887 (= res!518860 (validKeyInArray!0 (select (arr!20223 a!3186) j!159)))))

(declare-fun res!518867 () Bool)

(assert (=> start!66584 (=> (not res!518867) (not e!427084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66584 (= res!518867 (validMask!0 mask!3328))))

(assert (=> start!66584 e!427084))

(assert (=> start!66584 true))

(declare-fun array_inv!15997 (array!42247) Bool)

(assert (=> start!66584 (array_inv!15997 a!3186)))

(declare-fun b!766897 () Bool)

(declare-fun res!518865 () Bool)

(assert (=> b!766897 (=> (not res!518865) (not e!427084))))

(assert (=> b!766897 (= res!518865 (and (= (size!20644 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20644 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20644 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766898 () Bool)

(declare-fun res!518861 () Bool)

(assert (=> b!766898 (=> (not res!518861) (not e!427087))))

(assert (=> b!766898 (= res!518861 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20644 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20644 a!3186))))))

(assert (= (and start!66584 res!518867) b!766897))

(assert (= (and b!766897 res!518865) b!766887))

(assert (= (and b!766887 res!518860) b!766883))

(assert (= (and b!766883 res!518864) b!766896))

(assert (= (and b!766896 res!518859) b!766894))

(assert (= (and b!766894 res!518858) b!766881))

(assert (= (and b!766881 res!518856) b!766895))

(assert (= (and b!766895 res!518866) b!766898))

(assert (= (and b!766898 res!518861) b!766892))

(assert (= (and b!766892 res!518857) b!766893))

(assert (= (and b!766893 res!518868) b!766882))

(assert (= (and b!766882 c!84405) b!766885))

(assert (= (and b!766882 (not c!84405)) b!766884))

(assert (= (and b!766882 res!518863) b!766886))

(assert (= (and b!766886 res!518855) b!766888))

(assert (= (and b!766888 res!518862) b!766889))

(assert (= (and b!766889 res!518853) b!766890))

(assert (= (and b!766888 (not res!518854)) b!766891))

(declare-fun m!712793 () Bool)

(assert (=> b!766895 m!712793))

(declare-fun m!712795 () Bool)

(assert (=> b!766881 m!712795))

(declare-fun m!712797 () Bool)

(assert (=> b!766887 m!712797))

(assert (=> b!766887 m!712797))

(declare-fun m!712799 () Bool)

(assert (=> b!766887 m!712799))

(declare-fun m!712801 () Bool)

(assert (=> start!66584 m!712801))

(declare-fun m!712803 () Bool)

(assert (=> start!66584 m!712803))

(declare-fun m!712805 () Bool)

(assert (=> b!766883 m!712805))

(declare-fun m!712807 () Bool)

(assert (=> b!766896 m!712807))

(assert (=> b!766884 m!712797))

(assert (=> b!766884 m!712797))

(declare-fun m!712809 () Bool)

(assert (=> b!766884 m!712809))

(assert (=> b!766885 m!712797))

(assert (=> b!766885 m!712797))

(declare-fun m!712811 () Bool)

(assert (=> b!766885 m!712811))

(assert (=> b!766892 m!712797))

(assert (=> b!766892 m!712797))

(declare-fun m!712813 () Bool)

(assert (=> b!766892 m!712813))

(assert (=> b!766892 m!712813))

(assert (=> b!766892 m!712797))

(declare-fun m!712815 () Bool)

(assert (=> b!766892 m!712815))

(assert (=> b!766890 m!712797))

(assert (=> b!766890 m!712797))

(declare-fun m!712817 () Bool)

(assert (=> b!766890 m!712817))

(declare-fun m!712819 () Bool)

(assert (=> b!766886 m!712819))

(assert (=> b!766886 m!712819))

(declare-fun m!712821 () Bool)

(assert (=> b!766886 m!712821))

(declare-fun m!712823 () Bool)

(assert (=> b!766886 m!712823))

(declare-fun m!712825 () Bool)

(assert (=> b!766886 m!712825))

(declare-fun m!712827 () Bool)

(assert (=> b!766886 m!712827))

(declare-fun m!712829 () Bool)

(assert (=> b!766888 m!712829))

(declare-fun m!712831 () Bool)

(assert (=> b!766888 m!712831))

(declare-fun m!712833 () Bool)

(assert (=> b!766894 m!712833))

(declare-fun m!712835 () Bool)

(assert (=> b!766891 m!712835))

(declare-fun m!712837 () Bool)

(assert (=> b!766893 m!712837))

(assert (=> b!766889 m!712797))

(assert (=> b!766889 m!712797))

(declare-fun m!712839 () Bool)

(assert (=> b!766889 m!712839))

(push 1)

