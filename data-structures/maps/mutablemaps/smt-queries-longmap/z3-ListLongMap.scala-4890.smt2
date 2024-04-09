; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67470 () Bool)

(assert start!67470)

(declare-fun b!780115 () Bool)

(declare-fun res!527914 () Bool)

(declare-fun e!434007 () Bool)

(assert (=> b!780115 (=> (not res!527914) (not e!434007))))

(declare-fun e!434001 () Bool)

(assert (=> b!780115 (= res!527914 e!434001)))

(declare-fun c!86511 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780115 (= c!86511 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780116 () Bool)

(declare-fun res!527904 () Bool)

(declare-fun e!434003 () Bool)

(assert (=> b!780116 (=> (not res!527904) (not e!434003))))

(declare-datatypes ((array!42591 0))(
  ( (array!42592 (arr!20383 (Array (_ BitVec 32) (_ BitVec 64))) (size!20804 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42591)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780116 (= res!527904 (validKeyInArray!0 (select (arr!20383 a!3186) j!159)))))

(declare-fun b!780117 () Bool)

(declare-fun res!527911 () Bool)

(declare-fun e!434004 () Bool)

(assert (=> b!780117 (=> (not res!527911) (not e!434004))))

(declare-datatypes ((List!14438 0))(
  ( (Nil!14435) (Cons!14434 (h!15551 (_ BitVec 64)) (t!20761 List!14438)) )
))
(declare-fun arrayNoDuplicates!0 (array!42591 (_ BitVec 32) List!14438) Bool)

(assert (=> b!780117 (= res!527911 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14435))))

(declare-fun res!527906 () Bool)

(assert (=> start!67470 (=> (not res!527906) (not e!434003))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67470 (= res!527906 (validMask!0 mask!3328))))

(assert (=> start!67470 e!434003))

(assert (=> start!67470 true))

(declare-fun array_inv!16157 (array!42591) Bool)

(assert (=> start!67470 (array_inv!16157 a!3186)))

(declare-fun b!780118 () Bool)

(declare-fun res!527913 () Bool)

(assert (=> b!780118 (=> (not res!527913) (not e!434004))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!780118 (= res!527913 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20804 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20804 a!3186))))))

(declare-fun b!780119 () Bool)

(declare-fun res!527907 () Bool)

(assert (=> b!780119 (=> (not res!527907) (not e!434003))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780119 (= res!527907 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780120 () Bool)

(declare-fun e!434005 () Bool)

(assert (=> b!780120 (= e!434005 false)))

(declare-datatypes ((SeekEntryResult!7990 0))(
  ( (MissingZero!7990 (index!34327 (_ BitVec 32))) (Found!7990 (index!34328 (_ BitVec 32))) (Intermediate!7990 (undefined!8802 Bool) (index!34329 (_ BitVec 32)) (x!65305 (_ BitVec 32))) (Undefined!7990) (MissingVacant!7990 (index!34330 (_ BitVec 32))) )
))
(declare-fun lt!347650 () SeekEntryResult!7990)

(declare-fun lt!347655 () SeekEntryResult!7990)

(assert (=> b!780120 (and (= lt!347650 lt!347655) (= lt!347655 (MissingVacant!7990 resIntermediateIndex!5)))))

(declare-fun b!780121 () Bool)

(declare-fun res!527910 () Bool)

(assert (=> b!780121 (=> (not res!527910) (not e!434004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42591 (_ BitVec 32)) Bool)

(assert (=> b!780121 (= res!527910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!434002 () Bool)

(declare-fun b!780122 () Bool)

(declare-fun lt!347656 () SeekEntryResult!7990)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42591 (_ BitVec 32)) SeekEntryResult!7990)

(assert (=> b!780122 (= e!434002 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20383 a!3186) j!159) a!3186 mask!3328) lt!347656))))

(declare-fun b!780123 () Bool)

(assert (=> b!780123 (= e!434001 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20383 a!3186) j!159) a!3186 mask!3328) (Found!7990 j!159)))))

(declare-fun b!780124 () Bool)

(declare-fun res!527917 () Bool)

(assert (=> b!780124 (=> (not res!527917) (not e!434003))))

(assert (=> b!780124 (= res!527917 (validKeyInArray!0 k0!2102))))

