; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47380 () Bool)

(assert start!47380)

(declare-fun b!520543 () Bool)

(declare-datatypes ((Unit!16106 0))(
  ( (Unit!16107) )
))
(declare-fun e!303760 () Unit!16106)

(declare-fun Unit!16108 () Unit!16106)

(assert (=> b!520543 (= e!303760 Unit!16108)))

(declare-fun lt!238475 () Unit!16106)

(declare-fun lt!238472 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4410 0))(
  ( (MissingZero!4410 (index!19843 (_ BitVec 32))) (Found!4410 (index!19844 (_ BitVec 32))) (Intermediate!4410 (undefined!5222 Bool) (index!19845 (_ BitVec 32)) (x!48863 (_ BitVec 32))) (Undefined!4410) (MissingVacant!4410 (index!19846 (_ BitVec 32))) )
))
(declare-fun lt!238478 () SeekEntryResult!4410)

(declare-datatypes ((array!33166 0))(
  ( (array!33167 (arr!15936 (Array (_ BitVec 32) (_ BitVec 64))) (size!16300 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33166)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33166 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16106)

(assert (=> b!520543 (= lt!238475 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238472 #b00000000000000000000000000000000 (index!19845 lt!238478) (x!48863 lt!238478) mask!3524))))

(declare-fun lt!238476 () (_ BitVec 64))

(declare-fun lt!238473 () array!33166)

(declare-fun res!318600 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33166 (_ BitVec 32)) SeekEntryResult!4410)

(assert (=> b!520543 (= res!318600 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238472 lt!238476 lt!238473 mask!3524) (Intermediate!4410 false (index!19845 lt!238478) (x!48863 lt!238478))))))

(declare-fun e!303759 () Bool)

(assert (=> b!520543 (=> (not res!318600) (not e!303759))))

(assert (=> b!520543 e!303759))

(declare-fun b!520544 () Bool)

(declare-fun res!318596 () Bool)

(declare-fun e!303762 () Bool)

(assert (=> b!520544 (=> (not res!318596) (not e!303762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520544 (= res!318596 (validKeyInArray!0 (select (arr!15936 a!3235) j!176)))))

(declare-fun b!520546 () Bool)

(assert (=> b!520546 (= e!303759 false)))

(declare-fun b!520547 () Bool)

(declare-fun res!318593 () Bool)

(declare-fun e!303757 () Bool)

(assert (=> b!520547 (=> res!318593 e!303757)))

(assert (=> b!520547 (= res!318593 (or (undefined!5222 lt!238478) (not (is-Intermediate!4410 lt!238478))))))

(declare-fun b!520548 () Bool)

(declare-fun res!318597 () Bool)

(assert (=> b!520548 (=> (not res!318597) (not e!303762))))

(assert (=> b!520548 (= res!318597 (validKeyInArray!0 k!2280))))

(declare-fun b!520549 () Bool)

(declare-fun e!303763 () Bool)

(assert (=> b!520549 (= e!303762 e!303763)))

(declare-fun res!318602 () Bool)

(assert (=> b!520549 (=> (not res!318602) (not e!303763))))

(declare-fun lt!238477 () SeekEntryResult!4410)

(assert (=> b!520549 (= res!318602 (or (= lt!238477 (MissingZero!4410 i!1204)) (= lt!238477 (MissingVacant!4410 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33166 (_ BitVec 32)) SeekEntryResult!4410)

(assert (=> b!520549 (= lt!238477 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520550 () Bool)

(declare-fun res!318599 () Bool)

(assert (=> b!520550 (=> (not res!318599) (not e!303763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33166 (_ BitVec 32)) Bool)

(assert (=> b!520550 (= res!318599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520551 () Bool)

(declare-fun res!318594 () Bool)

(assert (=> b!520551 (=> (not res!318594) (not e!303762))))

(assert (=> b!520551 (= res!318594 (and (= (size!16300 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16300 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16300 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520552 () Bool)

(declare-fun res!318591 () Bool)

(assert (=> b!520552 (=> (not res!318591) (not e!303763))))

(declare-datatypes ((List!10147 0))(
  ( (Nil!10144) (Cons!10143 (h!11065 (_ BitVec 64)) (t!16383 List!10147)) )
))
(declare-fun arrayNoDuplicates!0 (array!33166 (_ BitVec 32) List!10147) Bool)

(assert (=> b!520552 (= res!318591 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10144))))

(declare-fun b!520553 () Bool)

(assert (=> b!520553 (= e!303763 (not e!303757))))

(declare-fun res!318595 () Bool)

(assert (=> b!520553 (=> res!318595 e!303757)))

(declare-fun lt!238474 () (_ BitVec 32))

(assert (=> b!520553 (= res!318595 (= lt!238478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238474 lt!238476 lt!238473 mask!3524)))))

(assert (=> b!520553 (= lt!238478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238472 (select (arr!15936 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520553 (= lt!238474 (toIndex!0 lt!238476 mask!3524))))

(assert (=> b!520553 (= lt!238476 (select (store (arr!15936 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520553 (= lt!238472 (toIndex!0 (select (arr!15936 a!3235) j!176) mask!3524))))

(assert (=> b!520553 (= lt!238473 (array!33167 (store (arr!15936 a!3235) i!1204 k!2280) (size!16300 a!3235)))))

(declare-fun e!303761 () Bool)

(assert (=> b!520553 e!303761))

(declare-fun res!318598 () Bool)

(assert (=> b!520553 (=> (not res!318598) (not e!303761))))

(assert (=> b!520553 (= res!318598 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238471 () Unit!16106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16106)

(assert (=> b!520553 (= lt!238471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520554 () Bool)

(assert (=> b!520554 (= e!303761 (= (seekEntryOrOpen!0 (select (arr!15936 a!3235) j!176) a!3235 mask!3524) (Found!4410 j!176)))))

(declare-fun b!520555 () Bool)

(assert (=> b!520555 (= e!303757 (= (select (arr!15936 a!3235) (index!19845 lt!238478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520555 (and (or (= (select (arr!15936 a!3235) (index!19845 lt!238478)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15936 a!3235) (index!19845 lt!238478)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15936 a!3235) (index!19845 lt!238478)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!238470 () Unit!16106)

(assert (=> b!520555 (= lt!238470 e!303760)))

(declare-fun c!61277 () Bool)

(assert (=> b!520555 (= c!61277 (= (select (arr!15936 a!3235) (index!19845 lt!238478)) (select (arr!15936 a!3235) j!176)))))

(assert (=> b!520555 (and (bvslt (x!48863 lt!238478) #b01111111111111111111111111111110) (or (= (select (arr!15936 a!3235) (index!19845 lt!238478)) (select (arr!15936 a!3235) j!176)) (= (select (arr!15936 a!3235) (index!19845 lt!238478)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15936 a!3235) (index!19845 lt!238478)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520556 () Bool)

(declare-fun res!318592 () Bool)

(assert (=> b!520556 (=> (not res!318592) (not e!303762))))

(declare-fun arrayContainsKey!0 (array!33166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520556 (= res!318592 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!318601 () Bool)

(assert (=> start!47380 (=> (not res!318601) (not e!303762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47380 (= res!318601 (validMask!0 mask!3524))))

(assert (=> start!47380 e!303762))

(assert (=> start!47380 true))

(declare-fun array_inv!11710 (array!33166) Bool)

(assert (=> start!47380 (array_inv!11710 a!3235)))

(declare-fun b!520545 () Bool)

(declare-fun Unit!16109 () Unit!16106)

(assert (=> b!520545 (= e!303760 Unit!16109)))

(assert (= (and start!47380 res!318601) b!520551))

(assert (= (and b!520551 res!318594) b!520544))

(assert (= (and b!520544 res!318596) b!520548))

(assert (= (and b!520548 res!318597) b!520556))

(assert (= (and b!520556 res!318592) b!520549))

(assert (= (and b!520549 res!318602) b!520550))

(assert (= (and b!520550 res!318599) b!520552))

(assert (= (and b!520552 res!318591) b!520553))

(assert (= (and b!520553 res!318598) b!520554))

(assert (= (and b!520553 (not res!318595)) b!520547))

(assert (= (and b!520547 (not res!318593)) b!520555))

(assert (= (and b!520555 c!61277) b!520543))

(assert (= (and b!520555 (not c!61277)) b!520545))

(assert (= (and b!520543 res!318600) b!520546))

(declare-fun m!501493 () Bool)

(assert (=> b!520544 m!501493))

(assert (=> b!520544 m!501493))

(declare-fun m!501495 () Bool)

(assert (=> b!520544 m!501495))

(declare-fun m!501497 () Bool)

(assert (=> b!520549 m!501497))

(declare-fun m!501499 () Bool)

(assert (=> b!520548 m!501499))

(declare-fun m!501501 () Bool)

(assert (=> b!520552 m!501501))

(declare-fun m!501503 () Bool)

(assert (=> b!520555 m!501503))

(assert (=> b!520555 m!501493))

(declare-fun m!501505 () Bool)

(assert (=> b!520553 m!501505))

(declare-fun m!501507 () Bool)

(assert (=> b!520553 m!501507))

(declare-fun m!501509 () Bool)

(assert (=> b!520553 m!501509))

(assert (=> b!520553 m!501493))

(declare-fun m!501511 () Bool)

(assert (=> b!520553 m!501511))

(assert (=> b!520553 m!501493))

(declare-fun m!501513 () Bool)

(assert (=> b!520553 m!501513))

(assert (=> b!520553 m!501493))

(declare-fun m!501515 () Bool)

(assert (=> b!520553 m!501515))

(declare-fun m!501517 () Bool)

(assert (=> b!520553 m!501517))

(declare-fun m!501519 () Bool)

(assert (=> b!520553 m!501519))

(declare-fun m!501521 () Bool)

(assert (=> b!520550 m!501521))

(assert (=> b!520554 m!501493))

(assert (=> b!520554 m!501493))

(declare-fun m!501523 () Bool)

(assert (=> b!520554 m!501523))

(declare-fun m!501525 () Bool)

(assert (=> b!520543 m!501525))

(declare-fun m!501527 () Bool)

(assert (=> b!520543 m!501527))

(declare-fun m!501529 () Bool)

(assert (=> b!520556 m!501529))

(declare-fun m!501531 () Bool)

(assert (=> start!47380 m!501531))

(declare-fun m!501533 () Bool)

(assert (=> start!47380 m!501533))

(push 1)

