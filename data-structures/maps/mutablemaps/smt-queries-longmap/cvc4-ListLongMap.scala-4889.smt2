; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67400 () Bool)

(assert start!67400)

(declare-fun b!779590 () Bool)

(declare-fun res!527687 () Bool)

(declare-fun e!433701 () Bool)

(assert (=> b!779590 (=> (not res!527687) (not e!433701))))

(declare-datatypes ((array!42584 0))(
  ( (array!42585 (arr!20381 (Array (_ BitVec 32) (_ BitVec 64))) (size!20802 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42584)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779590 (= res!527687 (validKeyInArray!0 (select (arr!20381 a!3186) j!159)))))

(declare-fun b!779591 () Bool)

(declare-fun e!433700 () Bool)

(declare-fun e!433698 () Bool)

(assert (=> b!779591 (= e!433700 e!433698)))

(declare-fun res!527691 () Bool)

(assert (=> b!779591 (=> (not res!527691) (not e!433698))))

(declare-datatypes ((SeekEntryResult!7988 0))(
  ( (MissingZero!7988 (index!34319 (_ BitVec 32))) (Found!7988 (index!34320 (_ BitVec 32))) (Intermediate!7988 (undefined!8800 Bool) (index!34321 (_ BitVec 32)) (x!65286 (_ BitVec 32))) (Undefined!7988) (MissingVacant!7988 (index!34322 (_ BitVec 32))) )
))
(declare-fun lt!347431 () SeekEntryResult!7988)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42584 (_ BitVec 32)) SeekEntryResult!7988)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779591 (= res!527691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347431))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779591 (= lt!347431 (Intermediate!7988 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779592 () Bool)

(declare-fun res!527682 () Bool)

(assert (=> b!779592 (=> (not res!527682) (not e!433700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42584 (_ BitVec 32)) Bool)

(assert (=> b!779592 (= res!527682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779593 () Bool)

(declare-fun res!527695 () Bool)

(assert (=> b!779593 (=> (not res!527695) (not e!433700))))

(declare-datatypes ((List!14436 0))(
  ( (Nil!14433) (Cons!14432 (h!15546 (_ BitVec 64)) (t!20759 List!14436)) )
))
(declare-fun arrayNoDuplicates!0 (array!42584 (_ BitVec 32) List!14436) Bool)

(assert (=> b!779593 (= res!527695 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14433))))

(declare-fun b!779594 () Bool)

(declare-fun e!433697 () Bool)

(assert (=> b!779594 (= e!433698 e!433697)))

(declare-fun res!527685 () Bool)

(assert (=> b!779594 (=> (not res!527685) (not e!433697))))

(declare-fun lt!347426 () SeekEntryResult!7988)

(declare-fun lt!347427 () SeekEntryResult!7988)

(assert (=> b!779594 (= res!527685 (= lt!347426 lt!347427))))

(declare-fun lt!347432 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!347428 () array!42584)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!779594 (= lt!347427 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347432 lt!347428 mask!3328))))

(assert (=> b!779594 (= lt!347426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347432 mask!3328) lt!347432 lt!347428 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!779594 (= lt!347432 (select (store (arr!20381 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779594 (= lt!347428 (array!42585 (store (arr!20381 a!3186) i!1173 k!2102) (size!20802 a!3186)))))

(declare-fun b!779595 () Bool)

(declare-fun e!433702 () Bool)

(declare-fun lt!347425 () SeekEntryResult!7988)

(assert (=> b!779595 (= e!433702 (= lt!347425 (MissingVacant!7988 resIntermediateIndex!5)))))

(declare-fun lt!347430 () SeekEntryResult!7988)

(assert (=> b!779595 (= lt!347430 lt!347425)))

(declare-fun b!779597 () Bool)

(declare-fun e!433695 () Bool)

(assert (=> b!779597 (= e!433697 (not e!433695))))

(declare-fun res!527690 () Bool)

(assert (=> b!779597 (=> res!527690 e!433695)))

(assert (=> b!779597 (= res!527690 (or (not (is-Intermediate!7988 lt!347427)) (bvslt x!1131 (x!65286 lt!347427)) (not (= x!1131 (x!65286 lt!347427))) (not (= index!1321 (index!34321 lt!347427)))))))

(declare-fun e!433694 () Bool)

(assert (=> b!779597 e!433694))

(declare-fun res!527694 () Bool)

(assert (=> b!779597 (=> (not res!527694) (not e!433694))))

(declare-fun lt!347434 () SeekEntryResult!7988)

(assert (=> b!779597 (= res!527694 (= lt!347430 lt!347434))))

(assert (=> b!779597 (= lt!347434 (Found!7988 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42584 (_ BitVec 32)) SeekEntryResult!7988)

(assert (=> b!779597 (= lt!347430 (seekEntryOrOpen!0 (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779597 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26870 0))(
  ( (Unit!26871) )
))
(declare-fun lt!347429 () Unit!26870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26870)

(assert (=> b!779597 (= lt!347429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779598 () Bool)

(declare-fun res!527688 () Bool)

(assert (=> b!779598 (=> (not res!527688) (not e!433698))))

(declare-fun e!433699 () Bool)

(assert (=> b!779598 (= res!527688 e!433699)))

(declare-fun c!86358 () Bool)

(assert (=> b!779598 (= c!86358 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779599 () Bool)

(declare-fun res!527684 () Bool)

(assert (=> b!779599 (=> (not res!527684) (not e!433698))))

(assert (=> b!779599 (= res!527684 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20381 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779600 () Bool)

(declare-fun res!527686 () Bool)

(assert (=> b!779600 (=> (not res!527686) (not e!433701))))

(declare-fun arrayContainsKey!0 (array!42584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779600 (= res!527686 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779601 () Bool)

(assert (=> b!779601 (= e!433699 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347431))))

(declare-fun b!779602 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42584 (_ BitVec 32)) SeekEntryResult!7988)

(assert (=> b!779602 (= e!433699 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) (Found!7988 j!159)))))

(declare-fun b!779596 () Bool)

(declare-fun res!527680 () Bool)

(assert (=> b!779596 (=> (not res!527680) (not e!433700))))

(assert (=> b!779596 (= res!527680 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20802 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20802 a!3186))))))

(declare-fun res!527683 () Bool)

(assert (=> start!67400 (=> (not res!527683) (not e!433701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67400 (= res!527683 (validMask!0 mask!3328))))

(assert (=> start!67400 e!433701))

(assert (=> start!67400 true))

(declare-fun array_inv!16155 (array!42584) Bool)

(assert (=> start!67400 (array_inv!16155 a!3186)))

(declare-fun b!779603 () Bool)

(assert (=> b!779603 (= e!433694 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347434))))

(declare-fun b!779604 () Bool)

(assert (=> b!779604 (= e!433701 e!433700)))

(declare-fun res!527692 () Bool)

(assert (=> b!779604 (=> (not res!527692) (not e!433700))))

(declare-fun lt!347433 () SeekEntryResult!7988)

(assert (=> b!779604 (= res!527692 (or (= lt!347433 (MissingZero!7988 i!1173)) (= lt!347433 (MissingVacant!7988 i!1173))))))

(assert (=> b!779604 (= lt!347433 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!779605 () Bool)

(declare-fun res!527693 () Bool)

(assert (=> b!779605 (=> (not res!527693) (not e!433701))))

(assert (=> b!779605 (= res!527693 (validKeyInArray!0 k!2102))))

(declare-fun b!779606 () Bool)

(assert (=> b!779606 (= e!433695 e!433702)))

(declare-fun res!527689 () Bool)

(assert (=> b!779606 (=> res!527689 e!433702)))

(assert (=> b!779606 (= res!527689 (or (not (= lt!347425 lt!347434)) (= (select (store (arr!20381 a!3186) i!1173 k!2102) index!1321) lt!347432) (not (= (select (store (arr!20381 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779606 (= lt!347425 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779607 () Bool)

(declare-fun res!527681 () Bool)

(assert (=> b!779607 (=> (not res!527681) (not e!433701))))

(assert (=> b!779607 (= res!527681 (and (= (size!20802 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20802 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20802 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67400 res!527683) b!779607))

(assert (= (and b!779607 res!527681) b!779590))

(assert (= (and b!779590 res!527687) b!779605))

(assert (= (and b!779605 res!527693) b!779600))

(assert (= (and b!779600 res!527686) b!779604))

(assert (= (and b!779604 res!527692) b!779592))

(assert (= (and b!779592 res!527682) b!779593))

(assert (= (and b!779593 res!527695) b!779596))

(assert (= (and b!779596 res!527680) b!779591))

(assert (= (and b!779591 res!527691) b!779599))

(assert (= (and b!779599 res!527684) b!779598))

(assert (= (and b!779598 c!86358) b!779601))

(assert (= (and b!779598 (not c!86358)) b!779602))

(assert (= (and b!779598 res!527688) b!779594))

(assert (= (and b!779594 res!527685) b!779597))

(assert (= (and b!779597 res!527694) b!779603))

(assert (= (and b!779597 (not res!527690)) b!779606))

(assert (= (and b!779606 (not res!527689)) b!779595))

(declare-fun m!723151 () Bool)

(assert (=> b!779593 m!723151))

(declare-fun m!723153 () Bool)

(assert (=> b!779603 m!723153))

(assert (=> b!779603 m!723153))

(declare-fun m!723155 () Bool)

(assert (=> b!779603 m!723155))

(declare-fun m!723157 () Bool)

(assert (=> b!779604 m!723157))

(assert (=> b!779591 m!723153))

(assert (=> b!779591 m!723153))

(declare-fun m!723159 () Bool)

(assert (=> b!779591 m!723159))

(assert (=> b!779591 m!723159))

(assert (=> b!779591 m!723153))

(declare-fun m!723161 () Bool)

(assert (=> b!779591 m!723161))

(assert (=> b!779597 m!723153))

(assert (=> b!779597 m!723153))

(declare-fun m!723163 () Bool)

(assert (=> b!779597 m!723163))

(declare-fun m!723165 () Bool)

(assert (=> b!779597 m!723165))

(declare-fun m!723167 () Bool)

(assert (=> b!779597 m!723167))

(declare-fun m!723169 () Bool)

(assert (=> b!779606 m!723169))

(declare-fun m!723171 () Bool)

(assert (=> b!779606 m!723171))

(assert (=> b!779606 m!723153))

(assert (=> b!779606 m!723153))

(declare-fun m!723173 () Bool)

(assert (=> b!779606 m!723173))

(declare-fun m!723175 () Bool)

(assert (=> b!779599 m!723175))

(declare-fun m!723177 () Bool)

(assert (=> b!779594 m!723177))

(declare-fun m!723179 () Bool)

(assert (=> b!779594 m!723179))

(assert (=> b!779594 m!723179))

(declare-fun m!723181 () Bool)

(assert (=> b!779594 m!723181))

(assert (=> b!779594 m!723169))

(declare-fun m!723183 () Bool)

(assert (=> b!779594 m!723183))

(declare-fun m!723185 () Bool)

(assert (=> start!67400 m!723185))

(declare-fun m!723187 () Bool)

(assert (=> start!67400 m!723187))

(assert (=> b!779602 m!723153))

(assert (=> b!779602 m!723153))

(assert (=> b!779602 m!723173))

(declare-fun m!723189 () Bool)

(assert (=> b!779605 m!723189))

(declare-fun m!723191 () Bool)

(assert (=> b!779600 m!723191))

(assert (=> b!779601 m!723153))

(assert (=> b!779601 m!723153))

(declare-fun m!723193 () Bool)

(assert (=> b!779601 m!723193))

(assert (=> b!779590 m!723153))

(assert (=> b!779590 m!723153))

(declare-fun m!723195 () Bool)

(assert (=> b!779590 m!723195))

(declare-fun m!723197 () Bool)

(assert (=> b!779592 m!723197))

(push 1)

(assert (not b!779594))

(assert (not b!779590))

(assert (not b!779593))

(assert (not start!67400))

(assert (not b!779591))

(assert (not b!779602))

(assert (not b!779603))

(assert (not b!779597))

(assert (not b!779592))

(assert (not b!779606))

(assert (not b!779601))

(assert (not b!779605))

(assert (not b!779600))

(assert (not b!779604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!102325 () Bool)

(declare-fun lt!347472 () SeekEntryResult!7988)

(assert (=> d!102325 (and (or (is-Undefined!7988 lt!347472) (not (is-Found!7988 lt!347472)) (and (bvsge (index!34320 lt!347472) #b00000000000000000000000000000000) (bvslt (index!34320 lt!347472) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347472) (is-Found!7988 lt!347472) (not (is-MissingZero!7988 lt!347472)) (and (bvsge (index!34319 lt!347472) #b00000000000000000000000000000000) (bvslt (index!34319 lt!347472) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347472) (is-Found!7988 lt!347472) (is-MissingZero!7988 lt!347472) (not (is-MissingVacant!7988 lt!347472)) (and (bvsge (index!34322 lt!347472) #b00000000000000000000000000000000) (bvslt (index!34322 lt!347472) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347472) (ite (is-Found!7988 lt!347472) (= (select (arr!20381 a!3186) (index!34320 lt!347472)) k!2102) (ite (is-MissingZero!7988 lt!347472) (= (select (arr!20381 a!3186) (index!34319 lt!347472)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7988 lt!347472) (= (select (arr!20381 a!3186) (index!34322 lt!347472)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433739 () SeekEntryResult!7988)

(assert (=> d!102325 (= lt!347472 e!433739)))

(declare-fun c!86391 () Bool)

(declare-fun lt!347473 () SeekEntryResult!7988)

(assert (=> d!102325 (= c!86391 (and (is-Intermediate!7988 lt!347473) (undefined!8800 lt!347473)))))

(assert (=> d!102325 (= lt!347473 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102325 (validMask!0 mask!3328)))

(assert (=> d!102325 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!347472)))

(declare-fun b!779674 () Bool)

(declare-fun e!433741 () SeekEntryResult!7988)

(assert (=> b!779674 (= e!433741 (seekKeyOrZeroReturnVacant!0 (x!65286 lt!347473) (index!34321 lt!347473) (index!34321 lt!347473) k!2102 a!3186 mask!3328))))

(declare-fun b!779675 () Bool)

(declare-fun c!86390 () Bool)

(declare-fun lt!347471 () (_ BitVec 64))

(assert (=> b!779675 (= c!86390 (= lt!347471 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433740 () SeekEntryResult!7988)

(assert (=> b!779675 (= e!433740 e!433741)))

(declare-fun b!779676 () Bool)

(assert (=> b!779676 (= e!433740 (Found!7988 (index!34321 lt!347473)))))

(declare-fun b!779677 () Bool)

(assert (=> b!779677 (= e!433739 e!433740)))

(assert (=> b!779677 (= lt!347471 (select (arr!20381 a!3186) (index!34321 lt!347473)))))

(declare-fun c!86389 () Bool)

(assert (=> b!779677 (= c!86389 (= lt!347471 k!2102))))

(declare-fun b!779678 () Bool)

(assert (=> b!779678 (= e!433739 Undefined!7988)))

(declare-fun b!779679 () Bool)

(assert (=> b!779679 (= e!433741 (MissingZero!7988 (index!34321 lt!347473)))))

(assert (= (and d!102325 c!86391) b!779678))

(assert (= (and d!102325 (not c!86391)) b!779677))

(assert (= (and b!779677 c!86389) b!779676))

(assert (= (and b!779677 (not c!86389)) b!779675))

(assert (= (and b!779675 c!86390) b!779679))

(assert (= (and b!779675 (not c!86390)) b!779674))

(declare-fun m!723241 () Bool)

(assert (=> d!102325 m!723241))

(declare-fun m!723243 () Bool)

(assert (=> d!102325 m!723243))

(declare-fun m!723245 () Bool)

(assert (=> d!102325 m!723245))

(assert (=> d!102325 m!723241))

(declare-fun m!723247 () Bool)

(assert (=> d!102325 m!723247))

(declare-fun m!723249 () Bool)

(assert (=> d!102325 m!723249))

(assert (=> d!102325 m!723185))

(declare-fun m!723251 () Bool)

(assert (=> b!779674 m!723251))

(declare-fun m!723253 () Bool)

(assert (=> b!779677 m!723253))

(assert (=> b!779604 d!102325))

(declare-fun bm!35217 () Bool)

(declare-fun call!35220 () Bool)

(declare-fun c!86406 () Bool)

(assert (=> bm!35217 (= call!35220 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86406 (Cons!14432 (select (arr!20381 a!3186) #b00000000000000000000000000000000) Nil!14433) Nil!14433)))))

(declare-fun b!779720 () Bool)

(declare-fun e!433767 () Bool)

(assert (=> b!779720 (= e!433767 call!35220)))

(declare-fun b!779721 () Bool)

(declare-fun e!433768 () Bool)

(assert (=> b!779721 (= e!433768 e!433767)))

(assert (=> b!779721 (= c!86406 (validKeyInArray!0 (select (arr!20381 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!779722 () Bool)

(assert (=> b!779722 (= e!433767 call!35220)))

(declare-fun b!779723 () Bool)

(declare-fun e!433766 () Bool)

(declare-fun contains!4103 (List!14436 (_ BitVec 64)) Bool)

(assert (=> b!779723 (= e!433766 (contains!4103 Nil!14433 (select (arr!20381 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!779724 () Bool)

(declare-fun e!433769 () Bool)

(assert (=> b!779724 (= e!433769 e!433768)))

(declare-fun res!527715 () Bool)

(assert (=> b!779724 (=> (not res!527715) (not e!433768))))

(assert (=> b!779724 (= res!527715 (not e!433766))))

(declare-fun res!527716 () Bool)

(assert (=> b!779724 (=> (not res!527716) (not e!433766))))

(assert (=> b!779724 (= res!527716 (validKeyInArray!0 (select (arr!20381 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102335 () Bool)

(declare-fun res!527714 () Bool)

(assert (=> d!102335 (=> res!527714 e!433769)))

(assert (=> d!102335 (= res!527714 (bvsge #b00000000000000000000000000000000 (size!20802 a!3186)))))

(assert (=> d!102335 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14433) e!433769)))

(assert (= (and d!102335 (not res!527714)) b!779724))

(assert (= (and b!779724 res!527716) b!779723))

(assert (= (and b!779724 res!527715) b!779721))

(assert (= (and b!779721 c!86406) b!779720))

(assert (= (and b!779721 (not c!86406)) b!779722))

(assert (= (or b!779720 b!779722) bm!35217))

(declare-fun m!723255 () Bool)

(assert (=> bm!35217 m!723255))

(declare-fun m!723257 () Bool)

(assert (=> bm!35217 m!723257))

(assert (=> b!779721 m!723255))

(assert (=> b!779721 m!723255))

(declare-fun m!723259 () Bool)

(assert (=> b!779721 m!723259))

(assert (=> b!779723 m!723255))

(assert (=> b!779723 m!723255))

(declare-fun m!723261 () Bool)

(assert (=> b!779723 m!723261))

(assert (=> b!779724 m!723255))

(assert (=> b!779724 m!723255))

(assert (=> b!779724 m!723259))

(assert (=> b!779593 d!102335))

(declare-fun d!102337 () Bool)

(declare-fun lt!347518 () SeekEntryResult!7988)

(assert (=> d!102337 (and (or (is-Undefined!7988 lt!347518) (not (is-Found!7988 lt!347518)) (and (bvsge (index!34320 lt!347518) #b00000000000000000000000000000000) (bvslt (index!34320 lt!347518) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347518) (is-Found!7988 lt!347518) (not (is-MissingVacant!7988 lt!347518)) (not (= (index!34322 lt!347518) resIntermediateIndex!5)) (and (bvsge (index!34322 lt!347518) #b00000000000000000000000000000000) (bvslt (index!34322 lt!347518) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347518) (ite (is-Found!7988 lt!347518) (= (select (arr!20381 a!3186) (index!34320 lt!347518)) (select (arr!20381 a!3186) j!159)) (and (is-MissingVacant!7988 lt!347518) (= (index!34322 lt!347518) resIntermediateIndex!5) (= (select (arr!20381 a!3186) (index!34322 lt!347518)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!433811 () SeekEntryResult!7988)

(assert (=> d!102337 (= lt!347518 e!433811)))

(declare-fun c!86429 () Bool)

(assert (=> d!102337 (= c!86429 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!347517 () (_ BitVec 64))

(assert (=> d!102337 (= lt!347517 (select (arr!20381 a!3186) resIntermediateIndex!5))))

(assert (=> d!102337 (validMask!0 mask!3328)))

(assert (=> d!102337 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347518)))

(declare-fun b!779788 () Bool)

(declare-fun e!433810 () SeekEntryResult!7988)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779788 (= e!433810 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779789 () Bool)

(declare-fun c!86430 () Bool)

(assert (=> b!779789 (= c!86430 (= lt!347517 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433809 () SeekEntryResult!7988)

(assert (=> b!779789 (= e!433809 e!433810)))

(declare-fun b!779790 () Bool)

(assert (=> b!779790 (= e!433811 e!433809)))

(declare-fun c!86428 () Bool)

(assert (=> b!779790 (= c!86428 (= lt!347517 (select (arr!20381 a!3186) j!159)))))

(declare-fun b!779791 () Bool)

(assert (=> b!779791 (= e!433809 (Found!7988 resIntermediateIndex!5))))

(declare-fun b!779792 () Bool)

(assert (=> b!779792 (= e!433811 Undefined!7988)))

(declare-fun b!779793 () Bool)

(assert (=> b!779793 (= e!433810 (MissingVacant!7988 resIntermediateIndex!5))))

(assert (= (and d!102337 c!86429) b!779792))

(assert (= (and d!102337 (not c!86429)) b!779790))

(assert (= (and b!779790 c!86428) b!779791))

(assert (= (and b!779790 (not c!86428)) b!779789))

(assert (= (and b!779789 c!86430) b!779793))

(assert (= (and b!779789 (not c!86430)) b!779788))

(declare-fun m!723309 () Bool)

(assert (=> d!102337 m!723309))

(declare-fun m!723311 () Bool)

(assert (=> d!102337 m!723311))

(assert (=> d!102337 m!723175))

(assert (=> d!102337 m!723185))

(declare-fun m!723313 () Bool)

(assert (=> b!779788 m!723313))

(assert (=> b!779788 m!723313))

(assert (=> b!779788 m!723153))

(declare-fun m!723315 () Bool)

(assert (=> b!779788 m!723315))

(assert (=> b!779603 d!102337))

(declare-fun b!779814 () Bool)

(declare-fun e!433826 () Bool)

(declare-fun e!433825 () Bool)

(assert (=> b!779814 (= e!433826 e!433825)))

(declare-fun c!86439 () Bool)

(assert (=> b!779814 (= c!86439 (validKeyInArray!0 (select (arr!20381 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!779815 () Bool)

(declare-fun e!433824 () Bool)

(assert (=> b!779815 (= e!433825 e!433824)))

(declare-fun lt!347531 () (_ BitVec 64))

(assert (=> b!779815 (= lt!347531 (select (arr!20381 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!347529 () Unit!26870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42584 (_ BitVec 64) (_ BitVec 32)) Unit!26870)

(assert (=> b!779815 (= lt!347529 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347531 #b00000000000000000000000000000000))))

(assert (=> b!779815 (arrayContainsKey!0 a!3186 lt!347531 #b00000000000000000000000000000000)))

(declare-fun lt!347530 () Unit!26870)

(assert (=> b!779815 (= lt!347530 lt!347529)))

(declare-fun res!527743 () Bool)

(assert (=> b!779815 (= res!527743 (= (seekEntryOrOpen!0 (select (arr!20381 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7988 #b00000000000000000000000000000000)))))

(assert (=> b!779815 (=> (not res!527743) (not e!433824))))

(declare-fun bm!35223 () Bool)

(declare-fun call!35226 () Bool)

(assert (=> bm!35223 (= call!35226 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102357 () Bool)

(declare-fun res!527744 () Bool)

(assert (=> d!102357 (=> res!527744 e!433826)))

(assert (=> d!102357 (= res!527744 (bvsge #b00000000000000000000000000000000 (size!20802 a!3186)))))

(assert (=> d!102357 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!433826)))

(declare-fun b!779816 () Bool)

(assert (=> b!779816 (= e!433824 call!35226)))

(declare-fun b!779817 () Bool)

(assert (=> b!779817 (= e!433825 call!35226)))

(assert (= (and d!102357 (not res!527744)) b!779814))

(assert (= (and b!779814 c!86439) b!779815))

(assert (= (and b!779814 (not c!86439)) b!779817))

(assert (= (and b!779815 res!527743) b!779816))

(assert (= (or b!779816 b!779817) bm!35223))

(assert (=> b!779814 m!723255))

(assert (=> b!779814 m!723255))

(assert (=> b!779814 m!723259))

(assert (=> b!779815 m!723255))

(declare-fun m!723317 () Bool)

(assert (=> b!779815 m!723317))

(declare-fun m!723319 () Bool)

(assert (=> b!779815 m!723319))

(assert (=> b!779815 m!723255))

(declare-fun m!723321 () Bool)

(assert (=> b!779815 m!723321))

(declare-fun m!723323 () Bool)

(assert (=> bm!35223 m!723323))

(assert (=> b!779592 d!102357))

(declare-fun d!102359 () Bool)

(declare-fun lt!347533 () SeekEntryResult!7988)

(assert (=> d!102359 (and (or (is-Undefined!7988 lt!347533) (not (is-Found!7988 lt!347533)) (and (bvsge (index!34320 lt!347533) #b00000000000000000000000000000000) (bvslt (index!34320 lt!347533) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347533) (is-Found!7988 lt!347533) (not (is-MissingVacant!7988 lt!347533)) (not (= (index!34322 lt!347533) resIntermediateIndex!5)) (and (bvsge (index!34322 lt!347533) #b00000000000000000000000000000000) (bvslt (index!34322 lt!347533) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347533) (ite (is-Found!7988 lt!347533) (= (select (arr!20381 a!3186) (index!34320 lt!347533)) (select (arr!20381 a!3186) j!159)) (and (is-MissingVacant!7988 lt!347533) (= (index!34322 lt!347533) resIntermediateIndex!5) (= (select (arr!20381 a!3186) (index!34322 lt!347533)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!433829 () SeekEntryResult!7988)

(assert (=> d!102359 (= lt!347533 e!433829)))

(declare-fun c!86441 () Bool)

(assert (=> d!102359 (= c!86441 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!347532 () (_ BitVec 64))

(assert (=> d!102359 (= lt!347532 (select (arr!20381 a!3186) index!1321))))

(assert (=> d!102359 (validMask!0 mask!3328)))

(assert (=> d!102359 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347533)))

(declare-fun b!779818 () Bool)

(declare-fun e!433828 () SeekEntryResult!7988)

(assert (=> b!779818 (= e!433828 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779819 () Bool)

(declare-fun c!86442 () Bool)

(assert (=> b!779819 (= c!86442 (= lt!347532 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433827 () SeekEntryResult!7988)

(assert (=> b!779819 (= e!433827 e!433828)))

(declare-fun b!779820 () Bool)

(assert (=> b!779820 (= e!433829 e!433827)))

(declare-fun c!86440 () Bool)

(assert (=> b!779820 (= c!86440 (= lt!347532 (select (arr!20381 a!3186) j!159)))))

(declare-fun b!779821 () Bool)

(assert (=> b!779821 (= e!433827 (Found!7988 index!1321))))

(declare-fun b!779822 () Bool)

(assert (=> b!779822 (= e!433829 Undefined!7988)))

(declare-fun b!779823 () Bool)

(assert (=> b!779823 (= e!433828 (MissingVacant!7988 resIntermediateIndex!5))))

(assert (= (and d!102359 c!86441) b!779822))

(assert (= (and d!102359 (not c!86441)) b!779820))

(assert (= (and b!779820 c!86440) b!779821))

(assert (= (and b!779820 (not c!86440)) b!779819))

(assert (= (and b!779819 c!86442) b!779823))

(assert (= (and b!779819 (not c!86442)) b!779818))

(declare-fun m!723325 () Bool)

(assert (=> d!102359 m!723325))

(declare-fun m!723327 () Bool)

(assert (=> d!102359 m!723327))

(declare-fun m!723329 () Bool)

(assert (=> d!102359 m!723329))

(assert (=> d!102359 m!723185))

(declare-fun m!723331 () Bool)

(assert (=> b!779818 m!723331))

(assert (=> b!779818 m!723331))

(assert (=> b!779818 m!723153))

(declare-fun m!723333 () Bool)

(assert (=> b!779818 m!723333))

(assert (=> b!779602 d!102359))

(declare-fun b!779918 () Bool)

(declare-fun e!433890 () SeekEntryResult!7988)

(declare-fun e!433886 () SeekEntryResult!7988)

(assert (=> b!779918 (= e!433890 e!433886)))

(declare-fun c!86474 () Bool)

(declare-fun lt!347562 () (_ BitVec 64))

(assert (=> b!779918 (= c!86474 (or (= lt!347562 (select (arr!20381 a!3186) j!159)) (= (bvadd lt!347562 lt!347562) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102361 () Bool)

(declare-fun e!433888 () Bool)

(assert (=> d!102361 e!433888))

(declare-fun c!86475 () Bool)

(declare-fun lt!347561 () SeekEntryResult!7988)

(assert (=> d!102361 (= c!86475 (and (is-Intermediate!7988 lt!347561) (undefined!8800 lt!347561)))))

(assert (=> d!102361 (= lt!347561 e!433890)))

(declare-fun c!86476 () Bool)

(assert (=> d!102361 (= c!86476 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102361 (= lt!347562 (select (arr!20381 a!3186) (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328)))))

(assert (=> d!102361 (validMask!0 mask!3328)))

(assert (=> d!102361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347561)))

(declare-fun b!779919 () Bool)

(declare-fun e!433889 () Bool)

(assert (=> b!779919 (= e!433888 e!433889)))

(declare-fun res!527780 () Bool)

(assert (=> b!779919 (= res!527780 (and (is-Intermediate!7988 lt!347561) (not (undefined!8800 lt!347561)) (bvslt (x!65286 lt!347561) #b01111111111111111111111111111110) (bvsge (x!65286 lt!347561) #b00000000000000000000000000000000) (bvsge (x!65286 lt!347561) #b00000000000000000000000000000000)))))

(assert (=> b!779919 (=> (not res!527780) (not e!433889))))

(declare-fun b!779920 () Bool)

(assert (=> b!779920 (and (bvsge (index!34321 lt!347561) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347561) (size!20802 a!3186)))))

(declare-fun res!527778 () Bool)

(assert (=> b!779920 (= res!527778 (= (select (arr!20381 a!3186) (index!34321 lt!347561)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433887 () Bool)

(assert (=> b!779920 (=> res!527778 e!433887)))

(declare-fun b!779921 () Bool)

(assert (=> b!779921 (and (bvsge (index!34321 lt!347561) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347561) (size!20802 a!3186)))))

(declare-fun res!527779 () Bool)

(assert (=> b!779921 (= res!527779 (= (select (arr!20381 a!3186) (index!34321 lt!347561)) (select (arr!20381 a!3186) j!159)))))

(assert (=> b!779921 (=> res!527779 e!433887)))

(assert (=> b!779921 (= e!433889 e!433887)))

(declare-fun b!779922 () Bool)

(assert (=> b!779922 (= e!433886 (Intermediate!7988 false (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!779923 () Bool)

(assert (=> b!779923 (= e!433888 (bvsge (x!65286 lt!347561) #b01111111111111111111111111111110))))

(declare-fun b!779924 () Bool)

(assert (=> b!779924 (= e!433886 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779925 () Bool)

(assert (=> b!779925 (and (bvsge (index!34321 lt!347561) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347561) (size!20802 a!3186)))))

(assert (=> b!779925 (= e!433887 (= (select (arr!20381 a!3186) (index!34321 lt!347561)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779926 () Bool)

(assert (=> b!779926 (= e!433890 (Intermediate!7988 true (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102361 c!86476) b!779926))

(assert (= (and d!102361 (not c!86476)) b!779918))

(assert (= (and b!779918 c!86474) b!779922))

(assert (= (and b!779918 (not c!86474)) b!779924))

(assert (= (and d!102361 c!86475) b!779923))

(assert (= (and d!102361 (not c!86475)) b!779919))

(assert (= (and b!779919 res!527780) b!779921))

(assert (= (and b!779921 (not res!527779)) b!779920))

(assert (= (and b!779920 (not res!527778)) b!779925))

(declare-fun m!723383 () Bool)

(assert (=> b!779925 m!723383))

(assert (=> d!102361 m!723159))

(declare-fun m!723385 () Bool)

(assert (=> d!102361 m!723385))

(assert (=> d!102361 m!723185))

(assert (=> b!779924 m!723159))

(declare-fun m!723387 () Bool)

(assert (=> b!779924 m!723387))

(assert (=> b!779924 m!723387))

(assert (=> b!779924 m!723153))

(declare-fun m!723389 () Bool)

(assert (=> b!779924 m!723389))

(assert (=> b!779921 m!723383))

(assert (=> b!779920 m!723383))

(assert (=> b!779591 d!102361))

(declare-fun d!102379 () Bool)

(declare-fun lt!347571 () (_ BitVec 32))

(declare-fun lt!347570 () (_ BitVec 32))

(assert (=> d!102379 (= lt!347571 (bvmul (bvxor lt!347570 (bvlshr lt!347570 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102379 (= lt!347570 ((_ extract 31 0) (bvand (bvxor (select (arr!20381 a!3186) j!159) (bvlshr (select (arr!20381 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102379 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!527781 (let ((h!15549 ((_ extract 31 0) (bvand (bvxor (select (arr!20381 a!3186) j!159) (bvlshr (select (arr!20381 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65295 (bvmul (bvxor h!15549 (bvlshr h!15549 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65295 (bvlshr x!65295 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!527781 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!527781 #b00000000000000000000000000000000))))))

(assert (=> d!102379 (= (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) (bvand (bvxor lt!347571 (bvlshr lt!347571 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!779591 d!102379))

(declare-fun b!779933 () Bool)

(declare-fun e!433898 () SeekEntryResult!7988)

(declare-fun e!433894 () SeekEntryResult!7988)

(assert (=> b!779933 (= e!433898 e!433894)))

(declare-fun c!86480 () Bool)

(declare-fun lt!347573 () (_ BitVec 64))

(assert (=> b!779933 (= c!86480 (or (= lt!347573 (select (arr!20381 a!3186) j!159)) (= (bvadd lt!347573 lt!347573) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102385 () Bool)

(declare-fun e!433896 () Bool)

(assert (=> d!102385 e!433896))

(declare-fun c!86481 () Bool)

(declare-fun lt!347572 () SeekEntryResult!7988)

(assert (=> d!102385 (= c!86481 (and (is-Intermediate!7988 lt!347572) (undefined!8800 lt!347572)))))

(assert (=> d!102385 (= lt!347572 e!433898)))

(declare-fun c!86482 () Bool)

(assert (=> d!102385 (= c!86482 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102385 (= lt!347573 (select (arr!20381 a!3186) index!1321))))

(assert (=> d!102385 (validMask!0 mask!3328)))

(assert (=> d!102385 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347572)))

(declare-fun b!779934 () Bool)

(declare-fun e!433897 () Bool)

(assert (=> b!779934 (= e!433896 e!433897)))

(declare-fun res!527784 () Bool)

(assert (=> b!779934 (= res!527784 (and (is-Intermediate!7988 lt!347572) (not (undefined!8800 lt!347572)) (bvslt (x!65286 lt!347572) #b01111111111111111111111111111110) (bvsge (x!65286 lt!347572) #b00000000000000000000000000000000) (bvsge (x!65286 lt!347572) x!1131)))))

(assert (=> b!779934 (=> (not res!527784) (not e!433897))))

(declare-fun b!779935 () Bool)

(assert (=> b!779935 (and (bvsge (index!34321 lt!347572) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347572) (size!20802 a!3186)))))

(declare-fun res!527782 () Bool)

(assert (=> b!779935 (= res!527782 (= (select (arr!20381 a!3186) (index!34321 lt!347572)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433895 () Bool)

(assert (=> b!779935 (=> res!527782 e!433895)))

(declare-fun b!779936 () Bool)

(assert (=> b!779936 (and (bvsge (index!34321 lt!347572) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347572) (size!20802 a!3186)))))

(declare-fun res!527783 () Bool)

(assert (=> b!779936 (= res!527783 (= (select (arr!20381 a!3186) (index!34321 lt!347572)) (select (arr!20381 a!3186) j!159)))))

(assert (=> b!779936 (=> res!527783 e!433895)))

(assert (=> b!779936 (= e!433897 e!433895)))

(declare-fun b!779937 () Bool)

(assert (=> b!779937 (= e!433894 (Intermediate!7988 false index!1321 x!1131))))

(declare-fun b!779938 () Bool)

(assert (=> b!779938 (= e!433896 (bvsge (x!65286 lt!347572) #b01111111111111111111111111111110))))

(declare-fun b!779939 () Bool)

(assert (=> b!779939 (= e!433894 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779940 () Bool)

(assert (=> b!779940 (and (bvsge (index!34321 lt!347572) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347572) (size!20802 a!3186)))))

(assert (=> b!779940 (= e!433895 (= (select (arr!20381 a!3186) (index!34321 lt!347572)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779941 () Bool)

(assert (=> b!779941 (= e!433898 (Intermediate!7988 true index!1321 x!1131))))

(assert (= (and d!102385 c!86482) b!779941))

(assert (= (and d!102385 (not c!86482)) b!779933))

(assert (= (and b!779933 c!86480) b!779937))

(assert (= (and b!779933 (not c!86480)) b!779939))

(assert (= (and d!102385 c!86481) b!779938))

(assert (= (and d!102385 (not c!86481)) b!779934))

(assert (= (and b!779934 res!527784) b!779936))

(assert (= (and b!779936 (not res!527783)) b!779935))

(assert (= (and b!779935 (not res!527782)) b!779940))

(declare-fun m!723405 () Bool)

(assert (=> b!779940 m!723405))

(assert (=> d!102385 m!723329))

(assert (=> d!102385 m!723185))

(assert (=> b!779939 m!723331))

(assert (=> b!779939 m!723331))

(assert (=> b!779939 m!723153))

(declare-fun m!723409 () Bool)

(assert (=> b!779939 m!723409))

(assert (=> b!779936 m!723405))

(assert (=> b!779935 m!723405))

(assert (=> b!779601 d!102385))

(declare-fun d!102389 () Bool)

(assert (=> d!102389 (= (validKeyInArray!0 (select (arr!20381 a!3186) j!159)) (and (not (= (select (arr!20381 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20381 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779590 d!102389))

(declare-fun d!102393 () Bool)

(declare-fun res!527795 () Bool)

(declare-fun e!433910 () Bool)

(assert (=> d!102393 (=> res!527795 e!433910)))

(assert (=> d!102393 (= res!527795 (= (select (arr!20381 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102393 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!433910)))

(declare-fun b!779954 () Bool)

(declare-fun e!433911 () Bool)

(assert (=> b!779954 (= e!433910 e!433911)))

(declare-fun res!527796 () Bool)

(assert (=> b!779954 (=> (not res!527796) (not e!433911))))

(assert (=> b!779954 (= res!527796 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20802 a!3186)))))

(declare-fun b!779955 () Bool)

(assert (=> b!779955 (= e!433911 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102393 (not res!527795)) b!779954))

(assert (= (and b!779954 res!527796) b!779955))

(assert (=> d!102393 m!723255))

(declare-fun m!723421 () Bool)

(assert (=> b!779955 m!723421))

(assert (=> b!779600 d!102393))

(declare-fun d!102397 () Bool)

(declare-fun lt!347578 () SeekEntryResult!7988)

(assert (=> d!102397 (and (or (is-Undefined!7988 lt!347578) (not (is-Found!7988 lt!347578)) (and (bvsge (index!34320 lt!347578) #b00000000000000000000000000000000) (bvslt (index!34320 lt!347578) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347578) (is-Found!7988 lt!347578) (not (is-MissingZero!7988 lt!347578)) (and (bvsge (index!34319 lt!347578) #b00000000000000000000000000000000) (bvslt (index!34319 lt!347578) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347578) (is-Found!7988 lt!347578) (is-MissingZero!7988 lt!347578) (not (is-MissingVacant!7988 lt!347578)) (and (bvsge (index!34322 lt!347578) #b00000000000000000000000000000000) (bvslt (index!34322 lt!347578) (size!20802 a!3186)))) (or (is-Undefined!7988 lt!347578) (ite (is-Found!7988 lt!347578) (= (select (arr!20381 a!3186) (index!34320 lt!347578)) (select (arr!20381 a!3186) j!159)) (ite (is-MissingZero!7988 lt!347578) (= (select (arr!20381 a!3186) (index!34319 lt!347578)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7988 lt!347578) (= (select (arr!20381 a!3186) (index!34322 lt!347578)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433914 () SeekEntryResult!7988)

(assert (=> d!102397 (= lt!347578 e!433914)))

(declare-fun c!86486 () Bool)

(declare-fun lt!347579 () SeekEntryResult!7988)

(assert (=> d!102397 (= c!86486 (and (is-Intermediate!7988 lt!347579) (undefined!8800 lt!347579)))))

(assert (=> d!102397 (= lt!347579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20381 a!3186) j!159) mask!3328) (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102397 (validMask!0 mask!3328)))

(assert (=> d!102397 (= (seekEntryOrOpen!0 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) lt!347578)))

(declare-fun e!433916 () SeekEntryResult!7988)

(declare-fun b!779958 () Bool)

(assert (=> b!779958 (= e!433916 (seekKeyOrZeroReturnVacant!0 (x!65286 lt!347579) (index!34321 lt!347579) (index!34321 lt!347579) (select (arr!20381 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779959 () Bool)

(declare-fun c!86485 () Bool)

(declare-fun lt!347577 () (_ BitVec 64))

(assert (=> b!779959 (= c!86485 (= lt!347577 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433915 () SeekEntryResult!7988)

(assert (=> b!779959 (= e!433915 e!433916)))

(declare-fun b!779960 () Bool)

(assert (=> b!779960 (= e!433915 (Found!7988 (index!34321 lt!347579)))))

(declare-fun b!779961 () Bool)

(assert (=> b!779961 (= e!433914 e!433915)))

(assert (=> b!779961 (= lt!347577 (select (arr!20381 a!3186) (index!34321 lt!347579)))))

(declare-fun c!86484 () Bool)

(assert (=> b!779961 (= c!86484 (= lt!347577 (select (arr!20381 a!3186) j!159)))))

(declare-fun b!779962 () Bool)

(assert (=> b!779962 (= e!433914 Undefined!7988)))

(declare-fun b!779963 () Bool)

(assert (=> b!779963 (= e!433916 (MissingZero!7988 (index!34321 lt!347579)))))

(assert (= (and d!102397 c!86486) b!779962))

(assert (= (and d!102397 (not c!86486)) b!779961))

(assert (= (and b!779961 c!86484) b!779960))

(assert (= (and b!779961 (not c!86484)) b!779959))

(assert (= (and b!779959 c!86485) b!779963))

(assert (= (and b!779959 (not c!86485)) b!779958))

(assert (=> d!102397 m!723159))

(assert (=> d!102397 m!723153))

(assert (=> d!102397 m!723161))

(declare-fun m!723425 () Bool)

(assert (=> d!102397 m!723425))

(assert (=> d!102397 m!723153))

(assert (=> d!102397 m!723159))

(declare-fun m!723427 () Bool)

(assert (=> d!102397 m!723427))

(declare-fun m!723429 () Bool)

(assert (=> d!102397 m!723429))

(assert (=> d!102397 m!723185))

(assert (=> b!779958 m!723153))

(declare-fun m!723433 () Bool)

(assert (=> b!779958 m!723433))

(declare-fun m!723435 () Bool)

(assert (=> b!779961 m!723435))

(assert (=> b!779597 d!102397))

(declare-fun b!779973 () Bool)

(declare-fun e!433924 () Bool)

(declare-fun e!433923 () Bool)

(assert (=> b!779973 (= e!433924 e!433923)))

(declare-fun c!86490 () Bool)

(assert (=> b!779973 (= c!86490 (validKeyInArray!0 (select (arr!20381 a!3186) j!159)))))

(declare-fun b!779974 () Bool)

(declare-fun e!433922 () Bool)

(assert (=> b!779974 (= e!433923 e!433922)))

(declare-fun lt!347584 () (_ BitVec 64))

(assert (=> b!779974 (= lt!347584 (select (arr!20381 a!3186) j!159))))

(declare-fun lt!347582 () Unit!26870)

(assert (=> b!779974 (= lt!347582 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347584 j!159))))

(assert (=> b!779974 (arrayContainsKey!0 a!3186 lt!347584 #b00000000000000000000000000000000)))

(declare-fun lt!347583 () Unit!26870)

(assert (=> b!779974 (= lt!347583 lt!347582)))

(declare-fun res!527802 () Bool)

(assert (=> b!779974 (= res!527802 (= (seekEntryOrOpen!0 (select (arr!20381 a!3186) j!159) a!3186 mask!3328) (Found!7988 j!159)))))

(assert (=> b!779974 (=> (not res!527802) (not e!433922))))

(declare-fun bm!35229 () Bool)

(declare-fun call!35232 () Bool)

(assert (=> bm!35229 (= call!35232 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102401 () Bool)

(declare-fun res!527803 () Bool)

(assert (=> d!102401 (=> res!527803 e!433924)))

(assert (=> d!102401 (= res!527803 (bvsge j!159 (size!20802 a!3186)))))

(assert (=> d!102401 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!433924)))

(declare-fun b!779975 () Bool)

(assert (=> b!779975 (= e!433922 call!35232)))

(declare-fun b!779976 () Bool)

(assert (=> b!779976 (= e!433923 call!35232)))

(assert (= (and d!102401 (not res!527803)) b!779973))

(assert (= (and b!779973 c!86490) b!779974))

(assert (= (and b!779973 (not c!86490)) b!779976))

(assert (= (and b!779974 res!527802) b!779975))

(assert (= (or b!779975 b!779976) bm!35229))

(assert (=> b!779973 m!723153))

(assert (=> b!779973 m!723153))

(assert (=> b!779973 m!723195))

(assert (=> b!779974 m!723153))

(declare-fun m!723439 () Bool)

(assert (=> b!779974 m!723439))

(declare-fun m!723441 () Bool)

(assert (=> b!779974 m!723441))

(assert (=> b!779974 m!723153))

(assert (=> b!779974 m!723163))

(declare-fun m!723443 () Bool)

(assert (=> bm!35229 m!723443))

(assert (=> b!779597 d!102401))

(declare-fun d!102405 () Bool)

(assert (=> d!102405 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347591 () Unit!26870)

(declare-fun choose!38 (array!42584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26870)

(assert (=> d!102405 (= lt!347591 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102405 (validMask!0 mask!3328)))

(assert (=> d!102405 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!347591)))

(declare-fun bs!21708 () Bool)

(assert (= bs!21708 d!102405))

(assert (=> bs!21708 m!723165))

(declare-fun m!723453 () Bool)

(assert (=> bs!21708 m!723453))

(assert (=> bs!21708 m!723185))

(assert (=> b!779597 d!102405))

(assert (=> b!779606 d!102359))

(declare-fun d!102413 () Bool)

(assert (=> d!102413 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779605 d!102413))

(declare-fun d!102415 () Bool)

(assert (=> d!102415 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67400 d!102415))

(declare-fun d!102419 () Bool)

(assert (=> d!102419 (= (array_inv!16155 a!3186) (bvsge (size!20802 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67400 d!102419))

(declare-fun b!780007 () Bool)

(declare-fun e!433949 () SeekEntryResult!7988)

(declare-fun e!433945 () SeekEntryResult!7988)

(assert (=> b!780007 (= e!433949 e!433945)))

(declare-fun c!86500 () Bool)

(declare-fun lt!347595 () (_ BitVec 64))

(assert (=> b!780007 (= c!86500 (or (= lt!347595 lt!347432) (= (bvadd lt!347595 lt!347595) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102421 () Bool)

(declare-fun e!433947 () Bool)

(assert (=> d!102421 e!433947))

(declare-fun c!86501 () Bool)

(declare-fun lt!347594 () SeekEntryResult!7988)

(assert (=> d!102421 (= c!86501 (and (is-Intermediate!7988 lt!347594) (undefined!8800 lt!347594)))))

(assert (=> d!102421 (= lt!347594 e!433949)))

(declare-fun c!86502 () Bool)

(assert (=> d!102421 (= c!86502 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102421 (= lt!347595 (select (arr!20381 lt!347428) index!1321))))

(assert (=> d!102421 (validMask!0 mask!3328)))

(assert (=> d!102421 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347432 lt!347428 mask!3328) lt!347594)))

(declare-fun b!780008 () Bool)

(declare-fun e!433948 () Bool)

(assert (=> b!780008 (= e!433947 e!433948)))

(declare-fun res!527818 () Bool)

(assert (=> b!780008 (= res!527818 (and (is-Intermediate!7988 lt!347594) (not (undefined!8800 lt!347594)) (bvslt (x!65286 lt!347594) #b01111111111111111111111111111110) (bvsge (x!65286 lt!347594) #b00000000000000000000000000000000) (bvsge (x!65286 lt!347594) x!1131)))))

(assert (=> b!780008 (=> (not res!527818) (not e!433948))))

(declare-fun b!780009 () Bool)

(assert (=> b!780009 (and (bvsge (index!34321 lt!347594) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347594) (size!20802 lt!347428)))))

(declare-fun res!527816 () Bool)

(assert (=> b!780009 (= res!527816 (= (select (arr!20381 lt!347428) (index!34321 lt!347594)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433946 () Bool)

(assert (=> b!780009 (=> res!527816 e!433946)))

(declare-fun b!780010 () Bool)

(assert (=> b!780010 (and (bvsge (index!34321 lt!347594) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347594) (size!20802 lt!347428)))))

(declare-fun res!527817 () Bool)

(assert (=> b!780010 (= res!527817 (= (select (arr!20381 lt!347428) (index!34321 lt!347594)) lt!347432))))

(assert (=> b!780010 (=> res!527817 e!433946)))

(assert (=> b!780010 (= e!433948 e!433946)))

(declare-fun b!780011 () Bool)

(assert (=> b!780011 (= e!433945 (Intermediate!7988 false index!1321 x!1131))))

(declare-fun b!780012 () Bool)

(assert (=> b!780012 (= e!433947 (bvsge (x!65286 lt!347594) #b01111111111111111111111111111110))))

(declare-fun b!780013 () Bool)

(assert (=> b!780013 (= e!433945 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!347432 lt!347428 mask!3328))))

(declare-fun b!780014 () Bool)

(assert (=> b!780014 (and (bvsge (index!34321 lt!347594) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347594) (size!20802 lt!347428)))))

(assert (=> b!780014 (= e!433946 (= (select (arr!20381 lt!347428) (index!34321 lt!347594)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780015 () Bool)

(assert (=> b!780015 (= e!433949 (Intermediate!7988 true index!1321 x!1131))))

(assert (= (and d!102421 c!86502) b!780015))

(assert (= (and d!102421 (not c!86502)) b!780007))

(assert (= (and b!780007 c!86500) b!780011))

(assert (= (and b!780007 (not c!86500)) b!780013))

(assert (= (and d!102421 c!86501) b!780012))

(assert (= (and d!102421 (not c!86501)) b!780008))

(assert (= (and b!780008 res!527818) b!780010))

(assert (= (and b!780010 (not res!527817)) b!780009))

(assert (= (and b!780009 (not res!527816)) b!780014))

(declare-fun m!723467 () Bool)

(assert (=> b!780014 m!723467))

(declare-fun m!723469 () Bool)

(assert (=> d!102421 m!723469))

(assert (=> d!102421 m!723185))

(assert (=> b!780013 m!723331))

(assert (=> b!780013 m!723331))

(declare-fun m!723471 () Bool)

(assert (=> b!780013 m!723471))

(assert (=> b!780010 m!723467))

(assert (=> b!780009 m!723467))

(assert (=> b!779594 d!102421))

(declare-fun b!780016 () Bool)

(declare-fun e!433954 () SeekEntryResult!7988)

(declare-fun e!433950 () SeekEntryResult!7988)

(assert (=> b!780016 (= e!433954 e!433950)))

(declare-fun c!86503 () Bool)

(declare-fun lt!347597 () (_ BitVec 64))

(assert (=> b!780016 (= c!86503 (or (= lt!347597 lt!347432) (= (bvadd lt!347597 lt!347597) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102423 () Bool)

(declare-fun e!433952 () Bool)

(assert (=> d!102423 e!433952))

(declare-fun c!86504 () Bool)

(declare-fun lt!347596 () SeekEntryResult!7988)

(assert (=> d!102423 (= c!86504 (and (is-Intermediate!7988 lt!347596) (undefined!8800 lt!347596)))))

(assert (=> d!102423 (= lt!347596 e!433954)))

(declare-fun c!86505 () Bool)

(assert (=> d!102423 (= c!86505 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102423 (= lt!347597 (select (arr!20381 lt!347428) (toIndex!0 lt!347432 mask!3328)))))

(assert (=> d!102423 (validMask!0 mask!3328)))

(assert (=> d!102423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347432 mask!3328) lt!347432 lt!347428 mask!3328) lt!347596)))

(declare-fun b!780017 () Bool)

(declare-fun e!433953 () Bool)

(assert (=> b!780017 (= e!433952 e!433953)))

(declare-fun res!527821 () Bool)

(assert (=> b!780017 (= res!527821 (and (is-Intermediate!7988 lt!347596) (not (undefined!8800 lt!347596)) (bvslt (x!65286 lt!347596) #b01111111111111111111111111111110) (bvsge (x!65286 lt!347596) #b00000000000000000000000000000000) (bvsge (x!65286 lt!347596) #b00000000000000000000000000000000)))))

(assert (=> b!780017 (=> (not res!527821) (not e!433953))))

(declare-fun b!780018 () Bool)

(assert (=> b!780018 (and (bvsge (index!34321 lt!347596) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347596) (size!20802 lt!347428)))))

(declare-fun res!527819 () Bool)

(assert (=> b!780018 (= res!527819 (= (select (arr!20381 lt!347428) (index!34321 lt!347596)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433951 () Bool)

(assert (=> b!780018 (=> res!527819 e!433951)))

(declare-fun b!780019 () Bool)

(assert (=> b!780019 (and (bvsge (index!34321 lt!347596) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347596) (size!20802 lt!347428)))))

(declare-fun res!527820 () Bool)

(assert (=> b!780019 (= res!527820 (= (select (arr!20381 lt!347428) (index!34321 lt!347596)) lt!347432))))

(assert (=> b!780019 (=> res!527820 e!433951)))

(assert (=> b!780019 (= e!433953 e!433951)))

(declare-fun b!780020 () Bool)

(assert (=> b!780020 (= e!433950 (Intermediate!7988 false (toIndex!0 lt!347432 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!780021 () Bool)

(assert (=> b!780021 (= e!433952 (bvsge (x!65286 lt!347596) #b01111111111111111111111111111110))))

(declare-fun b!780022 () Bool)

(assert (=> b!780022 (= e!433950 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!347432 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!347432 lt!347428 mask!3328))))

(declare-fun b!780023 () Bool)

(assert (=> b!780023 (and (bvsge (index!34321 lt!347596) #b00000000000000000000000000000000) (bvslt (index!34321 lt!347596) (size!20802 lt!347428)))))

(assert (=> b!780023 (= e!433951 (= (select (arr!20381 lt!347428) (index!34321 lt!347596)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780024 () Bool)

