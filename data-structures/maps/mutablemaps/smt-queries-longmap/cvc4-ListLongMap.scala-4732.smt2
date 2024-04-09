; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65474 () Bool)

(assert start!65474)

(declare-datatypes ((array!41600 0))(
  ( (array!41601 (arr!19910 (Array (_ BitVec 32) (_ BitVec 64))) (size!20331 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41600)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!745641 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!416469 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7517 0))(
  ( (MissingZero!7517 (index!32435 (_ BitVec 32))) (Found!7517 (index!32436 (_ BitVec 32))) (Intermediate!7517 (undefined!8329 Bool) (index!32437 (_ BitVec 32)) (x!63412 (_ BitVec 32))) (Undefined!7517) (MissingVacant!7517 (index!32438 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41600 (_ BitVec 32)) SeekEntryResult!7517)

(assert (=> b!745641 (= e!416469 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19910 a!3186) j!159) a!3186 mask!3328) (Found!7517 j!159)))))

(declare-fun b!745642 () Bool)

(declare-fun e!416467 () Bool)

(declare-fun e!416462 () Bool)

(assert (=> b!745642 (= e!416467 e!416462)))

(declare-fun res!502629 () Bool)

(assert (=> b!745642 (=> (not res!502629) (not e!416462))))

(declare-fun lt!331307 () SeekEntryResult!7517)

(declare-fun lt!331309 () SeekEntryResult!7517)

(assert (=> b!745642 (= res!502629 (= lt!331307 lt!331309))))

(declare-fun lt!331314 () array!41600)

(declare-fun lt!331315 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41600 (_ BitVec 32)) SeekEntryResult!7517)

