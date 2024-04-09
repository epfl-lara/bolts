; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64706 () Bool)

(assert start!64706)

(declare-fun b!729204 () Bool)

(declare-fun res!489772 () Bool)

(declare-fun e!408166 () Bool)

(assert (=> b!729204 (=> (not res!489772) (not e!408166))))

(declare-datatypes ((array!41108 0))(
  ( (array!41109 (arr!19670 (Array (_ BitVec 32) (_ BitVec 64))) (size!20091 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41108)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729204 (= res!489772 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729205 () Bool)

(declare-fun res!489769 () Bool)

(declare-fun e!408165 () Bool)

(assert (=> b!729205 (=> (not res!489769) (not e!408165))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41108 (_ BitVec 32)) Bool)

(assert (=> b!729205 (= res!489769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7277 0))(
  ( (MissingZero!7277 (index!31475 (_ BitVec 32))) (Found!7277 (index!31476 (_ BitVec 32))) (Intermediate!7277 (undefined!8089 Bool) (index!31477 (_ BitVec 32)) (x!62484 (_ BitVec 32))) (Undefined!7277) (MissingVacant!7277 (index!31478 (_ BitVec 32))) )
))
(declare-fun lt!323074 () SeekEntryResult!7277)

(declare-fun e!408171 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!729206 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41108 (_ BitVec 32)) SeekEntryResult!7277)

(assert (=> b!729206 (= e!408171 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19670 a!3186) j!159) a!3186 mask!3328) lt!323074))))

(declare-fun b!729207 () Bool)

(declare-fun e!408164 () Bool)

(assert (=> b!729207 (= e!408164 e!408171)))

(declare-fun res!489761 () Bool)

(assert (=> b!729207 (=> (not res!489761) (not e!408171))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41108 (_ BitVec 32)) SeekEntryResult!7277)

(assert (=> b!729207 (= res!489761 (= (seekEntryOrOpen!0 (select (arr!19670 a!3186) j!159) a!3186 mask!3328) lt!323074))))

(assert (=> b!729207 (= lt!323074 (Found!7277 j!159))))

(declare-fun b!729208 () Bool)

(declare-fun res!489760 () Bool)

(assert (=> b!729208 (=> (not res!489760) (not e!408166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729208 (= res!489760 (validKeyInArray!0 (select (arr!19670 a!3186) j!159)))))

(declare-fun b!729209 () Bool)

(declare-fun res!489762 () Bool)

(declare-fun e!408170 () Bool)

(assert (=> b!729209 (=> (not res!489762) (not e!408170))))

(declare-fun e!408167 () Bool)

(assert (=> b!729209 (= res!489762 e!408167)))

(declare-fun c!80097 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!729209 (= c!80097 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729210 () Bool)

(declare-fun res!489770 () Bool)

(assert (=> b!729210 (=> (not res!489770) (not e!408166))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729210 (= res!489770 (and (= (size!20091 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20091 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20091 a!3186)) (not (= i!1173 j!159))))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323071 () SeekEntryResult!7277)

(declare-fun b!729211 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41108 (_ BitVec 32)) SeekEntryResult!7277)

(assert (=> b!729211 (= e!408167 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19670 a!3186) j!159) a!3186 mask!3328) lt!323071))))

(declare-fun res!489766 () Bool)

