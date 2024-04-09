; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65188 () Bool)

(assert start!65188)

(declare-fun b!736770 () Bool)

(declare-fun res!495295 () Bool)

(declare-fun e!412156 () Bool)

(assert (=> b!736770 (=> (not res!495295) (not e!412156))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41314 0))(
  ( (array!41315 (arr!19767 (Array (_ BitVec 32) (_ BitVec 64))) (size!20188 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41314)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736770 (= res!495295 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20188 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20188 a!3186))))))

(declare-fun b!736771 () Bool)

(declare-fun res!495288 () Bool)

(assert (=> b!736771 (=> (not res!495288) (not e!412156))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41314 (_ BitVec 32)) Bool)

(assert (=> b!736771 (= res!495288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736772 () Bool)

(declare-fun res!495294 () Bool)

(declare-fun e!412161 () Bool)

(assert (=> b!736772 (=> (not res!495294) (not e!412161))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736772 (= res!495294 (validKeyInArray!0 (select (arr!19767 a!3186) j!159)))))

(declare-fun b!736773 () Bool)

(declare-fun res!495291 () Bool)

(declare-fun e!412157 () Bool)

(assert (=> b!736773 (=> res!495291 e!412157)))

(declare-fun e!412160 () Bool)

(assert (=> b!736773 (= res!495291 e!412160)))

(declare-fun c!81124 () Bool)

(declare-fun lt!326829 () Bool)

(assert (=> b!736773 (= c!81124 lt!326829)))

(declare-fun b!736774 () Bool)

(declare-fun e!412164 () Bool)

(assert (=> b!736774 (= e!412164 e!412157)))

(declare-fun res!495284 () Bool)

(assert (=> b!736774 (=> res!495284 e!412157)))

(declare-fun lt!326836 () (_ BitVec 32))

(assert (=> b!736774 (= res!495284 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326836 #b00000000000000000000000000000000) (bvsge lt!326836 (size!20188 a!3186))))))

(declare-datatypes ((Unit!25114 0))(
  ( (Unit!25115) )
))
(declare-fun lt!326837 () Unit!25114)

(declare-fun e!412167 () Unit!25114)

(assert (=> b!736774 (= lt!326837 e!412167)))

(declare-fun c!81126 () Bool)

(assert (=> b!736774 (= c!81126 lt!326829)))

(assert (=> b!736774 (= lt!326829 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736774 (= lt!326836 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736775 () Bool)

(declare-fun res!495285 () Bool)

(declare-fun e!412165 () Bool)

(assert (=> b!736775 (=> (not res!495285) (not e!412165))))

(declare-fun e!412158 () Bool)

(assert (=> b!736775 (= res!495285 e!412158)))

(declare-fun c!81125 () Bool)

(assert (=> b!736775 (= c!81125 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736776 () Bool)

(declare-datatypes ((SeekEntryResult!7374 0))(
  ( (MissingZero!7374 (index!31863 (_ BitVec 32))) (Found!7374 (index!31864 (_ BitVec 32))) (Intermediate!7374 (undefined!8186 Bool) (index!31865 (_ BitVec 32)) (x!62893 (_ BitVec 32))) (Undefined!7374) (MissingVacant!7374 (index!31866 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41314 (_ BitVec 32)) SeekEntryResult!7374)

(assert (=> b!736776 (= e!412158 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) (Found!7374 j!159)))))

(declare-fun b!736777 () Bool)

(declare-fun res!495287 () Bool)

(assert (=> b!736777 (=> (not res!495287) (not e!412161))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736777 (= res!495287 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736778 () Bool)

(declare-fun Unit!25116 () Unit!25114)

(assert (=> b!736778 (= e!412167 Unit!25116)))

(declare-fun lt!326831 () SeekEntryResult!7374)

(assert (=> b!736778 (= lt!326831 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19767 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326840 () SeekEntryResult!7374)

(assert (=> b!736778 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326836 resIntermediateIndex!5 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326840)))

(declare-fun b!736779 () Bool)

(declare-fun res!495300 () Bool)

(assert (=> b!736779 (=> (not res!495300) (not e!412161))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736779 (= res!495300 (and (= (size!20188 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20188 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20188 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736781 () Bool)

(declare-fun res!495296 () Bool)

(assert (=> b!736781 (=> (not res!495296) (not e!412156))))

(declare-datatypes ((List!13822 0))(
  ( (Nil!13819) (Cons!13818 (h!14890 (_ BitVec 64)) (t!20145 List!13822)) )
))
(declare-fun arrayNoDuplicates!0 (array!41314 (_ BitVec 32) List!13822) Bool)

(assert (=> b!736781 (= res!495296 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13819))))

(declare-fun b!736782 () Bool)

(declare-fun res!495283 () Bool)

(assert (=> b!736782 (=> (not res!495283) (not e!412161))))

(assert (=> b!736782 (= res!495283 (validKeyInArray!0 k!2102))))

(declare-fun lt!326832 () SeekEntryResult!7374)

(declare-fun e!412163 () Bool)

(declare-fun b!736783 () Bool)

(assert (=> b!736783 (= e!412163 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326832))))

(declare-fun b!736784 () Bool)

(assert (=> b!736784 (= e!412160 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326836 resIntermediateIndex!5 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326840)))))

(declare-fun b!736785 () Bool)

(assert (=> b!736785 (= e!412156 e!412165)))

(declare-fun res!495298 () Bool)

(assert (=> b!736785 (=> (not res!495298) (not e!412165))))

(declare-fun lt!326835 () SeekEntryResult!7374)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41314 (_ BitVec 32)) SeekEntryResult!7374)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736785 (= res!495298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19767 a!3186) j!159) mask!3328) (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326835))))

(assert (=> b!736785 (= lt!326835 (Intermediate!7374 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736786 () Bool)

(assert (=> b!736786 (= e!412161 e!412156)))

(declare-fun res!495293 () Bool)

(assert (=> b!736786 (=> (not res!495293) (not e!412156))))

(declare-fun lt!326833 () SeekEntryResult!7374)

(assert (=> b!736786 (= res!495293 (or (= lt!326833 (MissingZero!7374 i!1173)) (= lt!326833 (MissingVacant!7374 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41314 (_ BitVec 32)) SeekEntryResult!7374)

(assert (=> b!736786 (= lt!326833 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736787 () Bool)

(assert (=> b!736787 (= e!412157 true)))

(declare-fun lt!326838 () (_ BitVec 64))

(declare-fun lt!326839 () SeekEntryResult!7374)

(declare-fun lt!326827 () array!41314)

(assert (=> b!736787 (= lt!326839 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326836 lt!326838 lt!326827 mask!3328))))

(declare-fun b!736788 () Bool)

(assert (=> b!736788 (= e!412158 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326835))))

(declare-fun b!736780 () Bool)

(declare-fun res!495289 () Bool)

(assert (=> b!736780 (=> (not res!495289) (not e!412165))))

(assert (=> b!736780 (= res!495289 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19767 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!495286 () Bool)

(assert (=> start!65188 (=> (not res!495286) (not e!412161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65188 (= res!495286 (validMask!0 mask!3328))))

(assert (=> start!65188 e!412161))

(assert (=> start!65188 true))

(declare-fun array_inv!15541 (array!41314) Bool)

(assert (=> start!65188 (array_inv!15541 a!3186)))

(declare-fun b!736789 () Bool)

(declare-fun Unit!25117 () Unit!25114)

(assert (=> b!736789 (= e!412167 Unit!25117)))

(assert (=> b!736789 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326836 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326835)))

(declare-fun b!736790 () Bool)

(declare-fun e!412162 () Bool)

(assert (=> b!736790 (= e!412162 e!412163)))

(declare-fun res!495299 () Bool)

(assert (=> b!736790 (=> (not res!495299) (not e!412163))))

(assert (=> b!736790 (= res!495299 (= (seekEntryOrOpen!0 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326832))))

(assert (=> b!736790 (= lt!326832 (Found!7374 j!159))))

(declare-fun b!736791 () Bool)

(declare-fun e!412166 () Bool)

(assert (=> b!736791 (= e!412165 e!412166)))

(declare-fun res!495292 () Bool)

(assert (=> b!736791 (=> (not res!495292) (not e!412166))))

(declare-fun lt!326828 () SeekEntryResult!7374)

(declare-fun lt!326830 () SeekEntryResult!7374)

(assert (=> b!736791 (= res!495292 (= lt!326828 lt!326830))))

(assert (=> b!736791 (= lt!326830 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326838 lt!326827 mask!3328))))

(assert (=> b!736791 (= lt!326828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326838 mask!3328) lt!326838 lt!326827 mask!3328))))

(assert (=> b!736791 (= lt!326838 (select (store (arr!19767 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736791 (= lt!326827 (array!41315 (store (arr!19767 a!3186) i!1173 k!2102) (size!20188 a!3186)))))

(declare-fun b!736792 () Bool)

(assert (=> b!736792 (= e!412166 (not e!412164))))

(declare-fun res!495297 () Bool)

(assert (=> b!736792 (=> res!495297 e!412164)))

(assert (=> b!736792 (= res!495297 (or (not (is-Intermediate!7374 lt!326830)) (bvsge x!1131 (x!62893 lt!326830))))))

(assert (=> b!736792 (= lt!326840 (Found!7374 j!159))))

(assert (=> b!736792 e!412162))

(declare-fun res!495290 () Bool)

(assert (=> b!736792 (=> (not res!495290) (not e!412162))))

(assert (=> b!736792 (= res!495290 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326834 () Unit!25114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41314 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25114)

(assert (=> b!736792 (= lt!326834 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736793 () Bool)

(assert (=> b!736793 (= e!412160 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326836 (select (arr!19767 a!3186) j!159) a!3186 mask!3328) lt!326835)))))

(assert (= (and start!65188 res!495286) b!736779))

(assert (= (and b!736779 res!495300) b!736772))

(assert (= (and b!736772 res!495294) b!736782))

(assert (= (and b!736782 res!495283) b!736777))

(assert (= (and b!736777 res!495287) b!736786))

(assert (= (and b!736786 res!495293) b!736771))

(assert (= (and b!736771 res!495288) b!736781))

(assert (= (and b!736781 res!495296) b!736770))

(assert (= (and b!736770 res!495295) b!736785))

(assert (= (and b!736785 res!495298) b!736780))

(assert (= (and b!736780 res!495289) b!736775))

(assert (= (and b!736775 c!81125) b!736788))

(assert (= (and b!736775 (not c!81125)) b!736776))

(assert (= (and b!736775 res!495285) b!736791))

(assert (= (and b!736791 res!495292) b!736792))

(assert (= (and b!736792 res!495290) b!736790))

(assert (= (and b!736790 res!495299) b!736783))

(assert (= (and b!736792 (not res!495297)) b!736774))

(assert (= (and b!736774 c!81126) b!736789))

(assert (= (and b!736774 (not c!81126)) b!736778))

(assert (= (and b!736774 (not res!495284)) b!736773))

(assert (= (and b!736773 c!81124) b!736793))

(assert (= (and b!736773 (not c!81124)) b!736784))

(assert (= (and b!736773 (not res!495291)) b!736787))

(declare-fun m!688885 () Bool)

(assert (=> b!736785 m!688885))

(assert (=> b!736785 m!688885))

(declare-fun m!688887 () Bool)

(assert (=> b!736785 m!688887))

(assert (=> b!736785 m!688887))

(assert (=> b!736785 m!688885))

(declare-fun m!688889 () Bool)

(assert (=> b!736785 m!688889))

(declare-fun m!688891 () Bool)

(assert (=> b!736780 m!688891))

(declare-fun m!688893 () Bool)

(assert (=> start!65188 m!688893))

(declare-fun m!688895 () Bool)

(assert (=> start!65188 m!688895))

(declare-fun m!688897 () Bool)

(assert (=> b!736781 m!688897))

(assert (=> b!736790 m!688885))

(assert (=> b!736790 m!688885))

(declare-fun m!688899 () Bool)

(assert (=> b!736790 m!688899))

(declare-fun m!688901 () Bool)

(assert (=> b!736771 m!688901))

(declare-fun m!688903 () Bool)

(assert (=> b!736791 m!688903))

(declare-fun m!688905 () Bool)

(assert (=> b!736791 m!688905))

(declare-fun m!688907 () Bool)

(assert (=> b!736791 m!688907))

(declare-fun m!688909 () Bool)

(assert (=> b!736791 m!688909))

(assert (=> b!736791 m!688903))

(declare-fun m!688911 () Bool)

(assert (=> b!736791 m!688911))

(assert (=> b!736788 m!688885))

(assert (=> b!736788 m!688885))

(declare-fun m!688913 () Bool)

(assert (=> b!736788 m!688913))

(assert (=> b!736772 m!688885))

(assert (=> b!736772 m!688885))

(declare-fun m!688915 () Bool)

(assert (=> b!736772 m!688915))

(declare-fun m!688917 () Bool)

(assert (=> b!736782 m!688917))

(declare-fun m!688919 () Bool)

(assert (=> b!736792 m!688919))

(declare-fun m!688921 () Bool)

(assert (=> b!736792 m!688921))

(assert (=> b!736776 m!688885))

(assert (=> b!736776 m!688885))

(declare-fun m!688923 () Bool)

(assert (=> b!736776 m!688923))

(assert (=> b!736778 m!688885))

(assert (=> b!736778 m!688885))

(assert (=> b!736778 m!688923))

(assert (=> b!736778 m!688885))

(declare-fun m!688925 () Bool)

(assert (=> b!736778 m!688925))

(declare-fun m!688927 () Bool)

(assert (=> b!736787 m!688927))

(assert (=> b!736793 m!688885))

(assert (=> b!736793 m!688885))

(declare-fun m!688929 () Bool)

(assert (=> b!736793 m!688929))

(declare-fun m!688931 () Bool)

(assert (=> b!736786 m!688931))

(assert (=> b!736783 m!688885))

(assert (=> b!736783 m!688885))

(declare-fun m!688933 () Bool)

(assert (=> b!736783 m!688933))

(declare-fun m!688935 () Bool)

(assert (=> b!736774 m!688935))

(assert (=> b!736784 m!688885))

(assert (=> b!736784 m!688885))

(assert (=> b!736784 m!688925))

(assert (=> b!736789 m!688885))

(assert (=> b!736789 m!688885))

(assert (=> b!736789 m!688929))

(declare-fun m!688937 () Bool)

(assert (=> b!736777 m!688937))

(push 1)

