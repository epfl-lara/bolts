; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93080 () Bool)

(assert start!93080)

(declare-fun b!1055502 () Bool)

(declare-fun e!599945 () Bool)

(declare-fun e!599948 () Bool)

(assert (=> b!1055502 (= e!599945 e!599948)))

(declare-fun res!704425 () Bool)

(assert (=> b!1055502 (=> res!704425 e!599948)))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66553 0))(
  ( (array!66554 (arr!32000 (Array (_ BitVec 32) (_ BitVec 64))) (size!32537 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66553)

(assert (=> b!1055502 (= res!704425 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32537 a!3488)))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055502 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34567 0))(
  ( (Unit!34568) )
))
(declare-fun lt!465782 () Unit!34567)

(declare-fun lt!465780 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34567)

(assert (=> b!1055502 (= lt!465782 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465780 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22443 0))(
  ( (Nil!22440) (Cons!22439 (h!23648 (_ BitVec 64)) (t!31757 List!22443)) )
))
(declare-fun arrayNoDuplicates!0 (array!66553 (_ BitVec 32) List!22443) Bool)

(assert (=> b!1055502 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22440)))

(declare-fun lt!465781 () Unit!34567)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66553 (_ BitVec 32) (_ BitVec 32)) Unit!34567)

(assert (=> b!1055502 (= lt!465781 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055503 () Bool)

(declare-fun e!599950 () Bool)

(declare-fun e!599951 () Bool)

(assert (=> b!1055503 (= e!599950 e!599951)))

(declare-fun res!704430 () Bool)

(assert (=> b!1055503 (=> (not res!704430) (not e!599951))))

(assert (=> b!1055503 (= res!704430 (not (= lt!465780 i!1381)))))

(declare-fun lt!465784 () array!66553)

(declare-fun arrayScanForKey!0 (array!66553 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055503 (= lt!465780 (arrayScanForKey!0 lt!465784 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055504 () Bool)

(declare-fun res!704433 () Bool)

(assert (=> b!1055504 (=> res!704433 e!599948)))

(declare-fun contains!6201 (List!22443 (_ BitVec 64)) Bool)

(assert (=> b!1055504 (= res!704433 (contains!6201 Nil!22440 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055505 () Bool)

(declare-fun e!599949 () Bool)

(declare-fun e!599947 () Bool)

(assert (=> b!1055505 (= e!599949 e!599947)))

(declare-fun res!704431 () Bool)

(assert (=> b!1055505 (=> res!704431 e!599947)))

(assert (=> b!1055505 (= res!704431 (bvsle lt!465780 i!1381))))

(declare-fun b!1055506 () Bool)

(declare-fun res!704435 () Bool)

(declare-fun e!599944 () Bool)

(assert (=> b!1055506 (=> (not res!704435) (not e!599944))))

(assert (=> b!1055506 (= res!704435 (= (select (arr!32000 a!3488) i!1381) k0!2747))))

(declare-fun b!1055507 () Bool)

(declare-fun res!704429 () Bool)

(assert (=> b!1055507 (=> res!704429 e!599948)))

(declare-fun noDuplicate!1570 (List!22443) Bool)

(assert (=> b!1055507 (= res!704429 (not (noDuplicate!1570 Nil!22440)))))

(declare-fun b!1055508 () Bool)

(assert (=> b!1055508 (= e!599951 (not e!599945))))

(declare-fun res!704426 () Bool)

(assert (=> b!1055508 (=> res!704426 e!599945)))

(assert (=> b!1055508 (= res!704426 (bvsle lt!465780 i!1381))))

(assert (=> b!1055508 e!599949))

(declare-fun res!704434 () Bool)

(assert (=> b!1055508 (=> (not res!704434) (not e!599949))))

(assert (=> b!1055508 (= res!704434 (= (select (store (arr!32000 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465780) k0!2747))))

(declare-fun res!704428 () Bool)

(assert (=> start!93080 (=> (not res!704428) (not e!599944))))

(assert (=> start!93080 (= res!704428 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32537 a!3488)) (bvslt (size!32537 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93080 e!599944))

(assert (=> start!93080 true))

(declare-fun array_inv!24622 (array!66553) Bool)

(assert (=> start!93080 (array_inv!24622 a!3488)))

(declare-fun b!1055509 () Bool)

(assert (=> b!1055509 (= e!599947 (arrayContainsKey!0 a!3488 k0!2747 lt!465780))))

(declare-fun b!1055510 () Bool)

(declare-fun res!704436 () Bool)

(assert (=> b!1055510 (=> (not res!704436) (not e!599944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055510 (= res!704436 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055511 () Bool)

(assert (=> b!1055511 (= e!599948 true)))

(declare-fun lt!465783 () Bool)

(assert (=> b!1055511 (= lt!465783 (contains!6201 Nil!22440 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055512 () Bool)

(declare-fun res!704432 () Bool)

(assert (=> b!1055512 (=> (not res!704432) (not e!599944))))

(assert (=> b!1055512 (= res!704432 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22440))))

(declare-fun b!1055513 () Bool)

(assert (=> b!1055513 (= e!599944 e!599950)))

(declare-fun res!704427 () Bool)

(assert (=> b!1055513 (=> (not res!704427) (not e!599950))))

(assert (=> b!1055513 (= res!704427 (arrayContainsKey!0 lt!465784 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055513 (= lt!465784 (array!66554 (store (arr!32000 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32537 a!3488)))))

(assert (= (and start!93080 res!704428) b!1055512))

(assert (= (and b!1055512 res!704432) b!1055510))

(assert (= (and b!1055510 res!704436) b!1055506))

(assert (= (and b!1055506 res!704435) b!1055513))

(assert (= (and b!1055513 res!704427) b!1055503))

(assert (= (and b!1055503 res!704430) b!1055508))

(assert (= (and b!1055508 res!704434) b!1055505))

(assert (= (and b!1055505 (not res!704431)) b!1055509))

(assert (= (and b!1055508 (not res!704426)) b!1055502))

(assert (= (and b!1055502 (not res!704425)) b!1055507))

(assert (= (and b!1055507 (not res!704429)) b!1055504))

(assert (= (and b!1055504 (not res!704433)) b!1055511))

(declare-fun m!975629 () Bool)

(assert (=> b!1055510 m!975629))

(declare-fun m!975631 () Bool)

(assert (=> b!1055502 m!975631))

(declare-fun m!975633 () Bool)

(assert (=> b!1055502 m!975633))

(declare-fun m!975635 () Bool)

(assert (=> b!1055502 m!975635))

(declare-fun m!975637 () Bool)

(assert (=> b!1055502 m!975637))

(declare-fun m!975639 () Bool)

(assert (=> b!1055513 m!975639))

(declare-fun m!975641 () Bool)

(assert (=> b!1055513 m!975641))

(declare-fun m!975643 () Bool)

(assert (=> b!1055511 m!975643))

(declare-fun m!975645 () Bool)

(assert (=> b!1055512 m!975645))

(assert (=> b!1055508 m!975641))

(declare-fun m!975647 () Bool)

(assert (=> b!1055508 m!975647))

(declare-fun m!975649 () Bool)

(assert (=> b!1055506 m!975649))

(declare-fun m!975651 () Bool)

(assert (=> b!1055509 m!975651))

(declare-fun m!975653 () Bool)

(assert (=> start!93080 m!975653))

(declare-fun m!975655 () Bool)

(assert (=> b!1055504 m!975655))

(declare-fun m!975657 () Bool)

(assert (=> b!1055507 m!975657))

(declare-fun m!975659 () Bool)

(assert (=> b!1055503 m!975659))

(check-sat (not b!1055512) (not b!1055502) (not start!93080) (not b!1055503) (not b!1055510) (not b!1055504) (not b!1055513) (not b!1055511) (not b!1055507) (not b!1055509))
(check-sat)
