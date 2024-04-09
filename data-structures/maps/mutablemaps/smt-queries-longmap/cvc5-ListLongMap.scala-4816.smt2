; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66254 () Bool)

(assert start!66254)

(declare-fun b!762723 () Bool)

(declare-fun res!515952 () Bool)

(declare-fun e!425095 () Bool)

(assert (=> b!762723 (=> (not res!515952) (not e!425095))))

(declare-datatypes ((array!42112 0))(
  ( (array!42113 (arr!20160 (Array (_ BitVec 32) (_ BitVec 64))) (size!20581 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42112)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!762723 (= res!515952 (and (= (size!20581 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20581 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20581 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762724 () Bool)

(declare-fun res!515947 () Bool)

(assert (=> b!762724 (=> (not res!515947) (not e!425095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762724 (= res!515947 (validKeyInArray!0 (select (arr!20160 a!3186) j!159)))))

(declare-fun b!762725 () Bool)

(declare-fun e!425099 () Bool)

(assert (=> b!762725 (= e!425099 false)))

(declare-fun lt!339620 () Bool)

(declare-fun e!425098 () Bool)

(assert (=> b!762725 (= lt!339620 e!425098)))

(declare-fun c!83775 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762725 (= c!83775 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762726 () Bool)

(declare-fun e!425097 () Bool)

(assert (=> b!762726 (= e!425095 e!425097)))

(declare-fun res!515949 () Bool)

(assert (=> b!762726 (=> (not res!515949) (not e!425097))))

(declare-datatypes ((SeekEntryResult!7767 0))(
  ( (MissingZero!7767 (index!33435 (_ BitVec 32))) (Found!7767 (index!33436 (_ BitVec 32))) (Intermediate!7767 (undefined!8579 Bool) (index!33437 (_ BitVec 32)) (x!64372 (_ BitVec 32))) (Undefined!7767) (MissingVacant!7767 (index!33438 (_ BitVec 32))) )
))
(declare-fun lt!339621 () SeekEntryResult!7767)

(assert (=> b!762726 (= res!515949 (or (= lt!339621 (MissingZero!7767 i!1173)) (= lt!339621 (MissingVacant!7767 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42112 (_ BitVec 32)) SeekEntryResult!7767)

(assert (=> b!762726 (= lt!339621 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762727 () Bool)

(declare-fun res!515951 () Bool)

(assert (=> b!762727 (=> (not res!515951) (not e!425097))))

(declare-datatypes ((List!14215 0))(
  ( (Nil!14212) (Cons!14211 (h!15295 (_ BitVec 64)) (t!20538 List!14215)) )
))
(declare-fun arrayNoDuplicates!0 (array!42112 (_ BitVec 32) List!14215) Bool)

(assert (=> b!762727 (= res!515951 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14212))))

(declare-fun b!762728 () Bool)

(declare-fun res!515948 () Bool)

(assert (=> b!762728 (=> (not res!515948) (not e!425095))))

(declare-fun arrayContainsKey!0 (array!42112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762728 (= res!515948 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!762729 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42112 (_ BitVec 32)) SeekEntryResult!7767)

(assert (=> b!762729 (= e!425098 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20160 a!3186) j!159) a!3186 mask!3328) (Found!7767 j!159))))))

(declare-fun b!762722 () Bool)

(declare-fun res!515954 () Bool)

(assert (=> b!762722 (=> (not res!515954) (not e!425097))))

(assert (=> b!762722 (= res!515954 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20581 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20581 a!3186))))))

(declare-fun res!515950 () Bool)

(assert (=> start!66254 (=> (not res!515950) (not e!425095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66254 (= res!515950 (validMask!0 mask!3328))))

(assert (=> start!66254 e!425095))

(assert (=> start!66254 true))

(declare-fun array_inv!15934 (array!42112) Bool)

(assert (=> start!66254 (array_inv!15934 a!3186)))

(declare-fun b!762730 () Bool)

(declare-fun res!515946 () Bool)

(assert (=> b!762730 (=> (not res!515946) (not e!425095))))

(assert (=> b!762730 (= res!515946 (validKeyInArray!0 k!2102))))

(declare-fun b!762731 () Bool)

(declare-fun res!515955 () Bool)

(assert (=> b!762731 (=> (not res!515955) (not e!425099))))

(assert (=> b!762731 (= res!515955 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20160 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762732 () Bool)

(assert (=> b!762732 (= e!425097 e!425099)))

(declare-fun res!515945 () Bool)

(assert (=> b!762732 (=> (not res!515945) (not e!425099))))

(declare-fun lt!339622 () SeekEntryResult!7767)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42112 (_ BitVec 32)) SeekEntryResult!7767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762732 (= res!515945 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20160 a!3186) j!159) mask!3328) (select (arr!20160 a!3186) j!159) a!3186 mask!3328) lt!339622))))

(assert (=> b!762732 (= lt!339622 (Intermediate!7767 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762733 () Bool)

(declare-fun res!515953 () Bool)

(assert (=> b!762733 (=> (not res!515953) (not e!425097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42112 (_ BitVec 32)) Bool)

(assert (=> b!762733 (= res!515953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762734 () Bool)

(assert (=> b!762734 (= e!425098 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20160 a!3186) j!159) a!3186 mask!3328) lt!339622)))))

(assert (= (and start!66254 res!515950) b!762723))

(assert (= (and b!762723 res!515952) b!762724))

(assert (= (and b!762724 res!515947) b!762730))

(assert (= (and b!762730 res!515946) b!762728))

(assert (= (and b!762728 res!515948) b!762726))

(assert (= (and b!762726 res!515949) b!762733))

(assert (= (and b!762733 res!515953) b!762727))

(assert (= (and b!762727 res!515951) b!762722))

(assert (= (and b!762722 res!515954) b!762732))

(assert (= (and b!762732 res!515945) b!762731))

(assert (= (and b!762731 res!515955) b!762725))

(assert (= (and b!762725 c!83775) b!762734))

(assert (= (and b!762725 (not c!83775)) b!762729))

(declare-fun m!709427 () Bool)

(assert (=> b!762729 m!709427))

(assert (=> b!762729 m!709427))

(declare-fun m!709429 () Bool)

(assert (=> b!762729 m!709429))

(assert (=> b!762724 m!709427))

(assert (=> b!762724 m!709427))

(declare-fun m!709431 () Bool)

(assert (=> b!762724 m!709431))

(declare-fun m!709433 () Bool)

(assert (=> b!762733 m!709433))

(assert (=> b!762734 m!709427))

(assert (=> b!762734 m!709427))

(declare-fun m!709435 () Bool)

(assert (=> b!762734 m!709435))

(declare-fun m!709437 () Bool)

(assert (=> start!66254 m!709437))

(declare-fun m!709439 () Bool)

(assert (=> start!66254 m!709439))

(assert (=> b!762732 m!709427))

(assert (=> b!762732 m!709427))

(declare-fun m!709441 () Bool)

(assert (=> b!762732 m!709441))

(assert (=> b!762732 m!709441))

(assert (=> b!762732 m!709427))

(declare-fun m!709443 () Bool)

(assert (=> b!762732 m!709443))

(declare-fun m!709445 () Bool)

(assert (=> b!762728 m!709445))

(declare-fun m!709447 () Bool)

(assert (=> b!762726 m!709447))

(declare-fun m!709449 () Bool)

(assert (=> b!762727 m!709449))

(declare-fun m!709451 () Bool)

(assert (=> b!762731 m!709451))

(declare-fun m!709453 () Bool)

(assert (=> b!762730 m!709453))

(push 1)

