; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51612 () Bool)

(assert start!51612)

(declare-fun b!564391 () Bool)

(declare-fun res!355698 () Bool)

(declare-fun e!325069 () Bool)

(assert (=> b!564391 (=> (not res!355698) (not e!325069))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35431 0))(
  ( (array!35432 (arr!17012 (Array (_ BitVec 32) (_ BitVec 64))) (size!17376 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35431)

(assert (=> b!564391 (= res!355698 (and (= (size!17376 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17376 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17376 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564392 () Bool)

(declare-fun res!355700 () Bool)

(assert (=> b!564392 (=> (not res!355700) (not e!325069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564392 (= res!355700 (validKeyInArray!0 (select (arr!17012 a!3118) j!142)))))

(declare-fun b!564393 () Bool)

(declare-fun e!325068 () Bool)

(assert (=> b!564393 (= e!325068 false)))

(declare-datatypes ((SeekEntryResult!5468 0))(
  ( (MissingZero!5468 (index!24099 (_ BitVec 32))) (Found!5468 (index!24100 (_ BitVec 32))) (Intermediate!5468 (undefined!6280 Bool) (index!24101 (_ BitVec 32)) (x!52998 (_ BitVec 32))) (Undefined!5468) (MissingVacant!5468 (index!24102 (_ BitVec 32))) )
))
(declare-fun lt!257558 () SeekEntryResult!5468)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!257557 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35431 (_ BitVec 32)) SeekEntryResult!5468)

(assert (=> b!564393 (= lt!257558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257557 (select (store (arr!17012 a!3118) i!1132 k!1914) j!142) (array!35432 (store (arr!17012 a!3118) i!1132 k!1914) (size!17376 a!3118)) mask!3119))))

(declare-fun lt!257555 () SeekEntryResult!5468)

(declare-fun lt!257554 () (_ BitVec 32))

(assert (=> b!564393 (= lt!257555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257554 (select (arr!17012 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564393 (= lt!257557 (toIndex!0 (select (store (arr!17012 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!564393 (= lt!257554 (toIndex!0 (select (arr!17012 a!3118) j!142) mask!3119))))

(declare-fun b!564394 () Bool)

(declare-fun res!355696 () Bool)

(assert (=> b!564394 (=> (not res!355696) (not e!325068))))

(declare-datatypes ((List!11145 0))(
  ( (Nil!11142) (Cons!11141 (h!12144 (_ BitVec 64)) (t!17381 List!11145)) )
))
(declare-fun arrayNoDuplicates!0 (array!35431 (_ BitVec 32) List!11145) Bool)

(assert (=> b!564394 (= res!355696 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11142))))

(declare-fun b!564395 () Bool)

(declare-fun res!355693 () Bool)

(assert (=> b!564395 (=> (not res!355693) (not e!325069))))

(declare-fun arrayContainsKey!0 (array!35431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564395 (= res!355693 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!355695 () Bool)

(assert (=> start!51612 (=> (not res!355695) (not e!325069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51612 (= res!355695 (validMask!0 mask!3119))))

(assert (=> start!51612 e!325069))

(assert (=> start!51612 true))

(declare-fun array_inv!12786 (array!35431) Bool)

(assert (=> start!51612 (array_inv!12786 a!3118)))

(declare-fun b!564396 () Bool)

(declare-fun res!355699 () Bool)

(assert (=> b!564396 (=> (not res!355699) (not e!325069))))

(assert (=> b!564396 (= res!355699 (validKeyInArray!0 k!1914))))

(declare-fun b!564397 () Bool)

(declare-fun res!355694 () Bool)

(assert (=> b!564397 (=> (not res!355694) (not e!325068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35431 (_ BitVec 32)) Bool)

(assert (=> b!564397 (= res!355694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564398 () Bool)

(assert (=> b!564398 (= e!325069 e!325068)))

(declare-fun res!355697 () Bool)

(assert (=> b!564398 (=> (not res!355697) (not e!325068))))

(declare-fun lt!257556 () SeekEntryResult!5468)

(assert (=> b!564398 (= res!355697 (or (= lt!257556 (MissingZero!5468 i!1132)) (= lt!257556 (MissingVacant!5468 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35431 (_ BitVec 32)) SeekEntryResult!5468)

(assert (=> b!564398 (= lt!257556 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51612 res!355695) b!564391))

(assert (= (and b!564391 res!355698) b!564392))

(assert (= (and b!564392 res!355700) b!564396))

(assert (= (and b!564396 res!355699) b!564395))

(assert (= (and b!564395 res!355693) b!564398))

(assert (= (and b!564398 res!355697) b!564397))

(assert (= (and b!564397 res!355694) b!564394))

(assert (= (and b!564394 res!355696) b!564393))

(declare-fun m!542863 () Bool)

(assert (=> b!564395 m!542863))

(declare-fun m!542865 () Bool)

(assert (=> b!564392 m!542865))

(assert (=> b!564392 m!542865))

(declare-fun m!542867 () Bool)

(assert (=> b!564392 m!542867))

(declare-fun m!542869 () Bool)

(assert (=> b!564394 m!542869))

(declare-fun m!542871 () Bool)

(assert (=> b!564398 m!542871))

(declare-fun m!542873 () Bool)

(assert (=> start!51612 m!542873))

(declare-fun m!542875 () Bool)

(assert (=> start!51612 m!542875))

(declare-fun m!542877 () Bool)

(assert (=> b!564396 m!542877))

(declare-fun m!542879 () Bool)

(assert (=> b!564397 m!542879))

(declare-fun m!542881 () Bool)

(assert (=> b!564393 m!542881))

(declare-fun m!542883 () Bool)

(assert (=> b!564393 m!542883))

(assert (=> b!564393 m!542865))

(declare-fun m!542885 () Bool)

(assert (=> b!564393 m!542885))

(assert (=> b!564393 m!542865))

(assert (=> b!564393 m!542865))

(declare-fun m!542887 () Bool)

(assert (=> b!564393 m!542887))

(assert (=> b!564393 m!542881))

(declare-fun m!542889 () Bool)

(assert (=> b!564393 m!542889))

(assert (=> b!564393 m!542881))

(declare-fun m!542891 () Bool)

(assert (=> b!564393 m!542891))

(push 1)

(assert (not b!564394))

(assert (not b!564398))

(assert (not b!564397))

(assert (not b!564395))

(assert (not b!564392))

(assert (not start!51612))

(assert (not b!564393))

(assert (not b!564396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

