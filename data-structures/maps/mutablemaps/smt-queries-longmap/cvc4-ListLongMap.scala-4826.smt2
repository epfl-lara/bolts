; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66318 () Bool)

(assert start!66318)

(declare-fun b!764059 () Bool)

(declare-fun res!517094 () Bool)

(declare-fun e!425594 () Bool)

(assert (=> b!764059 (=> (not res!517094) (not e!425594))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764059 (= res!517094 (validKeyInArray!0 k!2102))))

(declare-fun b!764060 () Bool)

(declare-fun res!517098 () Bool)

(declare-fun e!425593 () Bool)

(assert (=> b!764060 (=> (not res!517098) (not e!425593))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42176 0))(
  ( (array!42177 (arr!20192 (Array (_ BitVec 32) (_ BitVec 64))) (size!20613 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42176)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764060 (= res!517098 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20192 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764061 () Bool)

(declare-fun res!517093 () Bool)

(assert (=> b!764061 (=> (not res!517093) (not e!425594))))

(declare-fun arrayContainsKey!0 (array!42176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764061 (= res!517093 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764062 () Bool)

(declare-fun res!517096 () Bool)

(assert (=> b!764062 (=> (not res!517096) (not e!425594))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!764062 (= res!517096 (and (= (size!20613 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20613 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20613 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!517101 () Bool)

(assert (=> start!66318 (=> (not res!517101) (not e!425594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66318 (= res!517101 (validMask!0 mask!3328))))

(assert (=> start!66318 e!425594))

(assert (=> start!66318 true))

(declare-fun array_inv!15966 (array!42176) Bool)

(assert (=> start!66318 (array_inv!15966 a!3186)))

(declare-fun b!764063 () Bool)

(declare-fun res!517100 () Bool)

(declare-fun e!425597 () Bool)

(assert (=> b!764063 (=> (not res!517100) (not e!425597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42176 (_ BitVec 32)) Bool)

(assert (=> b!764063 (= res!517100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764064 () Bool)

(declare-fun res!517090 () Bool)

(assert (=> b!764064 (=> (not res!517090) (not e!425597))))

(declare-datatypes ((List!14247 0))(
  ( (Nil!14244) (Cons!14243 (h!15327 (_ BitVec 64)) (t!20570 List!14247)) )
))
(declare-fun arrayNoDuplicates!0 (array!42176 (_ BitVec 32) List!14247) Bool)

(assert (=> b!764064 (= res!517090 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14244))))

(declare-fun b!764065 () Bool)

(declare-fun res!517095 () Bool)

(assert (=> b!764065 (=> (not res!517095) (not e!425597))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764065 (= res!517095 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20613 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20613 a!3186))))))

(declare-fun b!764066 () Bool)

(assert (=> b!764066 (= e!425594 e!425597)))

(declare-fun res!517091 () Bool)

(assert (=> b!764066 (=> (not res!517091) (not e!425597))))

(declare-datatypes ((SeekEntryResult!7799 0))(
  ( (MissingZero!7799 (index!33563 (_ BitVec 32))) (Found!7799 (index!33564 (_ BitVec 32))) (Intermediate!7799 (undefined!8611 Bool) (index!33565 (_ BitVec 32)) (x!64484 (_ BitVec 32))) (Undefined!7799) (MissingVacant!7799 (index!33566 (_ BitVec 32))) )
))
(declare-fun lt!340032 () SeekEntryResult!7799)

(assert (=> b!764066 (= res!517091 (or (= lt!340032 (MissingZero!7799 i!1173)) (= lt!340032 (MissingVacant!7799 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42176 (_ BitVec 32)) SeekEntryResult!7799)

(assert (=> b!764066 (= lt!340032 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764067 () Bool)

(declare-fun res!517097 () Bool)

(assert (=> b!764067 (=> (not res!517097) (not e!425593))))

(declare-fun e!425596 () Bool)

(assert (=> b!764067 (= res!517097 e!425596)))

(declare-fun c!83871 () Bool)

(assert (=> b!764067 (= c!83871 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764068 () Bool)

(assert (=> b!764068 (= e!425593 false)))

(declare-fun lt!340031 () (_ BitVec 64))

(declare-fun lt!340034 () SeekEntryResult!7799)

(declare-fun lt!340036 () array!42176)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42176 (_ BitVec 32)) SeekEntryResult!7799)

(assert (=> b!764068 (= lt!340034 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340031 lt!340036 mask!3328))))

(declare-fun lt!340035 () SeekEntryResult!7799)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764068 (= lt!340035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340031 mask!3328) lt!340031 lt!340036 mask!3328))))

(assert (=> b!764068 (= lt!340031 (select (store (arr!20192 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764068 (= lt!340036 (array!42177 (store (arr!20192 a!3186) i!1173 k!2102) (size!20613 a!3186)))))

(declare-fun b!764069 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42176 (_ BitVec 32)) SeekEntryResult!7799)

(assert (=> b!764069 (= e!425596 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20192 a!3186) j!159) a!3186 mask!3328) (Found!7799 j!159)))))

(declare-fun b!764070 () Bool)

(declare-fun res!517092 () Bool)

(assert (=> b!764070 (=> (not res!517092) (not e!425594))))

(assert (=> b!764070 (= res!517092 (validKeyInArray!0 (select (arr!20192 a!3186) j!159)))))

(declare-fun b!764071 () Bool)

(declare-fun lt!340033 () SeekEntryResult!7799)

(assert (=> b!764071 (= e!425596 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20192 a!3186) j!159) a!3186 mask!3328) lt!340033))))

(declare-fun b!764072 () Bool)

(assert (=> b!764072 (= e!425597 e!425593)))

(declare-fun res!517099 () Bool)

(assert (=> b!764072 (=> (not res!517099) (not e!425593))))

(assert (=> b!764072 (= res!517099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20192 a!3186) j!159) mask!3328) (select (arr!20192 a!3186) j!159) a!3186 mask!3328) lt!340033))))

(assert (=> b!764072 (= lt!340033 (Intermediate!7799 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66318 res!517101) b!764062))

(assert (= (and b!764062 res!517096) b!764070))

(assert (= (and b!764070 res!517092) b!764059))

(assert (= (and b!764059 res!517094) b!764061))

(assert (= (and b!764061 res!517093) b!764066))

(assert (= (and b!764066 res!517091) b!764063))

(assert (= (and b!764063 res!517100) b!764064))

(assert (= (and b!764064 res!517090) b!764065))

(assert (= (and b!764065 res!517095) b!764072))

(assert (= (and b!764072 res!517099) b!764060))

(assert (= (and b!764060 res!517098) b!764067))

(assert (= (and b!764067 c!83871) b!764071))

(assert (= (and b!764067 (not c!83871)) b!764069))

(assert (= (and b!764067 res!517097) b!764068))

(declare-fun m!710529 () Bool)

(assert (=> b!764063 m!710529))

(declare-fun m!710531 () Bool)

(assert (=> b!764072 m!710531))

(assert (=> b!764072 m!710531))

(declare-fun m!710533 () Bool)

(assert (=> b!764072 m!710533))

(assert (=> b!764072 m!710533))

(assert (=> b!764072 m!710531))

(declare-fun m!710535 () Bool)

(assert (=> b!764072 m!710535))

(declare-fun m!710537 () Bool)

(assert (=> b!764059 m!710537))

(declare-fun m!710539 () Bool)

(assert (=> b!764060 m!710539))

(assert (=> b!764070 m!710531))

(assert (=> b!764070 m!710531))

(declare-fun m!710541 () Bool)

(assert (=> b!764070 m!710541))

(declare-fun m!710543 () Bool)

(assert (=> b!764064 m!710543))

(declare-fun m!710545 () Bool)

(assert (=> b!764066 m!710545))

(declare-fun m!710547 () Bool)

(assert (=> b!764061 m!710547))

(assert (=> b!764069 m!710531))

(assert (=> b!764069 m!710531))

(declare-fun m!710549 () Bool)

(assert (=> b!764069 m!710549))

(declare-fun m!710551 () Bool)

(assert (=> b!764068 m!710551))

(declare-fun m!710553 () Bool)

(assert (=> b!764068 m!710553))

(declare-fun m!710555 () Bool)

(assert (=> b!764068 m!710555))

(declare-fun m!710557 () Bool)

(assert (=> b!764068 m!710557))

(assert (=> b!764068 m!710551))

(declare-fun m!710559 () Bool)

(assert (=> b!764068 m!710559))

(declare-fun m!710561 () Bool)

(assert (=> start!66318 m!710561))

(declare-fun m!710563 () Bool)

(assert (=> start!66318 m!710563))

(assert (=> b!764071 m!710531))

(assert (=> b!764071 m!710531))

(declare-fun m!710565 () Bool)

(assert (=> b!764071 m!710565))

(push 1)