(declare-fun b!780125 () Bool)

(declare-fun e!434000 () Bool)

(assert (=> b!780125 (= e!434007 e!434000)))

(declare-fun res!527903 () Bool)

(assert (=> b!780125 (=> (not res!527903) (not e!434000))))

(declare-fun lt!347654 () SeekEntryResult!7990)

(declare-fun lt!347658 () SeekEntryResult!7990)

(assert (=> b!780125 (= res!527903 (= lt!347654 lt!347658))))

(declare-fun lt!347657 () array!42591)

(declare-fun lt!347651 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42591 (_ BitVec 32)) SeekEntryResult!7990)

(assert (=> b!780125 (= lt!347658 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347651 lt!347657 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780125 (= lt!347654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347651 mask!3328) lt!347651 lt!347657 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!780125 (= lt!347651 (select (store (arr!20383 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!780125 (= lt!347657 (array!42592 (store (arr!20383 a!3186) i!1173 k0!2102) (size!20804 a!3186)))))

(declare-fun b!780126 () Bool)

(assert (=> b!780126 (= e!434004 e!434007)))

(declare-fun res!527908 () Bool)

(assert (=> b!780126 (=> (not res!527908) (not e!434007))))

(declare-fun lt!347659 () SeekEntryResult!7990)

(assert (=> b!780126 (= res!527908 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20383 a!3186) j!159) mask!3328) (select (arr!20383 a!3186) j!159) a!3186 mask!3328) lt!347659))))

