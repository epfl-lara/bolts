; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66288 () Bool)

(assert start!66288)

(declare-fun b!763411 () Bool)

(declare-fun e!425350 () Bool)

(declare-fun e!425351 () Bool)

(assert (=> b!763411 (= e!425350 e!425351)))

(declare-fun res!516540 () Bool)

(assert (=> b!763411 (=> (not res!516540) (not e!425351))))

(declare-datatypes ((array!42146 0))(
  ( (array!42147 (arr!20177 (Array (_ BitVec 32) (_ BitVec 64))) (size!20598 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42146)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7784 0))(
  ( (MissingZero!7784 (index!33503 (_ BitVec 32))) (Found!7784 (index!33504 (_ BitVec 32))) (Intermediate!7784 (undefined!8596 Bool) (index!33505 (_ BitVec 32)) (x!64429 (_ BitVec 32))) (Undefined!7784) (MissingVacant!7784 (index!33506 (_ BitVec 32))) )
))
(declare-fun lt!339802 () SeekEntryResult!7784)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42146 (_ BitVec 32)) SeekEntryResult!7784)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763411 (= res!516540 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20177 a!3186) j!159) mask!3328) (select (arr!20177 a!3186) j!159) a!3186 mask!3328) lt!339802))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763411 (= lt!339802 (Intermediate!7784 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763413 () Bool)

(declare-fun res!516542 () Bool)

(declare-fun e!425354 () Bool)

(assert (=> b!763413 (=> (not res!516542) (not e!425354))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763413 (= res!516542 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763414 () Bool)

(declare-fun res!516543 () Bool)

(assert (=> b!763414 (=> (not res!516543) (not e!425354))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763414 (= res!516543 (and (= (size!20598 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20598 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20598 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763415 () Bool)

(assert (=> b!763415 (= e!425351 false)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!339799 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!339800 () SeekEntryResult!7784)

(declare-fun lt!339798 () array!42146)

(assert (=> b!763415 (= lt!339800 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339799 lt!339798 mask!3328))))

(declare-fun lt!339797 () SeekEntryResult!7784)

(assert (=> b!763415 (= lt!339797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339799 mask!3328) lt!339799 lt!339798 mask!3328))))

(assert (=> b!763415 (= lt!339799 (select (store (arr!20177 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763415 (= lt!339798 (array!42147 (store (arr!20177 a!3186) i!1173 k!2102) (size!20598 a!3186)))))

(declare-fun b!763416 () Bool)

(declare-fun res!516535 () Bool)

(assert (=> b!763416 (=> (not res!516535) (not e!425351))))

(assert (=> b!763416 (= res!516535 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20177 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763417 () Bool)

(declare-fun res!516532 () Bool)

(assert (=> b!763417 (=> (not res!516532) (not e!425350))))

(assert (=> b!763417 (= res!516532 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20598 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20598 a!3186))))))

(declare-fun b!763418 () Bool)

(declare-fun res!516541 () Bool)

(assert (=> b!763418 (=> (not res!516541) (not e!425350))))

(declare-datatypes ((List!14232 0))(
  ( (Nil!14229) (Cons!14228 (h!15312 (_ BitVec 64)) (t!20555 List!14232)) )
))
(declare-fun arrayNoDuplicates!0 (array!42146 (_ BitVec 32) List!14232) Bool)

(assert (=> b!763418 (= res!516541 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14229))))

(declare-fun e!425353 () Bool)

(declare-fun b!763419 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42146 (_ BitVec 32)) SeekEntryResult!7784)

(assert (=> b!763419 (= e!425353 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20177 a!3186) j!159) a!3186 mask!3328) (Found!7784 j!159)))))

(declare-fun b!763420 () Bool)

(declare-fun res!516538 () Bool)

(assert (=> b!763420 (=> (not res!516538) (not e!425354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763420 (= res!516538 (validKeyInArray!0 (select (arr!20177 a!3186) j!159)))))

(declare-fun b!763421 () Bool)

(declare-fun res!516533 () Bool)

(assert (=> b!763421 (=> (not res!516533) (not e!425354))))

(assert (=> b!763421 (= res!516533 (validKeyInArray!0 k!2102))))

(declare-fun b!763422 () Bool)

(assert (=> b!763422 (= e!425354 e!425350)))

(declare-fun res!516536 () Bool)

(assert (=> b!763422 (=> (not res!516536) (not e!425350))))

(declare-fun lt!339801 () SeekEntryResult!7784)

(assert (=> b!763422 (= res!516536 (or (= lt!339801 (MissingZero!7784 i!1173)) (= lt!339801 (MissingVacant!7784 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42146 (_ BitVec 32)) SeekEntryResult!7784)

(assert (=> b!763422 (= lt!339801 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!516534 () Bool)

(assert (=> start!66288 (=> (not res!516534) (not e!425354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66288 (= res!516534 (validMask!0 mask!3328))))

(assert (=> start!66288 e!425354))

(assert (=> start!66288 true))

(declare-fun array_inv!15951 (array!42146) Bool)

(assert (=> start!66288 (array_inv!15951 a!3186)))

(declare-fun b!763412 () Bool)

(assert (=> b!763412 (= e!425353 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20177 a!3186) j!159) a!3186 mask!3328) lt!339802))))

(declare-fun b!763423 () Bool)

(declare-fun res!516537 () Bool)

(assert (=> b!763423 (=> (not res!516537) (not e!425351))))

(assert (=> b!763423 (= res!516537 e!425353)))

(declare-fun c!83826 () Bool)

(assert (=> b!763423 (= c!83826 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763424 () Bool)

(declare-fun res!516539 () Bool)

(assert (=> b!763424 (=> (not res!516539) (not e!425350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42146 (_ BitVec 32)) Bool)

(assert (=> b!763424 (= res!516539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66288 res!516534) b!763414))

(assert (= (and b!763414 res!516543) b!763420))

(assert (= (and b!763420 res!516538) b!763421))

(assert (= (and b!763421 res!516533) b!763413))

(assert (= (and b!763413 res!516542) b!763422))

(assert (= (and b!763422 res!516536) b!763424))

(assert (= (and b!763424 res!516539) b!763418))

(assert (= (and b!763418 res!516541) b!763417))

(assert (= (and b!763417 res!516532) b!763411))

(assert (= (and b!763411 res!516540) b!763416))

(assert (= (and b!763416 res!516535) b!763423))

(assert (= (and b!763423 c!83826) b!763412))

(assert (= (and b!763423 (not c!83826)) b!763419))

(assert (= (and b!763423 res!516537) b!763415))

(declare-fun m!709959 () Bool)

(assert (=> b!763419 m!709959))

(assert (=> b!763419 m!709959))

(declare-fun m!709961 () Bool)

(assert (=> b!763419 m!709961))

(assert (=> b!763411 m!709959))

(assert (=> b!763411 m!709959))

(declare-fun m!709963 () Bool)

(assert (=> b!763411 m!709963))

(assert (=> b!763411 m!709963))

(assert (=> b!763411 m!709959))

(declare-fun m!709965 () Bool)

(assert (=> b!763411 m!709965))

(declare-fun m!709967 () Bool)

(assert (=> b!763424 m!709967))

(declare-fun m!709969 () Bool)

(assert (=> start!66288 m!709969))

(declare-fun m!709971 () Bool)

(assert (=> start!66288 m!709971))

(declare-fun m!709973 () Bool)

(assert (=> b!763421 m!709973))

(declare-fun m!709975 () Bool)

(assert (=> b!763413 m!709975))

(assert (=> b!763420 m!709959))

(assert (=> b!763420 m!709959))

(declare-fun m!709977 () Bool)

(assert (=> b!763420 m!709977))

(declare-fun m!709979 () Bool)

(assert (=> b!763418 m!709979))

(declare-fun m!709981 () Bool)

(assert (=> b!763416 m!709981))

(declare-fun m!709983 () Bool)

(assert (=> b!763415 m!709983))

(declare-fun m!709985 () Bool)

(assert (=> b!763415 m!709985))

(declare-fun m!709987 () Bool)

(assert (=> b!763415 m!709987))

(declare-fun m!709989 () Bool)

(assert (=> b!763415 m!709989))

(assert (=> b!763415 m!709987))

(declare-fun m!709991 () Bool)

(assert (=> b!763415 m!709991))

(assert (=> b!763412 m!709959))

(assert (=> b!763412 m!709959))

(declare-fun m!709993 () Bool)

(assert (=> b!763412 m!709993))

(declare-fun m!709995 () Bool)

(assert (=> b!763422 m!709995))

(push 1)

