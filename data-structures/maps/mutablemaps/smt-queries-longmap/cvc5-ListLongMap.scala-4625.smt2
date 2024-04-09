; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64402 () Bool)

(assert start!64402)

(declare-fun b!724055 () Bool)

(declare-fun res!485678 () Bool)

(declare-fun e!405576 () Bool)

(assert (=> b!724055 (=> (not res!485678) (not e!405576))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724055 (= res!485678 (validKeyInArray!0 k!2102))))

(declare-fun b!724056 () Bool)

(declare-fun res!485675 () Bool)

(declare-fun e!405581 () Bool)

(assert (=> b!724056 (=> (not res!485675) (not e!405581))))

(declare-datatypes ((array!40936 0))(
  ( (array!40937 (arr!19587 (Array (_ BitVec 32) (_ BitVec 64))) (size!20008 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40936)

(declare-datatypes ((List!13642 0))(
  ( (Nil!13639) (Cons!13638 (h!14692 (_ BitVec 64)) (t!19965 List!13642)) )
))
(declare-fun arrayNoDuplicates!0 (array!40936 (_ BitVec 32) List!13642) Bool)

(assert (=> b!724056 (= res!485675 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13639))))

(declare-fun b!724057 () Bool)

(declare-fun res!485683 () Bool)

(assert (=> b!724057 (=> (not res!485683) (not e!405581))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724057 (= res!485683 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20008 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20008 a!3186))))))

(declare-fun res!485680 () Bool)

(assert (=> start!64402 (=> (not res!485680) (not e!405576))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64402 (= res!485680 (validMask!0 mask!3328))))

(assert (=> start!64402 e!405576))

(assert (=> start!64402 true))

(declare-fun array_inv!15361 (array!40936) Bool)

(assert (=> start!64402 (array_inv!15361 a!3186)))

(declare-fun b!724058 () Bool)

(declare-fun res!485676 () Bool)

