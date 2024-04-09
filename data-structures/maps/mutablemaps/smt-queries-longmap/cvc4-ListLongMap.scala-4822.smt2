; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66294 () Bool)

(assert start!66294)

(declare-fun b!763537 () Bool)

(declare-fun res!516644 () Bool)

(declare-fun e!425399 () Bool)

(assert (=> b!763537 (=> (not res!516644) (not e!425399))))

(declare-fun e!425396 () Bool)

(assert (=> b!763537 (= res!516644 e!425396)))

(declare-fun c!83835 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763537 (= c!83835 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763538 () Bool)

(declare-fun e!425397 () Bool)

(declare-fun e!425395 () Bool)

(assert (=> b!763538 (= e!425397 e!425395)))

(declare-fun res!516647 () Bool)

(assert (=> b!763538 (=> (not res!516647) (not e!425395))))

(declare-datatypes ((SeekEntryResult!7787 0))(
  ( (MissingZero!7787 (index!33515 (_ BitVec 32))) (Found!7787 (index!33516 (_ BitVec 32))) (Intermediate!7787 (undefined!8599 Bool) (index!33517 (_ BitVec 32)) (x!64440 (_ BitVec 32))) (Undefined!7787) (MissingVacant!7787 (index!33518 (_ BitVec 32))) )
))
(declare-fun lt!339853 () SeekEntryResult!7787)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763538 (= res!516647 (or (= lt!339853 (MissingZero!7787 i!1173)) (= lt!339853 (MissingVacant!7787 i!1173))))))

(declare-datatypes ((array!42152 0))(
  ( (array!42153 (arr!20180 (Array (_ BitVec 32) (_ BitVec 64))) (size!20601 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42152)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42152 (_ BitVec 32)) SeekEntryResult!7787)

(assert (=> b!763538 (= lt!339853 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763539 () Bool)

(declare-fun res!516646 () Bool)

(assert (=> b!763539 (=> (not res!516646) (not e!425397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763539 (= res!516646 (validKeyInArray!0 k!2102))))

(declare-fun b!763540 () Bool)

(declare-fun res!516640 () Bool)

(assert (=> b!763540 (=> (not res!516640) (not e!425397))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!763540 (= res!516640 (and (= (size!20601 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20601 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20601 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763541 () Bool)

(declare-fun res!516648 () Bool)

(assert (=> b!763541 (=> (not res!516648) (not e!425395))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!763541 (= res!516648 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20601 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20601 a!3186))))))

(declare-fun b!763542 () Bool)

(declare-fun res!516642 () Bool)

(assert (=> b!763542 (=> (not res!516642) (not e!425395))))

(declare-datatypes ((List!14235 0))(
  ( (Nil!14232) (Cons!14231 (h!15315 (_ BitVec 64)) (t!20558 List!14235)) )
))
(declare-fun arrayNoDuplicates!0 (array!42152 (_ BitVec 32) List!14235) Bool)

(assert (=> b!763542 (= res!516642 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14232))))

(declare-fun b!763544 () Bool)

(declare-fun lt!339852 () SeekEntryResult!7787)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42152 (_ BitVec 32)) SeekEntryResult!7787)

(assert (=> b!763544 (= e!425396 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20180 a!3186) j!159) a!3186 mask!3328) lt!339852))))

(declare-fun b!763545 () Bool)

(assert (=> b!763545 (= e!425395 e!425399)))

(declare-fun res!516641 () Bool)

(assert (=> b!763545 (=> (not res!516641) (not e!425399))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763545 (= res!516641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20180 a!3186) j!159) mask!3328) (select (arr!20180 a!3186) j!159) a!3186 mask!3328) lt!339852))))

(assert (=> b!763545 (= lt!339852 (Intermediate!7787 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763546 () Bool)

(declare-fun res!516643 () Bool)

(assert (=> b!763546 (=> (not res!516643) (not e!425397))))

(declare-fun arrayContainsKey!0 (array!42152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763546 (= res!516643 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763547 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42152 (_ BitVec 32)) SeekEntryResult!7787)

(assert (=> b!763547 (= e!425396 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20180 a!3186) j!159) a!3186 mask!3328) (Found!7787 j!159)))))

(declare-fun b!763548 () Bool)

(declare-fun res!516651 () Bool)

