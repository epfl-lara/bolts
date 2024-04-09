; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66930 () Bool)

(assert start!66930)

(declare-datatypes ((SeekEntryResult!7891 0))(
  ( (MissingZero!7891 (index!33931 (_ BitVec 32))) (Found!7891 (index!33932 (_ BitVec 32))) (Intermediate!7891 (undefined!8703 Bool) (index!33933 (_ BitVec 32)) (x!64891 (_ BitVec 32))) (Undefined!7891) (MissingVacant!7891 (index!33934 (_ BitVec 32))) )
))
(declare-fun lt!343695 () SeekEntryResult!7891)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42378 0))(
  ( (array!42379 (arr!20284 (Array (_ BitVec 32) (_ BitVec 64))) (size!20705 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42378)

(declare-fun e!429767 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!771947 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42378 (_ BitVec 32)) SeekEntryResult!7891)

(assert (=> b!771947 (= e!429767 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20284 a!3186) j!159) a!3186 mask!3328) lt!343695))))

(declare-fun b!771948 () Bool)

(declare-fun e!429771 () Bool)

(assert (=> b!771948 (= e!429771 true)))

(declare-datatypes ((Unit!26600 0))(
  ( (Unit!26601) )
))
(declare-fun lt!343700 () Unit!26600)

(declare-fun e!429770 () Unit!26600)

(assert (=> b!771948 (= lt!343700 e!429770)))