(assert (=> b!780126 (= lt!347659 (Intermediate!7990 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780127 () Bool)

(declare-fun e!434006 () Bool)

(assert (=> b!780127 (= e!434006 e!434005)))

(declare-fun res!527915 () Bool)

(assert (=> b!780127 (=> res!527915 e!434005)))

(assert (=> b!780127 (= res!527915 (or (not (= lt!347655 lt!347656)) (= (select (store (arr!20383 a!3186) i!1173 k0!2102) index!1321) lt!347651) (not (= (select (store (arr!20383 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780127 (= lt!347655 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20383 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780128 () Bool)

(assert (=> b!780128 (= e!434001 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20383 a!3186) j!159) a!3186 mask!3328) lt!347659))))

(declare-fun b!780129 () Bool)

(assert (=> b!780129 (= e!434003 e!434004)))

(declare-fun res!527905 () Bool)

(assert (=> b!780129 (=> (not res!527905) (not e!434004))))

(declare-fun lt!347653 () SeekEntryResult!7990)

(assert (=> b!780129 (= res!527905 (or (= lt!347653 (MissingZero!7990 i!1173)) (= lt!347653 (MissingVacant!7990 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42591 (_ BitVec 32)) SeekEntryResult!7990)

(assert (=> b!780129 (= lt!347653 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!780130 () Bool)

(declare-fun res!527902 () Bool)

(assert (=> b!780130 (=> (not res!527902) (not e!434007))))

(assert (=> b!780130 (= res!527902 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20383 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780131 () Bool)

(assert (=> b!780131 (= e!434000 (not e!434006))))

(declare-fun res!527912 () Bool)

(assert (=> b!780131 (=> res!527912 e!434006)))

(get-info :version)

(assert (=> b!780131 (= res!527912 (or (not ((_ is Intermediate!7990) lt!347658)) (bvslt x!1131 (x!65305 lt!347658)) (not (= x!1131 (x!65305 lt!347658))) (not (= index!1321 (index!34329 lt!347658)))))))

(assert (=> b!780131 e!434002))

(declare-fun res!527909 () Bool)

(assert (=> b!780131 (=> (not res!527909) (not e!434002))))

(assert (=> b!780131 (= res!527909 (= lt!347650 lt!347656))))

(assert (=> b!780131 (= lt!347656 (Found!7990 j!159))))

(assert (=> b!780131 (= lt!347650 (seekEntryOrOpen!0 (select (arr!20383 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!780131 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26874 0))(
  ( (Unit!26875) )
))
(declare-fun lt!347652 () Unit!26874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26874)

(assert (=> b!780131 (= lt!347652 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780132 () Bool)

(declare-fun res!527916 () Bool)

(assert (=> b!780132 (=> (not res!527916) (not e!434003))))

(assert (=> b!780132 (= res!527916 (and (= (size!20804 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20804 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20804 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67470 res!527906) b!780132))

(assert (= (and b!780132 res!527916) b!780116))

(assert (= (and b!780116 res!527904) b!780124))

(assert (= (and b!780124 res!527917) b!780119))

(assert (= (and b!780119 res!527907) b!780129))

(assert (= (and b!780129 res!527905) b!780121))

(assert (= (and b!780121 res!527910) b!780117))

(assert (= (and b!780117 res!527911) b!780118))

(assert (= (and b!780118 res!527913) b!780126))

(assert (= (and b!780126 res!527908) b!780130))

(assert (= (and b!780130 res!527902) b!780115))

(assert (= (and b!780115 c!86511) b!780128))

(assert (= (and b!780115 (not c!86511)) b!780123))

(assert (= (and b!780115 res!527914) b!780125))

(assert (= (and b!780125 res!527903) b!780131))

(assert (= (and b!780131 res!527909) b!780122))

(assert (= (and b!780131 (not res!527912)) b!780127))

(assert (= (and b!780127 (not res!527915)) b!780120))

(declare-fun m!723529 () Bool)

(assert (=> b!780129 m!723529))

(declare-fun m!723531 () Bool)

(assert (=> b!780127 m!723531))

(declare-fun m!723533 () Bool)

(assert (=> b!780127 m!723533))

(declare-fun m!723535 () Bool)

(assert (=> b!780127 m!723535))

(assert (=> b!780127 m!723535))

(declare-fun m!723537 () Bool)

(assert (=> b!780127 m!723537))

(assert (=> b!780126 m!723535))

(assert (=> b!780126 m!723535))

(declare-fun m!723539 () Bool)

(assert (=> b!780126 m!723539))

(assert (=> b!780126 m!723539))

(assert (=> b!780126 m!723535))

(declare-fun m!723541 () Bool)

(assert (=> b!780126 m!723541))

(declare-fun m!723543 () Bool)

(assert (=> b!780130 m!723543))

(declare-fun m!723545 () Bool)

(assert (=> b!780117 m!723545))

(declare-fun m!723547 () Bool)

(assert (=> b!780119 m!723547))

(assert (=> b!780131 m!723535))

(assert (=> b!780131 m!723535))

(declare-fun m!723549 () Bool)

(assert (=> b!780131 m!723549))

(declare-fun m!723551 () Bool)

(assert (=> b!780131 m!723551))

(declare-fun m!723553 () Bool)

(assert (=> b!780131 m!723553))

(declare-fun m!723555 () Bool)

(assert (=> b!780124 m!723555))

(declare-fun m!723557 () Bool)

(assert (=> b!780125 m!723557))

(assert (=> b!780125 m!723531))

(declare-fun m!723559 () Bool)

(assert (=> b!780125 m!723559))

(declare-fun m!723561 () Bool)

(assert (=> b!780125 m!723561))

(assert (=> b!780125 m!723561))

(declare-fun m!723563 () Bool)

(assert (=> b!780125 m!723563))

(assert (=> b!780116 m!723535))

(assert (=> b!780116 m!723535))

(declare-fun m!723565 () Bool)

(assert (=> b!780116 m!723565))

(declare-fun m!723567 () Bool)

(assert (=> b!780121 m!723567))

(declare-fun m!723569 () Bool)

(assert (=> start!67470 m!723569))

(declare-fun m!723571 () Bool)

(assert (=> start!67470 m!723571))

(assert (=> b!780123 m!723535))

(assert (=> b!780123 m!723535))

(assert (=> b!780123 m!723537))

(assert (=> b!780128 m!723535))

(assert (=> b!780128 m!723535))

(declare-fun m!723573 () Bool)

(assert (=> b!780128 m!723573))

(assert (=> b!780122 m!723535))

(assert (=> b!780122 m!723535))

(declare-fun m!723575 () Bool)

(assert (=> b!780122 m!723575))

(check-sat (not b!780119) (not b!780129) (not b!780125) (not b!780122) (not start!67470) (not b!780126) (not b!780127) (not b!780128) (not b!780121) (not b!780124) (not b!780116) (not b!780123) (not b!780117) (not b!780131))
(check-sat)
