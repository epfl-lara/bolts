; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67378 () Bool)

(assert start!67378)

(declare-fun b!779005 () Bool)

(declare-fun res!527167 () Bool)

(declare-fun e!433412 () Bool)

(assert (=> b!779005 (=> (not res!527167) (not e!433412))))

(declare-datatypes ((array!42562 0))(
  ( (array!42563 (arr!20370 (Array (_ BitVec 32) (_ BitVec 64))) (size!20791 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42562)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!779005 (= res!527167 (and (= (size!20791 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20791 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20791 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!779006 () Bool)

(declare-fun e!433409 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7977 0))(
  ( (MissingZero!7977 (index!34275 (_ BitVec 32))) (Found!7977 (index!34276 (_ BitVec 32))) (Intermediate!7977 (undefined!8789 Bool) (index!34277 (_ BitVec 32)) (x!65251 (_ BitVec 32))) (Undefined!7977) (MissingVacant!7977 (index!34278 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42562 (_ BitVec 32)) SeekEntryResult!7977)

(assert (=> b!779006 (= e!433409 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20370 a!3186) j!159) a!3186 mask!3328) (Found!7977 j!159)))))

(declare-fun e!433410 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!779007 () Bool)

(declare-fun lt!347108 () SeekEntryResult!7977)

(assert (=> b!779007 (= e!433410 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20370 a!3186) j!159) a!3186 mask!3328) lt!347108))))

(declare-fun b!779008 () Bool)

(declare-fun lt!347105 () SeekEntryResult!7977)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42562 (_ BitVec 32)) SeekEntryResult!7977)

(assert (=> b!779008 (= e!433409 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20370 a!3186) j!159) a!3186 mask!3328) lt!347105))))

(declare-fun b!779009 () Bool)

(declare-fun res!527161 () Bool)

