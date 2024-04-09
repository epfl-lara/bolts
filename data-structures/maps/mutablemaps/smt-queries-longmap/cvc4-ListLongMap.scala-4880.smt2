; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67280 () Bool)

(assert start!67280)

(declare-fun b!777668 () Bool)

(declare-fun res!526240 () Bool)

(declare-fun e!432715 () Bool)

(assert (=> b!777668 (=> (not res!526240) (not e!432715))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777668 (= res!526240 (validKeyInArray!0 k!2102))))

(declare-fun b!777669 () Bool)

(declare-fun e!432719 () Bool)

(declare-fun e!432713 () Bool)

(assert (=> b!777669 (= e!432719 e!432713)))

(declare-fun res!526243 () Bool)

(assert (=> b!777669 (=> (not res!526243) (not e!432713))))

(declare-datatypes ((array!42527 0))(
  ( (array!42528 (arr!20354 (Array (_ BitVec 32) (_ BitVec 64))) (size!20775 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42527)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7961 0))(
  ( (MissingZero!7961 (index!34211 (_ BitVec 32))) (Found!7961 (index!34212 (_ BitVec 32))) (Intermediate!7961 (undefined!8773 Bool) (index!34213 (_ BitVec 32)) (x!65178 (_ BitVec 32))) (Undefined!7961) (MissingVacant!7961 (index!34214 (_ BitVec 32))) )
))
(declare-fun lt!346492 () SeekEntryResult!7961)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42527 (_ BitVec 32)) SeekEntryResult!7961)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777669 (= res!526243 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20354 a!3186) j!159) mask!3328) (select (arr!20354 a!3186) j!159) a!3186 mask!3328) lt!346492))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777669 (= lt!346492 (Intermediate!7961 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777670 () Bool)

(declare-fun res!526245 () Bool)

(declare-fun e!432716 () Bool)

(assert (=> b!777670 (=> res!526245 e!432716)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!346489 () SeekEntryResult!7961)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!346491 () (_ BitVec 64))

(assert (=> b!777670 (= res!526245 (or (not (= (select (store (arr!20354 a!3186) i!1173 k!2102) index!1321) lt!346491)) (undefined!8773 lt!346489)))))

(declare-fun b!777671 () Bool)

(declare-fun res!526233 () Bool)

(assert (=> b!777671 (=> (not res!526233) (not e!432715))))

(assert (=> b!777671 (= res!526233 (validKeyInArray!0 (select (arr!20354 a!3186) j!159)))))

(declare-fun b!777672 () Bool)

(declare-fun res!526242 () Bool)

(assert (=> b!777672 (=> (not res!526242) (not e!432715))))

(assert (=> b!777672 (= res!526242 (and (= (size!20775 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20775 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20775 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777673 () Bool)

(declare-fun e!432721 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!777673 (= e!432721 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20354 a!3186) j!159) a!3186 mask!3328) lt!346492))))

(declare-fun b!777674 () Bool)

(declare-fun res!526235 () Bool)

(assert (=> b!777674 (=> res!526235 e!432716)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42527 (_ BitVec 32)) SeekEntryResult!7961)

(assert (=> b!777674 (= res!526235 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20354 a!3186) j!159) a!3186 mask!3328) (Found!7961 j!159))))))

(declare-fun b!777675 () Bool)

(assert (=> b!777675 (= e!432716 true)))

(declare-fun lt!346488 () SeekEntryResult!7961)

(declare-fun lt!346490 () array!42527)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42527 (_ BitVec 32)) SeekEntryResult!7961)

(assert (=> b!777675 (= lt!346488 (seekEntryOrOpen!0 lt!346491 lt!346490 mask!3328))))

(declare-fun b!777677 () Bool)

(declare-fun res!526244 () Bool)

(assert (=> b!777677 (=> (not res!526244) (not e!432719))))

(assert (=> b!777677 (= res!526244 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20775 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20775 a!3186))))))

(declare-fun b!777678 () Bool)

(declare-fun res!526241 () Bool)

(assert (=> b!777678 (=> (not res!526241) (not e!432713))))

(assert (=> b!777678 (= res!526241 e!432721)))

(declare-fun c!86121 () Bool)

(assert (=> b!777678 (= c!86121 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777679 () Bool)

(assert (=> b!777679 (= e!432721 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20354 a!3186) j!159) a!3186 mask!3328) (Found!7961 j!159)))))

