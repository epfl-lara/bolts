; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67920 () Bool)

(assert start!67920)

(declare-fun b!789882 () Bool)

(declare-fun res!535220 () Bool)

(declare-fun e!439048 () Bool)

(assert (=> b!789882 (=> (not res!535220) (not e!439048))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42852 0))(
  ( (array!42853 (arr!20509 (Array (_ BitVec 32) (_ BitVec 64))) (size!20930 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42852)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789882 (= res!535220 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20930 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20930 a!3186))))))

(declare-fun b!789883 () Bool)

(declare-fun e!439046 () Bool)

(assert (=> b!789883 (= e!439048 e!439046)))

(declare-fun res!535235 () Bool)

(assert (=> b!789883 (=> (not res!535235) (not e!439046))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8116 0))(
  ( (MissingZero!8116 (index!34831 (_ BitVec 32))) (Found!8116 (index!34832 (_ BitVec 32))) (Intermediate!8116 (undefined!8928 Bool) (index!34833 (_ BitVec 32)) (x!65794 (_ BitVec 32))) (Undefined!8116) (MissingVacant!8116 (index!34834 (_ BitVec 32))) )
))
(declare-fun lt!352597 () SeekEntryResult!8116)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42852 (_ BitVec 32)) SeekEntryResult!8116)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789883 (= res!535235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20509 a!3186) j!159) mask!3328) (select (arr!20509 a!3186) j!159) a!3186 mask!3328) lt!352597))))

