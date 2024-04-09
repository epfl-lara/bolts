; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67380 () Bool)

(assert start!67380)

(declare-fun b!779059 () Bool)

(declare-fun e!433437 () Bool)

(declare-fun e!433438 () Bool)

(assert (=> b!779059 (= e!433437 e!433438)))

(declare-fun res!527211 () Bool)

(assert (=> b!779059 (=> (not res!527211) (not e!433438))))

(declare-datatypes ((array!42564 0))(
  ( (array!42565 (arr!20371 (Array (_ BitVec 32) (_ BitVec 64))) (size!20792 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42564)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7978 0))(
  ( (MissingZero!7978 (index!34279 (_ BitVec 32))) (Found!7978 (index!34280 (_ BitVec 32))) (Intermediate!7978 (undefined!8790 Bool) (index!34281 (_ BitVec 32)) (x!65252 (_ BitVec 32))) (Undefined!7978) (MissingVacant!7978 (index!34282 (_ BitVec 32))) )
))
(declare-fun lt!347137 () SeekEntryResult!7978)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42564 (_ BitVec 32)) SeekEntryResult!7978)

(assert (=> b!779059 (= res!527211 (= (seekEntryOrOpen!0 (select (arr!20371 a!3186) j!159) a!3186 mask!3328) lt!347137))))

(assert (=> b!779059 (= lt!347137 (Found!7978 j!159))))

(declare-fun b!779061 () Bool)

(declare-fun res!527209 () Bool)

(declare-fun e!433440 () Bool)

(assert (=> b!779061 (=> (not res!527209) (not e!433440))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779061 (= res!527209 (validKeyInArray!0 k0!2102))))

(declare-fun b!779062 () Bool)

(declare-fun e!433435 () Bool)

(declare-fun e!433434 () Bool)

(assert (=> b!779062 (= e!433435 (not e!433434))))

(declare-fun res!527217 () Bool)

(assert (=> b!779062 (=> res!527217 e!433434)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!347131 () SeekEntryResult!7978)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!779062 (= res!527217 (or (not ((_ is Intermediate!7978) lt!347131)) (bvslt x!1131 (x!65252 lt!347131)) (not (= x!1131 (x!65252 lt!347131))) (not (= index!1321 (index!34281 lt!347131)))))))

(assert (=> b!779062 e!433437))

(declare-fun res!527221 () Bool)

(assert (=> b!779062 (=> (not res!527221) (not e!433437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42564 (_ BitVec 32)) Bool)

(assert (=> b!779062 (= res!527221 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26850 0))(
  ( (Unit!26851) )
))
(declare-fun lt!347136 () Unit!26850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26850)

(assert (=> b!779062 (= lt!347136 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779063 () Bool)

(declare-fun e!433436 () Bool)

(declare-fun lt!347134 () SeekEntryResult!7978)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42564 (_ BitVec 32)) SeekEntryResult!7978)

(assert (=> b!779063 (= e!433436 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20371 a!3186) j!159) a!3186 mask!3328) lt!347134))))

(declare-fun b!779064 () Bool)

(declare-fun res!527214 () Bool)

(declare-fun e!433439 () Bool)

(assert (=> b!779064 (=> (not res!527214) (not e!433439))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779064 (= res!527214 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20371 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779065 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42564 (_ BitVec 32)) SeekEntryResult!7978)

(assert (=> b!779065 (= e!433436 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20371 a!3186) j!159) a!3186 mask!3328) (Found!7978 j!159)))))

(declare-fun b!779066 () Bool)

(declare-fun res!527220 () Bool)

(assert (=> b!779066 (=> (not res!527220) (not e!433440))))

