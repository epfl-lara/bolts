; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64742 () Bool)

(assert start!64742)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!730176 () Bool)

(declare-datatypes ((SeekEntryResult!7295 0))(
  ( (MissingZero!7295 (index!31547 (_ BitVec 32))) (Found!7295 (index!31548 (_ BitVec 32))) (Intermediate!7295 (undefined!8107 Bool) (index!31549 (_ BitVec 32)) (x!62550 (_ BitVec 32))) (Undefined!7295) (MissingVacant!7295 (index!31550 (_ BitVec 32))) )
))
(declare-fun lt!323556 () SeekEntryResult!7295)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41144 0))(
  ( (array!41145 (arr!19688 (Array (_ BitVec 32) (_ BitVec 64))) (size!20109 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41144)

(declare-fun e!408649 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41144 (_ BitVec 32)) SeekEntryResult!7295)

(assert (=> b!730176 (= e!408649 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19688 a!3186) j!159) a!3186 mask!3328) lt!323556))))

(declare-fun b!730177 () Bool)

(declare-fun res!490626 () Bool)

(declare-fun e!408655 () Bool)

(assert (=> b!730177 (=> (not res!490626) (not e!408655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730177 (= res!490626 (validKeyInArray!0 (select (arr!19688 a!3186) j!159)))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!730178 () Bool)

(declare-fun e!408654 () Bool)

(assert (=> b!730178 (= e!408654 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!323562 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730178 (= lt!323562 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730180 () Bool)

(declare-fun e!408652 () Bool)

(declare-fun e!408656 () Bool)

(assert (=> b!730180 (= e!408652 e!408656)))

(declare-fun res!490638 () Bool)

(assert (=> b!730180 (=> (not res!490638) (not e!408656))))

(declare-fun lt!323558 () SeekEntryResult!7295)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41144 (_ BitVec 32)) SeekEntryResult!7295)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730180 (= res!490638 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19688 a!3186) j!159) mask!3328) (select (arr!19688 a!3186) j!159) a!3186 mask!3328) lt!323558))))