(assert (=> b!724058 (=> (not res!485676) (not e!405576))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724058 (= res!485676 (and (= (size!20008 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20008 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20008 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!405579 () Bool)

(declare-fun b!724059 () Bool)

(declare-datatypes ((SeekEntryResult!7194 0))(
  ( (MissingZero!7194 (index!31143 (_ BitVec 32))) (Found!7194 (index!31144 (_ BitVec 32))) (Intermediate!7194 (undefined!8006 Bool) (index!31145 (_ BitVec 32)) (x!62164 (_ BitVec 32))) (Undefined!7194) (MissingVacant!7194 (index!31146 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40936 (_ BitVec 32)) SeekEntryResult!7194)

(assert (=> b!724059 (= e!405579 (= (seekEntryOrOpen!0 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) (Found!7194 j!159)))))

(declare-fun lt!320869 () SeekEntryResult!7194)

(declare-fun b!724060 () Bool)

(declare-fun e!405582 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40936 (_ BitVec 32)) SeekEntryResult!7194)

(assert (=> b!724060 (= e!405582 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) lt!320869))))

(declare-fun b!724061 () Bool)

(assert (=> b!724061 (= e!405576 e!405581)))

(declare-fun res!485681 () Bool)

(assert (=> b!724061 (=> (not res!485681) (not e!405581))))

(declare-fun lt!320870 () SeekEntryResult!7194)

(assert (=> b!724061 (= res!485681 (or (= lt!320870 (MissingZero!7194 i!1173)) (= lt!320870 (MissingVacant!7194 i!1173))))))

(assert (=> b!724061 (= lt!320870 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!724062 () Bool)

(declare-fun res!485673 () Bool)

(declare-fun e!405580 () Bool)

(assert (=> b!724062 (=> (not res!485673) (not e!405580))))

(assert (=> b!724062 (= res!485673 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19587 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724063 () Bool)

(declare-fun res!485674 () Bool)

(assert (=> b!724063 (=> (not res!485674) (not e!405576))))

(declare-fun arrayContainsKey!0 (array!40936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724063 (= res!485674 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724064 () Bool)

(assert (=> b!724064 (= e!405581 e!405580)))

(declare-fun res!485677 () Bool)

(assert (=> b!724064 (=> (not res!485677) (not e!405580))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724064 (= res!485677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19587 a!3186) j!159) mask!3328) (select (arr!19587 a!3186) j!159) a!3186 mask!3328) lt!320869))))

(assert (=> b!724064 (= lt!320869 (Intermediate!7194 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724065 () Bool)

(declare-fun res!485679 () Bool)

(assert (=> b!724065 (=> (not res!485679) (not e!405581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40936 (_ BitVec 32)) Bool)

(assert (=> b!724065 (= res!485679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724066 () Bool)

(declare-fun res!485685 () Bool)

(assert (=> b!724066 (=> (not res!485685) (not e!405576))))

(assert (=> b!724066 (= res!485685 (validKeyInArray!0 (select (arr!19587 a!3186) j!159)))))

(declare-fun b!724067 () Bool)

(declare-fun e!405578 () Bool)

(assert (=> b!724067 (= e!405580 e!405578)))

(declare-fun res!485682 () Bool)

(assert (=> b!724067 (=> (not res!485682) (not e!405578))))

(declare-fun lt!320866 () (_ BitVec 64))

(declare-fun lt!320868 () array!40936)

(assert (=> b!724067 (= res!485682 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320866 mask!3328) lt!320866 lt!320868 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320866 lt!320868 mask!3328)))))

(assert (=> b!724067 (= lt!320866 (select (store (arr!19587 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724067 (= lt!320868 (array!40937 (store (arr!19587 a!3186) i!1173 k!2102) (size!20008 a!3186)))))

(declare-fun b!724068 () Bool)

(assert (=> b!724068 (= e!405578 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge resIntermediateX!5 #b00000000000000000000000000000000))))))

(assert (=> b!724068 e!405579))

(declare-fun res!485672 () Bool)

(assert (=> b!724068 (=> (not res!485672) (not e!405579))))

(assert (=> b!724068 (= res!485672 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24706 0))(
  ( (Unit!24707) )
))
(declare-fun lt!320867 () Unit!24706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40936 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24706)

(assert (=> b!724068 (= lt!320867 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724069 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40936 (_ BitVec 32)) SeekEntryResult!7194)

(assert (=> b!724069 (= e!405582 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) (Found!7194 j!159)))))

(declare-fun b!724070 () Bool)

(declare-fun res!485684 () Bool)

(assert (=> b!724070 (=> (not res!485684) (not e!405580))))

(assert (=> b!724070 (= res!485684 e!405582)))

(declare-fun c!79563 () Bool)

(assert (=> b!724070 (= c!79563 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64402 res!485680) b!724058))

(assert (= (and b!724058 res!485676) b!724066))

(assert (= (and b!724066 res!485685) b!724055))

(assert (= (and b!724055 res!485678) b!724063))

(assert (= (and b!724063 res!485674) b!724061))

(assert (= (and b!724061 res!485681) b!724065))

(assert (= (and b!724065 res!485679) b!724056))

(assert (= (and b!724056 res!485675) b!724057))

(assert (= (and b!724057 res!485683) b!724064))

(assert (= (and b!724064 res!485677) b!724062))

(assert (= (and b!724062 res!485673) b!724070))

(assert (= (and b!724070 c!79563) b!724060))

(assert (= (and b!724070 (not c!79563)) b!724069))

(assert (= (and b!724070 res!485684) b!724067))

(assert (= (and b!724067 res!485682) b!724068))

(assert (= (and b!724068 res!485672) b!724059))

(declare-fun m!678535 () Bool)

(assert (=> b!724063 m!678535))

(declare-fun m!678537 () Bool)

(assert (=> start!64402 m!678537))

(declare-fun m!678539 () Bool)

(assert (=> start!64402 m!678539))

(declare-fun m!678541 () Bool)

(assert (=> b!724069 m!678541))

(assert (=> b!724069 m!678541))

(declare-fun m!678543 () Bool)

(assert (=> b!724069 m!678543))

(assert (=> b!724066 m!678541))

(assert (=> b!724066 m!678541))

(declare-fun m!678545 () Bool)

(assert (=> b!724066 m!678545))

(declare-fun m!678547 () Bool)

(assert (=> b!724055 m!678547))

(declare-fun m!678549 () Bool)

(assert (=> b!724061 m!678549))

(assert (=> b!724060 m!678541))

(assert (=> b!724060 m!678541))

(declare-fun m!678551 () Bool)

(assert (=> b!724060 m!678551))

(assert (=> b!724064 m!678541))

(assert (=> b!724064 m!678541))

(declare-fun m!678553 () Bool)

(assert (=> b!724064 m!678553))

(assert (=> b!724064 m!678553))

(assert (=> b!724064 m!678541))

(declare-fun m!678555 () Bool)

(assert (=> b!724064 m!678555))

(declare-fun m!678557 () Bool)

(assert (=> b!724065 m!678557))

(declare-fun m!678559 () Bool)

(assert (=> b!724056 m!678559))

(assert (=> b!724059 m!678541))

(assert (=> b!724059 m!678541))

(declare-fun m!678561 () Bool)

(assert (=> b!724059 m!678561))

(declare-fun m!678563 () Bool)

(assert (=> b!724062 m!678563))

(declare-fun m!678565 () Bool)

(assert (=> b!724068 m!678565))

(declare-fun m!678567 () Bool)

(assert (=> b!724068 m!678567))

(declare-fun m!678569 () Bool)

(assert (=> b!724067 m!678569))

(declare-fun m!678571 () Bool)

(assert (=> b!724067 m!678571))

(declare-fun m!678573 () Bool)

(assert (=> b!724067 m!678573))

(declare-fun m!678575 () Bool)

(assert (=> b!724067 m!678575))

(declare-fun m!678577 () Bool)

(assert (=> b!724067 m!678577))

(assert (=> b!724067 m!678569))

(push 1)

(assert (not b!724068))

(assert (not b!724069))

(assert (not b!724067))

(assert (not b!724066))

(assert (not b!724061))

(assert (not b!724056))

(assert (not b!724065))

(assert (not start!64402))

(assert (not b!724064))

(assert (not b!724055))

(assert (not b!724059))

(assert (not b!724063))

(assert (not b!724060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!724260 () Bool)

(declare-fun lt!320940 () SeekEntryResult!7194)

(assert (=> b!724260 (and (bvsge (index!31145 lt!320940) #b00000000000000000000000000000000) (bvslt (index!31145 lt!320940) (size!20008 a!3186)))))

(declare-fun res!485798 () Bool)

(assert (=> b!724260 (= res!485798 (= (select (arr!19587 a!3186) (index!31145 lt!320940)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405682 () Bool)

(assert (=> b!724260 (=> res!485798 e!405682)))

(declare-fun b!724261 () Bool)

(declare-fun e!405678 () SeekEntryResult!7194)

(assert (=> b!724261 (= e!405678 (Intermediate!7194 true index!1321 x!1131))))

(declare-fun b!724262 () Bool)

(assert (=> b!724262 (and (bvsge (index!31145 lt!320940) #b00000000000000000000000000000000) (bvslt (index!31145 lt!320940) (size!20008 a!3186)))))

(declare-fun res!485799 () Bool)

(assert (=> b!724262 (= res!485799 (= (select (arr!19587 a!3186) (index!31145 lt!320940)) (select (arr!19587 a!3186) j!159)))))

(assert (=> b!724262 (=> res!485799 e!405682)))

(declare-fun e!405679 () Bool)

(assert (=> b!724262 (= e!405679 e!405682)))

(declare-fun b!724263 () Bool)

(declare-fun e!405681 () Bool)

(assert (=> b!724263 (= e!405681 e!405679)))

(declare-fun res!485800 () Bool)

(assert (=> b!724263 (= res!485800 (and (is-Intermediate!7194 lt!320940) (not (undefined!8006 lt!320940)) (bvslt (x!62164 lt!320940) #b01111111111111111111111111111110) (bvsge (x!62164 lt!320940) #b00000000000000000000000000000000) (bvsge (x!62164 lt!320940) x!1131)))))

(assert (=> b!724263 (=> (not res!485800) (not e!405679))))

(declare-fun b!724264 () Bool)

(assert (=> b!724264 (and (bvsge (index!31145 lt!320940) #b00000000000000000000000000000000) (bvslt (index!31145 lt!320940) (size!20008 a!3186)))))

(assert (=> b!724264 (= e!405682 (= (select (arr!19587 a!3186) (index!31145 lt!320940)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724265 () Bool)

(declare-fun e!405680 () SeekEntryResult!7194)

(assert (=> b!724265 (= e!405680 (Intermediate!7194 false index!1321 x!1131))))

(declare-fun d!99247 () Bool)

(assert (=> d!99247 e!405681))

(declare-fun c!79603 () Bool)

(assert (=> d!99247 (= c!79603 (and (is-Intermediate!7194 lt!320940) (undefined!8006 lt!320940)))))

(assert (=> d!99247 (= lt!320940 e!405678)))

(declare-fun c!79604 () Bool)

(assert (=> d!99247 (= c!79604 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!320939 () (_ BitVec 64))

(assert (=> d!99247 (= lt!320939 (select (arr!19587 a!3186) index!1321))))

(assert (=> d!99247 (validMask!0 mask!3328)))

(assert (=> d!99247 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) lt!320940)))

(declare-fun b!724266 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724266 (= e!405680 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19587 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724267 () Bool)

(assert (=> b!724267 (= e!405678 e!405680)))

(declare-fun c!79605 () Bool)

(assert (=> b!724267 (= c!79605 (or (= lt!320939 (select (arr!19587 a!3186) j!159)) (= (bvadd lt!320939 lt!320939) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724268 () Bool)

(assert (=> b!724268 (= e!405681 (bvsge (x!62164 lt!320940) #b01111111111111111111111111111110))))

(assert (= (and d!99247 c!79604) b!724261))

(assert (= (and d!99247 (not c!79604)) b!724267))

(assert (= (and b!724267 c!79605) b!724265))

(assert (= (and b!724267 (not c!79605)) b!724266))

(assert (= (and d!99247 c!79603) b!724268))

(assert (= (and d!99247 (not c!79603)) b!724263))

(assert (= (and b!724263 res!485800) b!724262))

(assert (= (and b!724262 (not res!485799)) b!724260))

(assert (= (and b!724260 (not res!485798)) b!724264))

(declare-fun m!678711 () Bool)

(assert (=> d!99247 m!678711))

(assert (=> d!99247 m!678537))

(declare-fun m!678713 () Bool)

(assert (=> b!724264 m!678713))

(assert (=> b!724260 m!678713))

(declare-fun m!678715 () Bool)

(assert (=> b!724266 m!678715))

(assert (=> b!724266 m!678715))

(assert (=> b!724266 m!678541))

(declare-fun m!678717 () Bool)

(assert (=> b!724266 m!678717))

(assert (=> b!724262 m!678713))

(assert (=> b!724060 d!99247))

(declare-fun d!99263 () Bool)

(declare-fun lt!320965 () SeekEntryResult!7194)

(assert (=> d!99263 (and (or (is-Undefined!7194 lt!320965) (not (is-Found!7194 lt!320965)) (and (bvsge (index!31144 lt!320965) #b00000000000000000000000000000000) (bvslt (index!31144 lt!320965) (size!20008 a!3186)))) (or (is-Undefined!7194 lt!320965) (is-Found!7194 lt!320965) (not (is-MissingVacant!7194 lt!320965)) (not (= (index!31146 lt!320965) resIntermediateIndex!5)) (and (bvsge (index!31146 lt!320965) #b00000000000000000000000000000000) (bvslt (index!31146 lt!320965) (size!20008 a!3186)))) (or (is-Undefined!7194 lt!320965) (ite (is-Found!7194 lt!320965) (= (select (arr!19587 a!3186) (index!31144 lt!320965)) (select (arr!19587 a!3186) j!159)) (and (is-MissingVacant!7194 lt!320965) (= (index!31146 lt!320965) resIntermediateIndex!5) (= (select (arr!19587 a!3186) (index!31146 lt!320965)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!405730 () SeekEntryResult!7194)

(assert (=> d!99263 (= lt!320965 e!405730)))

(declare-fun c!79635 () Bool)

(assert (=> d!99263 (= c!79635 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!320964 () (_ BitVec 64))

(assert (=> d!99263 (= lt!320964 (select (arr!19587 a!3186) index!1321))))

(assert (=> d!99263 (validMask!0 mask!3328)))

(assert (=> d!99263 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) lt!320965)))

(declare-fun b!724343 () Bool)

(declare-fun c!79634 () Bool)

(assert (=> b!724343 (= c!79634 (= lt!320964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405729 () SeekEntryResult!7194)

(declare-fun e!405731 () SeekEntryResult!7194)

(assert (=> b!724343 (= e!405729 e!405731)))

(declare-fun b!724344 () Bool)

(assert (=> b!724344 (= e!405730 Undefined!7194)))

(declare-fun b!724345 () Bool)

(assert (=> b!724345 (= e!405731 (MissingVacant!7194 resIntermediateIndex!5))))

(declare-fun b!724346 () Bool)

(assert (=> b!724346 (= e!405729 (Found!7194 index!1321))))

(declare-fun b!724347 () Bool)

(assert (=> b!724347 (= e!405730 e!405729)))

(declare-fun c!79633 () Bool)

(assert (=> b!724347 (= c!79633 (= lt!320964 (select (arr!19587 a!3186) j!159)))))

(declare-fun b!724348 () Bool)

(assert (=> b!724348 (= e!405731 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19587 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99263 c!79635) b!724344))

(assert (= (and d!99263 (not c!79635)) b!724347))

(assert (= (and b!724347 c!79633) b!724346))

(assert (= (and b!724347 (not c!79633)) b!724343))

(assert (= (and b!724343 c!79634) b!724345))

(assert (= (and b!724343 (not c!79634)) b!724348))

(declare-fun m!678767 () Bool)

(assert (=> d!99263 m!678767))

(declare-fun m!678769 () Bool)

(assert (=> d!99263 m!678769))

(assert (=> d!99263 m!678711))

(assert (=> d!99263 m!678537))

(assert (=> b!724348 m!678715))

(assert (=> b!724348 m!678715))

(assert (=> b!724348 m!678541))

(declare-fun m!678771 () Bool)

(assert (=> b!724348 m!678771))

(assert (=> b!724069 d!99263))

(declare-fun d!99283 () Bool)

(assert (=> d!99283 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64402 d!99283))

(declare-fun d!99291 () Bool)

(assert (=> d!99291 (= (array_inv!15361 a!3186) (bvsge (size!20008 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64402 d!99291))

(declare-fun b!724424 () Bool)

(declare-fun c!79666 () Bool)

(declare-fun lt!321002 () (_ BitVec 64))

(assert (=> b!724424 (= c!79666 (= lt!321002 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405779 () SeekEntryResult!7194)

(declare-fun e!405778 () SeekEntryResult!7194)

(assert (=> b!724424 (= e!405779 e!405778)))

(declare-fun b!724425 () Bool)

(declare-fun lt!321003 () SeekEntryResult!7194)

(assert (=> b!724425 (= e!405778 (seekKeyOrZeroReturnVacant!0 (x!62164 lt!321003) (index!31145 lt!321003) (index!31145 lt!321003) (select (arr!19587 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99293 () Bool)

(declare-fun lt!321004 () SeekEntryResult!7194)

(assert (=> d!99293 (and (or (is-Undefined!7194 lt!321004) (not (is-Found!7194 lt!321004)) (and (bvsge (index!31144 lt!321004) #b00000000000000000000000000000000) (bvslt (index!31144 lt!321004) (size!20008 a!3186)))) (or (is-Undefined!7194 lt!321004) (is-Found!7194 lt!321004) (not (is-MissingZero!7194 lt!321004)) (and (bvsge (index!31143 lt!321004) #b00000000000000000000000000000000) (bvslt (index!31143 lt!321004) (size!20008 a!3186)))) (or (is-Undefined!7194 lt!321004) (is-Found!7194 lt!321004) (is-MissingZero!7194 lt!321004) (not (is-MissingVacant!7194 lt!321004)) (and (bvsge (index!31146 lt!321004) #b00000000000000000000000000000000) (bvslt (index!31146 lt!321004) (size!20008 a!3186)))) (or (is-Undefined!7194 lt!321004) (ite (is-Found!7194 lt!321004) (= (select (arr!19587 a!3186) (index!31144 lt!321004)) (select (arr!19587 a!3186) j!159)) (ite (is-MissingZero!7194 lt!321004) (= (select (arr!19587 a!3186) (index!31143 lt!321004)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7194 lt!321004) (= (select (arr!19587 a!3186) (index!31146 lt!321004)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!405780 () SeekEntryResult!7194)

(assert (=> d!99293 (= lt!321004 e!405780)))

(declare-fun c!79667 () Bool)

(assert (=> d!99293 (= c!79667 (and (is-Intermediate!7194 lt!321003) (undefined!8006 lt!321003)))))

(assert (=> d!99293 (= lt!321003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19587 a!3186) j!159) mask!3328) (select (arr!19587 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99293 (validMask!0 mask!3328)))

(assert (=> d!99293 (= (seekEntryOrOpen!0 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) lt!321004)))

(declare-fun b!724426 () Bool)

(assert (=> b!724426 (= e!405778 (MissingZero!7194 (index!31145 lt!321003)))))

(declare-fun b!724427 () Bool)

(assert (=> b!724427 (= e!405780 Undefined!7194)))

(declare-fun b!724428 () Bool)

(assert (=> b!724428 (= e!405780 e!405779)))

(assert (=> b!724428 (= lt!321002 (select (arr!19587 a!3186) (index!31145 lt!321003)))))

(declare-fun c!79665 () Bool)

(assert (=> b!724428 (= c!79665 (= lt!321002 (select (arr!19587 a!3186) j!159)))))

(declare-fun b!724429 () Bool)

(assert (=> b!724429 (= e!405779 (Found!7194 (index!31145 lt!321003)))))

(assert (= (and d!99293 c!79667) b!724427))

(assert (= (and d!99293 (not c!79667)) b!724428))

(assert (= (and b!724428 c!79665) b!724429))

(assert (= (and b!724428 (not c!79665)) b!724424))

(assert (= (and b!724424 c!79666) b!724426))

(assert (= (and b!724424 (not c!79666)) b!724425))

(assert (=> b!724425 m!678541))

(declare-fun m!678815 () Bool)

(assert (=> b!724425 m!678815))

(assert (=> d!99293 m!678553))

(assert (=> d!99293 m!678541))

(assert (=> d!99293 m!678555))

(declare-fun m!678817 () Bool)

(assert (=> d!99293 m!678817))

(declare-fun m!678819 () Bool)

(assert (=> d!99293 m!678819))

(assert (=> d!99293 m!678541))

(assert (=> d!99293 m!678553))

(declare-fun m!678821 () Bool)

(assert (=> d!99293 m!678821))

(assert (=> d!99293 m!678537))

(declare-fun m!678823 () Bool)

(assert (=> b!724428 m!678823))

(assert (=> b!724059 d!99293))

(declare-fun b!724456 () Bool)

(declare-fun e!405798 () Bool)

(declare-fun call!34802 () Bool)

(assert (=> b!724456 (= e!405798 call!34802)))

(declare-fun b!724457 () Bool)

(declare-fun e!405799 () Bool)

(assert (=> b!724457 (= e!405799 call!34802)))

(declare-fun b!724458 () Bool)

(assert (=> b!724458 (= e!405798 e!405799)))

(declare-fun lt!321017 () (_ BitVec 64))

(assert (=> b!724458 (= lt!321017 (select (arr!19587 a!3186) j!159))))

(declare-fun lt!321015 () Unit!24706)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40936 (_ BitVec 64) (_ BitVec 32)) Unit!24706)

(assert (=> b!724458 (= lt!321015 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!321017 j!159))))

(assert (=> b!724458 (arrayContainsKey!0 a!3186 lt!321017 #b00000000000000000000000000000000)))

(declare-fun lt!321016 () Unit!24706)

(assert (=> b!724458 (= lt!321016 lt!321015)))

(declare-fun res!485848 () Bool)

(assert (=> b!724458 (= res!485848 (= (seekEntryOrOpen!0 (select (arr!19587 a!3186) j!159) a!3186 mask!3328) (Found!7194 j!159)))))

(assert (=> b!724458 (=> (not res!485848) (not e!405799))))

(declare-fun bm!34799 () Bool)

(assert (=> bm!34799 (= call!34802 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!724459 () Bool)

(declare-fun e!405797 () Bool)

(assert (=> b!724459 (= e!405797 e!405798)))

(declare-fun c!79676 () Bool)

(assert (=> b!724459 (= c!79676 (validKeyInArray!0 (select (arr!19587 a!3186) j!159)))))

(declare-fun d!99303 () Bool)

(declare-fun res!485849 () Bool)

(assert (=> d!99303 (=> res!485849 e!405797)))

(assert (=> d!99303 (= res!485849 (bvsge j!159 (size!20008 a!3186)))))

(assert (=> d!99303 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!405797)))

(assert (= (and d!99303 (not res!485849)) b!724459))

(assert (= (and b!724459 c!79676) b!724458))

(assert (= (and b!724459 (not c!79676)) b!724456))

(assert (= (and b!724458 res!485848) b!724457))

(assert (= (or b!724457 b!724456) bm!34799))

(assert (=> b!724458 m!678541))

(declare-fun m!678825 () Bool)

(assert (=> b!724458 m!678825))

(declare-fun m!678827 () Bool)

(assert (=> b!724458 m!678827))

(assert (=> b!724458 m!678541))

(assert (=> b!724458 m!678561))

(declare-fun m!678829 () Bool)

(assert (=> bm!34799 m!678829))

(assert (=> b!724459 m!678541))

(assert (=> b!724459 m!678541))

(assert (=> b!724459 m!678545))

(assert (=> b!724068 d!99303))

(declare-fun d!99305 () Bool)

(assert (=> d!99305 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!321022 () Unit!24706)

(declare-fun choose!38 (array!40936 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24706)

(assert (=> d!99305 (= lt!321022 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99305 (validMask!0 mask!3328)))

(assert (=> d!99305 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!321022)))

(declare-fun bs!20806 () Bool)

(assert (= bs!20806 d!99305))

(assert (=> bs!20806 m!678565))

(declare-fun m!678835 () Bool)

(assert (=> bs!20806 m!678835))

(assert (=> bs!20806 m!678537))

(assert (=> b!724068 d!99305))

(declare-fun d!99311 () Bool)

(declare-fun res!485861 () Bool)

(declare-fun e!405813 () Bool)

(assert (=> d!99311 (=> res!485861 e!405813)))

(assert (=> d!99311 (= res!485861 (bvsge #b00000000000000000000000000000000 (size!20008 a!3186)))))

(assert (=> d!99311 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13639) e!405813)))

(declare-fun b!724479 () Bool)

(declare-fun e!405816 () Bool)

(declare-fun call!34805 () Bool)

(assert (=> b!724479 (= e!405816 call!34805)))

(declare-fun b!724480 () Bool)

(assert (=> b!724480 (= e!405816 call!34805)))

(declare-fun b!724481 () Bool)

(declare-fun e!405814 () Bool)

(declare-fun contains!4050 (List!13642 (_ BitVec 64)) Bool)

(assert (=> b!724481 (= e!405814 (contains!4050 Nil!13639 (select (arr!19587 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724482 () Bool)

(declare-fun e!405815 () Bool)

(assert (=> b!724482 (= e!405815 e!405816)))

(declare-fun c!79682 () Bool)

(assert (=> b!724482 (= c!79682 (validKeyInArray!0 (select (arr!19587 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724483 () Bool)

(assert (=> b!724483 (= e!405813 e!405815)))

(declare-fun res!485860 () Bool)

(assert (=> b!724483 (=> (not res!485860) (not e!405815))))

(assert (=> b!724483 (= res!485860 (not e!405814))))

(declare-fun res!485859 () Bool)

(assert (=> b!724483 (=> (not res!485859) (not e!405814))))

(assert (=> b!724483 (= res!485859 (validKeyInArray!0 (select (arr!19587 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34802 () Bool)

(assert (=> bm!34802 (= call!34805 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79682 (Cons!13638 (select (arr!19587 a!3186) #b00000000000000000000000000000000) Nil!13639) Nil!13639)))))

(assert (= (and d!99311 (not res!485861)) b!724483))

(assert (= (and b!724483 res!485859) b!724481))

(assert (= (and b!724483 res!485860) b!724482))

(assert (= (and b!724482 c!79682) b!724480))

(assert (= (and b!724482 (not c!79682)) b!724479))

(assert (= (or b!724480 b!724479) bm!34802))

(declare-fun m!678837 () Bool)

(assert (=> b!724481 m!678837))

(assert (=> b!724481 m!678837))

(declare-fun m!678839 () Bool)

(assert (=> b!724481 m!678839))

(assert (=> b!724482 m!678837))

(assert (=> b!724482 m!678837))

(declare-fun m!678841 () Bool)

(assert (=> b!724482 m!678841))

(assert (=> b!724483 m!678837))

(assert (=> b!724483 m!678837))

(assert (=> b!724483 m!678841))

(assert (=> bm!34802 m!678837))

(declare-fun m!678843 () Bool)

(assert (=> bm!34802 m!678843))

(assert (=> b!724056 d!99311))

(declare-fun b!724484 () Bool)

(declare-fun lt!321024 () SeekEntryResult!7194)

(assert (=> b!724484 (and (bvsge (index!31145 lt!321024) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321024) (size!20008 lt!320868)))))

(declare-fun res!485862 () Bool)

(assert (=> b!724484 (= res!485862 (= (select (arr!19587 lt!320868) (index!31145 lt!321024)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405821 () Bool)

(assert (=> b!724484 (=> res!485862 e!405821)))

(declare-fun b!724485 () Bool)

(declare-fun e!405817 () SeekEntryResult!7194)

(assert (=> b!724485 (= e!405817 (Intermediate!7194 true (toIndex!0 lt!320866 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724486 () Bool)

(assert (=> b!724486 (and (bvsge (index!31145 lt!321024) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321024) (size!20008 lt!320868)))))

(declare-fun res!485863 () Bool)

(assert (=> b!724486 (= res!485863 (= (select (arr!19587 lt!320868) (index!31145 lt!321024)) lt!320866))))

(assert (=> b!724486 (=> res!485863 e!405821)))

(declare-fun e!405818 () Bool)

(assert (=> b!724486 (= e!405818 e!405821)))

(declare-fun b!724487 () Bool)

(declare-fun e!405820 () Bool)

(assert (=> b!724487 (= e!405820 e!405818)))

(declare-fun res!485864 () Bool)

(assert (=> b!724487 (= res!485864 (and (is-Intermediate!7194 lt!321024) (not (undefined!8006 lt!321024)) (bvslt (x!62164 lt!321024) #b01111111111111111111111111111110) (bvsge (x!62164 lt!321024) #b00000000000000000000000000000000) (bvsge (x!62164 lt!321024) #b00000000000000000000000000000000)))))

(assert (=> b!724487 (=> (not res!485864) (not e!405818))))

(declare-fun b!724488 () Bool)

(assert (=> b!724488 (and (bvsge (index!31145 lt!321024) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321024) (size!20008 lt!320868)))))

(assert (=> b!724488 (= e!405821 (= (select (arr!19587 lt!320868) (index!31145 lt!321024)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724489 () Bool)

(declare-fun e!405819 () SeekEntryResult!7194)

(assert (=> b!724489 (= e!405819 (Intermediate!7194 false (toIndex!0 lt!320866 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99313 () Bool)

(assert (=> d!99313 e!405820))

(declare-fun c!79683 () Bool)

(assert (=> d!99313 (= c!79683 (and (is-Intermediate!7194 lt!321024) (undefined!8006 lt!321024)))))

(assert (=> d!99313 (= lt!321024 e!405817)))

(declare-fun c!79684 () Bool)

(assert (=> d!99313 (= c!79684 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!321023 () (_ BitVec 64))

(assert (=> d!99313 (= lt!321023 (select (arr!19587 lt!320868) (toIndex!0 lt!320866 mask!3328)))))

(assert (=> d!99313 (validMask!0 mask!3328)))

(assert (=> d!99313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320866 mask!3328) lt!320866 lt!320868 mask!3328) lt!321024)))

(declare-fun b!724490 () Bool)

(assert (=> b!724490 (= e!405819 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!320866 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!320866 lt!320868 mask!3328))))

(declare-fun b!724491 () Bool)

(assert (=> b!724491 (= e!405817 e!405819)))

(declare-fun c!79685 () Bool)

(assert (=> b!724491 (= c!79685 (or (= lt!321023 lt!320866) (= (bvadd lt!321023 lt!321023) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724492 () Bool)

(assert (=> b!724492 (= e!405820 (bvsge (x!62164 lt!321024) #b01111111111111111111111111111110))))

(assert (= (and d!99313 c!79684) b!724485))

(assert (= (and d!99313 (not c!79684)) b!724491))

(assert (= (and b!724491 c!79685) b!724489))

(assert (= (and b!724491 (not c!79685)) b!724490))

(assert (= (and d!99313 c!79683) b!724492))

(assert (= (and d!99313 (not c!79683)) b!724487))

(assert (= (and b!724487 res!485864) b!724486))

(assert (= (and b!724486 (not res!485863)) b!724484))

(assert (= (and b!724484 (not res!485862)) b!724488))

(assert (=> d!99313 m!678569))

(declare-fun m!678845 () Bool)

(assert (=> d!99313 m!678845))

(assert (=> d!99313 m!678537))

(declare-fun m!678847 () Bool)

(assert (=> b!724488 m!678847))

(assert (=> b!724484 m!678847))

(assert (=> b!724490 m!678569))

(declare-fun m!678849 () Bool)

(assert (=> b!724490 m!678849))

(assert (=> b!724490 m!678849))

(declare-fun m!678851 () Bool)

(assert (=> b!724490 m!678851))

(assert (=> b!724486 m!678847))

(assert (=> b!724067 d!99313))

(declare-fun d!99317 () Bool)

(declare-fun lt!321032 () (_ BitVec 32))

(declare-fun lt!321031 () (_ BitVec 32))

(assert (=> d!99317 (= lt!321032 (bvmul (bvxor lt!321031 (bvlshr lt!321031 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99317 (= lt!321031 ((_ extract 31 0) (bvand (bvxor lt!320866 (bvlshr lt!320866 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99317 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!485868 (let ((h!14696 ((_ extract 31 0) (bvand (bvxor lt!320866 (bvlshr lt!320866 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62174 (bvmul (bvxor h!14696 (bvlshr h!14696 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62174 (bvlshr x!62174 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!485868 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!485868 #b00000000000000000000000000000000))))))

(assert (=> d!99317 (= (toIndex!0 lt!320866 mask!3328) (bvand (bvxor lt!321032 (bvlshr lt!321032 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!724067 d!99317))

(declare-fun b!724502 () Bool)

(declare-fun lt!321034 () SeekEntryResult!7194)

(assert (=> b!724502 (and (bvsge (index!31145 lt!321034) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321034) (size!20008 lt!320868)))))

(declare-fun res!485870 () Bool)

(assert (=> b!724502 (= res!485870 (= (select (arr!19587 lt!320868) (index!31145 lt!321034)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405831 () Bool)

(assert (=> b!724502 (=> res!485870 e!405831)))

(declare-fun b!724503 () Bool)

(declare-fun e!405827 () SeekEntryResult!7194)

(assert (=> b!724503 (= e!405827 (Intermediate!7194 true index!1321 x!1131))))

(declare-fun b!724504 () Bool)

(assert (=> b!724504 (and (bvsge (index!31145 lt!321034) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321034) (size!20008 lt!320868)))))

(declare-fun res!485871 () Bool)

(assert (=> b!724504 (= res!485871 (= (select (arr!19587 lt!320868) (index!31145 lt!321034)) lt!320866))))

(assert (=> b!724504 (=> res!485871 e!405831)))

(declare-fun e!405828 () Bool)

(assert (=> b!724504 (= e!405828 e!405831)))

(declare-fun b!724505 () Bool)

(declare-fun e!405830 () Bool)

(assert (=> b!724505 (= e!405830 e!405828)))

(declare-fun res!485872 () Bool)

(assert (=> b!724505 (= res!485872 (and (is-Intermediate!7194 lt!321034) (not (undefined!8006 lt!321034)) (bvslt (x!62164 lt!321034) #b01111111111111111111111111111110) (bvsge (x!62164 lt!321034) #b00000000000000000000000000000000) (bvsge (x!62164 lt!321034) x!1131)))))

(assert (=> b!724505 (=> (not res!485872) (not e!405828))))

(declare-fun b!724506 () Bool)

(assert (=> b!724506 (and (bvsge (index!31145 lt!321034) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321034) (size!20008 lt!320868)))))

(assert (=> b!724506 (= e!405831 (= (select (arr!19587 lt!320868) (index!31145 lt!321034)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724507 () Bool)

(declare-fun e!405829 () SeekEntryResult!7194)

(assert (=> b!724507 (= e!405829 (Intermediate!7194 false index!1321 x!1131))))

(declare-fun d!99323 () Bool)

(assert (=> d!99323 e!405830))

(declare-fun c!79689 () Bool)

(assert (=> d!99323 (= c!79689 (and (is-Intermediate!7194 lt!321034) (undefined!8006 lt!321034)))))

(assert (=> d!99323 (= lt!321034 e!405827)))

(declare-fun c!79690 () Bool)

(assert (=> d!99323 (= c!79690 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!321033 () (_ BitVec 64))

(assert (=> d!99323 (= lt!321033 (select (arr!19587 lt!320868) index!1321))))

(assert (=> d!99323 (validMask!0 mask!3328)))

(assert (=> d!99323 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320866 lt!320868 mask!3328) lt!321034)))

(declare-fun b!724508 () Bool)

(assert (=> b!724508 (= e!405829 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!320866 lt!320868 mask!3328))))

(declare-fun b!724509 () Bool)

(assert (=> b!724509 (= e!405827 e!405829)))

(declare-fun c!79691 () Bool)

(assert (=> b!724509 (= c!79691 (or (= lt!321033 lt!320866) (= (bvadd lt!321033 lt!321033) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724510 () Bool)

(assert (=> b!724510 (= e!405830 (bvsge (x!62164 lt!321034) #b01111111111111111111111111111110))))

(assert (= (and d!99323 c!79690) b!724503))

(assert (= (and d!99323 (not c!79690)) b!724509))

(assert (= (and b!724509 c!79691) b!724507))

(assert (= (and b!724509 (not c!79691)) b!724508))

(assert (= (and d!99323 c!79689) b!724510))

(assert (= (and d!99323 (not c!79689)) b!724505))

(assert (= (and b!724505 res!485872) b!724504))

(assert (= (and b!724504 (not res!485871)) b!724502))

(assert (= (and b!724502 (not res!485870)) b!724506))

(declare-fun m!678861 () Bool)

(assert (=> d!99323 m!678861))

(assert (=> d!99323 m!678537))

(declare-fun m!678863 () Bool)

(assert (=> b!724506 m!678863))

(assert (=> b!724502 m!678863))

(assert (=> b!724508 m!678715))

(assert (=> b!724508 m!678715))

(declare-fun m!678865 () Bool)

(assert (=> b!724508 m!678865))

(assert (=> b!724504 m!678863))

(assert (=> b!724067 d!99323))

(declare-fun b!724511 () Bool)

(declare-fun e!405833 () Bool)

(declare-fun call!34806 () Bool)

(assert (=> b!724511 (= e!405833 call!34806)))

(declare-fun b!724512 () Bool)

(declare-fun e!405834 () Bool)

(assert (=> b!724512 (= e!405834 call!34806)))

(declare-fun b!724513 () Bool)

(assert (=> b!724513 (= e!405833 e!405834)))

(declare-fun lt!321043 () (_ BitVec 64))

(assert (=> b!724513 (= lt!321043 (select (arr!19587 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!321041 () Unit!24706)

(assert (=> b!724513 (= lt!321041 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!321043 #b00000000000000000000000000000000))))

(assert (=> b!724513 (arrayContainsKey!0 a!3186 lt!321043 #b00000000000000000000000000000000)))

(declare-fun lt!321042 () Unit!24706)

(assert (=> b!724513 (= lt!321042 lt!321041)))

(declare-fun res!485873 () Bool)

(assert (=> b!724513 (= res!485873 (= (seekEntryOrOpen!0 (select (arr!19587 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7194 #b00000000000000000000000000000000)))))

(assert (=> b!724513 (=> (not res!485873) (not e!405834))))

(declare-fun bm!34803 () Bool)

(assert (=> bm!34803 (= call!34806 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!724514 () Bool)

(declare-fun e!405832 () Bool)

(assert (=> b!724514 (= e!405832 e!405833)))

(declare-fun c!79692 () Bool)

(assert (=> b!724514 (= c!79692 (validKeyInArray!0 (select (arr!19587 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99325 () Bool)

(declare-fun res!485874 () Bool)

(assert (=> d!99325 (=> res!485874 e!405832)))

(assert (=> d!99325 (= res!485874 (bvsge #b00000000000000000000000000000000 (size!20008 a!3186)))))

(assert (=> d!99325 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!405832)))

(assert (= (and d!99325 (not res!485874)) b!724514))

(assert (= (and b!724514 c!79692) b!724513))

(assert (= (and b!724514 (not c!79692)) b!724511))

(assert (= (and b!724513 res!485873) b!724512))

(assert (= (or b!724512 b!724511) bm!34803))

(assert (=> b!724513 m!678837))

(declare-fun m!678867 () Bool)

(assert (=> b!724513 m!678867))

(declare-fun m!678869 () Bool)

(assert (=> b!724513 m!678869))

(assert (=> b!724513 m!678837))

(declare-fun m!678871 () Bool)

(assert (=> b!724513 m!678871))

(declare-fun m!678873 () Bool)

(assert (=> bm!34803 m!678873))

(assert (=> b!724514 m!678837))

(assert (=> b!724514 m!678837))

(assert (=> b!724514 m!678841))

(assert (=> b!724065 d!99325))

(declare-fun d!99329 () Bool)

(assert (=> d!99329 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!724055 d!99329))

(declare-fun d!99333 () Bool)

(assert (=> d!99333 (= (validKeyInArray!0 (select (arr!19587 a!3186) j!159)) (and (not (= (select (arr!19587 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19587 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!724066 d!99333))

(declare-fun b!724524 () Bool)

(declare-fun lt!321047 () SeekEntryResult!7194)

(assert (=> b!724524 (and (bvsge (index!31145 lt!321047) #b00000000000000000000000000000000) (bvslt (index!31145 lt!321047) (size!20008 a!3186)))))

(declare-fun res!485878 () Bool)

(assert (=> b!724524 (= res!485878 (= (select (arr!19587 a!3186) (index!31145 lt!321047)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405844 () Bool)

(assert (=> b!724524 (=> res!485878 e!405844)))

(declare-fun e!405840 () SeekEntryResult!7194)

(declare-fun b!724525 () Bool)

(assert (=> b!724525 (= e!405840 (Intermediate!7194 true (toIndex!0 (select (arr!19587 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