(assert (=> b!779066 (= res!527220 (and (= (size!20792 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20792 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20792 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779067 () Bool)

(declare-fun res!527218 () Bool)

(declare-fun e!433441 () Bool)

(assert (=> b!779067 (=> (not res!527218) (not e!433441))))

(declare-datatypes ((List!14426 0))(
  ( (Nil!14423) (Cons!14422 (h!15536 (_ BitVec 64)) (t!20749 List!14426)) )
))
(declare-fun arrayNoDuplicates!0 (array!42564 (_ BitVec 32) List!14426) Bool)

(assert (=> b!779067 (= res!527218 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14423))))

(declare-fun b!779068 () Bool)

(declare-fun res!527222 () Bool)

(assert (=> b!779068 (=> (not res!527222) (not e!433441))))

(assert (=> b!779068 (= res!527222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779069 () Bool)

(declare-fun res!527212 () Bool)

(assert (=> b!779069 (=> (not res!527212) (not e!433439))))

(assert (=> b!779069 (= res!527212 e!433436)))

(declare-fun c!86328 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779069 (= c!86328 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779070 () Bool)

(assert (=> b!779070 (= e!433441 e!433439)))

(declare-fun res!527219 () Bool)

(assert (=> b!779070 (=> (not res!527219) (not e!433439))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779070 (= res!527219 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20371 a!3186) j!159) mask!3328) (select (arr!20371 a!3186) j!159) a!3186 mask!3328) lt!347134))))

(assert (=> b!779070 (= lt!347134 (Intermediate!7978 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779060 () Bool)

(declare-fun res!527210 () Bool)

(assert (=> b!779060 (=> (not res!527210) (not e!433440))))

(assert (=> b!779060 (= res!527210 (validKeyInArray!0 (select (arr!20371 a!3186) j!159)))))

(declare-fun res!527216 () Bool)

(assert (=> start!67380 (=> (not res!527216) (not e!433440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67380 (= res!527216 (validMask!0 mask!3328))))

(assert (=> start!67380 e!433440))

(assert (=> start!67380 true))

(declare-fun array_inv!16145 (array!42564) Bool)

(assert (=> start!67380 (array_inv!16145 a!3186)))

(declare-fun b!779071 () Bool)

(declare-fun res!527215 () Bool)

(assert (=> b!779071 (=> (not res!527215) (not e!433441))))

(assert (=> b!779071 (= res!527215 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20792 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20792 a!3186))))))

(declare-fun b!779072 () Bool)

(assert (=> b!779072 (= e!433440 e!433441)))

(declare-fun res!527213 () Bool)

(assert (=> b!779072 (=> (not res!527213) (not e!433441))))

(declare-fun lt!347135 () SeekEntryResult!7978)

(assert (=> b!779072 (= res!527213 (or (= lt!347135 (MissingZero!7978 i!1173)) (= lt!347135 (MissingVacant!7978 i!1173))))))

(assert (=> b!779072 (= lt!347135 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!779073 () Bool)

(assert (=> b!779073 (= e!433439 e!433435)))

(declare-fun res!527223 () Bool)

(assert (=> b!779073 (=> (not res!527223) (not e!433435))))

(declare-fun lt!347133 () SeekEntryResult!7978)

(assert (=> b!779073 (= res!527223 (= lt!347133 lt!347131))))

(declare-fun lt!347132 () array!42564)

(declare-fun lt!347130 () (_ BitVec 64))

(assert (=> b!779073 (= lt!347131 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347130 lt!347132 mask!3328))))

(assert (=> b!779073 (= lt!347133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347130 mask!3328) lt!347130 lt!347132 mask!3328))))

(assert (=> b!779073 (= lt!347130 (select (store (arr!20371 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!779073 (= lt!347132 (array!42565 (store (arr!20371 a!3186) i!1173 k0!2102) (size!20792 a!3186)))))

(declare-fun b!779074 () Bool)

(assert (=> b!779074 (= e!433438 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20371 a!3186) j!159) a!3186 mask!3328) lt!347137))))

(declare-fun b!779075 () Bool)

(assert (=> b!779075 (= e!433434 true)))

(declare-fun lt!347129 () SeekEntryResult!7978)

(assert (=> b!779075 (= lt!347129 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20371 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779076 () Bool)

(declare-fun res!527224 () Bool)

(assert (=> b!779076 (=> (not res!527224) (not e!433440))))

(declare-fun arrayContainsKey!0 (array!42564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779076 (= res!527224 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67380 res!527216) b!779066))

(assert (= (and b!779066 res!527220) b!779060))

(assert (= (and b!779060 res!527210) b!779061))

(assert (= (and b!779061 res!527209) b!779076))

(assert (= (and b!779076 res!527224) b!779072))

(assert (= (and b!779072 res!527213) b!779068))

(assert (= (and b!779068 res!527222) b!779067))

(assert (= (and b!779067 res!527218) b!779071))

(assert (= (and b!779071 res!527215) b!779070))

(assert (= (and b!779070 res!527219) b!779064))

(assert (= (and b!779064 res!527214) b!779069))

(assert (= (and b!779069 c!86328) b!779063))

(assert (= (and b!779069 (not c!86328)) b!779065))

(assert (= (and b!779069 res!527212) b!779073))

(assert (= (and b!779073 res!527223) b!779062))

(assert (= (and b!779062 res!527221) b!779059))

(assert (= (and b!779059 res!527211) b!779074))

(assert (= (and b!779062 (not res!527217)) b!779075))

(declare-fun m!722675 () Bool)

(assert (=> b!779073 m!722675))

(declare-fun m!722677 () Bool)

(assert (=> b!779073 m!722677))

(declare-fun m!722679 () Bool)

(assert (=> b!779073 m!722679))

(declare-fun m!722681 () Bool)

(assert (=> b!779073 m!722681))

(assert (=> b!779073 m!722675))

(declare-fun m!722683 () Bool)

(assert (=> b!779073 m!722683))

(declare-fun m!722685 () Bool)

(assert (=> start!67380 m!722685))

(declare-fun m!722687 () Bool)

(assert (=> start!67380 m!722687))

(declare-fun m!722689 () Bool)

(assert (=> b!779076 m!722689))

(declare-fun m!722691 () Bool)

(assert (=> b!779064 m!722691))

(declare-fun m!722693 () Bool)

(assert (=> b!779061 m!722693))

(declare-fun m!722695 () Bool)

(assert (=> b!779067 m!722695))

(declare-fun m!722697 () Bool)

(assert (=> b!779070 m!722697))

(assert (=> b!779070 m!722697))

(declare-fun m!722699 () Bool)

(assert (=> b!779070 m!722699))

(assert (=> b!779070 m!722699))

(assert (=> b!779070 m!722697))

(declare-fun m!722701 () Bool)

(assert (=> b!779070 m!722701))

(assert (=> b!779065 m!722697))

(assert (=> b!779065 m!722697))

(declare-fun m!722703 () Bool)

(assert (=> b!779065 m!722703))

(assert (=> b!779060 m!722697))

(assert (=> b!779060 m!722697))

(declare-fun m!722705 () Bool)

(assert (=> b!779060 m!722705))

(assert (=> b!779074 m!722697))

(assert (=> b!779074 m!722697))

(declare-fun m!722707 () Bool)

(assert (=> b!779074 m!722707))

(assert (=> b!779075 m!722697))

(assert (=> b!779075 m!722697))

(assert (=> b!779075 m!722703))

(declare-fun m!722709 () Bool)

(assert (=> b!779068 m!722709))

(declare-fun m!722711 () Bool)

(assert (=> b!779062 m!722711))

(declare-fun m!722713 () Bool)

(assert (=> b!779062 m!722713))

(assert (=> b!779059 m!722697))

(assert (=> b!779059 m!722697))

(declare-fun m!722715 () Bool)

(assert (=> b!779059 m!722715))

(assert (=> b!779063 m!722697))

(assert (=> b!779063 m!722697))

(declare-fun m!722717 () Bool)

(assert (=> b!779063 m!722717))

(declare-fun m!722719 () Bool)

(assert (=> b!779072 m!722719))

(check-sat (not b!779067) (not b!779076) (not b!779075) (not b!779062) (not b!779070) (not b!779073) (not b!779072) (not b!779065) (not b!779063) (not b!779059) (not b!779074) (not start!67380) (not b!779061) (not b!779068) (not b!779060))
(check-sat)
