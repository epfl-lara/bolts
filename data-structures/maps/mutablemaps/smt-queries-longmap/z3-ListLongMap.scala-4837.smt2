; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66586 () Bool)

(assert start!66586)

(declare-fun b!766935 () Bool)

(declare-fun e!427113 () Bool)

(declare-fun e!427114 () Bool)

(assert (=> b!766935 (= e!427113 e!427114)))

(declare-fun res!518915 () Bool)

(assert (=> b!766935 (=> (not res!518915) (not e!427114))))

(declare-datatypes ((array!42249 0))(
  ( (array!42250 (arr!20224 (Array (_ BitVec 32) (_ BitVec 64))) (size!20645 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42249)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7831 0))(
  ( (MissingZero!7831 (index!33691 (_ BitVec 32))) (Found!7831 (index!33692 (_ BitVec 32))) (Intermediate!7831 (undefined!8643 Bool) (index!33693 (_ BitVec 32)) (x!64634 (_ BitVec 32))) (Undefined!7831) (MissingVacant!7831 (index!33694 (_ BitVec 32))) )
))
(declare-fun lt!341178 () SeekEntryResult!7831)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42249 (_ BitVec 32)) SeekEntryResult!7831)

(assert (=> b!766935 (= res!518915 (= (seekEntryOrOpen!0 (select (arr!20224 a!3186) j!159) a!3186 mask!3328) lt!341178))))

(assert (=> b!766935 (= lt!341178 (Found!7831 j!159))))

(declare-fun b!766936 () Bool)

(declare-fun e!427109 () Bool)

(declare-fun e!427112 () Bool)

(assert (=> b!766936 (= e!427109 e!427112)))

(declare-fun res!518916 () Bool)

(assert (=> b!766936 (=> (not res!518916) (not e!427112))))

(declare-fun lt!341171 () SeekEntryResult!7831)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766936 (= res!518916 (or (= lt!341171 (MissingZero!7831 i!1173)) (= lt!341171 (MissingVacant!7831 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!766936 (= lt!341171 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!766937 () Bool)

(declare-fun res!518907 () Bool)

(assert (=> b!766937 (=> (not res!518907) (not e!427112))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766937 (= res!518907 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20645 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20645 a!3186))))))

(declare-fun b!766938 () Bool)

(declare-fun res!518908 () Bool)

(assert (=> b!766938 (=> (not res!518908) (not e!427109))))

(assert (=> b!766938 (= res!518908 (and (= (size!20645 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20645 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20645 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766939 () Bool)

(declare-fun res!518901 () Bool)

(declare-fun e!427107 () Bool)

(assert (=> b!766939 (=> (not res!518901) (not e!427107))))

(declare-fun e!427110 () Bool)

(assert (=> b!766939 (= res!518901 e!427110)))

(declare-fun c!84408 () Bool)

(assert (=> b!766939 (= c!84408 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!766940 () Bool)

(declare-fun lt!341173 () SeekEntryResult!7831)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42249 (_ BitVec 32)) SeekEntryResult!7831)

(assert (=> b!766940 (= e!427110 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20224 a!3186) j!159) a!3186 mask!3328) lt!341173))))

(declare-fun b!766941 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42249 (_ BitVec 32)) SeekEntryResult!7831)

(assert (=> b!766941 (= e!427110 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20224 a!3186) j!159) a!3186 mask!3328) (Found!7831 j!159)))))

(declare-fun b!766942 () Bool)

(declare-fun e!427108 () Bool)

(assert (=> b!766942 (= e!427107 e!427108)))

(declare-fun res!518912 () Bool)

(assert (=> b!766942 (=> (not res!518912) (not e!427108))))

(declare-fun lt!341172 () SeekEntryResult!7831)

(declare-fun lt!341176 () SeekEntryResult!7831)

(assert (=> b!766942 (= res!518912 (= lt!341172 lt!341176))))

(declare-fun lt!341177 () array!42249)

(declare-fun lt!341179 () (_ BitVec 64))

