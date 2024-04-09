; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65178 () Bool)

(assert start!65178)

(declare-fun b!736410 () Bool)

(declare-fun res!495029 () Bool)

(declare-fun e!411986 () Bool)

(assert (=> b!736410 (=> (not res!495029) (not e!411986))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41304 0))(
  ( (array!41305 (arr!19762 (Array (_ BitVec 32) (_ BitVec 64))) (size!20183 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41304)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736410 (= res!495029 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19762 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!411984 () Bool)

(declare-fun b!736411 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7369 0))(
  ( (MissingZero!7369 (index!31843 (_ BitVec 32))) (Found!7369 (index!31844 (_ BitVec 32))) (Intermediate!7369 (undefined!8181 Bool) (index!31845 (_ BitVec 32)) (x!62872 (_ BitVec 32))) (Undefined!7369) (MissingVacant!7369 (index!31846 (_ BitVec 32))) )
))
(declare-fun lt!326622 () SeekEntryResult!7369)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41304 (_ BitVec 32)) SeekEntryResult!7369)

(assert (=> b!736411 (= e!411984 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326622))))

(declare-fun b!736412 () Bool)

(declare-fun res!495014 () Bool)

(declare-fun e!411983 () Bool)

(assert (=> b!736412 (=> res!495014 e!411983)))

(declare-fun e!411982 () Bool)

(assert (=> b!736412 (= res!495014 e!411982)))

(declare-fun c!81080 () Bool)

(declare-fun lt!326628 () Bool)

(assert (=> b!736412 (= c!81080 lt!326628)))

(declare-fun b!736413 () Bool)

(declare-fun res!495018 () Bool)

(declare-fun e!411987 () Bool)

(assert (=> b!736413 (=> (not res!495018) (not e!411987))))

(declare-datatypes ((List!13817 0))(
  ( (Nil!13814) (Cons!13813 (h!14885 (_ BitVec 64)) (t!20140 List!13817)) )
))
(declare-fun arrayNoDuplicates!0 (array!41304 (_ BitVec 32) List!13817) Bool)

(assert (=> b!736413 (= res!495018 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13814))))

(declare-fun b!736414 () Bool)

(declare-fun res!495016 () Bool)

(declare-fun e!411985 () Bool)

(assert (=> b!736414 (=> (not res!495016) (not e!411985))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736414 (= res!495016 (validKeyInArray!0 k0!2102))))

(declare-fun b!736415 () Bool)

(declare-fun res!495030 () Bool)

(assert (=> b!736415 (=> (not res!495030) (not e!411985))))

(declare-fun arrayContainsKey!0 (array!41304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736415 (= res!495030 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!326621 () (_ BitVec 32))

(declare-fun b!736416 () Bool)

(assert (=> b!736416 (= e!411982 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326621 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326622)))))

(declare-fun b!736417 () Bool)

(declare-fun res!495015 () Bool)

(assert (=> b!736417 (=> (not res!495015) (not e!411986))))

(assert (=> b!736417 (= res!495015 e!411984)))

(declare-fun c!81081 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736417 (= c!81081 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736418 () Bool)

(declare-fun e!411977 () Bool)

(assert (=> b!736418 (= e!411977 e!411983)))

(declare-fun res!495020 () Bool)

(assert (=> b!736418 (=> res!495020 e!411983)))

(assert (=> b!736418 (= res!495020 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326621 #b00000000000000000000000000000000) (bvsge lt!326621 (size!20183 a!3186))))))

(declare-datatypes ((Unit!25094 0))(
  ( (Unit!25095) )
))
(declare-fun lt!326627 () Unit!25094)

(declare-fun e!411978 () Unit!25094)

(assert (=> b!736418 (= lt!326627 e!411978)))

(declare-fun c!81079 () Bool)

(assert (=> b!736418 (= c!81079 lt!326628)))

(assert (=> b!736418 (= lt!326628 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736418 (= lt!326621 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736420 () Bool)

(declare-fun Unit!25096 () Unit!25094)

(assert (=> b!736420 (= e!411978 Unit!25096)))

(declare-fun lt!326617 () SeekEntryResult!7369)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41304 (_ BitVec 32)) SeekEntryResult!7369)

(assert (=> b!736420 (= lt!326617 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19762 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326625 () SeekEntryResult!7369)

(assert (=> b!736420 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326621 resIntermediateIndex!5 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326625)))

(declare-fun b!736421 () Bool)

(declare-fun res!495024 () Bool)

(assert (=> b!736421 (=> (not res!495024) (not e!411985))))

(assert (=> b!736421 (= res!495024 (validKeyInArray!0 (select (arr!19762 a!3186) j!159)))))

(declare-fun b!736422 () Bool)

(assert (=> b!736422 (= e!411984 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) (Found!7369 j!159)))))

(declare-fun b!736423 () Bool)

(declare-fun e!411976 () Bool)

(declare-fun e!411979 () Bool)

(assert (=> b!736423 (= e!411976 e!411979)))

(declare-fun res!495013 () Bool)

(assert (=> b!736423 (=> (not res!495013) (not e!411979))))

(declare-fun lt!326624 () SeekEntryResult!7369)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41304 (_ BitVec 32)) SeekEntryResult!7369)

(assert (=> b!736423 (= res!495013 (= (seekEntryOrOpen!0 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326624))))

(assert (=> b!736423 (= lt!326624 (Found!7369 j!159))))

(declare-fun b!736424 () Bool)

(assert (=> b!736424 (= e!411983 true)))

(declare-fun lt!326623 () SeekEntryResult!7369)

(declare-fun lt!326629 () (_ BitVec 64))

(declare-fun lt!326620 () array!41304)

(assert (=> b!736424 (= lt!326623 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326621 lt!326629 lt!326620 mask!3328))))

(declare-fun b!736425 () Bool)

(assert (=> b!736425 (= e!411982 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326621 resIntermediateIndex!5 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326625)))))

