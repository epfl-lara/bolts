; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65642 () Bool)

(assert start!65642)

(declare-fun b!750839 () Bool)

(declare-fun e!418913 () Bool)

(declare-fun e!418909 () Bool)

(assert (=> b!750839 (= e!418913 e!418909)))

(declare-fun res!506943 () Bool)

(assert (=> b!750839 (=> (not res!506943) (not e!418909))))

(declare-datatypes ((SeekEntryResult!7601 0))(
  ( (MissingZero!7601 (index!32771 (_ BitVec 32))) (Found!7601 (index!32772 (_ BitVec 32))) (Intermediate!7601 (undefined!8413 Bool) (index!32773 (_ BitVec 32)) (x!63720 (_ BitVec 32))) (Undefined!7601) (MissingVacant!7601 (index!32774 (_ BitVec 32))) )
))
(declare-fun lt!333912 () SeekEntryResult!7601)

(declare-fun lt!333916 () SeekEntryResult!7601)

(assert (=> b!750839 (= res!506943 (= lt!333912 lt!333916))))

(declare-fun lt!333907 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41768 0))(
  ( (array!41769 (arr!19994 (Array (_ BitVec 32) (_ BitVec 64))) (size!20415 (_ BitVec 32))) )
))
(declare-fun lt!333909 () array!41768)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41768 (_ BitVec 32)) SeekEntryResult!7601)

(assert (=> b!750839 (= lt!333916 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333907 lt!333909 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750839 (= lt!333912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333907 mask!3328) lt!333907 lt!333909 mask!3328))))

(declare-fun a!3186 () array!41768)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!750839 (= lt!333907 (select (store (arr!19994 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750839 (= lt!333909 (array!41769 (store (arr!19994 a!3186) i!1173 k!2102) (size!20415 a!3186)))))

(declare-fun b!750840 () Bool)

(declare-fun e!418910 () Bool)

(declare-fun lt!333914 () SeekEntryResult!7601)

(assert (=> b!750840 (= e!418910 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19994 a!3186) j!159) a!3186 mask!3328) lt!333914))))

(declare-fun b!750841 () Bool)

(declare-fun e!418912 () Bool)

(assert (=> b!750841 (= e!418909 (not e!418912))))

(declare-fun res!506938 () Bool)

(assert (=> b!750841 (=> res!506938 e!418912)))

(assert (=> b!750841 (= res!506938 (or (not (is-Intermediate!7601 lt!333916)) (bvslt x!1131 (x!63720 lt!333916)) (not (= x!1131 (x!63720 lt!333916))) (not (= index!1321 (index!32773 lt!333916)))))))

(declare-fun e!418916 () Bool)

(assert (=> b!750841 e!418916))

(declare-fun res!506939 () Bool)

(assert (=> b!750841 (=> (not res!506939) (not e!418916))))

(declare-fun lt!333917 () SeekEntryResult!7601)

(declare-fun lt!333908 () SeekEntryResult!7601)

(assert (=> b!750841 (= res!506939 (= lt!333917 lt!333908))))