(assert (=> start!64706 (=> (not res!489766) (not e!408166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64706 (= res!489766 (validMask!0 mask!3328))))

(assert (=> start!64706 e!408166))

(assert (=> start!64706 true))

(declare-fun array_inv!15444 (array!41108) Bool)

(assert (=> start!64706 (array_inv!15444 a!3186)))

(declare-fun b!729212 () Bool)

(declare-fun e!408169 () Bool)

(declare-fun e!408163 () Bool)

(assert (=> b!729212 (= e!408169 (not e!408163))))

(declare-fun res!489771 () Bool)

(assert (=> b!729212 (=> res!489771 e!408163)))

(declare-fun lt!323073 () SeekEntryResult!7277)

(assert (=> b!729212 (= res!489771 (or (not (is-Intermediate!7277 lt!323073)) (bvsge x!1131 (x!62484 lt!323073))))))

(assert (=> b!729212 e!408164))

(declare-fun res!489773 () Bool)

(assert (=> b!729212 (=> (not res!489773) (not e!408164))))

(assert (=> b!729212 (= res!489773 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24872 0))(
  ( (Unit!24873) )
))
(declare-fun lt!323075 () Unit!24872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24872)

(assert (=> b!729212 (= lt!323075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729213 () Bool)

(declare-fun res!489774 () Bool)

(assert (=> b!729213 (=> (not res!489774) (not e!408165))))

(declare-datatypes ((List!13725 0))(
  ( (Nil!13722) (Cons!13721 (h!14781 (_ BitVec 64)) (t!20048 List!13725)) )
))
(declare-fun arrayNoDuplicates!0 (array!41108 (_ BitVec 32) List!13725) Bool)

(assert (=> b!729213 (= res!489774 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13722))))

(declare-fun b!729214 () Bool)

(assert (=> b!729214 (= e!408170 e!408169)))

(declare-fun res!489767 () Bool)

(assert (=> b!729214 (=> (not res!489767) (not e!408169))))

(declare-fun lt!323076 () SeekEntryResult!7277)

(assert (=> b!729214 (= res!489767 (= lt!323076 lt!323073))))

(declare-fun lt!323070 () array!41108)

(declare-fun lt!323072 () (_ BitVec 64))

(assert (=> b!729214 (= lt!323073 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323072 lt!323070 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729214 (= lt!323076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323072 mask!3328) lt!323072 lt!323070 mask!3328))))

(assert (=> b!729214 (= lt!323072 (select (store (arr!19670 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729214 (= lt!323070 (array!41109 (store (arr!19670 a!3186) i!1173 k!2102) (size!20091 a!3186)))))

(declare-fun b!729215 () Bool)

(assert (=> b!729215 (= e!408166 e!408165)))

(declare-fun res!489765 () Bool)

(assert (=> b!729215 (=> (not res!489765) (not e!408165))))

(declare-fun lt!323078 () SeekEntryResult!7277)

(assert (=> b!729215 (= res!489765 (or (= lt!323078 (MissingZero!7277 i!1173)) (= lt!323078 (MissingVacant!7277 i!1173))))))

(assert (=> b!729215 (= lt!323078 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729216 () Bool)

(declare-fun res!489768 () Bool)

(assert (=> b!729216 (=> (not res!489768) (not e!408170))))

(assert (=> b!729216 (= res!489768 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19670 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729217 () Bool)

(assert (=> b!729217 (= e!408163 true)))

(declare-fun lt!323077 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729217 (= lt!323077 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729218 () Bool)

(declare-fun res!489764 () Bool)

(assert (=> b!729218 (=> (not res!489764) (not e!408166))))

(assert (=> b!729218 (= res!489764 (validKeyInArray!0 k!2102))))

(declare-fun b!729219 () Bool)

(declare-fun res!489759 () Bool)

(assert (=> b!729219 (=> (not res!489759) (not e!408165))))

(assert (=> b!729219 (= res!489759 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20091 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20091 a!3186))))))

(declare-fun b!729220 () Bool)

(assert (=> b!729220 (= e!408165 e!408170)))

(declare-fun res!489763 () Bool)

(assert (=> b!729220 (=> (not res!489763) (not e!408170))))

(assert (=> b!729220 (= res!489763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19670 a!3186) j!159) mask!3328) (select (arr!19670 a!3186) j!159) a!3186 mask!3328) lt!323071))))

(assert (=> b!729220 (= lt!323071 (Intermediate!7277 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729221 () Bool)

(assert (=> b!729221 (= e!408167 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19670 a!3186) j!159) a!3186 mask!3328) (Found!7277 j!159)))))

(assert (= (and start!64706 res!489766) b!729210))

(assert (= (and b!729210 res!489770) b!729208))

(assert (= (and b!729208 res!489760) b!729218))

(assert (= (and b!729218 res!489764) b!729204))

(assert (= (and b!729204 res!489772) b!729215))

(assert (= (and b!729215 res!489765) b!729205))

(assert (= (and b!729205 res!489769) b!729213))

(assert (= (and b!729213 res!489774) b!729219))

(assert (= (and b!729219 res!489759) b!729220))

(assert (= (and b!729220 res!489763) b!729216))

(assert (= (and b!729216 res!489768) b!729209))

(assert (= (and b!729209 c!80097) b!729211))

(assert (= (and b!729209 (not c!80097)) b!729221))

(assert (= (and b!729209 res!489762) b!729214))

(assert (= (and b!729214 res!489767) b!729212))

(assert (= (and b!729212 res!489773) b!729207))

(assert (= (and b!729207 res!489761) b!729206))

(assert (= (and b!729212 (not res!489771)) b!729217))

(declare-fun m!682957 () Bool)

(assert (=> b!729211 m!682957))

(assert (=> b!729211 m!682957))

(declare-fun m!682959 () Bool)

(assert (=> b!729211 m!682959))

(declare-fun m!682961 () Bool)

(assert (=> b!729213 m!682961))

(assert (=> b!729220 m!682957))

(assert (=> b!729220 m!682957))

(declare-fun m!682963 () Bool)

(assert (=> b!729220 m!682963))

(assert (=> b!729220 m!682963))

(assert (=> b!729220 m!682957))

(declare-fun m!682965 () Bool)

(assert (=> b!729220 m!682965))

(assert (=> b!729206 m!682957))

(assert (=> b!729206 m!682957))

(declare-fun m!682967 () Bool)

(assert (=> b!729206 m!682967))

(declare-fun m!682969 () Bool)

(assert (=> b!729214 m!682969))

(declare-fun m!682971 () Bool)

(assert (=> b!729214 m!682971))

(declare-fun m!682973 () Bool)

(assert (=> b!729214 m!682973))

(declare-fun m!682975 () Bool)

(assert (=> b!729214 m!682975))

(assert (=> b!729214 m!682969))

(declare-fun m!682977 () Bool)

(assert (=> b!729214 m!682977))

(declare-fun m!682979 () Bool)

(assert (=> b!729204 m!682979))

(assert (=> b!729221 m!682957))

(assert (=> b!729221 m!682957))

(declare-fun m!682981 () Bool)

(assert (=> b!729221 m!682981))

(declare-fun m!682983 () Bool)

(assert (=> b!729216 m!682983))

(declare-fun m!682985 () Bool)

(assert (=> start!64706 m!682985))

(declare-fun m!682987 () Bool)

(assert (=> start!64706 m!682987))

(declare-fun m!682989 () Bool)

(assert (=> b!729218 m!682989))

(declare-fun m!682991 () Bool)

(assert (=> b!729217 m!682991))

(assert (=> b!729207 m!682957))

(assert (=> b!729207 m!682957))

(declare-fun m!682993 () Bool)

(assert (=> b!729207 m!682993))

(declare-fun m!682995 () Bool)

(assert (=> b!729215 m!682995))

(declare-fun m!682997 () Bool)

(assert (=> b!729212 m!682997))

(declare-fun m!682999 () Bool)

(assert (=> b!729212 m!682999))

(declare-fun m!683001 () Bool)

(assert (=> b!729205 m!683001))

(assert (=> b!729208 m!682957))

(assert (=> b!729208 m!682957))

(declare-fun m!683003 () Bool)

(assert (=> b!729208 m!683003))

(push 1)

