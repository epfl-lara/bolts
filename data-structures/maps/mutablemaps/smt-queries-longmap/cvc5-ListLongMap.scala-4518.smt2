; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62592 () Bool)

(assert start!62592)

(declare-fun b!705563 () Bool)

(declare-fun res!469559 () Bool)

(declare-fun e!397756 () Bool)

(assert (=> b!705563 (=> (not res!469559) (not e!397756))))

(declare-datatypes ((List!13360 0))(
  ( (Nil!13357) (Cons!13356 (h!14401 (_ BitVec 64)) (t!19650 List!13360)) )
))
(declare-fun newAcc!49 () List!13360)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3903 (List!13360 (_ BitVec 64)) Bool)

(assert (=> b!705563 (= res!469559 (contains!3903 newAcc!49 k!2824))))

(declare-fun b!705564 () Bool)

(declare-fun res!469564 () Bool)

(assert (=> b!705564 (=> (not res!469564) (not e!397756))))

(declare-datatypes ((array!40227 0))(
  ( (array!40228 (arr!19266 (Array (_ BitVec 32) (_ BitVec 64))) (size!19649 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40227)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13360)

(declare-fun arrayNoDuplicates!0 (array!40227 (_ BitVec 32) List!13360) Bool)

(assert (=> b!705564 (= res!469564 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705565 () Bool)

(declare-fun res!469563 () Bool)

(assert (=> b!705565 (=> (not res!469563) (not e!397756))))

(declare-fun arrayContainsKey!0 (array!40227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705565 (= res!469563 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705566 () Bool)

(declare-fun res!469555 () Bool)

(assert (=> b!705566 (=> (not res!469555) (not e!397756))))

(assert (=> b!705566 (= res!469555 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705567 () Bool)

(declare-fun res!469554 () Bool)

(assert (=> b!705567 (=> (not res!469554) (not e!397756))))

(declare-fun noDuplicate!1150 (List!13360) Bool)

(assert (=> b!705567 (= res!469554 (noDuplicate!1150 acc!652))))

(declare-fun b!705568 () Bool)

(declare-fun res!469551 () Bool)

(assert (=> b!705568 (=> (not res!469551) (not e!397756))))

(assert (=> b!705568 (= res!469551 (not (contains!3903 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705569 () Bool)

(declare-fun res!469562 () Bool)

(assert (=> b!705569 (=> (not res!469562) (not e!397756))))

(assert (=> b!705569 (= res!469562 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19649 a!3591)))))

(declare-fun b!705570 () Bool)

(declare-fun res!469560 () Bool)

(assert (=> b!705570 (=> (not res!469560) (not e!397756))))

(assert (=> b!705570 (= res!469560 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705571 () Bool)

(assert (=> b!705571 (= e!397756 (not true))))

(assert (=> b!705571 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24598 0))(
  ( (Unit!24599) )
))
(declare-fun lt!317859 () Unit!24598)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40227 (_ BitVec 64) (_ BitVec 32) List!13360 List!13360) Unit!24598)

(assert (=> b!705571 (= lt!317859 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun res!469552 () Bool)

(assert (=> start!62592 (=> (not res!469552) (not e!397756))))

(assert (=> start!62592 (= res!469552 (and (bvslt (size!19649 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19649 a!3591))))))

(assert (=> start!62592 e!397756))

(assert (=> start!62592 true))

(declare-fun array_inv!15040 (array!40227) Bool)

(assert (=> start!62592 (array_inv!15040 a!3591)))

(declare-fun b!705572 () Bool)

(declare-fun res!469548 () Bool)

(assert (=> b!705572 (=> (not res!469548) (not e!397756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705572 (= res!469548 (not (validKeyInArray!0 (select (arr!19266 a!3591) from!2969))))))

(declare-fun b!705573 () Bool)

(declare-fun res!469549 () Bool)

(assert (=> b!705573 (=> (not res!469549) (not e!397756))))

(assert (=> b!705573 (= res!469549 (noDuplicate!1150 newAcc!49))))

(declare-fun b!705574 () Bool)

(declare-fun res!469550 () Bool)

(assert (=> b!705574 (=> (not res!469550) (not e!397756))))

(assert (=> b!705574 (= res!469550 (not (contains!3903 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705575 () Bool)

(declare-fun res!469565 () Bool)

(assert (=> b!705575 (=> (not res!469565) (not e!397756))))

(declare-fun subseq!347 (List!13360 List!13360) Bool)

(assert (=> b!705575 (= res!469565 (subseq!347 acc!652 newAcc!49))))

(declare-fun b!705576 () Bool)

(declare-fun res!469558 () Bool)

(assert (=> b!705576 (=> (not res!469558) (not e!397756))))

(assert (=> b!705576 (= res!469558 (not (contains!3903 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705577 () Bool)

(declare-fun res!469561 () Bool)

(assert (=> b!705577 (=> (not res!469561) (not e!397756))))

(declare-fun -!312 (List!13360 (_ BitVec 64)) List!13360)

(assert (=> b!705577 (= res!469561 (= (-!312 newAcc!49 k!2824) acc!652))))

(declare-fun b!705578 () Bool)

(declare-fun res!469553 () Bool)

(assert (=> b!705578 (=> (not res!469553) (not e!397756))))

(assert (=> b!705578 (= res!469553 (not (contains!3903 acc!652 k!2824)))))

(declare-fun b!705579 () Bool)

(declare-fun res!469556 () Bool)

(assert (=> b!705579 (=> (not res!469556) (not e!397756))))

(assert (=> b!705579 (= res!469556 (not (contains!3903 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705580 () Bool)

(declare-fun res!469557 () Bool)

(assert (=> b!705580 (=> (not res!469557) (not e!397756))))

(assert (=> b!705580 (= res!469557 (validKeyInArray!0 k!2824))))

(declare-fun b!705581 () Bool)

(declare-fun res!469547 () Bool)

(assert (=> b!705581 (=> (not res!469547) (not e!397756))))

(assert (=> b!705581 (= res!469547 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (= (and start!62592 res!469552) b!705567))

(assert (= (and b!705567 res!469554) b!705573))

(assert (= (and b!705573 res!469549) b!705576))

(assert (= (and b!705576 res!469558) b!705579))

(assert (= (and b!705579 res!469556) b!705570))

(assert (= (and b!705570 res!469560) b!705578))

(assert (= (and b!705578 res!469553) b!705580))

(assert (= (and b!705580 res!469557) b!705566))

(assert (= (and b!705566 res!469555) b!705575))

(assert (= (and b!705575 res!469565) b!705563))

(assert (= (and b!705563 res!469559) b!705577))

(assert (= (and b!705577 res!469561) b!705568))

(assert (= (and b!705568 res!469551) b!705574))

(assert (= (and b!705574 res!469550) b!705569))

(assert (= (and b!705569 res!469562) b!705572))

(assert (= (and b!705572 res!469548) b!705581))

(assert (= (and b!705581 res!469547) b!705565))

(assert (= (and b!705565 res!469563) b!705564))

(assert (= (and b!705564 res!469564) b!705571))

(declare-fun m!663711 () Bool)

(assert (=> b!705571 m!663711))

(declare-fun m!663713 () Bool)

(assert (=> b!705571 m!663713))

(declare-fun m!663715 () Bool)

(assert (=> b!705566 m!663715))

(declare-fun m!663717 () Bool)

(assert (=> b!705577 m!663717))

(declare-fun m!663719 () Bool)

(assert (=> b!705579 m!663719))

(declare-fun m!663721 () Bool)

(assert (=> b!705578 m!663721))

(declare-fun m!663723 () Bool)

(assert (=> b!705573 m!663723))

(declare-fun m!663725 () Bool)

(assert (=> b!705563 m!663725))

(declare-fun m!663727 () Bool)

(assert (=> start!62592 m!663727))

(declare-fun m!663729 () Bool)

(assert (=> b!705572 m!663729))

(assert (=> b!705572 m!663729))

(declare-fun m!663731 () Bool)

(assert (=> b!705572 m!663731))

(declare-fun m!663733 () Bool)

(assert (=> b!705568 m!663733))

(declare-fun m!663735 () Bool)

(assert (=> b!705574 m!663735))

(declare-fun m!663737 () Bool)

(assert (=> b!705567 m!663737))

(declare-fun m!663739 () Bool)

(assert (=> b!705564 m!663739))

(declare-fun m!663741 () Bool)

(assert (=> b!705576 m!663741))

(declare-fun m!663743 () Bool)

(assert (=> b!705575 m!663743))

(declare-fun m!663745 () Bool)

(assert (=> b!705580 m!663745))

(declare-fun m!663747 () Bool)

(assert (=> b!705570 m!663747))

(declare-fun m!663749 () Bool)

(assert (=> b!705565 m!663749))

(push 1)

(assert (not b!705567))

(assert (not b!705568))

(assert (not b!705563))

(assert (not b!705578))

(assert (not b!705572))

(assert (not b!705570))

(assert (not b!705566))

(assert (not b!705577))

(assert (not b!705576))

(assert (not b!705565))

(assert (not b!705571))

(assert (not b!705574))

(assert (not b!705579))

(assert (not b!705575))

(assert (not b!705564))

(assert (not b!705573))

(assert (not b!705580))

(assert (not start!62592))

(check-sat)

(pop 1)

