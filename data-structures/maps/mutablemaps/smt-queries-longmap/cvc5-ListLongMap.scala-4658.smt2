; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64738 () Bool)

(assert start!64738)

(declare-fun res!490533 () Bool)

(declare-fun e!408599 () Bool)

(assert (=> start!64738 (=> (not res!490533) (not e!408599))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64738 (= res!490533 (validMask!0 mask!3328))))

(assert (=> start!64738 e!408599))

(assert (=> start!64738 true))

(declare-datatypes ((array!41140 0))(
  ( (array!41141 (arr!19686 (Array (_ BitVec 32) (_ BitVec 64))) (size!20107 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41140)

(declare-fun array_inv!15460 (array!41140) Bool)

(assert (=> start!64738 (array_inv!15460 a!3186)))

(declare-fun b!730068 () Bool)

(declare-fun e!408597 () Bool)

(declare-fun e!408602 () Bool)

(assert (=> b!730068 (= e!408597 e!408602)))

(declare-fun res!490536 () Bool)

(assert (=> b!730068 (=> (not res!490536) (not e!408602))))

(declare-datatypes ((SeekEntryResult!7293 0))(
  ( (MissingZero!7293 (index!31539 (_ BitVec 32))) (Found!7293 (index!31540 (_ BitVec 32))) (Intermediate!7293 (undefined!8105 Bool) (index!31541 (_ BitVec 32)) (x!62548 (_ BitVec 32))) (Undefined!7293) (MissingVacant!7293 (index!31542 (_ BitVec 32))) )
))
(declare-fun lt!323505 () SeekEntryResult!7293)

(declare-fun lt!323510 () SeekEntryResult!7293)

(assert (=> b!730068 (= res!490536 (= lt!323505 lt!323510))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!323504 () array!41140)

(declare-fun lt!323509 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41140 (_ BitVec 32)) SeekEntryResult!7293)

(assert (=> b!730068 (= lt!323510 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323509 lt!323504 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730068 (= lt!323505 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323509 mask!3328) lt!323509 lt!323504 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!730068 (= lt!323509 (select (store (arr!19686 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730068 (= lt!323504 (array!41141 (store (arr!19686 a!3186) i!1173 k!2102) (size!20107 a!3186)))))

(declare-fun b!730069 () Bool)

(declare-fun res!490542 () Bool)

(declare-fun e!408601 () Bool)

(assert (=> b!730069 (=> (not res!490542) (not e!408601))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730069 (= res!490542 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20107 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20107 a!3186))))))

(declare-fun b!730070 () Bool)

(declare-fun res!490539 () Bool)

(assert (=> b!730070 (=> (not res!490539) (not e!408599))))

(declare-fun arrayContainsKey!0 (array!41140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730070 (= res!490539 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730071 () Bool)

(assert (=> b!730071 (= e!408601 e!408597)))

(declare-fun res!490528 () Bool)

(assert (=> b!730071 (=> (not res!490528) (not e!408597))))

(declare-fun lt!323506 () SeekEntryResult!7293)

(assert (=> b!730071 (= res!490528 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19686 a!3186) j!159) mask!3328) (select (arr!19686 a!3186) j!159) a!3186 mask!3328) lt!323506))))

(assert (=> b!730071 (= lt!323506 (Intermediate!7293 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730072 () Bool)

(assert (=> b!730072 (= e!408599 e!408601)))

(declare-fun res!490538 () Bool)

(assert (=> b!730072 (=> (not res!490538) (not e!408601))))

(declare-fun lt!323502 () SeekEntryResult!7293)

(assert (=> b!730072 (= res!490538 (or (= lt!323502 (MissingZero!7293 i!1173)) (= lt!323502 (MissingVacant!7293 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41140 (_ BitVec 32)) SeekEntryResult!7293)

(assert (=> b!730072 (= lt!323502 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730073 () Bool)

(declare-fun res!490530 () Bool)

(assert (=> b!730073 (=> (not res!490530) (not e!408601))))

(declare-datatypes ((List!13741 0))(
  ( (Nil!13738) (Cons!13737 (h!14797 (_ BitVec 64)) (t!20064 List!13741)) )
))
(declare-fun arrayNoDuplicates!0 (array!41140 (_ BitVec 32) List!13741) Bool)

(assert (=> b!730073 (= res!490530 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13738))))

(declare-fun b!730074 () Bool)

(declare-fun res!490537 () Bool)

(assert (=> b!730074 (=> (not res!490537) (not e!408599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730074 (= res!490537 (validKeyInArray!0 (select (arr!19686 a!3186) j!159)))))

(declare-fun b!730075 () Bool)

(declare-fun e!408600 () Bool)

(declare-fun e!408596 () Bool)

(assert (=> b!730075 (= e!408600 e!408596)))

(declare-fun res!490529 () Bool)

(assert (=> b!730075 (=> (not res!490529) (not e!408596))))

(declare-fun lt!323508 () SeekEntryResult!7293)

(assert (=> b!730075 (= res!490529 (= (seekEntryOrOpen!0 (select (arr!19686 a!3186) j!159) a!3186 mask!3328) lt!323508))))

(assert (=> b!730075 (= lt!323508 (Found!7293 j!159))))

(declare-fun b!730076 () Bool)

(declare-fun res!490540 () Bool)

(assert (=> b!730076 (=> (not res!490540) (not e!408601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41140 (_ BitVec 32)) Bool)

(assert (=> b!730076 (= res!490540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730077 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41140 (_ BitVec 32)) SeekEntryResult!7293)

(assert (=> b!730077 (= e!408596 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19686 a!3186) j!159) a!3186 mask!3328) lt!323508))))

(declare-fun b!730078 () Bool)

(declare-fun res!490541 () Bool)

(assert (=> b!730078 (=> (not res!490541) (not e!408599))))

(assert (=> b!730078 (= res!490541 (and (= (size!20107 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20107 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20107 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730079 () Bool)

(declare-fun e!408595 () Bool)

(assert (=> b!730079 (= e!408595 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19686 a!3186) j!159) a!3186 mask!3328) (Found!7293 j!159)))))

(declare-fun b!730080 () Bool)

(declare-fun res!490535 () Bool)

(assert (=> b!730080 (=> (not res!490535) (not e!408597))))

(assert (=> b!730080 (= res!490535 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19686 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730081 () Bool)

(declare-fun res!490531 () Bool)

(assert (=> b!730081 (=> (not res!490531) (not e!408597))))

(assert (=> b!730081 (= res!490531 e!408595)))

(declare-fun c!80145 () Bool)

(assert (=> b!730081 (= c!80145 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730082 () Bool)

(declare-fun res!490534 () Bool)

(assert (=> b!730082 (=> (not res!490534) (not e!408599))))

(assert (=> b!730082 (= res!490534 (validKeyInArray!0 k!2102))))

(declare-fun b!730083 () Bool)

(declare-fun e!408603 () Bool)

(assert (=> b!730083 (= e!408603 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!323503 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730083 (= lt!323503 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730084 () Bool)

(assert (=> b!730084 (= e!408602 (not e!408603))))

(declare-fun res!490527 () Bool)

(assert (=> b!730084 (=> res!490527 e!408603)))

(assert (=> b!730084 (= res!490527 (or (not (is-Intermediate!7293 lt!323510)) (bvsge x!1131 (x!62548 lt!323510))))))

(assert (=> b!730084 e!408600))

(declare-fun res!490532 () Bool)

(assert (=> b!730084 (=> (not res!490532) (not e!408600))))

(assert (=> b!730084 (= res!490532 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24904 0))(
  ( (Unit!24905) )
))
(declare-fun lt!323507 () Unit!24904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24904)

(assert (=> b!730084 (= lt!323507 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730085 () Bool)

(assert (=> b!730085 (= e!408595 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19686 a!3186) j!159) a!3186 mask!3328) lt!323506))))

(assert (= (and start!64738 res!490533) b!730078))

(assert (= (and b!730078 res!490541) b!730074))

(assert (= (and b!730074 res!490537) b!730082))

(assert (= (and b!730082 res!490534) b!730070))

(assert (= (and b!730070 res!490539) b!730072))

(assert (= (and b!730072 res!490538) b!730076))

(assert (= (and b!730076 res!490540) b!730073))

(assert (= (and b!730073 res!490530) b!730069))

(assert (= (and b!730069 res!490542) b!730071))

(assert (= (and b!730071 res!490528) b!730080))

(assert (= (and b!730080 res!490535) b!730081))

(assert (= (and b!730081 c!80145) b!730085))

(assert (= (and b!730081 (not c!80145)) b!730079))

(assert (= (and b!730081 res!490531) b!730068))

(assert (= (and b!730068 res!490536) b!730084))

(assert (= (and b!730084 res!490532) b!730075))

(assert (= (and b!730075 res!490529) b!730077))

(assert (= (and b!730084 (not res!490527)) b!730083))

(declare-fun m!683725 () Bool)

(assert (=> b!730075 m!683725))

(assert (=> b!730075 m!683725))

(declare-fun m!683727 () Bool)

(assert (=> b!730075 m!683727))

(assert (=> b!730074 m!683725))

(assert (=> b!730074 m!683725))

(declare-fun m!683729 () Bool)

(assert (=> b!730074 m!683729))

(declare-fun m!683731 () Bool)

(assert (=> b!730070 m!683731))

(declare-fun m!683733 () Bool)

(assert (=> start!64738 m!683733))

(declare-fun m!683735 () Bool)

(assert (=> start!64738 m!683735))

(assert (=> b!730079 m!683725))

(assert (=> b!730079 m!683725))

(declare-fun m!683737 () Bool)

(assert (=> b!730079 m!683737))

(declare-fun m!683739 () Bool)

(assert (=> b!730073 m!683739))

(assert (=> b!730085 m!683725))

(assert (=> b!730085 m!683725))

(declare-fun m!683741 () Bool)

(assert (=> b!730085 m!683741))

(assert (=> b!730077 m!683725))

(assert (=> b!730077 m!683725))

(declare-fun m!683743 () Bool)

(assert (=> b!730077 m!683743))

(declare-fun m!683745 () Bool)

(assert (=> b!730083 m!683745))

(declare-fun m!683747 () Bool)

(assert (=> b!730082 m!683747))

(declare-fun m!683749 () Bool)

(assert (=> b!730084 m!683749))

(declare-fun m!683751 () Bool)

(assert (=> b!730084 m!683751))

(declare-fun m!683753 () Bool)

(assert (=> b!730068 m!683753))

(declare-fun m!683755 () Bool)

(assert (=> b!730068 m!683755))

(assert (=> b!730068 m!683753))

(declare-fun m!683757 () Bool)

(assert (=> b!730068 m!683757))

(declare-fun m!683759 () Bool)

(assert (=> b!730068 m!683759))

(declare-fun m!683761 () Bool)

(assert (=> b!730068 m!683761))

(assert (=> b!730071 m!683725))

(assert (=> b!730071 m!683725))

(declare-fun m!683763 () Bool)

(assert (=> b!730071 m!683763))

(assert (=> b!730071 m!683763))

(assert (=> b!730071 m!683725))

(declare-fun m!683765 () Bool)

(assert (=> b!730071 m!683765))

(declare-fun m!683767 () Bool)

(assert (=> b!730076 m!683767))

(declare-fun m!683769 () Bool)

(assert (=> b!730080 m!683769))

(declare-fun m!683771 () Bool)

(assert (=> b!730072 m!683771))

(push 1)

(assert (not b!730073))

(assert (not start!64738))

(assert (not b!730074))

(assert (not b!730082))

(assert (not b!730076))

(assert (not b!730083))

(assert (not b!730070))

(assert (not b!730075))

(assert (not b!730072))

(assert (not b!730077))

(assert (not b!730071))

(assert (not b!730079))

(assert (not b!730068))

(assert (not b!730084))

(assert (not b!730085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