(declare-fun c!85241 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771948 (= c!85241 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!343702 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771948 (= lt!343702 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771949 () Bool)

(declare-fun e!429769 () Bool)

(assert (=> b!771949 (= e!429769 (not e!429771))))

(declare-fun res!522273 () Bool)

(assert (=> b!771949 (=> res!522273 e!429771)))

(declare-fun lt!343698 () SeekEntryResult!7891)

(get-info :version)

(assert (=> b!771949 (= res!522273 (or (not ((_ is Intermediate!7891) lt!343698)) (bvsge x!1131 (x!64891 lt!343698))))))

(declare-fun e!429773 () Bool)

(assert (=> b!771949 e!429773))

(declare-fun res!522267 () Bool)

(assert (=> b!771949 (=> (not res!522267) (not e!429773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42378 (_ BitVec 32)) Bool)

(assert (=> b!771949 (= res!522267 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343703 () Unit!26600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26600)

(assert (=> b!771949 (= lt!343703 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771950 () Bool)

(declare-fun res!522269 () Bool)

(declare-fun e!429774 () Bool)

(assert (=> b!771950 (=> (not res!522269) (not e!429774))))

(assert (=> b!771950 (= res!522269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!771951 () Bool)

(declare-fun res!522263 () Bool)

(declare-fun e!429768 () Bool)

(assert (=> b!771951 (=> (not res!522263) (not e!429768))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771951 (= res!522263 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20284 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771952 () Bool)

(declare-fun Unit!26602 () Unit!26600)

(assert (=> b!771952 (= e!429770 Unit!26602)))

(assert (=> b!771952 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343702 (select (arr!20284 a!3186) j!159) a!3186 mask!3328) lt!343695)))

(declare-fun b!771953 () Bool)

(assert (=> b!771953 (= e!429768 e!429769)))

(declare-fun res!522268 () Bool)

(assert (=> b!771953 (=> (not res!522268) (not e!429769))))

(declare-fun lt!343699 () SeekEntryResult!7891)

(assert (=> b!771953 (= res!522268 (= lt!343699 lt!343698))))

(declare-fun lt!343696 () (_ BitVec 64))

(declare-fun lt!343705 () array!42378)

(assert (=> b!771953 (= lt!343698 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343696 lt!343705 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771953 (= lt!343699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343696 mask!3328) lt!343696 lt!343705 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!771953 (= lt!343696 (select (store (arr!20284 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!771953 (= lt!343705 (array!42379 (store (arr!20284 a!3186) i!1173 k0!2102) (size!20705 a!3186)))))

(declare-fun b!771954 () Bool)

(declare-fun res!522272 () Bool)

(assert (=> b!771954 (=> (not res!522272) (not e!429774))))

(assert (=> b!771954 (= res!522272 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20705 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20705 a!3186))))))

(declare-fun b!771955 () Bool)

(declare-fun res!522259 () Bool)

(declare-fun e!429766 () Bool)

(assert (=> b!771955 (=> (not res!522259) (not e!429766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771955 (= res!522259 (validKeyInArray!0 (select (arr!20284 a!3186) j!159)))))

(declare-fun b!771956 () Bool)

(declare-fun res!522266 () Bool)

(assert (=> b!771956 (=> (not res!522266) (not e!429766))))

(assert (=> b!771956 (= res!522266 (and (= (size!20705 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20705 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20705 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!771957 () Bool)

(declare-fun res!522274 () Bool)

(assert (=> b!771957 (=> (not res!522274) (not e!429768))))

(assert (=> b!771957 (= res!522274 e!429767)))

(declare-fun c!85242 () Bool)

(assert (=> b!771957 (= c!85242 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!343704 () SeekEntryResult!7891)

(declare-fun e!429775 () Bool)

(declare-fun b!771958 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42378 (_ BitVec 32)) SeekEntryResult!7891)

(assert (=> b!771958 (= e!429775 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20284 a!3186) j!159) a!3186 mask!3328) lt!343704))))

(declare-fun b!771959 () Bool)

(declare-fun res!522264 () Bool)

(assert (=> b!771959 (=> (not res!522264) (not e!429766))))

(assert (=> b!771959 (= res!522264 (validKeyInArray!0 k0!2102))))

(declare-fun res!522261 () Bool)

(assert (=> start!66930 (=> (not res!522261) (not e!429766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66930 (= res!522261 (validMask!0 mask!3328))))

(assert (=> start!66930 e!429766))

(assert (=> start!66930 true))

(declare-fun array_inv!16058 (array!42378) Bool)

(assert (=> start!66930 (array_inv!16058 a!3186)))

(declare-fun b!771960 () Bool)

(assert (=> b!771960 (= e!429774 e!429768)))

(declare-fun res!522270 () Bool)

(assert (=> b!771960 (=> (not res!522270) (not e!429768))))

(assert (=> b!771960 (= res!522270 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20284 a!3186) j!159) mask!3328) (select (arr!20284 a!3186) j!159) a!3186 mask!3328) lt!343695))))

(assert (=> b!771960 (= lt!343695 (Intermediate!7891 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771961 () Bool)

(assert (=> b!771961 (= e!429766 e!429774)))

(declare-fun res!522260 () Bool)

(assert (=> b!771961 (=> (not res!522260) (not e!429774))))

(declare-fun lt!343697 () SeekEntryResult!7891)

(assert (=> b!771961 (= res!522260 (or (= lt!343697 (MissingZero!7891 i!1173)) (= lt!343697 (MissingVacant!7891 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42378 (_ BitVec 32)) SeekEntryResult!7891)

(assert (=> b!771961 (= lt!343697 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!771962 () Bool)

(declare-fun res!522262 () Bool)

(assert (=> b!771962 (=> (not res!522262) (not e!429766))))

(declare-fun arrayContainsKey!0 (array!42378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771962 (= res!522262 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771963 () Bool)

(declare-fun res!522271 () Bool)

(assert (=> b!771963 (=> (not res!522271) (not e!429774))))

(declare-datatypes ((List!14339 0))(
  ( (Nil!14336) (Cons!14335 (h!15437 (_ BitVec 64)) (t!20662 List!14339)) )
))
(declare-fun arrayNoDuplicates!0 (array!42378 (_ BitVec 32) List!14339) Bool)

(assert (=> b!771963 (= res!522271 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14336))))

(declare-fun b!771964 () Bool)

(assert (=> b!771964 (= e!429767 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20284 a!3186) j!159) a!3186 mask!3328) (Found!7891 j!159)))))

(declare-fun b!771965 () Bool)

(declare-fun Unit!26603 () Unit!26600)

(assert (=> b!771965 (= e!429770 Unit!26603)))

(declare-fun lt!343701 () SeekEntryResult!7891)

(assert (=> b!771965 (= lt!343701 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20284 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!771965 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343702 resIntermediateIndex!5 (select (arr!20284 a!3186) j!159) a!3186 mask!3328) (Found!7891 j!159))))

(declare-fun b!771966 () Bool)

(assert (=> b!771966 (= e!429773 e!429775)))

(declare-fun res!522265 () Bool)

(assert (=> b!771966 (=> (not res!522265) (not e!429775))))

(assert (=> b!771966 (= res!522265 (= (seekEntryOrOpen!0 (select (arr!20284 a!3186) j!159) a!3186 mask!3328) lt!343704))))

(assert (=> b!771966 (= lt!343704 (Found!7891 j!159))))

(assert (= (and start!66930 res!522261) b!771956))

(assert (= (and b!771956 res!522266) b!771955))

(assert (= (and b!771955 res!522259) b!771959))

(assert (= (and b!771959 res!522264) b!771962))

(assert (= (and b!771962 res!522262) b!771961))

(assert (= (and b!771961 res!522260) b!771950))

(assert (= (and b!771950 res!522269) b!771963))

(assert (= (and b!771963 res!522271) b!771954))

(assert (= (and b!771954 res!522272) b!771960))

(assert (= (and b!771960 res!522270) b!771951))

(assert (= (and b!771951 res!522263) b!771957))

(assert (= (and b!771957 c!85242) b!771947))

(assert (= (and b!771957 (not c!85242)) b!771964))

(assert (= (and b!771957 res!522274) b!771953))

(assert (= (and b!771953 res!522268) b!771949))

(assert (= (and b!771949 res!522267) b!771966))

(assert (= (and b!771966 res!522265) b!771958))

(assert (= (and b!771949 (not res!522273)) b!771948))

(assert (= (and b!771948 c!85241) b!771952))

(assert (= (and b!771948 (not c!85241)) b!771965))

(declare-fun m!717011 () Bool)

(assert (=> b!771952 m!717011))

(assert (=> b!771952 m!717011))

(declare-fun m!717013 () Bool)

(assert (=> b!771952 m!717013))

(assert (=> b!771947 m!717011))

(assert (=> b!771947 m!717011))

(declare-fun m!717015 () Bool)

(assert (=> b!771947 m!717015))

(declare-fun m!717017 () Bool)

(assert (=> b!771963 m!717017))

(declare-fun m!717019 () Bool)

(assert (=> b!771948 m!717019))

(declare-fun m!717021 () Bool)

(assert (=> b!771953 m!717021))

(declare-fun m!717023 () Bool)

(assert (=> b!771953 m!717023))

(declare-fun m!717025 () Bool)

(assert (=> b!771953 m!717025))

(declare-fun m!717027 () Bool)

(assert (=> b!771953 m!717027))

(assert (=> b!771953 m!717021))

(declare-fun m!717029 () Bool)

(assert (=> b!771953 m!717029))

(declare-fun m!717031 () Bool)

(assert (=> b!771962 m!717031))

(assert (=> b!771966 m!717011))

(assert (=> b!771966 m!717011))

(declare-fun m!717033 () Bool)

(assert (=> b!771966 m!717033))

(assert (=> b!771960 m!717011))

(assert (=> b!771960 m!717011))

(declare-fun m!717035 () Bool)

(assert (=> b!771960 m!717035))

(assert (=> b!771960 m!717035))

(assert (=> b!771960 m!717011))

(declare-fun m!717037 () Bool)

(assert (=> b!771960 m!717037))

(declare-fun m!717039 () Bool)

(assert (=> start!66930 m!717039))

(declare-fun m!717041 () Bool)

(assert (=> start!66930 m!717041))

(declare-fun m!717043 () Bool)

(assert (=> b!771949 m!717043))

(declare-fun m!717045 () Bool)

(assert (=> b!771949 m!717045))

(assert (=> b!771965 m!717011))

(assert (=> b!771965 m!717011))

(declare-fun m!717047 () Bool)

(assert (=> b!771965 m!717047))

(assert (=> b!771965 m!717011))

(declare-fun m!717049 () Bool)

(assert (=> b!771965 m!717049))

(declare-fun m!717051 () Bool)

(assert (=> b!771959 m!717051))

(declare-fun m!717053 () Bool)

(assert (=> b!771951 m!717053))

(assert (=> b!771958 m!717011))

(assert (=> b!771958 m!717011))

(declare-fun m!717055 () Bool)

(assert (=> b!771958 m!717055))

(declare-fun m!717057 () Bool)

(assert (=> b!771950 m!717057))

(assert (=> b!771964 m!717011))

(assert (=> b!771964 m!717011))

(assert (=> b!771964 m!717047))

(assert (=> b!771955 m!717011))

(assert (=> b!771955 m!717011))

(declare-fun m!717059 () Bool)

(assert (=> b!771955 m!717059))

(declare-fun m!717061 () Bool)

(assert (=> b!771961 m!717061))

(check-sat (not b!771950) (not b!771947) (not b!771961) (not b!771952) (not b!771962) (not b!771964) (not b!771963) (not b!771966) (not b!771955) (not b!771953) (not start!66930) (not b!771948) (not b!771965) (not b!771959) (not b!771958) (not b!771960) (not b!771949))
(check-sat)