(assert (=> b!779009 (=> (not res!527161) (not e!433412))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779009 (= res!527161 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779010 () Bool)

(declare-fun e!433407 () Bool)

(assert (=> b!779010 (= e!433412 e!433407)))

(declare-fun res!527175 () Bool)

(assert (=> b!779010 (=> (not res!527175) (not e!433407))))

(declare-fun lt!347102 () SeekEntryResult!7977)

(assert (=> b!779010 (= res!527175 (or (= lt!347102 (MissingZero!7977 i!1173)) (= lt!347102 (MissingVacant!7977 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42562 (_ BitVec 32)) SeekEntryResult!7977)

(assert (=> b!779010 (= lt!347102 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!527164 () Bool)

(assert (=> start!67378 (=> (not res!527164) (not e!433412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67378 (= res!527164 (validMask!0 mask!3328))))

(assert (=> start!67378 e!433412))

(assert (=> start!67378 true))

(declare-fun array_inv!16144 (array!42562) Bool)

(assert (=> start!67378 (array_inv!16144 a!3186)))

(declare-fun b!779011 () Bool)

(declare-fun e!433411 () Bool)

(declare-fun e!433414 () Bool)

(assert (=> b!779011 (= e!433411 (not e!433414))))

(declare-fun res!527168 () Bool)

(assert (=> b!779011 (=> res!527168 e!433414)))

(declare-fun lt!347109 () SeekEntryResult!7977)

(assert (=> b!779011 (= res!527168 (or (not (is-Intermediate!7977 lt!347109)) (bvslt x!1131 (x!65251 lt!347109)) (not (= x!1131 (x!65251 lt!347109))) (not (= index!1321 (index!34277 lt!347109)))))))

(declare-fun e!433408 () Bool)

(assert (=> b!779011 e!433408))

(declare-fun res!527163 () Bool)

(assert (=> b!779011 (=> (not res!527163) (not e!433408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42562 (_ BitVec 32)) Bool)

(assert (=> b!779011 (= res!527163 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26848 0))(
  ( (Unit!26849) )
))
(declare-fun lt!347103 () Unit!26848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26848)

(assert (=> b!779011 (= lt!347103 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779012 () Bool)

(declare-fun res!527165 () Bool)

(declare-fun e!433406 () Bool)

(assert (=> b!779012 (=> (not res!527165) (not e!433406))))

(assert (=> b!779012 (= res!527165 e!433409)))

(declare-fun c!86325 () Bool)

(assert (=> b!779012 (= c!86325 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779013 () Bool)

(declare-fun res!527171 () Bool)

(assert (=> b!779013 (=> (not res!527171) (not e!433406))))

(assert (=> b!779013 (= res!527171 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20370 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779014 () Bool)

(assert (=> b!779014 (= e!433414 true)))

(declare-fun lt!347110 () SeekEntryResult!7977)

(assert (=> b!779014 (= lt!347110 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20370 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779015 () Bool)

(declare-fun res!527169 () Bool)

(assert (=> b!779015 (=> (not res!527169) (not e!433412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779015 (= res!527169 (validKeyInArray!0 k!2102))))

(declare-fun b!779016 () Bool)

(declare-fun res!527166 () Bool)

(assert (=> b!779016 (=> (not res!527166) (not e!433412))))

(assert (=> b!779016 (= res!527166 (validKeyInArray!0 (select (arr!20370 a!3186) j!159)))))

(declare-fun b!779017 () Bool)

(declare-fun res!527162 () Bool)

(assert (=> b!779017 (=> (not res!527162) (not e!433407))))

(assert (=> b!779017 (= res!527162 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20791 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20791 a!3186))))))

(declare-fun b!779018 () Bool)

(assert (=> b!779018 (= e!433408 e!433410)))

(declare-fun res!527176 () Bool)

(assert (=> b!779018 (=> (not res!527176) (not e!433410))))

(assert (=> b!779018 (= res!527176 (= (seekEntryOrOpen!0 (select (arr!20370 a!3186) j!159) a!3186 mask!3328) lt!347108))))

(assert (=> b!779018 (= lt!347108 (Found!7977 j!159))))

(declare-fun b!779019 () Bool)

(declare-fun res!527172 () Bool)

(assert (=> b!779019 (=> (not res!527172) (not e!433407))))

(declare-datatypes ((List!14425 0))(
  ( (Nil!14422) (Cons!14421 (h!15535 (_ BitVec 64)) (t!20748 List!14425)) )
))
(declare-fun arrayNoDuplicates!0 (array!42562 (_ BitVec 32) List!14425) Bool)

(assert (=> b!779019 (= res!527172 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14422))))

(declare-fun b!779020 () Bool)

(assert (=> b!779020 (= e!433406 e!433411)))

(declare-fun res!527173 () Bool)

(assert (=> b!779020 (=> (not res!527173) (not e!433411))))

(declare-fun lt!347104 () SeekEntryResult!7977)

(assert (=> b!779020 (= res!527173 (= lt!347104 lt!347109))))

(declare-fun lt!347107 () array!42562)

(declare-fun lt!347106 () (_ BitVec 64))

(assert (=> b!779020 (= lt!347109 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347106 lt!347107 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779020 (= lt!347104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347106 mask!3328) lt!347106 lt!347107 mask!3328))))

(assert (=> b!779020 (= lt!347106 (select (store (arr!20370 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779020 (= lt!347107 (array!42563 (store (arr!20370 a!3186) i!1173 k!2102) (size!20791 a!3186)))))

(declare-fun b!779021 () Bool)

(declare-fun res!527174 () Bool)

(assert (=> b!779021 (=> (not res!527174) (not e!433407))))

(assert (=> b!779021 (= res!527174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779022 () Bool)

(assert (=> b!779022 (= e!433407 e!433406)))

(declare-fun res!527170 () Bool)

(assert (=> b!779022 (=> (not res!527170) (not e!433406))))

(assert (=> b!779022 (= res!527170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20370 a!3186) j!159) mask!3328) (select (arr!20370 a!3186) j!159) a!3186 mask!3328) lt!347105))))

(assert (=> b!779022 (= lt!347105 (Intermediate!7977 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67378 res!527164) b!779005))

(assert (= (and b!779005 res!527167) b!779016))

(assert (= (and b!779016 res!527166) b!779015))

(assert (= (and b!779015 res!527169) b!779009))

(assert (= (and b!779009 res!527161) b!779010))

(assert (= (and b!779010 res!527175) b!779021))

(assert (= (and b!779021 res!527174) b!779019))

(assert (= (and b!779019 res!527172) b!779017))

(assert (= (and b!779017 res!527162) b!779022))

(assert (= (and b!779022 res!527170) b!779013))

(assert (= (and b!779013 res!527171) b!779012))

(assert (= (and b!779012 c!86325) b!779008))

(assert (= (and b!779012 (not c!86325)) b!779006))

(assert (= (and b!779012 res!527165) b!779020))

(assert (= (and b!779020 res!527173) b!779011))

(assert (= (and b!779011 res!527163) b!779018))

(assert (= (and b!779018 res!527176) b!779007))

(assert (= (and b!779011 (not res!527168)) b!779014))

(declare-fun m!722629 () Bool)

(assert (=> b!779011 m!722629))

(declare-fun m!722631 () Bool)

(assert (=> b!779011 m!722631))

(declare-fun m!722633 () Bool)

(assert (=> b!779006 m!722633))

(assert (=> b!779006 m!722633))

(declare-fun m!722635 () Bool)

(assert (=> b!779006 m!722635))

(assert (=> b!779014 m!722633))

(assert (=> b!779014 m!722633))

(assert (=> b!779014 m!722635))

(declare-fun m!722637 () Bool)

(assert (=> start!67378 m!722637))

(declare-fun m!722639 () Bool)

(assert (=> start!67378 m!722639))

(declare-fun m!722641 () Bool)

(assert (=> b!779010 m!722641))

(declare-fun m!722643 () Bool)

(assert (=> b!779021 m!722643))

(declare-fun m!722645 () Bool)

(assert (=> b!779015 m!722645))

(assert (=> b!779016 m!722633))

(assert (=> b!779016 m!722633))

(declare-fun m!722647 () Bool)

(assert (=> b!779016 m!722647))

(assert (=> b!779018 m!722633))

(assert (=> b!779018 m!722633))

(declare-fun m!722649 () Bool)

(assert (=> b!779018 m!722649))

(declare-fun m!722651 () Bool)

(assert (=> b!779009 m!722651))

(assert (=> b!779008 m!722633))

(assert (=> b!779008 m!722633))

(declare-fun m!722653 () Bool)

(assert (=> b!779008 m!722653))

(declare-fun m!722655 () Bool)

(assert (=> b!779013 m!722655))

(assert (=> b!779007 m!722633))

(assert (=> b!779007 m!722633))

(declare-fun m!722657 () Bool)

(assert (=> b!779007 m!722657))

(assert (=> b!779022 m!722633))

(assert (=> b!779022 m!722633))

(declare-fun m!722659 () Bool)

(assert (=> b!779022 m!722659))

(assert (=> b!779022 m!722659))

(assert (=> b!779022 m!722633))

(declare-fun m!722661 () Bool)

(assert (=> b!779022 m!722661))

(declare-fun m!722663 () Bool)

(assert (=> b!779019 m!722663))

(declare-fun m!722665 () Bool)

(assert (=> b!779020 m!722665))

(declare-fun m!722667 () Bool)

(assert (=> b!779020 m!722667))

(declare-fun m!722669 () Bool)

(assert (=> b!779020 m!722669))

(declare-fun m!722671 () Bool)

(assert (=> b!779020 m!722671))

(declare-fun m!722673 () Bool)

(assert (=> b!779020 m!722673))

(assert (=> b!779020 m!722671))

(push 1)