(assert (=> b!789883 (= lt!352597 (Intermediate!8116 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789884 () Bool)

(declare-fun res!535223 () Bool)

(assert (=> b!789884 (=> (not res!535223) (not e!439048))))

(declare-datatypes ((List!14564 0))(
  ( (Nil!14561) (Cons!14560 (h!15686 (_ BitVec 64)) (t!20887 List!14564)) )
))
(declare-fun arrayNoDuplicates!0 (array!42852 (_ BitVec 32) List!14564) Bool)

(assert (=> b!789884 (= res!535223 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14561))))

(declare-fun b!789885 () Bool)

(declare-fun res!535228 () Bool)

(declare-fun e!439037 () Bool)

(assert (=> b!789885 (=> (not res!535228) (not e!439037))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789885 (= res!535228 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789886 () Bool)

(declare-fun e!439045 () Bool)

(declare-fun e!439043 () Bool)

(assert (=> b!789886 (= e!439045 e!439043)))

(declare-fun res!535226 () Bool)

(assert (=> b!789886 (=> res!535226 e!439043)))

(declare-fun lt!352591 () SeekEntryResult!8116)

(declare-fun lt!352585 () SeekEntryResult!8116)

(assert (=> b!789886 (= res!535226 (not (= lt!352591 lt!352585)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42852 (_ BitVec 32)) SeekEntryResult!8116)

(assert (=> b!789886 (= lt!352591 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20509 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789887 () Bool)

(declare-fun e!439047 () Bool)

(assert (=> b!789887 (= e!439046 e!439047)))

(declare-fun res!535221 () Bool)

(assert (=> b!789887 (=> (not res!535221) (not e!439047))))

(declare-fun lt!352587 () SeekEntryResult!8116)

(declare-fun lt!352583 () SeekEntryResult!8116)

(assert (=> b!789887 (= res!535221 (= lt!352587 lt!352583))))

(declare-fun lt!352595 () (_ BitVec 64))

(declare-fun lt!352586 () array!42852)

(assert (=> b!789887 (= lt!352583 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352595 lt!352586 mask!3328))))

(assert (=> b!789887 (= lt!352587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352595 mask!3328) lt!352595 lt!352586 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!789887 (= lt!352595 (select (store (arr!20509 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!789887 (= lt!352586 (array!42853 (store (arr!20509 a!3186) i!1173 k0!2102) (size!20930 a!3186)))))

(declare-fun b!789888 () Bool)

(declare-fun res!535234 () Bool)

(assert (=> b!789888 (=> (not res!535234) (not e!439046))))

(assert (=> b!789888 (= res!535234 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20509 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789889 () Bool)

(assert (=> b!789889 (= e!439047 (not e!439045))))

(declare-fun res!535224 () Bool)

(assert (=> b!789889 (=> res!535224 e!439045)))

(get-info :version)

(assert (=> b!789889 (= res!535224 (or (not ((_ is Intermediate!8116) lt!352583)) (bvslt x!1131 (x!65794 lt!352583)) (not (= x!1131 (x!65794 lt!352583))) (not (= index!1321 (index!34833 lt!352583)))))))

(declare-fun e!439042 () Bool)

(assert (=> b!789889 e!439042))

(declare-fun res!535231 () Bool)

(assert (=> b!789889 (=> (not res!535231) (not e!439042))))

(declare-fun lt!352592 () SeekEntryResult!8116)

(assert (=> b!789889 (= res!535231 (= lt!352592 lt!352585))))

(assert (=> b!789889 (= lt!352585 (Found!8116 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42852 (_ BitVec 32)) SeekEntryResult!8116)

(assert (=> b!789889 (= lt!352592 (seekEntryOrOpen!0 (select (arr!20509 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42852 (_ BitVec 32)) Bool)

(assert (=> b!789889 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27374 0))(
  ( (Unit!27375) )
))
(declare-fun lt!352584 () Unit!27374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27374)

(assert (=> b!789889 (= lt!352584 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789890 () Bool)

(declare-fun res!535229 () Bool)

(assert (=> b!789890 (=> (not res!535229) (not e!439037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789890 (= res!535229 (validKeyInArray!0 (select (arr!20509 a!3186) j!159)))))

(declare-fun b!789891 () Bool)

(declare-fun res!535233 () Bool)

(assert (=> b!789891 (=> (not res!535233) (not e!439048))))

(assert (=> b!789891 (= res!535233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789892 () Bool)

(declare-fun e!439038 () Bool)

(assert (=> b!789892 (= e!439038 true)))

(declare-fun lt!352590 () SeekEntryResult!8116)

(assert (=> b!789892 (= lt!352590 lt!352591)))

(declare-fun lt!352593 () Unit!27374)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42852 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27374)

(assert (=> b!789892 (= lt!352593 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789893 () Bool)

(declare-fun res!535237 () Bool)

(assert (=> b!789893 (=> (not res!535237) (not e!439046))))

(declare-fun e!439040 () Bool)

(assert (=> b!789893 (= res!535237 e!439040)))

(declare-fun c!87741 () Bool)

(assert (=> b!789893 (= c!87741 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789894 () Bool)

(assert (=> b!789894 (= e!439037 e!439048)))

(declare-fun res!535230 () Bool)

(assert (=> b!789894 (=> (not res!535230) (not e!439048))))

(declare-fun lt!352596 () SeekEntryResult!8116)

(assert (=> b!789894 (= res!535230 (or (= lt!352596 (MissingZero!8116 i!1173)) (= lt!352596 (MissingVacant!8116 i!1173))))))

(assert (=> b!789894 (= lt!352596 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!789895 () Bool)

(declare-fun res!535225 () Bool)

(assert (=> b!789895 (=> (not res!535225) (not e!439037))))

(assert (=> b!789895 (= res!535225 (and (= (size!20930 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20930 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20930 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789896 () Bool)

(declare-fun e!439044 () Bool)

(assert (=> b!789896 (= e!439043 e!439044)))

(declare-fun res!535222 () Bool)

(assert (=> b!789896 (=> res!535222 e!439044)))

(declare-fun lt!352589 () (_ BitVec 64))

(assert (=> b!789896 (= res!535222 (= lt!352589 lt!352595))))

(assert (=> b!789896 (= lt!352589 (select (store (arr!20509 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!789897 () Bool)

(declare-fun e!439039 () Unit!27374)

(declare-fun Unit!27376 () Unit!27374)

(assert (=> b!789897 (= e!439039 Unit!27376)))

(declare-fun b!789898 () Bool)

(assert (=> b!789898 (= e!439040 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20509 a!3186) j!159) a!3186 mask!3328) lt!352597))))

(declare-fun res!535227 () Bool)

(assert (=> start!67920 (=> (not res!535227) (not e!439037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67920 (= res!535227 (validMask!0 mask!3328))))

(assert (=> start!67920 e!439037))

(assert (=> start!67920 true))

(declare-fun array_inv!16283 (array!42852) Bool)

(assert (=> start!67920 (array_inv!16283 a!3186)))

(declare-fun b!789899 () Bool)

(assert (=> b!789899 (= e!439044 e!439038)))

(declare-fun res!535236 () Bool)

(assert (=> b!789899 (=> res!535236 e!439038)))

(assert (=> b!789899 (= res!535236 (or (not (= (select (arr!20509 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352594 () SeekEntryResult!8116)

(assert (=> b!789899 (and (= lt!352594 lt!352590) (= lt!352592 lt!352591))))

(assert (=> b!789899 (= lt!352590 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352595 lt!352586 mask!3328))))

(assert (=> b!789899 (= lt!352594 (seekEntryOrOpen!0 lt!352595 lt!352586 mask!3328))))

(assert (=> b!789899 (= lt!352589 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352588 () Unit!27374)

(assert (=> b!789899 (= lt!352588 e!439039)))

(declare-fun c!87740 () Bool)

(assert (=> b!789899 (= c!87740 (= lt!352589 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789900 () Bool)

(declare-fun res!535232 () Bool)

(assert (=> b!789900 (=> (not res!535232) (not e!439037))))

(assert (=> b!789900 (= res!535232 (validKeyInArray!0 k0!2102))))

(declare-fun b!789901 () Bool)

(assert (=> b!789901 (= e!439040 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20509 a!3186) j!159) a!3186 mask!3328) (Found!8116 j!159)))))

(declare-fun b!789902 () Bool)

(declare-fun Unit!27377 () Unit!27374)

(assert (=> b!789902 (= e!439039 Unit!27377)))

(assert (=> b!789902 false))

(declare-fun b!789903 () Bool)

(assert (=> b!789903 (= e!439042 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20509 a!3186) j!159) a!3186 mask!3328) lt!352585))))

(assert (= (and start!67920 res!535227) b!789895))

(assert (= (and b!789895 res!535225) b!789890))

(assert (= (and b!789890 res!535229) b!789900))

(assert (= (and b!789900 res!535232) b!789885))

(assert (= (and b!789885 res!535228) b!789894))

(assert (= (and b!789894 res!535230) b!789891))

(assert (= (and b!789891 res!535233) b!789884))

(assert (= (and b!789884 res!535223) b!789882))

(assert (= (and b!789882 res!535220) b!789883))

(assert (= (and b!789883 res!535235) b!789888))

(assert (= (and b!789888 res!535234) b!789893))

(assert (= (and b!789893 c!87741) b!789898))

(assert (= (and b!789893 (not c!87741)) b!789901))

(assert (= (and b!789893 res!535237) b!789887))

(assert (= (and b!789887 res!535221) b!789889))

(assert (= (and b!789889 res!535231) b!789903))

(assert (= (and b!789889 (not res!535224)) b!789886))

(assert (= (and b!789886 (not res!535226)) b!789896))

(assert (= (and b!789896 (not res!535222)) b!789899))

(assert (= (and b!789899 c!87740) b!789902))

(assert (= (and b!789899 (not c!87740)) b!789897))

(assert (= (and b!789899 (not res!535236)) b!789892))

(declare-fun m!730941 () Bool)

(assert (=> b!789898 m!730941))

(assert (=> b!789898 m!730941))

(declare-fun m!730943 () Bool)

(assert (=> b!789898 m!730943))

(assert (=> b!789890 m!730941))

(assert (=> b!789890 m!730941))

(declare-fun m!730945 () Bool)

(assert (=> b!789890 m!730945))

(assert (=> b!789889 m!730941))

(assert (=> b!789889 m!730941))

(declare-fun m!730947 () Bool)

(assert (=> b!789889 m!730947))

(declare-fun m!730949 () Bool)

(assert (=> b!789889 m!730949))

(declare-fun m!730951 () Bool)

(assert (=> b!789889 m!730951))

(declare-fun m!730953 () Bool)

(assert (=> b!789894 m!730953))

(declare-fun m!730955 () Bool)

(assert (=> b!789899 m!730955))

(declare-fun m!730957 () Bool)

(assert (=> b!789899 m!730957))

(declare-fun m!730959 () Bool)

(assert (=> b!789899 m!730959))

(declare-fun m!730961 () Bool)

(assert (=> b!789900 m!730961))

(assert (=> b!789903 m!730941))

(assert (=> b!789903 m!730941))

(declare-fun m!730963 () Bool)

(assert (=> b!789903 m!730963))

(declare-fun m!730965 () Bool)

(assert (=> b!789887 m!730965))

(declare-fun m!730967 () Bool)

(assert (=> b!789887 m!730967))

(declare-fun m!730969 () Bool)

(assert (=> b!789887 m!730969))

(declare-fun m!730971 () Bool)

(assert (=> b!789887 m!730971))

(assert (=> b!789887 m!730965))

(declare-fun m!730973 () Bool)

(assert (=> b!789887 m!730973))

(assert (=> b!789886 m!730941))

(assert (=> b!789886 m!730941))

(declare-fun m!730975 () Bool)

(assert (=> b!789886 m!730975))

(assert (=> b!789901 m!730941))

(assert (=> b!789901 m!730941))

(assert (=> b!789901 m!730975))

(declare-fun m!730977 () Bool)

(assert (=> b!789892 m!730977))

(assert (=> b!789896 m!730969))

(declare-fun m!730979 () Bool)

(assert (=> b!789896 m!730979))

(declare-fun m!730981 () Bool)

(assert (=> b!789891 m!730981))

(declare-fun m!730983 () Bool)

(assert (=> start!67920 m!730983))

(declare-fun m!730985 () Bool)

(assert (=> start!67920 m!730985))

(assert (=> b!789883 m!730941))

(assert (=> b!789883 m!730941))

(declare-fun m!730987 () Bool)

(assert (=> b!789883 m!730987))

(assert (=> b!789883 m!730987))

(assert (=> b!789883 m!730941))

(declare-fun m!730989 () Bool)

(assert (=> b!789883 m!730989))

(declare-fun m!730991 () Bool)

(assert (=> b!789884 m!730991))

(declare-fun m!730993 () Bool)

(assert (=> b!789885 m!730993))

(declare-fun m!730995 () Bool)

(assert (=> b!789888 m!730995))

(check-sat (not b!789884) (not b!789898) (not b!789883) (not b!789886) (not b!789894) (not b!789903) (not b!789901) (not b!789892) (not b!789890) (not b!789891) (not b!789887) (not b!789900) (not b!789899) (not start!67920) (not b!789889) (not b!789885))
(check-sat)
