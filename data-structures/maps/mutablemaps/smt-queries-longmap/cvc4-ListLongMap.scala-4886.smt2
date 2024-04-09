; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67382 () Bool)

(assert start!67382)

(declare-fun b!779113 () Bool)

(declare-fun res!527262 () Bool)

(declare-fun e!433464 () Bool)

(assert (=> b!779113 (=> (not res!527262) (not e!433464))))

(declare-datatypes ((array!42566 0))(
  ( (array!42567 (arr!20372 (Array (_ BitVec 32) (_ BitVec 64))) (size!20793 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42566)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!779113 (= res!527262 (and (= (size!20793 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20793 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20793 a!3186)) (not (= i!1173 j!159))))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7979 0))(
  ( (MissingZero!7979 (index!34283 (_ BitVec 32))) (Found!7979 (index!34284 (_ BitVec 32))) (Intermediate!7979 (undefined!8791 Bool) (index!34285 (_ BitVec 32)) (x!65253 (_ BitVec 32))) (Undefined!7979) (MissingVacant!7979 (index!34286 (_ BitVec 32))) )
))
(declare-fun lt!347162 () SeekEntryResult!7979)

(declare-fun b!779114 () Bool)

(declare-fun e!433461 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42566 (_ BitVec 32)) SeekEntryResult!7979)

(assert (=> b!779114 (= e!433461 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20372 a!3186) j!159) a!3186 mask!3328) lt!347162))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!779115 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42566 (_ BitVec 32)) SeekEntryResult!7979)

(assert (=> b!779115 (= e!433461 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20372 a!3186) j!159) a!3186 mask!3328) (Found!7979 j!159)))))

(declare-fun b!779116 () Bool)

(declare-fun res!527260 () Bool)

(assert (=> b!779116 (=> (not res!527260) (not e!433464))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779116 (= res!527260 (validKeyInArray!0 k!2102))))

(declare-fun b!779117 () Bool)

(declare-fun e!433466 () Bool)

(declare-fun e!433467 () Bool)

(assert (=> b!779117 (= e!433466 e!433467)))

(declare-fun res!527265 () Bool)

(assert (=> b!779117 (=> (not res!527265) (not e!433467))))

(declare-fun lt!347160 () SeekEntryResult!7979)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42566 (_ BitVec 32)) SeekEntryResult!7979)

(assert (=> b!779117 (= res!527265 (= (seekEntryOrOpen!0 (select (arr!20372 a!3186) j!159) a!3186 mask!3328) lt!347160))))

(assert (=> b!779117 (= lt!347160 (Found!7979 j!159))))

(declare-fun b!779118 () Bool)

(declare-fun res!527272 () Bool)

(declare-fun e!433463 () Bool)

(assert (=> b!779118 (=> (not res!527272) (not e!433463))))

(assert (=> b!779118 (= res!527272 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20372 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779119 () Bool)

(declare-fun res!527266 () Bool)

(declare-fun e!433462 () Bool)

(assert (=> b!779119 (=> (not res!527266) (not e!433462))))

(declare-datatypes ((List!14427 0))(
  ( (Nil!14424) (Cons!14423 (h!15537 (_ BitVec 64)) (t!20750 List!14427)) )
))
(declare-fun arrayNoDuplicates!0 (array!42566 (_ BitVec 32) List!14427) Bool)

(assert (=> b!779119 (= res!527266 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14424))))

(declare-fun res!527264 () Bool)

(assert (=> start!67382 (=> (not res!527264) (not e!433464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67382 (= res!527264 (validMask!0 mask!3328))))

(assert (=> start!67382 e!433464))

(assert (=> start!67382 true))

(declare-fun array_inv!16146 (array!42566) Bool)

(assert (=> start!67382 (array_inv!16146 a!3186)))

(declare-fun b!779120 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779120 (= e!433467 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20372 a!3186) j!159) a!3186 mask!3328) lt!347160))))

(declare-fun b!779121 () Bool)

(declare-fun e!433468 () Bool)

