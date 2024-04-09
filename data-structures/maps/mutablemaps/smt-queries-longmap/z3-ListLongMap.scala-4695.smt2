; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65250 () Bool)

(assert start!65250)

(declare-fun b!739002 () Bool)

(declare-fun res!496958 () Bool)

(declare-fun e!413281 () Bool)

(assert (=> b!739002 (=> (not res!496958) (not e!413281))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41376 0))(
  ( (array!41377 (arr!19798 (Array (_ BitVec 32) (_ BitVec 64))) (size!20219 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41376)

(assert (=> b!739002 (= res!496958 (and (= (size!20219 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20219 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20219 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739003 () Bool)

(declare-fun res!496971 () Bool)

(assert (=> b!739003 (=> (not res!496971) (not e!413281))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739003 (= res!496971 (validKeyInArray!0 k0!2102))))

(declare-fun b!739004 () Bool)

(declare-datatypes ((Unit!25238 0))(
  ( (Unit!25239) )
))
(declare-fun e!413282 () Unit!25238)

(declare-fun Unit!25240 () Unit!25238)

(assert (=> b!739004 (= e!413282 Unit!25240)))

(declare-datatypes ((SeekEntryResult!7405 0))(
  ( (MissingZero!7405 (index!31987 (_ BitVec 32))) (Found!7405 (index!31988 (_ BitVec 32))) (Intermediate!7405 (undefined!8217 Bool) (index!31989 (_ BitVec 32)) (x!63004 (_ BitVec 32))) (Undefined!7405) (MissingVacant!7405 (index!31990 (_ BitVec 32))) )
))
(declare-fun lt!328130 () SeekEntryResult!7405)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41376 (_ BitVec 32)) SeekEntryResult!7405)

(assert (=> b!739004 (= lt!328130 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19798 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328134 () (_ BitVec 32))

(declare-fun lt!328142 () SeekEntryResult!7405)

(assert (=> b!739004 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328134 resIntermediateIndex!5 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328142)))

(declare-fun b!739005 () Bool)

(declare-fun e!413275 () Bool)

(declare-fun e!413278 () Bool)

(assert (=> b!739005 (= e!413275 e!413278)))

(declare-fun res!496970 () Bool)

(assert (=> b!739005 (=> (not res!496970) (not e!413278))))

(declare-fun lt!328133 () SeekEntryResult!7405)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41376 (_ BitVec 32)) SeekEntryResult!7405)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739005 (= res!496970 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19798 a!3186) j!159) mask!3328) (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328133))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739005 (= lt!328133 (Intermediate!7405 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739006 () Bool)

(declare-fun res!496972 () Bool)

(assert (=> b!739006 (=> (not res!496972) (not e!413275))))

(declare-datatypes ((List!13853 0))(
  ( (Nil!13850) (Cons!13849 (h!14921 (_ BitVec 64)) (t!20176 List!13853)) )
))
(declare-fun arrayNoDuplicates!0 (array!41376 (_ BitVec 32) List!13853) Bool)

(assert (=> b!739006 (= res!496972 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13850))))

(declare-fun b!739007 () Bool)

(declare-fun res!496968 () Bool)

(assert (=> b!739007 (=> (not res!496968) (not e!413281))))

(declare-fun arrayContainsKey!0 (array!41376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739007 (= res!496968 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!496974 () Bool)

(assert (=> start!65250 (=> (not res!496974) (not e!413281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65250 (= res!496974 (validMask!0 mask!3328))))

(assert (=> start!65250 e!413281))

(assert (=> start!65250 true))

(declare-fun array_inv!15572 (array!41376) Bool)

(assert (=> start!65250 (array_inv!15572 a!3186)))

(declare-fun e!413276 () Bool)

(declare-fun b!739008 () Bool)

(assert (=> b!739008 (= e!413276 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328134 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328133)))))

(declare-fun b!739009 () Bool)

(declare-fun res!496966 () Bool)

(assert (=> b!739009 (=> (not res!496966) (not e!413278))))

(assert (=> b!739009 (= res!496966 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19798 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739010 () Bool)

(declare-fun res!496964 () Bool)

(assert (=> b!739010 (=> (not res!496964) (not e!413281))))

(assert (=> b!739010 (= res!496964 (validKeyInArray!0 (select (arr!19798 a!3186) j!159)))))

(declare-fun b!739011 () Bool)

(declare-fun res!496959 () Bool)

(assert (=> b!739011 (=> (not res!496959) (not e!413278))))

(declare-fun e!413277 () Bool)

(assert (=> b!739011 (= res!496959 e!413277)))

(declare-fun c!81404 () Bool)

(assert (=> b!739011 (= c!81404 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739012 () Bool)

(declare-fun e!413273 () Bool)

(declare-fun e!413272 () Bool)

(assert (=> b!739012 (= e!413273 (not e!413272))))

(declare-fun res!496969 () Bool)

(assert (=> b!739012 (=> res!496969 e!413272)))

(declare-fun lt!328141 () SeekEntryResult!7405)

(get-info :version)

(assert (=> b!739012 (= res!496969 (or (not ((_ is Intermediate!7405) lt!328141)) (bvsge x!1131 (x!63004 lt!328141))))))

(assert (=> b!739012 (= lt!328142 (Found!7405 j!159))))

(declare-fun e!413274 () Bool)

(assert (=> b!739012 e!413274))

(declare-fun res!496965 () Bool)

(assert (=> b!739012 (=> (not res!496965) (not e!413274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41376 (_ BitVec 32)) Bool)

(assert (=> b!739012 (= res!496965 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328136 () Unit!25238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41376 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25238)

(assert (=> b!739012 (= lt!328136 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!413283 () Bool)

(declare-fun b!739013 () Bool)

(declare-fun lt!328135 () SeekEntryResult!7405)

(assert (=> b!739013 (= e!413283 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328135))))

(declare-fun b!739014 () Bool)

(assert (=> b!739014 (= e!413281 e!413275)))

(declare-fun res!496961 () Bool)

(assert (=> b!739014 (=> (not res!496961) (not e!413275))))

(declare-fun lt!328132 () SeekEntryResult!7405)

(assert (=> b!739014 (= res!496961 (or (= lt!328132 (MissingZero!7405 i!1173)) (= lt!328132 (MissingVacant!7405 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41376 (_ BitVec 32)) SeekEntryResult!7405)

(assert (=> b!739014 (= lt!328132 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!739015 () Bool)

(declare-fun e!413280 () Bool)

(assert (=> b!739015 (= e!413272 e!413280)))

(declare-fun res!496963 () Bool)

(assert (=> b!739015 (=> res!496963 e!413280)))

(assert (=> b!739015 (= res!496963 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328134 #b00000000000000000000000000000000) (bvsge lt!328134 (size!20219 a!3186))))))

(declare-fun lt!328139 () Unit!25238)

(assert (=> b!739015 (= lt!328139 e!413282)))

(declare-fun c!81405 () Bool)

(declare-fun lt!328129 () Bool)

(assert (=> b!739015 (= c!81405 lt!328129)))

(assert (=> b!739015 (= lt!328129 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739015 (= lt!328134 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739016 () Bool)

(assert (=> b!739016 (= e!413276 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328134 resIntermediateIndex!5 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328142)))))

(declare-fun b!739017 () Bool)

(declare-fun res!496960 () Bool)

(assert (=> b!739017 (=> (not res!496960) (not e!413275))))

(assert (=> b!739017 (= res!496960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739018 () Bool)

(assert (=> b!739018 (= e!413277 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) (Found!7405 j!159)))))

(declare-fun b!739019 () Bool)

(declare-fun res!496967 () Bool)

(assert (=> b!739019 (=> (not res!496967) (not e!413275))))

(assert (=> b!739019 (= res!496967 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20219 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20219 a!3186))))))

(declare-fun b!739020 () Bool)

(assert (=> b!739020 (= e!413278 e!413273)))

(declare-fun res!496957 () Bool)

(assert (=> b!739020 (=> (not res!496957) (not e!413273))))

(declare-fun lt!328140 () SeekEntryResult!7405)

(assert (=> b!739020 (= res!496957 (= lt!328140 lt!328141))))

(declare-fun lt!328138 () (_ BitVec 64))

(declare-fun lt!328137 () array!41376)

(assert (=> b!739020 (= lt!328141 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328138 lt!328137 mask!3328))))

(assert (=> b!739020 (= lt!328140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328138 mask!3328) lt!328138 lt!328137 mask!3328))))

(assert (=> b!739020 (= lt!328138 (select (store (arr!19798 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!739020 (= lt!328137 (array!41377 (store (arr!19798 a!3186) i!1173 k0!2102) (size!20219 a!3186)))))

(declare-fun b!739021 () Bool)

(declare-fun res!496973 () Bool)

(assert (=> b!739021 (=> res!496973 e!413280)))

(assert (=> b!739021 (= res!496973 e!413276)))

(declare-fun c!81403 () Bool)

(assert (=> b!739021 (= c!81403 lt!328129)))

(declare-fun b!739022 () Bool)

(assert (=> b!739022 (= e!413280 true)))

(declare-fun lt!328131 () SeekEntryResult!7405)

(assert (=> b!739022 (= lt!328131 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328134 lt!328138 lt!328137 mask!3328))))

(declare-fun b!739023 () Bool)

(declare-fun Unit!25241 () Unit!25238)

(assert (=> b!739023 (= e!413282 Unit!25241)))

(assert (=> b!739023 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328134 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328133)))

(declare-fun b!739024 () Bool)

(assert (=> b!739024 (= e!413274 e!413283)))

(declare-fun res!496962 () Bool)

(assert (=> b!739024 (=> (not res!496962) (not e!413283))))

(assert (=> b!739024 (= res!496962 (= (seekEntryOrOpen!0 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328135))))

(assert (=> b!739024 (= lt!328135 (Found!7405 j!159))))

(declare-fun b!739025 () Bool)

(assert (=> b!739025 (= e!413277 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19798 a!3186) j!159) a!3186 mask!3328) lt!328133))))

(assert (= (and start!65250 res!496974) b!739002))

(assert (= (and b!739002 res!496958) b!739010))

(assert (= (and b!739010 res!496964) b!739003))

(assert (= (and b!739003 res!496971) b!739007))

(assert (= (and b!739007 res!496968) b!739014))

(assert (= (and b!739014 res!496961) b!739017))

(assert (= (and b!739017 res!496960) b!739006))

(assert (= (and b!739006 res!496972) b!739019))

(assert (= (and b!739019 res!496967) b!739005))

(assert (= (and b!739005 res!496970) b!739009))

(assert (= (and b!739009 res!496966) b!739011))

(assert (= (and b!739011 c!81404) b!739025))

(assert (= (and b!739011 (not c!81404)) b!739018))

(assert (= (and b!739011 res!496959) b!739020))

(assert (= (and b!739020 res!496957) b!739012))

(assert (= (and b!739012 res!496965) b!739024))

(assert (= (and b!739024 res!496962) b!739013))

(assert (= (and b!739012 (not res!496969)) b!739015))

(assert (= (and b!739015 c!81405) b!739023))

(assert (= (and b!739015 (not c!81405)) b!739004))

(assert (= (and b!739015 (not res!496963)) b!739021))

(assert (= (and b!739021 c!81403) b!739008))

(assert (= (and b!739021 (not c!81403)) b!739016))

(assert (= (and b!739021 (not res!496973)) b!739022))

(declare-fun m!690559 () Bool)

(assert (=> b!739023 m!690559))

(assert (=> b!739023 m!690559))

(declare-fun m!690561 () Bool)

(assert (=> b!739023 m!690561))

(declare-fun m!690563 () Bool)

(assert (=> b!739009 m!690563))

(assert (=> b!739010 m!690559))

(assert (=> b!739010 m!690559))

(declare-fun m!690565 () Bool)

(assert (=> b!739010 m!690565))

(assert (=> b!739004 m!690559))

(assert (=> b!739004 m!690559))

(declare-fun m!690567 () Bool)

(assert (=> b!739004 m!690567))

(assert (=> b!739004 m!690559))

(declare-fun m!690569 () Bool)

(assert (=> b!739004 m!690569))

(declare-fun m!690571 () Bool)

(assert (=> b!739012 m!690571))

(declare-fun m!690573 () Bool)

(assert (=> b!739012 m!690573))

(declare-fun m!690575 () Bool)

(assert (=> start!65250 m!690575))

(declare-fun m!690577 () Bool)

(assert (=> start!65250 m!690577))

(assert (=> b!739025 m!690559))

(assert (=> b!739025 m!690559))

(declare-fun m!690579 () Bool)

(assert (=> b!739025 m!690579))

(declare-fun m!690581 () Bool)

(assert (=> b!739015 m!690581))

(assert (=> b!739013 m!690559))

(assert (=> b!739013 m!690559))

(declare-fun m!690583 () Bool)

(assert (=> b!739013 m!690583))

(assert (=> b!739005 m!690559))

(assert (=> b!739005 m!690559))

(declare-fun m!690585 () Bool)

(assert (=> b!739005 m!690585))

(assert (=> b!739005 m!690585))

(assert (=> b!739005 m!690559))

(declare-fun m!690587 () Bool)

(assert (=> b!739005 m!690587))

(declare-fun m!690589 () Bool)

(assert (=> b!739022 m!690589))

(declare-fun m!690591 () Bool)

(assert (=> b!739007 m!690591))

(assert (=> b!739018 m!690559))

(assert (=> b!739018 m!690559))

(assert (=> b!739018 m!690567))

(assert (=> b!739008 m!690559))

(assert (=> b!739008 m!690559))

(assert (=> b!739008 m!690561))

(declare-fun m!690593 () Bool)

(assert (=> b!739020 m!690593))

(declare-fun m!690595 () Bool)

(assert (=> b!739020 m!690595))

(declare-fun m!690597 () Bool)

(assert (=> b!739020 m!690597))

(declare-fun m!690599 () Bool)

(assert (=> b!739020 m!690599))

(assert (=> b!739020 m!690597))

(declare-fun m!690601 () Bool)

(assert (=> b!739020 m!690601))

(declare-fun m!690603 () Bool)

(assert (=> b!739014 m!690603))

(assert (=> b!739016 m!690559))

(assert (=> b!739016 m!690559))

(assert (=> b!739016 m!690569))

(declare-fun m!690605 () Bool)

(assert (=> b!739003 m!690605))

(declare-fun m!690607 () Bool)

(assert (=> b!739017 m!690607))

(declare-fun m!690609 () Bool)

(assert (=> b!739006 m!690609))

(assert (=> b!739024 m!690559))

(assert (=> b!739024 m!690559))

(declare-fun m!690611 () Bool)

(assert (=> b!739024 m!690611))

(check-sat (not b!739005) (not start!65250) (not b!739025) (not b!739003) (not b!739007) (not b!739015) (not b!739023) (not b!739006) (not b!739014) (not b!739020) (not b!739017) (not b!739008) (not b!739022) (not b!739010) (not b!739012) (not b!739013) (not b!739024) (not b!739016) (not b!739018) (not b!739004))
(check-sat)
