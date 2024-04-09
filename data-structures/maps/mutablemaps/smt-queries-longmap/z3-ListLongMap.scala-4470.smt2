; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62222 () Bool)

(assert start!62222)

(declare-fun b!696529 () Bool)

(declare-fun res!460630 () Bool)

(declare-fun e!396061 () Bool)

(assert (=> b!696529 (=> (not res!460630) (not e!396061))))

(declare-datatypes ((List!13217 0))(
  ( (Nil!13214) (Cons!13213 (h!14258 (_ BitVec 64)) (t!19507 List!13217)) )
))
(declare-fun acc!681 () List!13217)

(declare-fun contains!3760 (List!13217 (_ BitVec 64)) Bool)

(assert (=> b!696529 (= res!460630 (not (contains!3760 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696530 () Bool)

(declare-fun e!396063 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!696530 (= e!396063 (not (contains!3760 acc!681 k0!2843)))))

(declare-fun res!460627 () Bool)

(assert (=> start!62222 (=> (not res!460627) (not e!396061))))

(declare-datatypes ((array!39935 0))(
  ( (array!39936 (arr!19123 (Array (_ BitVec 32) (_ BitVec 64))) (size!19506 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39935)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62222 (= res!460627 (and (bvslt (size!19506 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19506 a!3626))))))

(assert (=> start!62222 e!396061))

(assert (=> start!62222 true))

(declare-fun array_inv!14897 (array!39935) Bool)

(assert (=> start!62222 (array_inv!14897 a!3626)))

(declare-fun b!696531 () Bool)

(declare-fun res!460634 () Bool)

(assert (=> b!696531 (=> (not res!460634) (not e!396061))))

(declare-fun e!396064 () Bool)

(assert (=> b!696531 (= res!460634 e!396064)))

(declare-fun res!460631 () Bool)

(assert (=> b!696531 (=> res!460631 e!396064)))

(declare-fun e!396059 () Bool)

(assert (=> b!696531 (= res!460631 e!396059)))

(declare-fun res!460624 () Bool)

(assert (=> b!696531 (=> (not res!460624) (not e!396059))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696531 (= res!460624 (bvsgt from!3004 i!1382))))

(declare-fun b!696532 () Bool)

(declare-fun res!460621 () Bool)

(assert (=> b!696532 (=> (not res!460621) (not e!396061))))

(declare-fun arrayNoDuplicates!0 (array!39935 (_ BitVec 32) List!13217) Bool)

(assert (=> b!696532 (= res!460621 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13214))))

(declare-fun b!696533 () Bool)

(declare-fun e!396058 () Bool)

(assert (=> b!696533 (= e!396058 (not (contains!3760 acc!681 k0!2843)))))

(declare-fun b!696534 () Bool)

(declare-fun res!460640 () Bool)

(assert (=> b!696534 (=> (not res!460640) (not e!396061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696534 (= res!460640 (validKeyInArray!0 k0!2843))))

(declare-fun b!696535 () Bool)

(declare-fun res!460639 () Bool)

(assert (=> b!696535 (=> (not res!460639) (not e!396061))))

(assert (=> b!696535 (= res!460639 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696536 () Bool)

(declare-fun res!460625 () Bool)

(assert (=> b!696536 (=> (not res!460625) (not e!396061))))

(assert (=> b!696536 (= res!460625 (not (contains!3760 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696537 () Bool)

(declare-fun res!460629 () Bool)

(assert (=> b!696537 (=> (not res!460629) (not e!396061))))

(declare-fun noDuplicate!1007 (List!13217) Bool)

(assert (=> b!696537 (= res!460629 (noDuplicate!1007 acc!681))))

(declare-fun b!696538 () Bool)

(assert (=> b!696538 (= e!396061 false)))

(declare-fun lt!317064 () Bool)

(assert (=> b!696538 (= lt!317064 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696539 () Bool)

(assert (=> b!696539 (= e!396064 e!396063)))

(declare-fun res!460632 () Bool)

(assert (=> b!696539 (=> (not res!460632) (not e!396063))))

(assert (=> b!696539 (= res!460632 (bvsle from!3004 i!1382))))

(declare-fun b!696540 () Bool)

(declare-fun e!396060 () Bool)

(assert (=> b!696540 (= e!396060 (contains!3760 acc!681 k0!2843))))

(declare-fun b!696541 () Bool)

(declare-fun res!460628 () Bool)

(assert (=> b!696541 (=> (not res!460628) (not e!396061))))

(assert (=> b!696541 (= res!460628 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19506 a!3626))))))

(declare-fun b!696542 () Bool)

(declare-fun res!460637 () Bool)

(assert (=> b!696542 (=> (not res!460637) (not e!396061))))

(assert (=> b!696542 (= res!460637 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696543 () Bool)

(declare-fun e!396057 () Bool)

(assert (=> b!696543 (= e!396057 e!396058)))

(declare-fun res!460638 () Bool)

(assert (=> b!696543 (=> (not res!460638) (not e!396058))))

(assert (=> b!696543 (= res!460638 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696544 () Bool)

(declare-fun res!460623 () Bool)

(assert (=> b!696544 (=> (not res!460623) (not e!396061))))

(assert (=> b!696544 (= res!460623 e!396057)))

(declare-fun res!460636 () Bool)

(assert (=> b!696544 (=> res!460636 e!396057)))

(assert (=> b!696544 (= res!460636 e!396060)))

(declare-fun res!460626 () Bool)

(assert (=> b!696544 (=> (not res!460626) (not e!396060))))

(assert (=> b!696544 (= res!460626 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696545 () Bool)

(declare-fun res!460622 () Bool)

(assert (=> b!696545 (=> (not res!460622) (not e!396061))))

(assert (=> b!696545 (= res!460622 (not (validKeyInArray!0 (select (arr!19123 a!3626) from!3004))))))

(declare-fun b!696546 () Bool)

(assert (=> b!696546 (= e!396059 (contains!3760 acc!681 k0!2843))))

(declare-fun b!696547 () Bool)

(declare-fun res!460635 () Bool)

(assert (=> b!696547 (=> (not res!460635) (not e!396061))))

(declare-fun arrayContainsKey!0 (array!39935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696547 (= res!460635 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696548 () Bool)

(declare-fun res!460633 () Bool)

(assert (=> b!696548 (=> (not res!460633) (not e!396061))))

(assert (=> b!696548 (= res!460633 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19506 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!62222 res!460627) b!696537))

(assert (= (and b!696537 res!460629) b!696529))

(assert (= (and b!696529 res!460630) b!696536))

(assert (= (and b!696536 res!460625) b!696531))

(assert (= (and b!696531 res!460624) b!696546))

(assert (= (and b!696531 (not res!460631)) b!696539))

(assert (= (and b!696539 res!460632) b!696530))

(assert (= (and b!696531 res!460634) b!696532))

(assert (= (and b!696532 res!460621) b!696535))

(assert (= (and b!696535 res!460639) b!696541))

(assert (= (and b!696541 res!460628) b!696534))

(assert (= (and b!696534 res!460640) b!696547))

(assert (= (and b!696547 res!460635) b!696548))

(assert (= (and b!696548 res!460633) b!696545))

(assert (= (and b!696545 res!460622) b!696542))

(assert (= (and b!696542 res!460637) b!696544))

(assert (= (and b!696544 res!460626) b!696540))

(assert (= (and b!696544 (not res!460636)) b!696543))

(assert (= (and b!696543 res!460638) b!696533))

(assert (= (and b!696544 res!460623) b!696538))

(declare-fun m!657417 () Bool)

(assert (=> b!696538 m!657417))

(declare-fun m!657419 () Bool)

(assert (=> b!696536 m!657419))

(declare-fun m!657421 () Bool)

(assert (=> start!62222 m!657421))

(declare-fun m!657423 () Bool)

(assert (=> b!696530 m!657423))

(declare-fun m!657425 () Bool)

(assert (=> b!696537 m!657425))

(declare-fun m!657427 () Bool)

(assert (=> b!696534 m!657427))

(assert (=> b!696540 m!657423))

(declare-fun m!657429 () Bool)

(assert (=> b!696545 m!657429))

(assert (=> b!696545 m!657429))

(declare-fun m!657431 () Bool)

(assert (=> b!696545 m!657431))

(declare-fun m!657433 () Bool)

(assert (=> b!696532 m!657433))

(declare-fun m!657435 () Bool)

(assert (=> b!696535 m!657435))

(declare-fun m!657437 () Bool)

(assert (=> b!696529 m!657437))

(assert (=> b!696546 m!657423))

(assert (=> b!696533 m!657423))

(declare-fun m!657439 () Bool)

(assert (=> b!696547 m!657439))

(check-sat (not start!62222) (not b!696547) (not b!696530) (not b!696534) (not b!696546) (not b!696540) (not b!696545) (not b!696533) (not b!696535) (not b!696537) (not b!696532) (not b!696529) (not b!696536) (not b!696538))