(declare-fun e!433460 () Bool)

(assert (=> b!779121 (= e!433468 (not e!433460))))

(declare-fun res!527261 () Bool)

(assert (=> b!779121 (=> res!527261 e!433460)))

(declare-fun lt!347158 () SeekEntryResult!7979)

(assert (=> b!779121 (= res!527261 (or (not (is-Intermediate!7979 lt!347158)) (bvslt x!1131 (x!65253 lt!347158)) (not (= x!1131 (x!65253 lt!347158))) (not (= index!1321 (index!34285 lt!347158)))))))

(assert (=> b!779121 e!433466))

(declare-fun res!527259 () Bool)

(assert (=> b!779121 (=> (not res!527259) (not e!433466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42566 (_ BitVec 32)) Bool)

(assert (=> b!779121 (= res!527259 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26852 0))(
  ( (Unit!26853) )
))
(declare-fun lt!347163 () Unit!26852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26852)

(assert (=> b!779121 (= lt!347163 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779122 () Bool)

(assert (=> b!779122 (= e!433463 e!433468)))

(declare-fun res!527269 () Bool)

(assert (=> b!779122 (=> (not res!527269) (not e!433468))))

(declare-fun lt!347164 () SeekEntryResult!7979)

(assert (=> b!779122 (= res!527269 (= lt!347164 lt!347158))))

(declare-fun lt!347161 () array!42566)

(declare-fun lt!347159 () (_ BitVec 64))

(assert (=> b!779122 (= lt!347158 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347159 lt!347161 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779122 (= lt!347164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347159 mask!3328) lt!347159 lt!347161 mask!3328))))

(assert (=> b!779122 (= lt!347159 (select (store (arr!20372 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779122 (= lt!347161 (array!42567 (store (arr!20372 a!3186) i!1173 k!2102) (size!20793 a!3186)))))

(declare-fun b!779123 () Bool)

(declare-fun res!527268 () Bool)

(assert (=> b!779123 (=> (not res!527268) (not e!433462))))

(assert (=> b!779123 (= res!527268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779124 () Bool)

(declare-fun res!527258 () Bool)

(assert (=> b!779124 (=> (not res!527258) (not e!433464))))

(declare-fun arrayContainsKey!0 (array!42566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779124 (= res!527258 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779125 () Bool)

(assert (=> b!779125 (= e!433460 true)))

(declare-fun lt!347156 () SeekEntryResult!7979)

(assert (=> b!779125 (= lt!347156 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20372 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779126 () Bool)

(declare-fun res!527270 () Bool)

(assert (=> b!779126 (=> (not res!527270) (not e!433462))))

(assert (=> b!779126 (= res!527270 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20793 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20793 a!3186))))))

(declare-fun b!779127 () Bool)

(assert (=> b!779127 (= e!433464 e!433462)))

(declare-fun res!527257 () Bool)

(assert (=> b!779127 (=> (not res!527257) (not e!433462))))

(declare-fun lt!347157 () SeekEntryResult!7979)

(assert (=> b!779127 (= res!527257 (or (= lt!347157 (MissingZero!7979 i!1173)) (= lt!347157 (MissingVacant!7979 i!1173))))))

(assert (=> b!779127 (= lt!347157 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!779128 () Bool)

(assert (=> b!779128 (= e!433462 e!433463)))

(declare-fun res!527267 () Bool)

(assert (=> b!779128 (=> (not res!527267) (not e!433463))))

(assert (=> b!779128 (= res!527267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20372 a!3186) j!159) mask!3328) (select (arr!20372 a!3186) j!159) a!3186 mask!3328) lt!347162))))

(assert (=> b!779128 (= lt!347162 (Intermediate!7979 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779129 () Bool)

(declare-fun res!527263 () Bool)

(assert (=> b!779129 (=> (not res!527263) (not e!433464))))

(assert (=> b!779129 (= res!527263 (validKeyInArray!0 (select (arr!20372 a!3186) j!159)))))

(declare-fun b!779130 () Bool)

(declare-fun res!527271 () Bool)

(assert (=> b!779130 (=> (not res!527271) (not e!433463))))

(assert (=> b!779130 (= res!527271 e!433461)))

(declare-fun c!86331 () Bool)

(assert (=> b!779130 (= c!86331 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67382 res!527264) b!779113))

(assert (= (and b!779113 res!527262) b!779129))

(assert (= (and b!779129 res!527263) b!779116))

(assert (= (and b!779116 res!527260) b!779124))

(assert (= (and b!779124 res!527258) b!779127))

(assert (= (and b!779127 res!527257) b!779123))

(assert (= (and b!779123 res!527268) b!779119))

(assert (= (and b!779119 res!527266) b!779126))

(assert (= (and b!779126 res!527270) b!779128))

(assert (= (and b!779128 res!527267) b!779118))

(assert (= (and b!779118 res!527272) b!779130))

(assert (= (and b!779130 c!86331) b!779114))

(assert (= (and b!779130 (not c!86331)) b!779115))

(assert (= (and b!779130 res!527271) b!779122))

(assert (= (and b!779122 res!527269) b!779121))

(assert (= (and b!779121 res!527259) b!779117))

(assert (= (and b!779117 res!527265) b!779120))

(assert (= (and b!779121 (not res!527261)) b!779125))

(declare-fun m!722721 () Bool)

(assert (=> b!779114 m!722721))

(assert (=> b!779114 m!722721))

(declare-fun m!722723 () Bool)

(assert (=> b!779114 m!722723))

(declare-fun m!722725 () Bool)

(assert (=> b!779118 m!722725))

(assert (=> b!779115 m!722721))

(assert (=> b!779115 m!722721))

(declare-fun m!722727 () Bool)

(assert (=> b!779115 m!722727))

(declare-fun m!722729 () Bool)

(assert (=> b!779121 m!722729))

(declare-fun m!722731 () Bool)

(assert (=> b!779121 m!722731))

(assert (=> b!779125 m!722721))

(assert (=> b!779125 m!722721))

(assert (=> b!779125 m!722727))

(declare-fun m!722733 () Bool)

(assert (=> b!779116 m!722733))

(declare-fun m!722735 () Bool)

(assert (=> b!779122 m!722735))

(declare-fun m!722737 () Bool)

(assert (=> b!779122 m!722737))

(assert (=> b!779122 m!722735))

(declare-fun m!722739 () Bool)

(assert (=> b!779122 m!722739))

(declare-fun m!722741 () Bool)

(assert (=> b!779122 m!722741))

(declare-fun m!722743 () Bool)

(assert (=> b!779122 m!722743))

(assert (=> b!779120 m!722721))

(assert (=> b!779120 m!722721))

(declare-fun m!722745 () Bool)

(assert (=> b!779120 m!722745))

(declare-fun m!722747 () Bool)

(assert (=> b!779127 m!722747))

(assert (=> b!779128 m!722721))

(assert (=> b!779128 m!722721))

(declare-fun m!722749 () Bool)

(assert (=> b!779128 m!722749))

(assert (=> b!779128 m!722749))

(assert (=> b!779128 m!722721))

(declare-fun m!722751 () Bool)

(assert (=> b!779128 m!722751))

(declare-fun m!722753 () Bool)

(assert (=> b!779123 m!722753))

(declare-fun m!722755 () Bool)

(assert (=> b!779119 m!722755))

(assert (=> b!779117 m!722721))

(assert (=> b!779117 m!722721))

(declare-fun m!722757 () Bool)

(assert (=> b!779117 m!722757))

(declare-fun m!722759 () Bool)

(assert (=> start!67382 m!722759))

(declare-fun m!722761 () Bool)

(assert (=> start!67382 m!722761))

(declare-fun m!722763 () Bool)

(assert (=> b!779124 m!722763))

(assert (=> b!779129 m!722721))

(assert (=> b!779129 m!722721))

(declare-fun m!722765 () Bool)

(assert (=> b!779129 m!722765))

(push 1)