(declare-fun b!736426 () Bool)

(assert (=> b!736426 (= e!411985 e!411987)))

(declare-fun res!495026 () Bool)

(assert (=> b!736426 (=> (not res!495026) (not e!411987))))

(declare-fun lt!326626 () SeekEntryResult!7369)

(assert (=> b!736426 (= res!495026 (or (= lt!326626 (MissingZero!7369 i!1173)) (= lt!326626 (MissingVacant!7369 i!1173))))))

(assert (=> b!736426 (= lt!326626 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!736427 () Bool)

(assert (=> b!736427 (= e!411979 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326624))))

(declare-fun b!736428 () Bool)

(declare-fun Unit!25097 () Unit!25094)

(assert (=> b!736428 (= e!411978 Unit!25097)))

(assert (=> b!736428 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326621 (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326622)))

(declare-fun b!736429 () Bool)

(declare-fun e!411980 () Bool)

(assert (=> b!736429 (= e!411986 e!411980)))

(declare-fun res!495019 () Bool)

(assert (=> b!736429 (=> (not res!495019) (not e!411980))))

(declare-fun lt!326618 () SeekEntryResult!7369)

(declare-fun lt!326619 () SeekEntryResult!7369)

(assert (=> b!736429 (= res!495019 (= lt!326618 lt!326619))))

(assert (=> b!736429 (= lt!326619 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326629 lt!326620 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736429 (= lt!326618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326629 mask!3328) lt!326629 lt!326620 mask!3328))))

(assert (=> b!736429 (= lt!326629 (select (store (arr!19762 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!736429 (= lt!326620 (array!41305 (store (arr!19762 a!3186) i!1173 k0!2102) (size!20183 a!3186)))))

(declare-fun b!736430 () Bool)

(assert (=> b!736430 (= e!411987 e!411986)))

(declare-fun res!495025 () Bool)

(assert (=> b!736430 (=> (not res!495025) (not e!411986))))

(assert (=> b!736430 (= res!495025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19762 a!3186) j!159) mask!3328) (select (arr!19762 a!3186) j!159) a!3186 mask!3328) lt!326622))))

(assert (=> b!736430 (= lt!326622 (Intermediate!7369 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736431 () Bool)

(declare-fun res!495017 () Bool)

(assert (=> b!736431 (=> (not res!495017) (not e!411987))))

(assert (=> b!736431 (= res!495017 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20183 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20183 a!3186))))))

(declare-fun res!495022 () Bool)

