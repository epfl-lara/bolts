; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67754 () Bool)

(assert start!67754)

(declare-fun b!786002 () Bool)

(declare-fun e!436975 () Bool)

(declare-fun e!436967 () Bool)

(assert (=> b!786002 (= e!436975 e!436967)))

(declare-fun res!532281 () Bool)

(assert (=> b!786002 (=> (not res!532281) (not e!436967))))

(declare-datatypes ((SeekEntryResult!8066 0))(
  ( (MissingZero!8066 (index!34631 (_ BitVec 32))) (Found!8066 (index!34632 (_ BitVec 32))) (Intermediate!8066 (undefined!8878 Bool) (index!34633 (_ BitVec 32)) (x!65599 (_ BitVec 32))) (Undefined!8066) (MissingVacant!8066 (index!34634 (_ BitVec 32))) )
))
(declare-fun lt!350544 () SeekEntryResult!8066)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786002 (= res!532281 (or (= lt!350544 (MissingZero!8066 i!1173)) (= lt!350544 (MissingVacant!8066 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42749 0))(
  ( (array!42750 (arr!20459 (Array (_ BitVec 32) (_ BitVec 64))) (size!20880 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42749)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42749 (_ BitVec 32)) SeekEntryResult!8066)

(assert (=> b!786002 (= lt!350544 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786003 () Bool)

(declare-fun e!436978 () Bool)

(assert (=> b!786003 (= e!436967 e!436978)))

(declare-fun res!532275 () Bool)

(assert (=> b!786003 (=> (not res!532275) (not e!436978))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!350539 () SeekEntryResult!8066)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42749 (_ BitVec 32)) SeekEntryResult!8066)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786003 (= res!532275 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20459 a!3186) j!159) mask!3328) (select (arr!20459 a!3186) j!159) a!3186 mask!3328) lt!350539))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786003 (= lt!350539 (Intermediate!8066 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786004 () Bool)

(declare-fun res!532272 () Bool)

(assert (=> b!786004 (=> (not res!532272) (not e!436975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786004 (= res!532272 (validKeyInArray!0 k!2102))))

(declare-fun b!786005 () Bool)

(declare-fun res!532273 () Bool)

(assert (=> b!786005 (=> (not res!532273) (not e!436975))))

(assert (=> b!786005 (= res!532273 (validKeyInArray!0 (select (arr!20459 a!3186) j!159)))))

(declare-fun b!786006 () Bool)

(declare-fun res!532276 () Bool)

(assert (=> b!786006 (=> (not res!532276) (not e!436975))))

(declare-fun arrayContainsKey!0 (array!42749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786006 (= res!532276 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786007 () Bool)

(declare-fun res!532284 () Bool)

(assert (=> b!786007 (=> (not res!532284) (not e!436978))))

(declare-fun e!436974 () Bool)

(assert (=> b!786007 (= res!532284 e!436974)))

(declare-fun c!87275 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!786007 (= c!87275 (bvsle x!1131 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!786009 () Bool)

(assert (=> b!786009 (= e!436974 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20459 a!3186) j!159) a!3186 mask!3328) lt!350539))))

(declare-fun b!786010 () Bool)

(declare-fun e!436973 () Bool)

(declare-fun e!436970 () Bool)

(assert (=> b!786010 (= e!436973 e!436970)))

(declare-fun res!532267 () Bool)

(assert (=> b!786010 (=> res!532267 e!436970)))

(declare-fun lt!350542 () (_ BitVec 64))

(declare-fun lt!350540 () (_ BitVec 64))

(assert (=> b!786010 (= res!532267 (= lt!350542 lt!350540))))

(assert (=> b!786010 (= lt!350542 (select (store (arr!20459 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786011 () Bool)

(assert (=> b!786011 (= e!436970 true)))

(declare-fun e!436968 () Bool)

(assert (=> b!786011 e!436968))

(declare-fun res!532277 () Bool)

(assert (=> b!786011 (=> (not res!532277) (not e!436968))))

(assert (=> b!786011 (= res!532277 (= lt!350542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27174 0))(
  ( (Unit!27175) )
))
(declare-fun lt!350543 () Unit!27174)

(declare-fun e!436977 () Unit!27174)

(assert (=> b!786011 (= lt!350543 e!436977)))

(declare-fun c!87276 () Bool)

(assert (=> b!786011 (= c!87276 (= lt!350542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786012 () Bool)

(declare-fun res!532279 () Bool)

(assert (=> b!786012 (=> (not res!532279) (not e!436967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42749 (_ BitVec 32)) Bool)

(assert (=> b!786012 (= res!532279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786013 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42749 (_ BitVec 32)) SeekEntryResult!8066)

(assert (=> b!786013 (= e!436974 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20459 a!3186) j!159) a!3186 mask!3328) (Found!8066 j!159)))))

(declare-fun b!786014 () Bool)

(declare-fun res!532278 () Bool)

(assert (=> b!786014 (=> (not res!532278) (not e!436968))))

(declare-fun lt!350536 () array!42749)

(assert (=> b!786014 (= res!532278 (= (seekEntryOrOpen!0 lt!350540 lt!350536 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350540 lt!350536 mask!3328)))))

(declare-fun b!786015 () Bool)

(declare-fun e!436976 () Bool)

(assert (=> b!786015 (= e!436978 e!436976)))

(declare-fun res!532269 () Bool)

(assert (=> b!786015 (=> (not res!532269) (not e!436976))))

(declare-fun lt!350535 () SeekEntryResult!8066)

(declare-fun lt!350537 () SeekEntryResult!8066)

(assert (=> b!786015 (= res!532269 (= lt!350535 lt!350537))))

(assert (=> b!786015 (= lt!350537 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350540 lt!350536 mask!3328))))

(assert (=> b!786015 (= lt!350535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350540 mask!3328) lt!350540 lt!350536 mask!3328))))

(assert (=> b!786015 (= lt!350540 (select (store (arr!20459 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786015 (= lt!350536 (array!42750 (store (arr!20459 a!3186) i!1173 k!2102) (size!20880 a!3186)))))

(declare-fun b!786016 () Bool)

(declare-fun res!532270 () Bool)

(assert (=> b!786016 (=> (not res!532270) (not e!436967))))

(assert (=> b!786016 (= res!532270 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20880 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20880 a!3186))))))

(declare-fun b!786017 () Bool)

(declare-fun res!532271 () Bool)

(assert (=> b!786017 (=> (not res!532271) (not e!436967))))

(declare-datatypes ((List!14514 0))(
  ( (Nil!14511) (Cons!14510 (h!15633 (_ BitVec 64)) (t!20837 List!14514)) )
))
(declare-fun arrayNoDuplicates!0 (array!42749 (_ BitVec 32) List!14514) Bool)

(assert (=> b!786017 (= res!532271 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14511))))

(declare-fun lt!350545 () SeekEntryResult!8066)

(declare-fun e!436972 () Bool)

(declare-fun b!786018 () Bool)

(assert (=> b!786018 (= e!436972 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20459 a!3186) j!159) a!3186 mask!3328) lt!350545))))

(declare-fun b!786019 () Bool)

(declare-fun Unit!27176 () Unit!27174)

(assert (=> b!786019 (= e!436977 Unit!27176)))

(declare-fun b!786020 () Bool)

(declare-fun res!532285 () Bool)

(assert (=> b!786020 (=> (not res!532285) (not e!436978))))

(assert (=> b!786020 (= res!532285 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20459 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!532274 () Bool)

(assert (=> start!67754 (=> (not res!532274) (not e!436975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67754 (= res!532274 (validMask!0 mask!3328))))

(assert (=> start!67754 e!436975))

(assert (=> start!67754 true))

(declare-fun array_inv!16233 (array!42749) Bool)

(assert (=> start!67754 (array_inv!16233 a!3186)))

(declare-fun b!786008 () Bool)

(declare-fun lt!350534 () SeekEntryResult!8066)

(declare-fun lt!350541 () SeekEntryResult!8066)

(assert (=> b!786008 (= e!436968 (= lt!350534 lt!350541))))

(declare-fun b!786021 () Bool)

(declare-fun Unit!27177 () Unit!27174)

(assert (=> b!786021 (= e!436977 Unit!27177)))

(assert (=> b!786021 false))

(declare-fun b!786022 () Bool)

(declare-fun res!532283 () Bool)

(assert (=> b!786022 (=> (not res!532283) (not e!436975))))

(assert (=> b!786022 (= res!532283 (and (= (size!20880 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20880 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20880 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786023 () Bool)

(declare-fun e!436971 () Bool)

(assert (=> b!786023 (= e!436971 e!436973)))

(declare-fun res!532280 () Bool)

(assert (=> b!786023 (=> res!532280 e!436973)))

(assert (=> b!786023 (= res!532280 (not (= lt!350541 lt!350545)))))

(assert (=> b!786023 (= lt!350541 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20459 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786024 () Bool)

(assert (=> b!786024 (= e!436976 (not e!436971))))

(declare-fun res!532268 () Bool)

(assert (=> b!786024 (=> res!532268 e!436971)))

(assert (=> b!786024 (= res!532268 (or (not (is-Intermediate!8066 lt!350537)) (bvslt x!1131 (x!65599 lt!350537)) (not (= x!1131 (x!65599 lt!350537))) (not (= index!1321 (index!34633 lt!350537)))))))

(assert (=> b!786024 e!436972))

(declare-fun res!532282 () Bool)

(assert (=> b!786024 (=> (not res!532282) (not e!436972))))

(assert (=> b!786024 (= res!532282 (= lt!350534 lt!350545))))

(assert (=> b!786024 (= lt!350545 (Found!8066 j!159))))

(assert (=> b!786024 (= lt!350534 (seekEntryOrOpen!0 (select (arr!20459 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786024 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350538 () Unit!27174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27174)

(assert (=> b!786024 (= lt!350538 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67754 res!532274) b!786022))

(assert (= (and b!786022 res!532283) b!786005))

(assert (= (and b!786005 res!532273) b!786004))

(assert (= (and b!786004 res!532272) b!786006))

(assert (= (and b!786006 res!532276) b!786002))

(assert (= (and b!786002 res!532281) b!786012))

(assert (= (and b!786012 res!532279) b!786017))

(assert (= (and b!786017 res!532271) b!786016))

(assert (= (and b!786016 res!532270) b!786003))

(assert (= (and b!786003 res!532275) b!786020))

(assert (= (and b!786020 res!532285) b!786007))

(assert (= (and b!786007 c!87275) b!786009))

(assert (= (and b!786007 (not c!87275)) b!786013))

(assert (= (and b!786007 res!532284) b!786015))

(assert (= (and b!786015 res!532269) b!786024))

(assert (= (and b!786024 res!532282) b!786018))

(assert (= (and b!786024 (not res!532268)) b!786023))

(assert (= (and b!786023 (not res!532280)) b!786010))

(assert (= (and b!786010 (not res!532267)) b!786011))

(assert (= (and b!786011 c!87276) b!786021))

(assert (= (and b!786011 (not c!87276)) b!786019))

(assert (= (and b!786011 res!532277) b!786014))

(assert (= (and b!786014 res!532278) b!786008))

(declare-fun m!727977 () Bool)

(assert (=> b!786023 m!727977))

(assert (=> b!786023 m!727977))

(declare-fun m!727979 () Bool)

(assert (=> b!786023 m!727979))

(declare-fun m!727981 () Bool)

(assert (=> b!786017 m!727981))

(assert (=> b!786013 m!727977))

(assert (=> b!786013 m!727977))

(assert (=> b!786013 m!727979))

(declare-fun m!727983 () Bool)

(assert (=> b!786012 m!727983))

(declare-fun m!727985 () Bool)

(assert (=> b!786006 m!727985))

(declare-fun m!727987 () Bool)

(assert (=> b!786004 m!727987))

(declare-fun m!727989 () Bool)

(assert (=> b!786002 m!727989))

(assert (=> b!786018 m!727977))

(assert (=> b!786018 m!727977))

(declare-fun m!727991 () Bool)

(assert (=> b!786018 m!727991))

(declare-fun m!727993 () Bool)

(assert (=> start!67754 m!727993))

(declare-fun m!727995 () Bool)

(assert (=> start!67754 m!727995))

(assert (=> b!786024 m!727977))

(assert (=> b!786024 m!727977))

(declare-fun m!727997 () Bool)

(assert (=> b!786024 m!727997))

(declare-fun m!727999 () Bool)

(assert (=> b!786024 m!727999))

(declare-fun m!728001 () Bool)

(assert (=> b!786024 m!728001))

(declare-fun m!728003 () Bool)

(assert (=> b!786020 m!728003))

(assert (=> b!786005 m!727977))

(assert (=> b!786005 m!727977))

(declare-fun m!728005 () Bool)

(assert (=> b!786005 m!728005))

(assert (=> b!786003 m!727977))

(assert (=> b!786003 m!727977))

(declare-fun m!728007 () Bool)

(assert (=> b!786003 m!728007))

(assert (=> b!786003 m!728007))

(assert (=> b!786003 m!727977))

(declare-fun m!728009 () Bool)

(assert (=> b!786003 m!728009))

(assert (=> b!786009 m!727977))

(assert (=> b!786009 m!727977))

(declare-fun m!728011 () Bool)

(assert (=> b!786009 m!728011))

(declare-fun m!728013 () Bool)

(assert (=> b!786014 m!728013))

(declare-fun m!728015 () Bool)

(assert (=> b!786014 m!728015))

(declare-fun m!728017 () Bool)

(assert (=> b!786015 m!728017))

(declare-fun m!728019 () Bool)

(assert (=> b!786015 m!728019))

(declare-fun m!728021 () Bool)

(assert (=> b!786015 m!728021))

(declare-fun m!728023 () Bool)

(assert (=> b!786015 m!728023))

(assert (=> b!786015 m!728017))

(declare-fun m!728025 () Bool)

(assert (=> b!786015 m!728025))

(assert (=> b!786010 m!728021))

(declare-fun m!728027 () Bool)

(assert (=> b!786010 m!728027))

(push 1)