(assert (=> b!766942 (= lt!341176 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341179 lt!341177 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766942 (= lt!341172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341179 mask!3328) lt!341179 lt!341177 mask!3328))))

(assert (=> b!766942 (= lt!341179 (select (store (arr!20224 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!766942 (= lt!341177 (array!42250 (store (arr!20224 a!3186) i!1173 k0!2102) (size!20645 a!3186)))))

(declare-fun b!766943 () Bool)

(assert (=> b!766943 (= e!427114 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20224 a!3186) j!159) a!3186 mask!3328) lt!341178))))

(declare-fun b!766944 () Bool)

(declare-fun res!518909 () Bool)

(assert (=> b!766944 (=> (not res!518909) (not e!427109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766944 (= res!518909 (validKeyInArray!0 (select (arr!20224 a!3186) j!159)))))

(declare-fun res!518910 () Bool)

(assert (=> start!66586 (=> (not res!518910) (not e!427109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66586 (= res!518910 (validMask!0 mask!3328))))

(assert (=> start!66586 e!427109))

(assert (=> start!66586 true))

(declare-fun array_inv!15998 (array!42249) Bool)

(assert (=> start!66586 (array_inv!15998 a!3186)))

(declare-fun b!766945 () Bool)

(declare-fun res!518904 () Bool)

(assert (=> b!766945 (=> (not res!518904) (not e!427107))))

(assert (=> b!766945 (= res!518904 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20224 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766946 () Bool)

(declare-fun e!427115 () Bool)

(assert (=> b!766946 (= e!427108 (not e!427115))))

(declare-fun res!518911 () Bool)

(assert (=> b!766946 (=> res!518911 e!427115)))

(get-info :version)

(assert (=> b!766946 (= res!518911 (or (not ((_ is Intermediate!7831) lt!341176)) (bvsge x!1131 (x!64634 lt!341176))))))

(assert (=> b!766946 e!427113))

(declare-fun res!518913 () Bool)

(assert (=> b!766946 (=> (not res!518913) (not e!427113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42249 (_ BitVec 32)) Bool)

(assert (=> b!766946 (= res!518913 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26388 0))(
  ( (Unit!26389) )
))
(declare-fun lt!341174 () Unit!26388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26388)

(assert (=> b!766946 (= lt!341174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766947 () Bool)

(assert (=> b!766947 (= e!427115 true)))

(declare-fun lt!341175 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766947 (= lt!341175 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766948 () Bool)

(assert (=> b!766948 (= e!427112 e!427107)))

(declare-fun res!518906 () Bool)

(assert (=> b!766948 (=> (not res!518906) (not e!427107))))

(assert (=> b!766948 (= res!518906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20224 a!3186) j!159) mask!3328) (select (arr!20224 a!3186) j!159) a!3186 mask!3328) lt!341173))))

(assert (=> b!766948 (= lt!341173 (Intermediate!7831 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766949 () Bool)

(declare-fun res!518905 () Bool)

(assert (=> b!766949 (=> (not res!518905) (not e!427109))))

(assert (=> b!766949 (= res!518905 (validKeyInArray!0 k0!2102))))

(declare-fun b!766950 () Bool)

(declare-fun res!518902 () Bool)

(assert (=> b!766950 (=> (not res!518902) (not e!427112))))

(declare-datatypes ((List!14279 0))(
  ( (Nil!14276) (Cons!14275 (h!15368 (_ BitVec 64)) (t!20602 List!14279)) )
))
(declare-fun arrayNoDuplicates!0 (array!42249 (_ BitVec 32) List!14279) Bool)

(assert (=> b!766950 (= res!518902 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14276))))

(declare-fun b!766951 () Bool)

(declare-fun res!518914 () Bool)

(assert (=> b!766951 (=> (not res!518914) (not e!427109))))

(declare-fun arrayContainsKey!0 (array!42249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766951 (= res!518914 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766952 () Bool)

(declare-fun res!518903 () Bool)

(assert (=> b!766952 (=> (not res!518903) (not e!427112))))

(assert (=> b!766952 (= res!518903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66586 res!518910) b!766938))

(assert (= (and b!766938 res!518908) b!766944))

(assert (= (and b!766944 res!518909) b!766949))

(assert (= (and b!766949 res!518905) b!766951))

(assert (= (and b!766951 res!518914) b!766936))

(assert (= (and b!766936 res!518916) b!766952))

(assert (= (and b!766952 res!518903) b!766950))

(assert (= (and b!766950 res!518902) b!766937))

(assert (= (and b!766937 res!518907) b!766948))

(assert (= (and b!766948 res!518906) b!766945))

(assert (= (and b!766945 res!518904) b!766939))

(assert (= (and b!766939 c!84408) b!766940))

(assert (= (and b!766939 (not c!84408)) b!766941))

(assert (= (and b!766939 res!518901) b!766942))

(assert (= (and b!766942 res!518912) b!766946))

(assert (= (and b!766946 res!518913) b!766935))

(assert (= (and b!766935 res!518915) b!766943))

(assert (= (and b!766946 (not res!518911)) b!766947))

(declare-fun m!712841 () Bool)

(assert (=> b!766952 m!712841))

(declare-fun m!712843 () Bool)

(assert (=> b!766948 m!712843))

(assert (=> b!766948 m!712843))

(declare-fun m!712845 () Bool)

(assert (=> b!766948 m!712845))

(assert (=> b!766948 m!712845))

(assert (=> b!766948 m!712843))

(declare-fun m!712847 () Bool)

(assert (=> b!766948 m!712847))

(assert (=> b!766935 m!712843))

(assert (=> b!766935 m!712843))

(declare-fun m!712849 () Bool)

(assert (=> b!766935 m!712849))

(declare-fun m!712851 () Bool)

(assert (=> b!766936 m!712851))

(declare-fun m!712853 () Bool)

(assert (=> b!766951 m!712853))

(assert (=> b!766940 m!712843))

(assert (=> b!766940 m!712843))

(declare-fun m!712855 () Bool)

(assert (=> b!766940 m!712855))

(declare-fun m!712857 () Bool)

(assert (=> b!766946 m!712857))

(declare-fun m!712859 () Bool)

(assert (=> b!766946 m!712859))

(declare-fun m!712861 () Bool)

(assert (=> b!766950 m!712861))

(assert (=> b!766944 m!712843))

(assert (=> b!766944 m!712843))

(declare-fun m!712863 () Bool)

(assert (=> b!766944 m!712863))

(declare-fun m!712865 () Bool)

(assert (=> start!66586 m!712865))

(declare-fun m!712867 () Bool)

(assert (=> start!66586 m!712867))

(declare-fun m!712869 () Bool)

(assert (=> b!766947 m!712869))

(assert (=> b!766943 m!712843))

(assert (=> b!766943 m!712843))

(declare-fun m!712871 () Bool)

(assert (=> b!766943 m!712871))

(declare-fun m!712873 () Bool)

(assert (=> b!766942 m!712873))

(declare-fun m!712875 () Bool)

(assert (=> b!766942 m!712875))

(declare-fun m!712877 () Bool)

(assert (=> b!766942 m!712877))

(assert (=> b!766942 m!712873))

(declare-fun m!712879 () Bool)

(assert (=> b!766942 m!712879))

(declare-fun m!712881 () Bool)

(assert (=> b!766942 m!712881))

(declare-fun m!712883 () Bool)

(assert (=> b!766949 m!712883))

(declare-fun m!712885 () Bool)

(assert (=> b!766945 m!712885))

(assert (=> b!766941 m!712843))

(assert (=> b!766941 m!712843))

(declare-fun m!712887 () Bool)

(assert (=> b!766941 m!712887))

(check-sat (not b!766935) (not start!66586) (not b!766942) (not b!766947) (not b!766952) (not b!766940) (not b!766943) (not b!766951) (not b!766950) (not b!766948) (not b!766941) (not b!766944) (not b!766946) (not b!766949) (not b!766936))
(check-sat)