(assert (=> b!763548 (=> (not res!516651) (not e!425395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42152 (_ BitVec 32)) Bool)

(assert (=> b!763548 (= res!516651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!516645 () Bool)

(assert (=> start!66294 (=> (not res!516645) (not e!425397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66294 (= res!516645 (validMask!0 mask!3328))))

(assert (=> start!66294 e!425397))

(assert (=> start!66294 true))

(declare-fun array_inv!15954 (array!42152) Bool)

(assert (=> start!66294 (array_inv!15954 a!3186)))

(declare-fun b!763543 () Bool)

(assert (=> b!763543 (= e!425399 false)))

(declare-fun lt!339851 () SeekEntryResult!7787)

(declare-fun lt!339854 () array!42152)

(declare-fun lt!339856 () (_ BitVec 64))

(assert (=> b!763543 (= lt!339851 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339856 lt!339854 mask!3328))))

(declare-fun lt!339855 () SeekEntryResult!7787)

(assert (=> b!763543 (= lt!339855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339856 mask!3328) lt!339856 lt!339854 mask!3328))))

(assert (=> b!763543 (= lt!339856 (select (store (arr!20180 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763543 (= lt!339854 (array!42153 (store (arr!20180 a!3186) i!1173 k!2102) (size!20601 a!3186)))))

(declare-fun b!763549 () Bool)

(declare-fun res!516649 () Bool)

(assert (=> b!763549 (=> (not res!516649) (not e!425399))))

(assert (=> b!763549 (= res!516649 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20180 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763550 () Bool)

(declare-fun res!516650 () Bool)

(assert (=> b!763550 (=> (not res!516650) (not e!425397))))

(assert (=> b!763550 (= res!516650 (validKeyInArray!0 (select (arr!20180 a!3186) j!159)))))

(assert (= (and start!66294 res!516645) b!763540))

(assert (= (and b!763540 res!516640) b!763550))

(assert (= (and b!763550 res!516650) b!763539))

(assert (= (and b!763539 res!516646) b!763546))

(assert (= (and b!763546 res!516643) b!763538))

(assert (= (and b!763538 res!516647) b!763548))

(assert (= (and b!763548 res!516651) b!763542))

(assert (= (and b!763542 res!516642) b!763541))

(assert (= (and b!763541 res!516648) b!763545))

(assert (= (and b!763545 res!516641) b!763549))

(assert (= (and b!763549 res!516649) b!763537))

(assert (= (and b!763537 c!83835) b!763544))

(assert (= (and b!763537 (not c!83835)) b!763547))

(assert (= (and b!763537 res!516644) b!763543))

(declare-fun m!710073 () Bool)

(assert (=> b!763543 m!710073))

(declare-fun m!710075 () Bool)

(assert (=> b!763543 m!710075))

(declare-fun m!710077 () Bool)

(assert (=> b!763543 m!710077))

(declare-fun m!710079 () Bool)

(assert (=> b!763543 m!710079))

(declare-fun m!710081 () Bool)

(assert (=> b!763543 m!710081))

(assert (=> b!763543 m!710073))

(declare-fun m!710083 () Bool)

(assert (=> b!763538 m!710083))

(declare-fun m!710085 () Bool)

(assert (=> start!66294 m!710085))

(declare-fun m!710087 () Bool)

(assert (=> start!66294 m!710087))

(declare-fun m!710089 () Bool)

(assert (=> b!763542 m!710089))

(declare-fun m!710091 () Bool)

(assert (=> b!763549 m!710091))

(declare-fun m!710093 () Bool)

(assert (=> b!763547 m!710093))

(assert (=> b!763547 m!710093))

(declare-fun m!710095 () Bool)

(assert (=> b!763547 m!710095))

(assert (=> b!763545 m!710093))

(assert (=> b!763545 m!710093))

(declare-fun m!710097 () Bool)

(assert (=> b!763545 m!710097))

(assert (=> b!763545 m!710097))

(assert (=> b!763545 m!710093))

(declare-fun m!710099 () Bool)

(assert (=> b!763545 m!710099))

(declare-fun m!710101 () Bool)

(assert (=> b!763539 m!710101))

(assert (=> b!763550 m!710093))

(assert (=> b!763550 m!710093))

(declare-fun m!710103 () Bool)

(assert (=> b!763550 m!710103))

(declare-fun m!710105 () Bool)

(assert (=> b!763548 m!710105))

(assert (=> b!763544 m!710093))

(assert (=> b!763544 m!710093))

(declare-fun m!710107 () Bool)

(assert (=> b!763544 m!710107))

(declare-fun m!710109 () Bool)

(assert (=> b!763546 m!710109))

(push 1)

