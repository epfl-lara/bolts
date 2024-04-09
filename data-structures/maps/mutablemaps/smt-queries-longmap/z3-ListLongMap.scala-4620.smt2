; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64374 () Bool)

(assert start!64374)

(declare-fun b!723387 () Bool)

(declare-fun e!405287 () Bool)

(assert (=> b!723387 (= e!405287 (not true))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((array!40908 0))(
  ( (array!40909 (arr!19573 (Array (_ BitVec 32) (_ BitVec 64))) (size!19994 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40908)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40908 (_ BitVec 32)) Bool)

(assert (=> b!723387 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24678 0))(
  ( (Unit!24679) )
))
(declare-fun lt!320658 () Unit!24678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40908 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24678)

(assert (=> b!723387 (= lt!320658 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!485100 () Bool)

(declare-fun e!405288 () Bool)

(assert (=> start!64374 (=> (not res!485100) (not e!405288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64374 (= res!485100 (validMask!0 mask!3328))))

(assert (=> start!64374 e!405288))

(assert (=> start!64374 true))

(declare-fun array_inv!15347 (array!40908) Bool)

(assert (=> start!64374 (array_inv!15347 a!3186)))

(declare-fun b!723388 () Bool)

(declare-fun res!485088 () Bool)

(declare-fun e!405286 () Bool)

(assert (=> b!723388 (=> (not res!485088) (not e!405286))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723388 (= res!485088 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19994 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19994 a!3186))))))

(declare-fun b!723389 () Bool)

(assert (=> b!723389 (= e!405288 e!405286)))

(declare-fun res!485090 () Bool)

(assert (=> b!723389 (=> (not res!485090) (not e!405286))))

(declare-datatypes ((SeekEntryResult!7180 0))(
  ( (MissingZero!7180 (index!31087 (_ BitVec 32))) (Found!7180 (index!31088 (_ BitVec 32))) (Intermediate!7180 (undefined!7992 Bool) (index!31089 (_ BitVec 32)) (x!62110 (_ BitVec 32))) (Undefined!7180) (MissingVacant!7180 (index!31090 (_ BitVec 32))) )
))
(declare-fun lt!320659 () SeekEntryResult!7180)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723389 (= res!485090 (or (= lt!320659 (MissingZero!7180 i!1173)) (= lt!320659 (MissingVacant!7180 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40908 (_ BitVec 32)) SeekEntryResult!7180)

(assert (=> b!723389 (= lt!320659 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723390 () Bool)

(declare-fun res!485098 () Bool)

(declare-fun e!405290 () Bool)

(assert (=> b!723390 (=> (not res!485098) (not e!405290))))

(declare-fun e!405289 () Bool)

(assert (=> b!723390 (= res!485098 e!405289)))

(declare-fun c!79521 () Bool)

(assert (=> b!723390 (= c!79521 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723391 () Bool)

(declare-fun res!485096 () Bool)

(assert (=> b!723391 (=> (not res!485096) (not e!405286))))

(declare-datatypes ((List!13628 0))(
  ( (Nil!13625) (Cons!13624 (h!14678 (_ BitVec 64)) (t!19951 List!13628)) )
))
(declare-fun arrayNoDuplicates!0 (array!40908 (_ BitVec 32) List!13628) Bool)

(assert (=> b!723391 (= res!485096 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13625))))

(declare-fun b!723392 () Bool)

(declare-fun res!485095 () Bool)

(assert (=> b!723392 (=> (not res!485095) (not e!405290))))

(assert (=> b!723392 (= res!485095 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19573 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723393 () Bool)

(declare-fun res!485097 () Bool)

(assert (=> b!723393 (=> (not res!485097) (not e!405288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723393 (= res!485097 (validKeyInArray!0 k0!2102))))

(declare-fun b!723394 () Bool)

(declare-fun lt!320656 () SeekEntryResult!7180)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40908 (_ BitVec 32)) SeekEntryResult!7180)

(assert (=> b!723394 (= e!405289 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19573 a!3186) j!159) a!3186 mask!3328) lt!320656))))

(declare-fun b!723395 () Bool)

(declare-fun res!485092 () Bool)

(assert (=> b!723395 (=> (not res!485092) (not e!405286))))

(assert (=> b!723395 (= res!485092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723396 () Bool)

(declare-fun res!485093 () Bool)

(assert (=> b!723396 (=> (not res!485093) (not e!405288))))

(declare-fun arrayContainsKey!0 (array!40908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723396 (= res!485093 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723397 () Bool)

(declare-fun res!485091 () Bool)

(assert (=> b!723397 (=> (not res!485091) (not e!405288))))

(assert (=> b!723397 (= res!485091 (validKeyInArray!0 (select (arr!19573 a!3186) j!159)))))

(declare-fun b!723398 () Bool)

(declare-fun res!485094 () Bool)

(assert (=> b!723398 (=> (not res!485094) (not e!405288))))

(assert (=> b!723398 (= res!485094 (and (= (size!19994 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19994 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19994 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723399 () Bool)

(assert (=> b!723399 (= e!405290 e!405287)))

(declare-fun res!485099 () Bool)

(assert (=> b!723399 (=> (not res!485099) (not e!405287))))

(declare-fun lt!320660 () array!40908)

(declare-fun lt!320657 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723399 (= res!485099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320657 mask!3328) lt!320657 lt!320660 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320657 lt!320660 mask!3328)))))

(assert (=> b!723399 (= lt!320657 (select (store (arr!19573 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723399 (= lt!320660 (array!40909 (store (arr!19573 a!3186) i!1173 k0!2102) (size!19994 a!3186)))))

(declare-fun b!723400 () Bool)

(assert (=> b!723400 (= e!405286 e!405290)))

(declare-fun res!485089 () Bool)

(assert (=> b!723400 (=> (not res!485089) (not e!405290))))

(assert (=> b!723400 (= res!485089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19573 a!3186) j!159) mask!3328) (select (arr!19573 a!3186) j!159) a!3186 mask!3328) lt!320656))))

(assert (=> b!723400 (= lt!320656 (Intermediate!7180 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723401 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40908 (_ BitVec 32)) SeekEntryResult!7180)

(assert (=> b!723401 (= e!405289 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19573 a!3186) j!159) a!3186 mask!3328) (Found!7180 j!159)))))

(assert (= (and start!64374 res!485100) b!723398))

(assert (= (and b!723398 res!485094) b!723397))

(assert (= (and b!723397 res!485091) b!723393))

(assert (= (and b!723393 res!485097) b!723396))

(assert (= (and b!723396 res!485093) b!723389))

(assert (= (and b!723389 res!485090) b!723395))

(assert (= (and b!723395 res!485092) b!723391))

(assert (= (and b!723391 res!485096) b!723388))

(assert (= (and b!723388 res!485088) b!723400))

(assert (= (and b!723400 res!485089) b!723392))

(assert (= (and b!723392 res!485095) b!723390))

(assert (= (and b!723390 c!79521) b!723394))

(assert (= (and b!723390 (not c!79521)) b!723401))

(assert (= (and b!723390 res!485098) b!723399))

(assert (= (and b!723399 res!485099) b!723387))

(declare-fun m!677923 () Bool)

(assert (=> b!723397 m!677923))

(assert (=> b!723397 m!677923))

(declare-fun m!677925 () Bool)

(assert (=> b!723397 m!677925))

(assert (=> b!723394 m!677923))

(assert (=> b!723394 m!677923))

(declare-fun m!677927 () Bool)

(assert (=> b!723394 m!677927))

(declare-fun m!677929 () Bool)

(assert (=> b!723389 m!677929))

(declare-fun m!677931 () Bool)

(assert (=> b!723393 m!677931))

(declare-fun m!677933 () Bool)

(assert (=> b!723392 m!677933))

(declare-fun m!677935 () Bool)

(assert (=> b!723396 m!677935))

(declare-fun m!677937 () Bool)

(assert (=> start!64374 m!677937))

(declare-fun m!677939 () Bool)

(assert (=> start!64374 m!677939))

(declare-fun m!677941 () Bool)

(assert (=> b!723391 m!677941))

(assert (=> b!723400 m!677923))

(assert (=> b!723400 m!677923))

(declare-fun m!677943 () Bool)

(assert (=> b!723400 m!677943))

(assert (=> b!723400 m!677943))

(assert (=> b!723400 m!677923))

(declare-fun m!677945 () Bool)

(assert (=> b!723400 m!677945))

(declare-fun m!677947 () Bool)

(assert (=> b!723399 m!677947))

(declare-fun m!677949 () Bool)

(assert (=> b!723399 m!677949))

(declare-fun m!677951 () Bool)

(assert (=> b!723399 m!677951))

(declare-fun m!677953 () Bool)

(assert (=> b!723399 m!677953))

(assert (=> b!723399 m!677951))

(declare-fun m!677955 () Bool)

(assert (=> b!723399 m!677955))

(assert (=> b!723401 m!677923))

(assert (=> b!723401 m!677923))

(declare-fun m!677957 () Bool)

(assert (=> b!723401 m!677957))

(declare-fun m!677959 () Bool)

(assert (=> b!723395 m!677959))

(declare-fun m!677961 () Bool)

(assert (=> b!723387 m!677961))

(declare-fun m!677963 () Bool)

(assert (=> b!723387 m!677963))

(check-sat (not b!723393) (not b!723396) (not b!723391) (not b!723387) (not b!723389) (not b!723401) (not b!723397) (not b!723399) (not b!723400) (not b!723394) (not b!723395) (not start!64374))
(check-sat)