(assert (=> b!745642 (= lt!331309 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331315 lt!331314 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745642 (= lt!331307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331315 mask!3328) lt!331315 lt!331314 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!745642 (= lt!331315 (select (store (arr!19910 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745642 (= lt!331314 (array!41601 (store (arr!19910 a!3186) i!1173 k!2102) (size!20331 a!3186)))))

(declare-fun e!416466 () Bool)

(declare-fun b!745643 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!331310 () SeekEntryResult!7517)

(assert (=> b!745643 (= e!416466 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19910 a!3186) j!159) a!3186 mask!3328) lt!331310))))

(declare-fun b!745644 () Bool)

(declare-fun e!416461 () Bool)

(assert (=> b!745644 (= e!416461 true)))

(declare-fun lt!331316 () SeekEntryResult!7517)

(declare-fun lt!331311 () SeekEntryResult!7517)

(assert (=> b!745644 (= lt!331316 lt!331311)))

(declare-fun b!745646 () Bool)

(declare-fun res!502626 () Bool)

(declare-fun e!416464 () Bool)

(assert (=> b!745646 (=> (not res!502626) (not e!416464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41600 (_ BitVec 32)) Bool)

(assert (=> b!745646 (= res!502626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745647 () Bool)

(declare-fun e!416463 () Bool)

(assert (=> b!745647 (= e!416463 e!416461)))

(declare-fun res!502628 () Bool)

(assert (=> b!745647 (=> res!502628 e!416461)))

(assert (=> b!745647 (= res!502628 (or (not (= lt!331311 lt!331310)) (= (select (store (arr!19910 a!3186) i!1173 k!2102) index!1321) lt!331315) (not (= (select (store (arr!19910 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745647 (= lt!331311 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19910 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745648 () Bool)

(declare-fun res!502631 () Bool)

(declare-fun e!416468 () Bool)

(assert (=> b!745648 (=> (not res!502631) (not e!416468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745648 (= res!502631 (validKeyInArray!0 k!2102))))

(declare-fun b!745649 () Bool)

(declare-fun res!502623 () Bool)

(assert (=> b!745649 (=> (not res!502623) (not e!416464))))

(assert (=> b!745649 (= res!502623 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20331 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20331 a!3186))))))

(declare-fun b!745650 () Bool)

(assert (=> b!745650 (= e!416468 e!416464)))

(declare-fun res!502635 () Bool)

(assert (=> b!745650 (=> (not res!502635) (not e!416464))))

(declare-fun lt!331312 () SeekEntryResult!7517)

(assert (=> b!745650 (= res!502635 (or (= lt!331312 (MissingZero!7517 i!1173)) (= lt!331312 (MissingVacant!7517 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41600 (_ BitVec 32)) SeekEntryResult!7517)

(assert (=> b!745650 (= lt!331312 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745651 () Bool)

(declare-fun res!502632 () Bool)

(assert (=> b!745651 (=> (not res!502632) (not e!416467))))

(assert (=> b!745651 (= res!502632 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19910 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745652 () Bool)

(declare-fun res!502634 () Bool)

(assert (=> b!745652 (=> (not res!502634) (not e!416467))))

(assert (=> b!745652 (= res!502634 e!416469)))

(declare-fun c!81891 () Bool)

(assert (=> b!745652 (= c!81891 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745653 () Bool)

(declare-fun res!502620 () Bool)

(assert (=> b!745653 (=> (not res!502620) (not e!416464))))

(declare-datatypes ((List!13965 0))(
  ( (Nil!13962) (Cons!13961 (h!15033 (_ BitVec 64)) (t!20288 List!13965)) )
))
(declare-fun arrayNoDuplicates!0 (array!41600 (_ BitVec 32) List!13965) Bool)

(assert (=> b!745653 (= res!502620 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13962))))

(declare-fun b!745654 () Bool)

(declare-fun res!502625 () Bool)

(assert (=> b!745654 (=> (not res!502625) (not e!416468))))

(declare-fun arrayContainsKey!0 (array!41600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745654 (= res!502625 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745645 () Bool)

(assert (=> b!745645 (= e!416464 e!416467)))

(declare-fun res!502633 () Bool)

(assert (=> b!745645 (=> (not res!502633) (not e!416467))))

(declare-fun lt!331313 () SeekEntryResult!7517)

(assert (=> b!745645 (= res!502633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19910 a!3186) j!159) mask!3328) (select (arr!19910 a!3186) j!159) a!3186 mask!3328) lt!331313))))

(assert (=> b!745645 (= lt!331313 (Intermediate!7517 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!502627 () Bool)

(assert (=> start!65474 (=> (not res!502627) (not e!416468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65474 (= res!502627 (validMask!0 mask!3328))))

(assert (=> start!65474 e!416468))

(assert (=> start!65474 true))

(declare-fun array_inv!15684 (array!41600) Bool)

(assert (=> start!65474 (array_inv!15684 a!3186)))

(declare-fun b!745655 () Bool)

(assert (=> b!745655 (= e!416469 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19910 a!3186) j!159) a!3186 mask!3328) lt!331313))))

(declare-fun b!745656 () Bool)

(declare-fun res!502624 () Bool)

(assert (=> b!745656 (=> (not res!502624) (not e!416468))))

(assert (=> b!745656 (= res!502624 (and (= (size!20331 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20331 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20331 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745657 () Bool)

(declare-fun res!502621 () Bool)

(assert (=> b!745657 (=> (not res!502621) (not e!416468))))

(assert (=> b!745657 (= res!502621 (validKeyInArray!0 (select (arr!19910 a!3186) j!159)))))

(declare-fun b!745658 () Bool)

(assert (=> b!745658 (= e!416462 (not e!416463))))

(declare-fun res!502630 () Bool)

(assert (=> b!745658 (=> res!502630 e!416463)))

(assert (=> b!745658 (= res!502630 (or (not (is-Intermediate!7517 lt!331309)) (bvslt x!1131 (x!63412 lt!331309)) (not (= x!1131 (x!63412 lt!331309))) (not (= index!1321 (index!32437 lt!331309)))))))

(assert (=> b!745658 e!416466))

(declare-fun res!502622 () Bool)

(assert (=> b!745658 (=> (not res!502622) (not e!416466))))

(assert (=> b!745658 (= res!502622 (= lt!331316 lt!331310))))

(assert (=> b!745658 (= lt!331310 (Found!7517 j!159))))

(assert (=> b!745658 (= lt!331316 (seekEntryOrOpen!0 (select (arr!19910 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745658 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25514 0))(
  ( (Unit!25515) )
))
(declare-fun lt!331308 () Unit!25514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25514)

(assert (=> b!745658 (= lt!331308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65474 res!502627) b!745656))

(assert (= (and b!745656 res!502624) b!745657))

(assert (= (and b!745657 res!502621) b!745648))

(assert (= (and b!745648 res!502631) b!745654))

(assert (= (and b!745654 res!502625) b!745650))

(assert (= (and b!745650 res!502635) b!745646))

(assert (= (and b!745646 res!502626) b!745653))

(assert (= (and b!745653 res!502620) b!745649))

(assert (= (and b!745649 res!502623) b!745645))

(assert (= (and b!745645 res!502633) b!745651))

(assert (= (and b!745651 res!502632) b!745652))

(assert (= (and b!745652 c!81891) b!745655))

(assert (= (and b!745652 (not c!81891)) b!745641))

(assert (= (and b!745652 res!502634) b!745642))

(assert (= (and b!745642 res!502629) b!745658))

(assert (= (and b!745658 res!502622) b!745643))

(assert (= (and b!745658 (not res!502630)) b!745647))

(assert (= (and b!745647 (not res!502628)) b!745644))

(declare-fun m!696073 () Bool)

(assert (=> b!745658 m!696073))

(assert (=> b!745658 m!696073))

(declare-fun m!696075 () Bool)

(assert (=> b!745658 m!696075))

(declare-fun m!696077 () Bool)

(assert (=> b!745658 m!696077))

(declare-fun m!696079 () Bool)

(assert (=> b!745658 m!696079))

(assert (=> b!745645 m!696073))

(assert (=> b!745645 m!696073))

(declare-fun m!696081 () Bool)

(assert (=> b!745645 m!696081))

(assert (=> b!745645 m!696081))

(assert (=> b!745645 m!696073))

(declare-fun m!696083 () Bool)

(assert (=> b!745645 m!696083))

(declare-fun m!696085 () Bool)

(assert (=> b!745648 m!696085))

(assert (=> b!745655 m!696073))

(assert (=> b!745655 m!696073))

(declare-fun m!696087 () Bool)

(assert (=> b!745655 m!696087))

(declare-fun m!696089 () Bool)

(assert (=> b!745650 m!696089))

(declare-fun m!696091 () Bool)

(assert (=> start!65474 m!696091))

(declare-fun m!696093 () Bool)

(assert (=> start!65474 m!696093))

(declare-fun m!696095 () Bool)

(assert (=> b!745651 m!696095))

(assert (=> b!745657 m!696073))

(assert (=> b!745657 m!696073))

(declare-fun m!696097 () Bool)

(assert (=> b!745657 m!696097))

(declare-fun m!696099 () Bool)

(assert (=> b!745653 m!696099))

(assert (=> b!745641 m!696073))

(assert (=> b!745641 m!696073))

(declare-fun m!696101 () Bool)

(assert (=> b!745641 m!696101))

(declare-fun m!696103 () Bool)

(assert (=> b!745646 m!696103))

(declare-fun m!696105 () Bool)

(assert (=> b!745642 m!696105))

(declare-fun m!696107 () Bool)

(assert (=> b!745642 m!696107))

(declare-fun m!696109 () Bool)

(assert (=> b!745642 m!696109))

(declare-fun m!696111 () Bool)

(assert (=> b!745642 m!696111))

(assert (=> b!745642 m!696105))

(declare-fun m!696113 () Bool)

(assert (=> b!745642 m!696113))

(declare-fun m!696115 () Bool)

(assert (=> b!745654 m!696115))

(assert (=> b!745643 m!696073))

(assert (=> b!745643 m!696073))

(declare-fun m!696117 () Bool)

(assert (=> b!745643 m!696117))

(assert (=> b!745647 m!696111))

(declare-fun m!696119 () Bool)

(assert (=> b!745647 m!696119))

(assert (=> b!745647 m!696073))

(assert (=> b!745647 m!696073))

(assert (=> b!745647 m!696101))

(push 1)