(assert (=> b!750841 (= lt!333908 (Found!7601 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41768 (_ BitVec 32)) SeekEntryResult!7601)

(assert (=> b!750841 (= lt!333917 (seekEntryOrOpen!0 (select (arr!19994 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41768 (_ BitVec 32)) Bool)

(assert (=> b!750841 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25806 0))(
  ( (Unit!25807) )
))
(declare-fun lt!333915 () Unit!25806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25806)

(assert (=> b!750841 (= lt!333915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!506942 () Bool)

(declare-fun e!418911 () Bool)

(assert (=> start!65642 (=> (not res!506942) (not e!418911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65642 (= res!506942 (validMask!0 mask!3328))))

(assert (=> start!65642 e!418911))

(assert (=> start!65642 true))

(declare-fun array_inv!15768 (array!41768) Bool)

(assert (=> start!65642 (array_inv!15768 a!3186)))

(declare-fun b!750842 () Bool)

(declare-fun res!506955 () Bool)

(assert (=> b!750842 (=> (not res!506955) (not e!418911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750842 (= res!506955 (validKeyInArray!0 k!2102))))

(declare-fun b!750843 () Bool)

(declare-fun res!506944 () Bool)

(assert (=> b!750843 (=> (not res!506944) (not e!418913))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!750843 (= res!506944 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19994 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750844 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41768 (_ BitVec 32)) SeekEntryResult!7601)

(assert (=> b!750844 (= e!418910 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19994 a!3186) j!159) a!3186 mask!3328) (Found!7601 j!159)))))

(declare-fun b!750845 () Bool)

(declare-fun e!418915 () Bool)

(assert (=> b!750845 (= e!418912 e!418915)))

(declare-fun res!506940 () Bool)

(assert (=> b!750845 (=> res!506940 e!418915)))

(declare-fun lt!333913 () (_ BitVec 64))

(assert (=> b!750845 (= res!506940 (= lt!333913 lt!333907))))

(assert (=> b!750845 (= lt!333913 (select (store (arr!19994 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750846 () Bool)

(declare-fun res!506952 () Bool)

(declare-fun e!418908 () Bool)

(assert (=> b!750846 (=> (not res!506952) (not e!418908))))

(declare-datatypes ((List!14049 0))(
  ( (Nil!14046) (Cons!14045 (h!15117 (_ BitVec 64)) (t!20372 List!14049)) )
))
(declare-fun arrayNoDuplicates!0 (array!41768 (_ BitVec 32) List!14049) Bool)

(assert (=> b!750846 (= res!506952 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14046))))

(declare-fun b!750847 () Bool)

(declare-fun res!506951 () Bool)

(assert (=> b!750847 (=> (not res!506951) (not e!418911))))

(assert (=> b!750847 (= res!506951 (and (= (size!20415 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20415 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20415 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750848 () Bool)

(declare-fun res!506945 () Bool)

(assert (=> b!750848 (=> (not res!506945) (not e!418908))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750848 (= res!506945 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20415 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20415 a!3186))))))

(declare-fun b!750849 () Bool)

(assert (=> b!750849 (= e!418911 e!418908)))

(declare-fun res!506954 () Bool)

(assert (=> b!750849 (=> (not res!506954) (not e!418908))))

(declare-fun lt!333911 () SeekEntryResult!7601)

(assert (=> b!750849 (= res!506954 (or (= lt!333911 (MissingZero!7601 i!1173)) (= lt!333911 (MissingVacant!7601 i!1173))))))

(assert (=> b!750849 (= lt!333911 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750850 () Bool)

(declare-fun res!506950 () Bool)

(assert (=> b!750850 (=> (not res!506950) (not e!418911))))

(assert (=> b!750850 (= res!506950 (validKeyInArray!0 (select (arr!19994 a!3186) j!159)))))

(declare-fun b!750851 () Bool)

(assert (=> b!750851 (= e!418915 true)))

(declare-fun e!418914 () Bool)

(assert (=> b!750851 e!418914))

(declare-fun res!506953 () Bool)

(assert (=> b!750851 (=> (not res!506953) (not e!418914))))

(assert (=> b!750851 (= res!506953 (= lt!333913 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333910 () Unit!25806)

(declare-fun e!418917 () Unit!25806)

(assert (=> b!750851 (= lt!333910 e!418917)))

(declare-fun c!82332 () Bool)

(assert (=> b!750851 (= c!82332 (= lt!333913 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750852 () Bool)

(declare-fun res!506948 () Bool)

(assert (=> b!750852 (=> (not res!506948) (not e!418913))))

(assert (=> b!750852 (= res!506948 e!418910)))

(declare-fun c!82331 () Bool)

(assert (=> b!750852 (= c!82331 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750853 () Bool)

(declare-fun res!506949 () Bool)

(assert (=> b!750853 (=> res!506949 e!418912)))

(assert (=> b!750853 (= res!506949 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19994 a!3186) j!159) a!3186 mask!3328) lt!333908)))))

(declare-fun b!750854 () Bool)

(assert (=> b!750854 (= e!418908 e!418913)))

(declare-fun res!506946 () Bool)

(assert (=> b!750854 (=> (not res!506946) (not e!418913))))

(assert (=> b!750854 (= res!506946 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19994 a!3186) j!159) mask!3328) (select (arr!19994 a!3186) j!159) a!3186 mask!3328) lt!333914))))

(assert (=> b!750854 (= lt!333914 (Intermediate!7601 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750855 () Bool)

(declare-fun Unit!25808 () Unit!25806)

(assert (=> b!750855 (= e!418917 Unit!25808)))

(assert (=> b!750855 false))

(declare-fun b!750856 () Bool)

(declare-fun res!506941 () Bool)

(assert (=> b!750856 (=> (not res!506941) (not e!418908))))

(assert (=> b!750856 (= res!506941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750857 () Bool)

(declare-fun res!506947 () Bool)

(assert (=> b!750857 (=> (not res!506947) (not e!418911))))

(declare-fun arrayContainsKey!0 (array!41768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750857 (= res!506947 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750858 () Bool)

(assert (=> b!750858 (= e!418914 (= (seekEntryOrOpen!0 lt!333907 lt!333909 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333907 lt!333909 mask!3328)))))

(declare-fun b!750859 () Bool)

(assert (=> b!750859 (= e!418916 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19994 a!3186) j!159) a!3186 mask!3328) lt!333908))))

(declare-fun b!750860 () Bool)

(declare-fun Unit!25809 () Unit!25806)

(assert (=> b!750860 (= e!418917 Unit!25809)))

(assert (= (and start!65642 res!506942) b!750847))

(assert (= (and b!750847 res!506951) b!750850))

(assert (= (and b!750850 res!506950) b!750842))

(assert (= (and b!750842 res!506955) b!750857))

(assert (= (and b!750857 res!506947) b!750849))

(assert (= (and b!750849 res!506954) b!750856))

(assert (= (and b!750856 res!506941) b!750846))

(assert (= (and b!750846 res!506952) b!750848))

(assert (= (and b!750848 res!506945) b!750854))

(assert (= (and b!750854 res!506946) b!750843))

(assert (= (and b!750843 res!506944) b!750852))

(assert (= (and b!750852 c!82331) b!750840))

(assert (= (and b!750852 (not c!82331)) b!750844))

(assert (= (and b!750852 res!506948) b!750839))

(assert (= (and b!750839 res!506943) b!750841))

(assert (= (and b!750841 res!506939) b!750859))

(assert (= (and b!750841 (not res!506938)) b!750853))

(assert (= (and b!750853 (not res!506949)) b!750845))

(assert (= (and b!750845 (not res!506940)) b!750851))

(assert (= (and b!750851 c!82332) b!750855))

(assert (= (and b!750851 (not c!82332)) b!750860))

(assert (= (and b!750851 res!506953) b!750858))

(declare-fun m!700221 () Bool)

(assert (=> b!750843 m!700221))

(declare-fun m!700223 () Bool)

(assert (=> start!65642 m!700223))

(declare-fun m!700225 () Bool)

(assert (=> start!65642 m!700225))

(declare-fun m!700227 () Bool)

(assert (=> b!750840 m!700227))

(assert (=> b!750840 m!700227))

(declare-fun m!700229 () Bool)

(assert (=> b!750840 m!700229))

(assert (=> b!750853 m!700227))

(assert (=> b!750853 m!700227))

(declare-fun m!700231 () Bool)

(assert (=> b!750853 m!700231))

(declare-fun m!700233 () Bool)

(assert (=> b!750857 m!700233))

(declare-fun m!700235 () Bool)

(assert (=> b!750845 m!700235))

(declare-fun m!700237 () Bool)

(assert (=> b!750845 m!700237))

(declare-fun m!700239 () Bool)

(assert (=> b!750839 m!700239))

(assert (=> b!750839 m!700239))

(declare-fun m!700241 () Bool)

(assert (=> b!750839 m!700241))

(assert (=> b!750839 m!700235))

(declare-fun m!700243 () Bool)

(assert (=> b!750839 m!700243))

(declare-fun m!700245 () Bool)

(assert (=> b!750839 m!700245))

(declare-fun m!700247 () Bool)

(assert (=> b!750842 m!700247))

(assert (=> b!750854 m!700227))

(assert (=> b!750854 m!700227))

(declare-fun m!700249 () Bool)

(assert (=> b!750854 m!700249))

(assert (=> b!750854 m!700249))

(assert (=> b!750854 m!700227))

(declare-fun m!700251 () Bool)

(assert (=> b!750854 m!700251))

(declare-fun m!700253 () Bool)

(assert (=> b!750856 m!700253))

(assert (=> b!750844 m!700227))

(assert (=> b!750844 m!700227))

(assert (=> b!750844 m!700231))

(assert (=> b!750859 m!700227))

(assert (=> b!750859 m!700227))

(declare-fun m!700255 () Bool)

(assert (=> b!750859 m!700255))

(declare-fun m!700257 () Bool)

(assert (=> b!750846 m!700257))

(declare-fun m!700259 () Bool)

(assert (=> b!750849 m!700259))

(assert (=> b!750850 m!700227))

(assert (=> b!750850 m!700227))

(declare-fun m!700261 () Bool)

(assert (=> b!750850 m!700261))

(declare-fun m!700263 () Bool)

(assert (=> b!750858 m!700263))

(declare-fun m!700265 () Bool)

(assert (=> b!750858 m!700265))

(assert (=> b!750841 m!700227))

(assert (=> b!750841 m!700227))

(declare-fun m!700267 () Bool)

(assert (=> b!750841 m!700267))

(declare-fun m!700269 () Bool)

(assert (=> b!750841 m!700269))

(declare-fun m!700271 () Bool)

(assert (=> b!750841 m!700271))

(push 1)

