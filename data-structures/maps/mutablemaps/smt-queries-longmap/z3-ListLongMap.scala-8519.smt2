; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103946 () Bool)

(assert start!103946)

(declare-fun b!1243682 () Bool)

(declare-fun res!829584 () Bool)

(declare-fun e!705001 () Bool)

(assert (=> b!1243682 (=> (not res!829584) (not e!705001))))

(declare-datatypes ((List!27562 0))(
  ( (Nil!27559) (Cons!27558 (h!28767 (_ BitVec 64)) (t!41038 List!27562)) )
))
(declare-fun contains!7434 (List!27562 (_ BitVec 64)) Bool)

(assert (=> b!1243682 (= res!829584 (not (contains!7434 Nil!27559 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243683 () Bool)

(declare-fun res!829592 () Bool)

(assert (=> b!1243683 (=> (not res!829592) (not e!705001))))

(assert (=> b!1243683 (= res!829592 (not (contains!7434 Nil!27559 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243684 () Bool)

(declare-fun res!829594 () Bool)

(declare-fun e!705000 () Bool)

(assert (=> b!1243684 (=> (not res!829594) (not e!705000))))

(declare-datatypes ((array!79984 0))(
  ( (array!79985 (arr!38581 (Array (_ BitVec 32) (_ BitVec 64))) (size!39118 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79984)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243684 (= res!829594 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39118 a!3892)) (not (= newFrom!287 (size!39118 a!3892)))))))

(declare-fun b!1243685 () Bool)

(declare-fun res!829591 () Bool)

(assert (=> b!1243685 (=> (not res!829591) (not e!705001))))

(declare-fun lt!562419 () List!27562)

(assert (=> b!1243685 (= res!829591 (not (contains!7434 lt!562419 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243686 () Bool)

(assert (=> b!1243686 (= e!705001 false)))

(declare-fun lt!562420 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79984 (_ BitVec 32) List!27562) Bool)

(assert (=> b!1243686 (= lt!562420 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562419))))

(declare-datatypes ((Unit!41241 0))(
  ( (Unit!41242) )
))
(declare-fun lt!562418 () Unit!41241)

(declare-fun noDuplicateSubseq!99 (List!27562 List!27562) Unit!41241)

(assert (=> b!1243686 (= lt!562418 (noDuplicateSubseq!99 Nil!27559 lt!562419))))

(declare-fun b!1243687 () Bool)

(declare-fun res!829589 () Bool)

(assert (=> b!1243687 (=> (not res!829589) (not e!705000))))

(assert (=> b!1243687 (= res!829589 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27559))))

(declare-fun b!1243688 () Bool)

(declare-fun res!829590 () Bool)

(assert (=> b!1243688 (=> (not res!829590) (not e!705001))))

(assert (=> b!1243688 (= res!829590 (not (contains!7434 lt!562419 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243689 () Bool)

(declare-fun res!829586 () Bool)

(assert (=> b!1243689 (=> (not res!829586) (not e!705001))))

(declare-fun subseq!645 (List!27562 List!27562) Bool)

(assert (=> b!1243689 (= res!829586 (subseq!645 Nil!27559 lt!562419))))

(declare-fun b!1243690 () Bool)

(assert (=> b!1243690 (= e!705000 e!705001)))

(declare-fun res!829585 () Bool)

(assert (=> b!1243690 (=> (not res!829585) (not e!705001))))

(assert (=> b!1243690 (= res!829585 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243690 (= lt!562419 (Cons!27558 (select (arr!38581 a!3892) from!3270) Nil!27559))))

(declare-fun res!829588 () Bool)

(assert (=> start!103946 (=> (not res!829588) (not e!705000))))

(assert (=> start!103946 (= res!829588 (and (bvslt (size!39118 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39118 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39118 a!3892))))))

(assert (=> start!103946 e!705000))

(declare-fun array_inv!29357 (array!79984) Bool)

(assert (=> start!103946 (array_inv!29357 a!3892)))

(assert (=> start!103946 true))

(declare-fun b!1243691 () Bool)

(declare-fun res!829593 () Bool)

(assert (=> b!1243691 (=> (not res!829593) (not e!705001))))

(declare-fun noDuplicate!2024 (List!27562) Bool)

(assert (=> b!1243691 (= res!829593 (noDuplicate!2024 lt!562419))))

(declare-fun b!1243692 () Bool)

(declare-fun res!829587 () Bool)

(assert (=> b!1243692 (=> (not res!829587) (not e!705000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243692 (= res!829587 (validKeyInArray!0 (select (arr!38581 a!3892) from!3270)))))

(assert (= (and start!103946 res!829588) b!1243687))

(assert (= (and b!1243687 res!829589) b!1243684))

(assert (= (and b!1243684 res!829594) b!1243692))

(assert (= (and b!1243692 res!829587) b!1243690))

(assert (= (and b!1243690 res!829585) b!1243691))

(assert (= (and b!1243691 res!829593) b!1243685))

(assert (= (and b!1243685 res!829591) b!1243688))

(assert (= (and b!1243688 res!829590) b!1243683))

(assert (= (and b!1243683 res!829592) b!1243682))

(assert (= (and b!1243682 res!829584) b!1243689))

(assert (= (and b!1243689 res!829586) b!1243686))

(declare-fun m!1146177 () Bool)

(assert (=> b!1243687 m!1146177))

(declare-fun m!1146179 () Bool)

(assert (=> b!1243686 m!1146179))

(declare-fun m!1146181 () Bool)

(assert (=> b!1243686 m!1146181))

(declare-fun m!1146183 () Bool)

(assert (=> b!1243692 m!1146183))

(assert (=> b!1243692 m!1146183))

(declare-fun m!1146185 () Bool)

(assert (=> b!1243692 m!1146185))

(declare-fun m!1146187 () Bool)

(assert (=> start!103946 m!1146187))

(declare-fun m!1146189 () Bool)

(assert (=> b!1243683 m!1146189))

(declare-fun m!1146191 () Bool)

(assert (=> b!1243689 m!1146191))

(declare-fun m!1146193 () Bool)

(assert (=> b!1243688 m!1146193))

(declare-fun m!1146195 () Bool)

(assert (=> b!1243682 m!1146195))

(declare-fun m!1146197 () Bool)

(assert (=> b!1243691 m!1146197))

(assert (=> b!1243690 m!1146183))

(declare-fun m!1146199 () Bool)

(assert (=> b!1243685 m!1146199))

(check-sat (not b!1243688) (not b!1243687) (not b!1243682) (not b!1243685) (not b!1243689) (not b!1243691) (not b!1243683) (not start!103946) (not b!1243686) (not b!1243692))
(check-sat)
