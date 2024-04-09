; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65582 () Bool)

(assert start!65582)

(declare-fun b!748860 () Bool)

(declare-fun res!505320 () Bool)

(declare-fun e!417936 () Bool)

(assert (=> b!748860 (=> (not res!505320) (not e!417936))))

(declare-datatypes ((array!41708 0))(
  ( (array!41709 (arr!19964 (Array (_ BitVec 32) (_ BitVec 64))) (size!20385 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41708)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41708 (_ BitVec 32)) Bool)

(assert (=> b!748860 (= res!505320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!505327 () Bool)

(declare-fun e!417930 () Bool)

(assert (=> start!65582 (=> (not res!505327) (not e!417930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65582 (= res!505327 (validMask!0 mask!3328))))

(assert (=> start!65582 e!417930))

(assert (=> start!65582 true))

(declare-fun array_inv!15738 (array!41708) Bool)

(assert (=> start!65582 (array_inv!15738 a!3186)))

(declare-fun b!748861 () Bool)

(declare-datatypes ((Unit!25686 0))(
  ( (Unit!25687) )
))
(declare-fun e!417931 () Unit!25686)

(declare-fun Unit!25688 () Unit!25686)

(assert (=> b!748861 (= e!417931 Unit!25688)))

(assert (=> b!748861 false))

(declare-fun b!748862 () Bool)

(declare-fun e!417935 () Bool)

(assert (=> b!748862 (= e!417935 true)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!748862 (= (select (store (arr!19964 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332934 () Unit!25686)

(assert (=> b!748862 (= lt!332934 e!417931)))

(declare-fun c!82151 () Bool)

(assert (=> b!748862 (= c!82151 (= (select (store (arr!19964 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748863 () Bool)

(assert (=> b!748863 (= e!417930 e!417936)))

(declare-fun res!505329 () Bool)

(assert (=> b!748863 (=> (not res!505329) (not e!417936))))

(declare-datatypes ((SeekEntryResult!7571 0))(
  ( (MissingZero!7571 (index!32651 (_ BitVec 32))) (Found!7571 (index!32652 (_ BitVec 32))) (Intermediate!7571 (undefined!8383 Bool) (index!32653 (_ BitVec 32)) (x!63610 (_ BitVec 32))) (Undefined!7571) (MissingVacant!7571 (index!32654 (_ BitVec 32))) )
))
(declare-fun lt!332929 () SeekEntryResult!7571)

(assert (=> b!748863 (= res!505329 (or (= lt!332929 (MissingZero!7571 i!1173)) (= lt!332929 (MissingVacant!7571 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41708 (_ BitVec 32)) SeekEntryResult!7571)

(assert (=> b!748863 (= lt!332929 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748864 () Bool)

(declare-fun e!417933 () Bool)

(declare-fun e!417928 () Bool)

(assert (=> b!748864 (= e!417933 e!417928)))

(declare-fun res!505321 () Bool)

(assert (=> b!748864 (=> (not res!505321) (not e!417928))))

(declare-fun lt!332930 () SeekEntryResult!7571)

(declare-fun lt!332935 () SeekEntryResult!7571)

(assert (=> b!748864 (= res!505321 (= lt!332930 lt!332935))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!332931 () (_ BitVec 64))

(declare-fun lt!332932 () array!41708)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41708 (_ BitVec 32)) SeekEntryResult!7571)

(assert (=> b!748864 (= lt!332935 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332931 lt!332932 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748864 (= lt!332930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332931 mask!3328) lt!332931 lt!332932 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!748864 (= lt!332931 (select (store (arr!19964 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748864 (= lt!332932 (array!41709 (store (arr!19964 a!3186) i!1173 k!2102) (size!20385 a!3186)))))

(declare-fun b!748865 () Bool)

(assert (=> b!748865 (= e!417928 (not e!417935))))

(declare-fun res!505319 () Bool)

(assert (=> b!748865 (=> res!505319 e!417935)))

(assert (=> b!748865 (= res!505319 (or (not (is-Intermediate!7571 lt!332935)) (bvslt x!1131 (x!63610 lt!332935)) (not (= x!1131 (x!63610 lt!332935))) (not (= index!1321 (index!32653 lt!332935)))))))

(declare-fun e!417929 () Bool)

(assert (=> b!748865 e!417929))

(declare-fun res!505331 () Bool)

(assert (=> b!748865 (=> (not res!505331) (not e!417929))))

(declare-fun lt!332936 () SeekEntryResult!7571)

(declare-fun lt!332928 () SeekEntryResult!7571)

(assert (=> b!748865 (= res!505331 (= lt!332936 lt!332928))))

(assert (=> b!748865 (= lt!332928 (Found!7571 j!159))))

(assert (=> b!748865 (= lt!332936 (seekEntryOrOpen!0 (select (arr!19964 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748865 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332933 () Unit!25686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25686)

(assert (=> b!748865 (= lt!332933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!417934 () Bool)

(declare-fun b!748866 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41708 (_ BitVec 32)) SeekEntryResult!7571)

(assert (=> b!748866 (= e!417934 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19964 a!3186) j!159) a!3186 mask!3328) (Found!7571 j!159)))))

(declare-fun b!748867 () Bool)

(declare-fun res!505325 () Bool)

(assert (=> b!748867 (=> (not res!505325) (not e!417936))))

(declare-datatypes ((List!14019 0))(
  ( (Nil!14016) (Cons!14015 (h!15087 (_ BitVec 64)) (t!20342 List!14019)) )
))
(declare-fun arrayNoDuplicates!0 (array!41708 (_ BitVec 32) List!14019) Bool)

(assert (=> b!748867 (= res!505325 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14016))))

(declare-fun b!748868 () Bool)

(declare-fun res!505322 () Bool)

(assert (=> b!748868 (=> (not res!505322) (not e!417933))))

(assert (=> b!748868 (= res!505322 e!417934)))

(declare-fun c!82152 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748868 (= c!82152 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748869 () Bool)

(declare-fun res!505328 () Bool)

(assert (=> b!748869 (=> (not res!505328) (not e!417930))))

(declare-fun arrayContainsKey!0 (array!41708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748869 (= res!505328 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748870 () Bool)

(declare-fun res!505333 () Bool)

(assert (=> b!748870 (=> res!505333 e!417935)))

(assert (=> b!748870 (= res!505333 (= (select (store (arr!19964 a!3186) i!1173 k!2102) index!1321) lt!332931))))

(declare-fun b!748871 () Bool)

(declare-fun Unit!25689 () Unit!25686)

(assert (=> b!748871 (= e!417931 Unit!25689)))

(declare-fun lt!332927 () SeekEntryResult!7571)

(declare-fun b!748872 () Bool)

(assert (=> b!748872 (= e!417934 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19964 a!3186) j!159) a!3186 mask!3328) lt!332927))))

(declare-fun b!748873 () Bool)

(assert (=> b!748873 (= e!417936 e!417933)))

(declare-fun res!505332 () Bool)

(assert (=> b!748873 (=> (not res!505332) (not e!417933))))

(assert (=> b!748873 (= res!505332 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19964 a!3186) j!159) mask!3328) (select (arr!19964 a!3186) j!159) a!3186 mask!3328) lt!332927))))

(assert (=> b!748873 (= lt!332927 (Intermediate!7571 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748874 () Bool)

(assert (=> b!748874 (= e!417929 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19964 a!3186) j!159) a!3186 mask!3328) lt!332928))))

(declare-fun b!748875 () Bool)

(declare-fun res!505330 () Bool)

(assert (=> b!748875 (=> (not res!505330) (not e!417930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748875 (= res!505330 (validKeyInArray!0 k!2102))))

(declare-fun b!748876 () Bool)

(declare-fun res!505335 () Bool)

(assert (=> b!748876 (=> (not res!505335) (not e!417930))))

(assert (=> b!748876 (= res!505335 (and (= (size!20385 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20385 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20385 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748877 () Bool)

(declare-fun res!505334 () Bool)

(assert (=> b!748877 (=> (not res!505334) (not e!417936))))

(assert (=> b!748877 (= res!505334 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20385 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20385 a!3186))))))

(declare-fun b!748878 () Bool)

(declare-fun res!505323 () Bool)

(assert (=> b!748878 (=> res!505323 e!417935)))

(assert (=> b!748878 (= res!505323 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19964 a!3186) j!159) a!3186 mask!3328) lt!332928)))))

(declare-fun b!748879 () Bool)

(declare-fun res!505324 () Bool)

(assert (=> b!748879 (=> (not res!505324) (not e!417933))))

(assert (=> b!748879 (= res!505324 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19964 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748880 () Bool)

(declare-fun res!505326 () Bool)

(assert (=> b!748880 (=> (not res!505326) (not e!417930))))

(assert (=> b!748880 (= res!505326 (validKeyInArray!0 (select (arr!19964 a!3186) j!159)))))

(assert (= (and start!65582 res!505327) b!748876))

(assert (= (and b!748876 res!505335) b!748880))

(assert (= (and b!748880 res!505326) b!748875))

(assert (= (and b!748875 res!505330) b!748869))

(assert (= (and b!748869 res!505328) b!748863))

(assert (= (and b!748863 res!505329) b!748860))

(assert (= (and b!748860 res!505320) b!748867))

(assert (= (and b!748867 res!505325) b!748877))

(assert (= (and b!748877 res!505334) b!748873))

(assert (= (and b!748873 res!505332) b!748879))

(assert (= (and b!748879 res!505324) b!748868))

(assert (= (and b!748868 c!82152) b!748872))

(assert (= (and b!748868 (not c!82152)) b!748866))

(assert (= (and b!748868 res!505322) b!748864))

(assert (= (and b!748864 res!505321) b!748865))

(assert (= (and b!748865 res!505331) b!748874))

(assert (= (and b!748865 (not res!505319)) b!748878))

(assert (= (and b!748878 (not res!505323)) b!748870))

(assert (= (and b!748870 (not res!505333)) b!748862))

(assert (= (and b!748862 c!82151) b!748861))

(assert (= (and b!748862 (not c!82151)) b!748871))

(declare-fun m!698671 () Bool)

(assert (=> b!748872 m!698671))

(assert (=> b!748872 m!698671))

(declare-fun m!698673 () Bool)

(assert (=> b!748872 m!698673))

(declare-fun m!698675 () Bool)

(assert (=> b!748863 m!698675))

(declare-fun m!698677 () Bool)

(assert (=> b!748864 m!698677))

(declare-fun m!698679 () Bool)

(assert (=> b!748864 m!698679))

(declare-fun m!698681 () Bool)

(assert (=> b!748864 m!698681))

(assert (=> b!748864 m!698677))

(declare-fun m!698683 () Bool)

(assert (=> b!748864 m!698683))

(declare-fun m!698685 () Bool)

(assert (=> b!748864 m!698685))

(assert (=> b!748862 m!698681))

(declare-fun m!698687 () Bool)

(assert (=> b!748862 m!698687))

(declare-fun m!698689 () Bool)

(assert (=> b!748875 m!698689))

(assert (=> b!748874 m!698671))

(assert (=> b!748874 m!698671))

(declare-fun m!698691 () Bool)

(assert (=> b!748874 m!698691))

(assert (=> b!748873 m!698671))

(assert (=> b!748873 m!698671))

(declare-fun m!698693 () Bool)

(assert (=> b!748873 m!698693))

(assert (=> b!748873 m!698693))

(assert (=> b!748873 m!698671))

(declare-fun m!698695 () Bool)

(assert (=> b!748873 m!698695))

(declare-fun m!698697 () Bool)

(assert (=> b!748867 m!698697))

(assert (=> b!748878 m!698671))

(assert (=> b!748878 m!698671))

(declare-fun m!698699 () Bool)

(assert (=> b!748878 m!698699))

(assert (=> b!748866 m!698671))

(assert (=> b!748866 m!698671))

(assert (=> b!748866 m!698699))

(assert (=> b!748870 m!698681))

(assert (=> b!748870 m!698687))

(assert (=> b!748880 m!698671))

(assert (=> b!748880 m!698671))

(declare-fun m!698701 () Bool)

(assert (=> b!748880 m!698701))

(declare-fun m!698703 () Bool)

(assert (=> b!748879 m!698703))

(assert (=> b!748865 m!698671))

(assert (=> b!748865 m!698671))

(declare-fun m!698705 () Bool)

(assert (=> b!748865 m!698705))

(declare-fun m!698707 () Bool)

(assert (=> b!748865 m!698707))

(declare-fun m!698709 () Bool)

(assert (=> b!748865 m!698709))

(declare-fun m!698711 () Bool)

(assert (=> start!65582 m!698711))

(declare-fun m!698713 () Bool)

(assert (=> start!65582 m!698713))

(declare-fun m!698715 () Bool)

(assert (=> b!748869 m!698715))

(declare-fun m!698717 () Bool)

(assert (=> b!748860 m!698717))

(push 1)