(assert (=> b!730180 (= lt!323558 (Intermediate!7295 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730181 () Bool)

(declare-fun e!408650 () Bool)

(assert (=> b!730181 (= e!408650 e!408649)))

(declare-fun res!490632 () Bool)

(assert (=> b!730181 (=> (not res!490632) (not e!408649))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41144 (_ BitVec 32)) SeekEntryResult!7295)

(assert (=> b!730181 (= res!490632 (= (seekEntryOrOpen!0 (select (arr!19688 a!3186) j!159) a!3186 mask!3328) lt!323556))))

(assert (=> b!730181 (= lt!323556 (Found!7295 j!159))))

(declare-fun b!730182 () Bool)

(declare-fun e!408657 () Bool)

(assert (=> b!730182 (= e!408656 e!408657)))

(declare-fun res!490630 () Bool)

(assert (=> b!730182 (=> (not res!490630) (not e!408657))))

(declare-fun lt!323559 () SeekEntryResult!7295)

(declare-fun lt!323563 () SeekEntryResult!7295)

(assert (=> b!730182 (= res!490630 (= lt!323559 lt!323563))))

(declare-fun lt!323561 () array!41144)

(declare-fun lt!323564 () (_ BitVec 64))

(assert (=> b!730182 (= lt!323563 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323564 lt!323561 mask!3328))))

(assert (=> b!730182 (= lt!323559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323564 mask!3328) lt!323564 lt!323561 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!730182 (= lt!323564 (select (store (arr!19688 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730182 (= lt!323561 (array!41145 (store (arr!19688 a!3186) i!1173 k!2102) (size!20109 a!3186)))))

(declare-fun b!730183 () Bool)

(declare-fun res!490635 () Bool)

(assert (=> b!730183 (=> (not res!490635) (not e!408655))))

(assert (=> b!730183 (= res!490635 (and (= (size!20109 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20109 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20109 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730184 () Bool)

(declare-fun res!490624 () Bool)

(assert (=> b!730184 (=> (not res!490624) (not e!408652))))

(declare-datatypes ((List!13743 0))(
  ( (Nil!13740) (Cons!13739 (h!14799 (_ BitVec 64)) (t!20066 List!13743)) )
))
(declare-fun arrayNoDuplicates!0 (array!41144 (_ BitVec 32) List!13743) Bool)

(assert (=> b!730184 (= res!490624 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13740))))

(declare-fun b!730185 () Bool)

(declare-fun res!490629 () Bool)

(assert (=> b!730185 (=> (not res!490629) (not e!408656))))

(assert (=> b!730185 (= res!490629 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19688 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730186 () Bool)

(assert (=> b!730186 (= e!408655 e!408652)))

(declare-fun res!490637 () Bool)

(assert (=> b!730186 (=> (not res!490637) (not e!408652))))

(declare-fun lt!323557 () SeekEntryResult!7295)

(assert (=> b!730186 (= res!490637 (or (= lt!323557 (MissingZero!7295 i!1173)) (= lt!323557 (MissingVacant!7295 i!1173))))))

(assert (=> b!730186 (= lt!323557 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730187 () Bool)

(declare-fun res!490623 () Bool)

(assert (=> b!730187 (=> (not res!490623) (not e!408652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41144 (_ BitVec 32)) Bool)

(assert (=> b!730187 (= res!490623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!490625 () Bool)

(assert (=> start!64742 (=> (not res!490625) (not e!408655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64742 (= res!490625 (validMask!0 mask!3328))))

(assert (=> start!64742 e!408655))

(assert (=> start!64742 true))

(declare-fun array_inv!15462 (array!41144) Bool)

(assert (=> start!64742 (array_inv!15462 a!3186)))

(declare-fun b!730179 () Bool)

(assert (=> b!730179 (= e!408657 (not e!408654))))

(declare-fun res!490636 () Bool)

(assert (=> b!730179 (=> res!490636 e!408654)))

(assert (=> b!730179 (= res!490636 (or (not (is-Intermediate!7295 lt!323563)) (bvsge x!1131 (x!62550 lt!323563))))))

(assert (=> b!730179 e!408650))

(declare-fun res!490633 () Bool)

(assert (=> b!730179 (=> (not res!490633) (not e!408650))))

(assert (=> b!730179 (= res!490633 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24908 0))(
  ( (Unit!24909) )
))
(declare-fun lt!323560 () Unit!24908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41144 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24908)

(assert (=> b!730179 (= lt!323560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730188 () Bool)

(declare-fun e!408651 () Bool)

(assert (=> b!730188 (= e!408651 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19688 a!3186) j!159) a!3186 mask!3328) (Found!7295 j!159)))))

(declare-fun b!730189 () Bool)

(declare-fun res!490628 () Bool)

(assert (=> b!730189 (=> (not res!490628) (not e!408652))))

(assert (=> b!730189 (= res!490628 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20109 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20109 a!3186))))))

(declare-fun b!730190 () Bool)

(declare-fun res!490634 () Bool)

(assert (=> b!730190 (=> (not res!490634) (not e!408656))))

(assert (=> b!730190 (= res!490634 e!408651)))

(declare-fun c!80151 () Bool)

(assert (=> b!730190 (= c!80151 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730191 () Bool)

(declare-fun res!490627 () Bool)

(assert (=> b!730191 (=> (not res!490627) (not e!408655))))

(assert (=> b!730191 (= res!490627 (validKeyInArray!0 k!2102))))

(declare-fun b!730192 () Bool)

(assert (=> b!730192 (= e!408651 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19688 a!3186) j!159) a!3186 mask!3328) lt!323558))))

(declare-fun b!730193 () Bool)

(declare-fun res!490631 () Bool)

(assert (=> b!730193 (=> (not res!490631) (not e!408655))))

(declare-fun arrayContainsKey!0 (array!41144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730193 (= res!490631 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64742 res!490625) b!730183))

(assert (= (and b!730183 res!490635) b!730177))

(assert (= (and b!730177 res!490626) b!730191))

(assert (= (and b!730191 res!490627) b!730193))

(assert (= (and b!730193 res!490631) b!730186))

(assert (= (and b!730186 res!490637) b!730187))

(assert (= (and b!730187 res!490623) b!730184))

(assert (= (and b!730184 res!490624) b!730189))

(assert (= (and b!730189 res!490628) b!730180))

(assert (= (and b!730180 res!490638) b!730185))

(assert (= (and b!730185 res!490629) b!730190))

(assert (= (and b!730190 c!80151) b!730192))

(assert (= (and b!730190 (not c!80151)) b!730188))

(assert (= (and b!730190 res!490634) b!730182))

(assert (= (and b!730182 res!490630) b!730179))

(assert (= (and b!730179 res!490633) b!730181))

(assert (= (and b!730181 res!490632) b!730176))

(assert (= (and b!730179 (not res!490636)) b!730178))

(declare-fun m!683821 () Bool)

(assert (=> b!730176 m!683821))

(assert (=> b!730176 m!683821))

(declare-fun m!683823 () Bool)

(assert (=> b!730176 m!683823))

(declare-fun m!683825 () Bool)

(assert (=> b!730178 m!683825))

(declare-fun m!683827 () Bool)

(assert (=> b!730185 m!683827))

(assert (=> b!730181 m!683821))

(assert (=> b!730181 m!683821))

(declare-fun m!683829 () Bool)

(assert (=> b!730181 m!683829))

(declare-fun m!683831 () Bool)

(assert (=> b!730187 m!683831))

(declare-fun m!683833 () Bool)

(assert (=> start!64742 m!683833))

(declare-fun m!683835 () Bool)

(assert (=> start!64742 m!683835))

(declare-fun m!683837 () Bool)

(assert (=> b!730182 m!683837))

(declare-fun m!683839 () Bool)

(assert (=> b!730182 m!683839))

(assert (=> b!730182 m!683837))

(declare-fun m!683841 () Bool)

(assert (=> b!730182 m!683841))

(declare-fun m!683843 () Bool)

(assert (=> b!730182 m!683843))

(declare-fun m!683845 () Bool)

(assert (=> b!730182 m!683845))

(declare-fun m!683847 () Bool)

(assert (=> b!730193 m!683847))

(declare-fun m!683849 () Bool)

(assert (=> b!730191 m!683849))

(declare-fun m!683851 () Bool)

(assert (=> b!730186 m!683851))

(assert (=> b!730180 m!683821))

(assert (=> b!730180 m!683821))

(declare-fun m!683853 () Bool)

(assert (=> b!730180 m!683853))

(assert (=> b!730180 m!683853))

(assert (=> b!730180 m!683821))

(declare-fun m!683855 () Bool)

(assert (=> b!730180 m!683855))

(declare-fun m!683857 () Bool)

(assert (=> b!730179 m!683857))

(declare-fun m!683859 () Bool)

(assert (=> b!730179 m!683859))

(assert (=> b!730177 m!683821))

(assert (=> b!730177 m!683821))

(declare-fun m!683861 () Bool)

(assert (=> b!730177 m!683861))

(assert (=> b!730188 m!683821))

(assert (=> b!730188 m!683821))

(declare-fun m!683863 () Bool)

(assert (=> b!730188 m!683863))

(assert (=> b!730192 m!683821))

(assert (=> b!730192 m!683821))

(declare-fun m!683865 () Bool)

(assert (=> b!730192 m!683865))

(declare-fun m!683867 () Bool)

(assert (=> b!730184 m!683867))

(push 1)

(assert (not b!730187))

(assert (not b!730184))

(assert (not b!730191))

(assert (not b!730181))

(assert (not b!730193))

(assert (not b!730186))

(assert (not b!730182))

(assert (not b!730179))

(assert (not b!730192))

(assert (not b!730178))

(assert (not b!730188))

(assert (not start!64742))

(assert (not b!730180))

(assert (not b!730177))

(assert (not b!730176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

