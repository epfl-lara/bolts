; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67780 () Bool)

(assert start!67780)

(declare-fun b!786899 () Bool)

(declare-fun res!533012 () Bool)

(declare-fun e!437443 () Bool)

(assert (=> b!786899 (=> (not res!533012) (not e!437443))))

(declare-datatypes ((array!42775 0))(
  ( (array!42776 (arr!20472 (Array (_ BitVec 32) (_ BitVec 64))) (size!20893 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42775)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!786899 (= res!533012 (and (= (size!20893 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20893 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20893 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786900 () Bool)

(declare-fun res!533019 () Bool)

(declare-fun e!437435 () Bool)

(assert (=> b!786900 (=> (not res!533019) (not e!437435))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786900 (= res!533019 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20893 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20893 a!3186))))))

(declare-fun b!786901 () Bool)

(declare-fun e!437442 () Bool)

(declare-datatypes ((SeekEntryResult!8079 0))(
  ( (MissingZero!8079 (index!34683 (_ BitVec 32))) (Found!8079 (index!34684 (_ BitVec 32))) (Intermediate!8079 (undefined!8891 Bool) (index!34685 (_ BitVec 32)) (x!65652 (_ BitVec 32))) (Undefined!8079) (MissingVacant!8079 (index!34686 (_ BitVec 32))) )
))
(declare-fun lt!351005 () SeekEntryResult!8079)

(declare-fun lt!351013 () SeekEntryResult!8079)

(assert (=> b!786901 (= e!437442 (= lt!351005 lt!351013))))

(declare-fun b!786902 () Bool)

(declare-datatypes ((Unit!27226 0))(
  ( (Unit!27227) )
))
(declare-fun e!437446 () Unit!27226)

(declare-fun Unit!27228 () Unit!27226)

(assert (=> b!786902 (= e!437446 Unit!27228)))

(declare-fun b!786903 () Bool)

(declare-fun res!533017 () Bool)

(declare-fun e!437438 () Bool)

(assert (=> b!786903 (=> (not res!533017) (not e!437438))))

(assert (=> b!786903 (= res!533017 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20472 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786905 () Bool)

(declare-fun res!533020 () Bool)

(assert (=> b!786905 (=> (not res!533020) (not e!437442))))

(declare-fun lt!351007 () (_ BitVec 64))

(declare-fun lt!351009 () array!42775)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42775 (_ BitVec 32)) SeekEntryResult!8079)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42775 (_ BitVec 32)) SeekEntryResult!8079)

(assert (=> b!786905 (= res!533020 (= (seekEntryOrOpen!0 lt!351007 lt!351009 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351007 lt!351009 mask!3328)))))

(declare-fun b!786906 () Bool)

(assert (=> b!786906 (= e!437443 e!437435)))

(declare-fun res!533015 () Bool)

(assert (=> b!786906 (=> (not res!533015) (not e!437435))))

(declare-fun lt!351011 () SeekEntryResult!8079)

(assert (=> b!786906 (= res!533015 (or (= lt!351011 (MissingZero!8079 i!1173)) (= lt!351011 (MissingVacant!8079 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!786906 (= lt!351011 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786907 () Bool)

(declare-fun e!437441 () Bool)

(declare-fun e!437437 () Bool)

(assert (=> b!786907 (= e!437441 e!437437)))

(declare-fun res!533021 () Bool)

(assert (=> b!786907 (=> res!533021 e!437437)))

(declare-fun lt!351006 () SeekEntryResult!8079)

(assert (=> b!786907 (= res!533021 (not (= lt!351013 lt!351006)))))

(assert (=> b!786907 (= lt!351013 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20472 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786908 () Bool)

(declare-fun e!437445 () Bool)

(assert (=> b!786908 (= e!437445 true)))

(assert (=> b!786908 e!437442))

(declare-fun res!533009 () Bool)

(assert (=> b!786908 (=> (not res!533009) (not e!437442))))

(declare-fun lt!351003 () (_ BitVec 64))

(assert (=> b!786908 (= res!533009 (= lt!351003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351008 () Unit!27226)

(assert (=> b!786908 (= lt!351008 e!437446)))

(declare-fun c!87354 () Bool)

(assert (=> b!786908 (= c!87354 (= lt!351003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786909 () Bool)

(declare-fun res!533011 () Bool)

(assert (=> b!786909 (=> (not res!533011) (not e!437443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786909 (= res!533011 (validKeyInArray!0 k!2102))))

(declare-fun b!786910 () Bool)

(declare-fun res!533013 () Bool)

(assert (=> b!786910 (=> (not res!533013) (not e!437435))))

(declare-datatypes ((List!14527 0))(
  ( (Nil!14524) (Cons!14523 (h!15646 (_ BitVec 64)) (t!20850 List!14527)) )
))
(declare-fun arrayNoDuplicates!0 (array!42775 (_ BitVec 32) List!14527) Bool)

(assert (=> b!786910 (= res!533013 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14524))))

(declare-fun b!786911 () Bool)

(declare-fun e!437444 () Bool)

(assert (=> b!786911 (= e!437444 (not e!437441))))

(declare-fun res!533024 () Bool)

(assert (=> b!786911 (=> res!533024 e!437441)))

(declare-fun lt!351012 () SeekEntryResult!8079)

(assert (=> b!786911 (= res!533024 (or (not (is-Intermediate!8079 lt!351012)) (bvslt x!1131 (x!65652 lt!351012)) (not (= x!1131 (x!65652 lt!351012))) (not (= index!1321 (index!34685 lt!351012)))))))

(declare-fun e!437439 () Bool)

(assert (=> b!786911 e!437439))

(declare-fun res!533018 () Bool)

(assert (=> b!786911 (=> (not res!533018) (not e!437439))))

(assert (=> b!786911 (= res!533018 (= lt!351005 lt!351006))))

(assert (=> b!786911 (= lt!351006 (Found!8079 j!159))))

(assert (=> b!786911 (= lt!351005 (seekEntryOrOpen!0 (select (arr!20472 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42775 (_ BitVec 32)) Bool)

(assert (=> b!786911 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351002 () Unit!27226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27226)

(assert (=> b!786911 (= lt!351002 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786912 () Bool)

(assert (=> b!786912 (= e!437437 e!437445)))

(declare-fun res!533022 () Bool)

(assert (=> b!786912 (=> res!533022 e!437445)))

(assert (=> b!786912 (= res!533022 (= lt!351003 lt!351007))))

(assert (=> b!786912 (= lt!351003 (select (store (arr!20472 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786913 () Bool)

(assert (=> b!786913 (= e!437435 e!437438)))

(declare-fun res!533026 () Bool)

(assert (=> b!786913 (=> (not res!533026) (not e!437438))))

(declare-fun lt!351004 () SeekEntryResult!8079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42775 (_ BitVec 32)) SeekEntryResult!8079)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786913 (= res!533026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20472 a!3186) j!159) mask!3328) (select (arr!20472 a!3186) j!159) a!3186 mask!3328) lt!351004))))

(assert (=> b!786913 (= lt!351004 (Intermediate!8079 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!437436 () Bool)

(declare-fun b!786914 () Bool)

(assert (=> b!786914 (= e!437436 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20472 a!3186) j!159) a!3186 mask!3328) (Found!8079 j!159)))))

(declare-fun res!533008 () Bool)

(assert (=> start!67780 (=> (not res!533008) (not e!437443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67780 (= res!533008 (validMask!0 mask!3328))))

(assert (=> start!67780 e!437443))

(assert (=> start!67780 true))

(declare-fun array_inv!16246 (array!42775) Bool)

(assert (=> start!67780 (array_inv!16246 a!3186)))

(declare-fun b!786904 () Bool)

(declare-fun res!533025 () Bool)

(assert (=> b!786904 (=> (not res!533025) (not e!437435))))

(assert (=> b!786904 (= res!533025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786915 () Bool)

(declare-fun res!533010 () Bool)

(assert (=> b!786915 (=> (not res!533010) (not e!437443))))

(declare-fun arrayContainsKey!0 (array!42775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786915 (= res!533010 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786916 () Bool)

(assert (=> b!786916 (= e!437438 e!437444)))

(declare-fun res!533014 () Bool)

(assert (=> b!786916 (=> (not res!533014) (not e!437444))))

(declare-fun lt!351010 () SeekEntryResult!8079)

(assert (=> b!786916 (= res!533014 (= lt!351010 lt!351012))))

(assert (=> b!786916 (= lt!351012 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351007 lt!351009 mask!3328))))

(assert (=> b!786916 (= lt!351010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351007 mask!3328) lt!351007 lt!351009 mask!3328))))

(assert (=> b!786916 (= lt!351007 (select (store (arr!20472 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786916 (= lt!351009 (array!42776 (store (arr!20472 a!3186) i!1173 k!2102) (size!20893 a!3186)))))

(declare-fun b!786917 () Bool)

(declare-fun res!533016 () Bool)

(assert (=> b!786917 (=> (not res!533016) (not e!437438))))

(assert (=> b!786917 (= res!533016 e!437436)))

(declare-fun c!87353 () Bool)

(assert (=> b!786917 (= c!87353 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786918 () Bool)

(declare-fun res!533023 () Bool)

(assert (=> b!786918 (=> (not res!533023) (not e!437443))))

(assert (=> b!786918 (= res!533023 (validKeyInArray!0 (select (arr!20472 a!3186) j!159)))))

(declare-fun b!786919 () Bool)

(declare-fun Unit!27229 () Unit!27226)

(assert (=> b!786919 (= e!437446 Unit!27229)))

(assert (=> b!786919 false))

(declare-fun b!786920 () Bool)

(assert (=> b!786920 (= e!437439 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20472 a!3186) j!159) a!3186 mask!3328) lt!351006))))

(declare-fun b!786921 () Bool)

(assert (=> b!786921 (= e!437436 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20472 a!3186) j!159) a!3186 mask!3328) lt!351004))))

(assert (= (and start!67780 res!533008) b!786899))

(assert (= (and b!786899 res!533012) b!786918))

(assert (= (and b!786918 res!533023) b!786909))

(assert (= (and b!786909 res!533011) b!786915))

(assert (= (and b!786915 res!533010) b!786906))

(assert (= (and b!786906 res!533015) b!786904))

(assert (= (and b!786904 res!533025) b!786910))

(assert (= (and b!786910 res!533013) b!786900))

(assert (= (and b!786900 res!533019) b!786913))

(assert (= (and b!786913 res!533026) b!786903))

(assert (= (and b!786903 res!533017) b!786917))

(assert (= (and b!786917 c!87353) b!786921))

(assert (= (and b!786917 (not c!87353)) b!786914))

(assert (= (and b!786917 res!533016) b!786916))

(assert (= (and b!786916 res!533014) b!786911))

(assert (= (and b!786911 res!533018) b!786920))

(assert (= (and b!786911 (not res!533024)) b!786907))

(assert (= (and b!786907 (not res!533021)) b!786912))

(assert (= (and b!786912 (not res!533022)) b!786908))

(assert (= (and b!786908 c!87354) b!786919))

(assert (= (and b!786908 (not c!87354)) b!786902))

(assert (= (and b!786908 res!533009) b!786905))

(assert (= (and b!786905 res!533020) b!786901))

(declare-fun m!728653 () Bool)

(assert (=> b!786905 m!728653))

(declare-fun m!728655 () Bool)

(assert (=> b!786905 m!728655))

(declare-fun m!728657 () Bool)

(assert (=> b!786914 m!728657))

(assert (=> b!786914 m!728657))

(declare-fun m!728659 () Bool)

(assert (=> b!786914 m!728659))

(declare-fun m!728661 () Bool)

(assert (=> start!67780 m!728661))

(declare-fun m!728663 () Bool)

(assert (=> start!67780 m!728663))

(declare-fun m!728665 () Bool)

(assert (=> b!786912 m!728665))

(declare-fun m!728667 () Bool)

(assert (=> b!786912 m!728667))

(declare-fun m!728669 () Bool)

(assert (=> b!786910 m!728669))

(assert (=> b!786911 m!728657))

(assert (=> b!786911 m!728657))

(declare-fun m!728671 () Bool)

(assert (=> b!786911 m!728671))

(declare-fun m!728673 () Bool)

(assert (=> b!786911 m!728673))

(declare-fun m!728675 () Bool)

(assert (=> b!786911 m!728675))

(declare-fun m!728677 () Bool)

(assert (=> b!786915 m!728677))

(declare-fun m!728679 () Bool)

(assert (=> b!786903 m!728679))

(assert (=> b!786913 m!728657))

(assert (=> b!786913 m!728657))

(declare-fun m!728681 () Bool)

(assert (=> b!786913 m!728681))

(assert (=> b!786913 m!728681))

(assert (=> b!786913 m!728657))

(declare-fun m!728683 () Bool)

(assert (=> b!786913 m!728683))

(assert (=> b!786921 m!728657))

(assert (=> b!786921 m!728657))

(declare-fun m!728685 () Bool)

(assert (=> b!786921 m!728685))

(declare-fun m!728687 () Bool)

(assert (=> b!786909 m!728687))

(declare-fun m!728689 () Bool)

(assert (=> b!786906 m!728689))

(declare-fun m!728691 () Bool)

(assert (=> b!786904 m!728691))

(assert (=> b!786918 m!728657))

(assert (=> b!786918 m!728657))

(declare-fun m!728693 () Bool)

(assert (=> b!786918 m!728693))

(declare-fun m!728695 () Bool)

(assert (=> b!786916 m!728695))

(assert (=> b!786916 m!728665))

(declare-fun m!728697 () Bool)

(assert (=> b!786916 m!728697))

(declare-fun m!728699 () Bool)

(assert (=> b!786916 m!728699))

(declare-fun m!728701 () Bool)

(assert (=> b!786916 m!728701))

(assert (=> b!786916 m!728697))

(assert (=> b!786920 m!728657))

(assert (=> b!786920 m!728657))

(declare-fun m!728703 () Bool)

(assert (=> b!786920 m!728703))

(assert (=> b!786907 m!728657))

(assert (=> b!786907 m!728657))

(assert (=> b!786907 m!728659))

(push 1)