(declare-fun b!777680 () Bool)

(declare-fun res!526229 () Bool)

(assert (=> b!777680 (=> (not res!526229) (not e!432715))))

(declare-fun arrayContainsKey!0 (array!42527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777680 (= res!526229 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777681 () Bool)

(declare-fun e!432718 () Bool)

(assert (=> b!777681 (= e!432713 e!432718)))

(declare-fun res!526234 () Bool)

(assert (=> b!777681 (=> (not res!526234) (not e!432718))))

(declare-fun lt!346487 () SeekEntryResult!7961)

(assert (=> b!777681 (= res!526234 (= lt!346487 lt!346489))))

(assert (=> b!777681 (= lt!346489 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346491 lt!346490 mask!3328))))

(assert (=> b!777681 (= lt!346487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346491 mask!3328) lt!346491 lt!346490 mask!3328))))

(assert (=> b!777681 (= lt!346491 (select (store (arr!20354 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777681 (= lt!346490 (array!42528 (store (arr!20354 a!3186) i!1173 k!2102) (size!20775 a!3186)))))

(declare-fun b!777682 () Bool)

(declare-fun res!526231 () Bool)

(assert (=> b!777682 (=> (not res!526231) (not e!432719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42527 (_ BitVec 32)) Bool)

(assert (=> b!777682 (= res!526231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777683 () Bool)

(declare-fun res!526238 () Bool)

(assert (=> b!777683 (=> (not res!526238) (not e!432713))))

(assert (=> b!777683 (= res!526238 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20354 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777684 () Bool)

(assert (=> b!777684 (= e!432715 e!432719)))

(declare-fun res!526239 () Bool)

(assert (=> b!777684 (=> (not res!526239) (not e!432719))))

(declare-fun lt!346494 () SeekEntryResult!7961)

(assert (=> b!777684 (= res!526239 (or (= lt!346494 (MissingZero!7961 i!1173)) (= lt!346494 (MissingVacant!7961 i!1173))))))

(assert (=> b!777684 (= lt!346494 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777685 () Bool)

(assert (=> b!777685 (= e!432718 (not e!432716))))

(declare-fun res!526230 () Bool)

(assert (=> b!777685 (=> res!526230 e!432716)))

(assert (=> b!777685 (= res!526230 (or (not (is-Intermediate!7961 lt!346489)) (bvslt x!1131 (x!65178 lt!346489)) (not (= x!1131 (x!65178 lt!346489))) (not (= index!1321 (index!34213 lt!346489)))))))

(declare-fun e!432717 () Bool)

(assert (=> b!777685 e!432717))

(declare-fun res!526232 () Bool)

(assert (=> b!777685 (=> (not res!526232) (not e!432717))))

(assert (=> b!777685 (= res!526232 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26816 0))(
  ( (Unit!26817) )
))
(declare-fun lt!346495 () Unit!26816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42527 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26816)

(assert (=> b!777685 (= lt!346495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!526237 () Bool)

(assert (=> start!67280 (=> (not res!526237) (not e!432715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67280 (= res!526237 (validMask!0 mask!3328))))

(assert (=> start!67280 e!432715))

(assert (=> start!67280 true))

(declare-fun array_inv!16128 (array!42527) Bool)

(assert (=> start!67280 (array_inv!16128 a!3186)))

(declare-fun b!777676 () Bool)

(declare-fun res!526236 () Bool)

(assert (=> b!777676 (=> (not res!526236) (not e!432719))))

(declare-datatypes ((List!14409 0))(
  ( (Nil!14406) (Cons!14405 (h!15516 (_ BitVec 64)) (t!20732 List!14409)) )
))
(declare-fun arrayNoDuplicates!0 (array!42527 (_ BitVec 32) List!14409) Bool)

(assert (=> b!777676 (= res!526236 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14406))))

(declare-fun b!777686 () Bool)

(declare-fun e!432720 () Bool)

(assert (=> b!777686 (= e!432717 e!432720)))

(declare-fun res!526246 () Bool)

(assert (=> b!777686 (=> (not res!526246) (not e!432720))))

(declare-fun lt!346493 () SeekEntryResult!7961)

(assert (=> b!777686 (= res!526246 (= (seekEntryOrOpen!0 (select (arr!20354 a!3186) j!159) a!3186 mask!3328) lt!346493))))

(assert (=> b!777686 (= lt!346493 (Found!7961 j!159))))

(declare-fun b!777687 () Bool)

(assert (=> b!777687 (= e!432720 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20354 a!3186) j!159) a!3186 mask!3328) lt!346493))))

(assert (= (and start!67280 res!526237) b!777672))

(assert (= (and b!777672 res!526242) b!777671))

(assert (= (and b!777671 res!526233) b!777668))

(assert (= (and b!777668 res!526240) b!777680))

(assert (= (and b!777680 res!526229) b!777684))

(assert (= (and b!777684 res!526239) b!777682))

(assert (= (and b!777682 res!526231) b!777676))

(assert (= (and b!777676 res!526236) b!777677))

(assert (= (and b!777677 res!526244) b!777669))

(assert (= (and b!777669 res!526243) b!777683))

(assert (= (and b!777683 res!526238) b!777678))

(assert (= (and b!777678 c!86121) b!777673))

(assert (= (and b!777678 (not c!86121)) b!777679))

(assert (= (and b!777678 res!526241) b!777681))

(assert (= (and b!777681 res!526234) b!777685))

(assert (= (and b!777685 res!526232) b!777686))

(assert (= (and b!777686 res!526246) b!777687))

(assert (= (and b!777685 (not res!526230)) b!777674))

(assert (= (and b!777674 (not res!526235)) b!777670))

(assert (= (and b!777670 (not res!526245)) b!777675))

(declare-fun m!721553 () Bool)

(assert (=> b!777681 m!721553))

(declare-fun m!721555 () Bool)

(assert (=> b!777681 m!721555))

(declare-fun m!721557 () Bool)

(assert (=> b!777681 m!721557))

(declare-fun m!721559 () Bool)

(assert (=> b!777681 m!721559))

(declare-fun m!721561 () Bool)

(assert (=> b!777681 m!721561))

(assert (=> b!777681 m!721553))

(declare-fun m!721563 () Bool)

(assert (=> start!67280 m!721563))

(declare-fun m!721565 () Bool)

(assert (=> start!67280 m!721565))

(declare-fun m!721567 () Bool)

(assert (=> b!777676 m!721567))

(declare-fun m!721569 () Bool)

(assert (=> b!777675 m!721569))

(declare-fun m!721571 () Bool)

(assert (=> b!777674 m!721571))

(assert (=> b!777674 m!721571))

(declare-fun m!721573 () Bool)

(assert (=> b!777674 m!721573))

(declare-fun m!721575 () Bool)

(assert (=> b!777680 m!721575))

(assert (=> b!777687 m!721571))

(assert (=> b!777687 m!721571))

(declare-fun m!721577 () Bool)

(assert (=> b!777687 m!721577))

(declare-fun m!721579 () Bool)

(assert (=> b!777683 m!721579))

(assert (=> b!777671 m!721571))

(assert (=> b!777671 m!721571))

(declare-fun m!721581 () Bool)

(assert (=> b!777671 m!721581))

(declare-fun m!721583 () Bool)

(assert (=> b!777668 m!721583))

(assert (=> b!777686 m!721571))

(assert (=> b!777686 m!721571))

(declare-fun m!721585 () Bool)

(assert (=> b!777686 m!721585))

(assert (=> b!777679 m!721571))

(assert (=> b!777679 m!721571))

(assert (=> b!777679 m!721573))

(assert (=> b!777673 m!721571))

(assert (=> b!777673 m!721571))

(declare-fun m!721587 () Bool)

(assert (=> b!777673 m!721587))

(assert (=> b!777669 m!721571))

(assert (=> b!777669 m!721571))

(declare-fun m!721589 () Bool)

(assert (=> b!777669 m!721589))

(assert (=> b!777669 m!721589))

(assert (=> b!777669 m!721571))

(declare-fun m!721591 () Bool)

(assert (=> b!777669 m!721591))

(declare-fun m!721593 () Bool)

(assert (=> b!777685 m!721593))

(declare-fun m!721595 () Bool)

(assert (=> b!777685 m!721595))

(declare-fun m!721597 () Bool)

(assert (=> b!777682 m!721597))

(assert (=> b!777670 m!721557))

(declare-fun m!721599 () Bool)

(assert (=> b!777670 m!721599))

(declare-fun m!721601 () Bool)

(assert (=> b!777684 m!721601))

(push 1)