(assert (=> start!65178 (=> (not res!495022) (not e!411985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65178 (= res!495022 (validMask!0 mask!3328))))

(assert (=> start!65178 e!411985))

(assert (=> start!65178 true))

(declare-fun array_inv!15536 (array!41304) Bool)

(assert (=> start!65178 (array_inv!15536 a!3186)))

(declare-fun b!736419 () Bool)

(declare-fun res!495023 () Bool)

(assert (=> b!736419 (=> (not res!495023) (not e!411987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41304 (_ BitVec 32)) Bool)

(assert (=> b!736419 (= res!495023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736432 () Bool)

(assert (=> b!736432 (= e!411980 (not e!411977))))

(declare-fun res!495021 () Bool)

(assert (=> b!736432 (=> res!495021 e!411977)))

(get-info :version)

(assert (=> b!736432 (= res!495021 (or (not ((_ is Intermediate!7369) lt!326619)) (bvsge x!1131 (x!62872 lt!326619))))))

(assert (=> b!736432 (= lt!326625 (Found!7369 j!159))))

(assert (=> b!736432 e!411976))

(declare-fun res!495027 () Bool)

(assert (=> b!736432 (=> (not res!495027) (not e!411976))))

(assert (=> b!736432 (= res!495027 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326630 () Unit!25094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41304 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25094)

(assert (=> b!736432 (= lt!326630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736433 () Bool)

(declare-fun res!495028 () Bool)

(assert (=> b!736433 (=> (not res!495028) (not e!411985))))

(assert (=> b!736433 (= res!495028 (and (= (size!20183 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20183 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20183 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65178 res!495022) b!736433))

(assert (= (and b!736433 res!495028) b!736421))

(assert (= (and b!736421 res!495024) b!736414))

(assert (= (and b!736414 res!495016) b!736415))

(assert (= (and b!736415 res!495030) b!736426))

(assert (= (and b!736426 res!495026) b!736419))

(assert (= (and b!736419 res!495023) b!736413))

(assert (= (and b!736413 res!495018) b!736431))

(assert (= (and b!736431 res!495017) b!736430))

(assert (= (and b!736430 res!495025) b!736410))

(assert (= (and b!736410 res!495029) b!736417))

(assert (= (and b!736417 c!81081) b!736411))

(assert (= (and b!736417 (not c!81081)) b!736422))

(assert (= (and b!736417 res!495015) b!736429))

(assert (= (and b!736429 res!495019) b!736432))

(assert (= (and b!736432 res!495027) b!736423))

(assert (= (and b!736423 res!495013) b!736427))

(assert (= (and b!736432 (not res!495021)) b!736418))

(assert (= (and b!736418 c!81079) b!736428))

(assert (= (and b!736418 (not c!81079)) b!736420))

(assert (= (and b!736418 (not res!495020)) b!736412))

(assert (= (and b!736412 c!81080) b!736416))

(assert (= (and b!736412 (not c!81080)) b!736425))

(assert (= (and b!736412 (not res!495014)) b!736424))

(declare-fun m!688615 () Bool)

(assert (=> b!736421 m!688615))

(assert (=> b!736421 m!688615))

(declare-fun m!688617 () Bool)

(assert (=> b!736421 m!688617))

(assert (=> b!736416 m!688615))

(assert (=> b!736416 m!688615))

(declare-fun m!688619 () Bool)

(assert (=> b!736416 m!688619))

(assert (=> b!736411 m!688615))

(assert (=> b!736411 m!688615))

(declare-fun m!688621 () Bool)

(assert (=> b!736411 m!688621))

(declare-fun m!688623 () Bool)

(assert (=> b!736426 m!688623))

(declare-fun m!688625 () Bool)

(assert (=> b!736432 m!688625))

(declare-fun m!688627 () Bool)

(assert (=> b!736432 m!688627))

(assert (=> b!736423 m!688615))

(assert (=> b!736423 m!688615))

(declare-fun m!688629 () Bool)

(assert (=> b!736423 m!688629))

(declare-fun m!688631 () Bool)

(assert (=> b!736414 m!688631))

(declare-fun m!688633 () Bool)

(assert (=> b!736410 m!688633))

(assert (=> b!736425 m!688615))

(assert (=> b!736425 m!688615))

(declare-fun m!688635 () Bool)

(assert (=> b!736425 m!688635))

(declare-fun m!688637 () Bool)

(assert (=> b!736418 m!688637))

(assert (=> b!736420 m!688615))

(assert (=> b!736420 m!688615))

(declare-fun m!688639 () Bool)

(assert (=> b!736420 m!688639))

(assert (=> b!736420 m!688615))

(assert (=> b!736420 m!688635))

(assert (=> b!736427 m!688615))

(assert (=> b!736427 m!688615))

(declare-fun m!688641 () Bool)

(assert (=> b!736427 m!688641))

(declare-fun m!688643 () Bool)

(assert (=> start!65178 m!688643))

(declare-fun m!688645 () Bool)

(assert (=> start!65178 m!688645))

(assert (=> b!736422 m!688615))

(assert (=> b!736422 m!688615))

(assert (=> b!736422 m!688639))

(declare-fun m!688647 () Bool)

(assert (=> b!736413 m!688647))

(declare-fun m!688649 () Bool)

(assert (=> b!736415 m!688649))

(declare-fun m!688651 () Bool)

(assert (=> b!736424 m!688651))

(assert (=> b!736430 m!688615))

(assert (=> b!736430 m!688615))

(declare-fun m!688653 () Bool)

(assert (=> b!736430 m!688653))

(assert (=> b!736430 m!688653))

(assert (=> b!736430 m!688615))

(declare-fun m!688655 () Bool)

(assert (=> b!736430 m!688655))

(declare-fun m!688657 () Bool)

(assert (=> b!736429 m!688657))

(declare-fun m!688659 () Bool)

(assert (=> b!736429 m!688659))

(assert (=> b!736429 m!688657))

(declare-fun m!688661 () Bool)

(assert (=> b!736429 m!688661))

(declare-fun m!688663 () Bool)

(assert (=> b!736429 m!688663))

(declare-fun m!688665 () Bool)

(assert (=> b!736429 m!688665))

(assert (=> b!736428 m!688615))

(assert (=> b!736428 m!688615))

(assert (=> b!736428 m!688619))

(declare-fun m!688667 () Bool)

(assert (=> b!736419 m!688667))

(check-sat (not b!736418) (not b!736420) (not b!736416) (not b!736425) (not b!736419) (not b!736422) (not b!736427) (not b!736411) (not b!736415) (not b!736414) (not b!736428) (not b!736432) (not b!736423) (not b!736421) (not b!736430) (not b!736413) (not b!736424) (not b!736426) (not b!736429) (not start!65178))
(check-sat)
