; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26206 () Bool)

(assert start!26206)

(declare-fun b!270705 () Bool)

(declare-fun res!134734 () Bool)

(declare-fun e!174379 () Bool)

(assert (=> b!270705 (=> (not res!134734) (not e!174379))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270705 (= res!134734 (validKeyInArray!0 k!2581))))

(declare-fun b!270706 () Bool)

(declare-fun e!174377 () Bool)

(assert (=> b!270706 (= e!174377 false)))

(declare-fun lt!135718 () Bool)

(declare-datatypes ((List!4124 0))(
  ( (Nil!4121) (Cons!4120 (h!4787 (_ BitVec 64)) (t!9214 List!4124)) )
))
(declare-fun contains!1933 (List!4124 (_ BitVec 64)) Bool)

(assert (=> b!270706 (= lt!135718 (contains!1933 Nil!4121 k!2581))))

(declare-fun b!270707 () Bool)

(declare-fun res!134744 () Bool)

(assert (=> b!270707 (=> (not res!134744) (not e!174379))))

(declare-datatypes ((array!13292 0))(
  ( (array!13293 (arr!6295 (Array (_ BitVec 32) (_ BitVec 64))) (size!6647 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13292)

(declare-fun arrayNoDuplicates!0 (array!13292 (_ BitVec 32) List!4124) Bool)

(assert (=> b!270707 (= res!134744 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4121))))

(declare-fun b!270708 () Bool)

(declare-fun res!134742 () Bool)

(assert (=> b!270708 (=> (not res!134742) (not e!174377))))

(declare-fun noDuplicate!122 (List!4124) Bool)

(assert (=> b!270708 (= res!134742 (noDuplicate!122 Nil!4121))))

(declare-fun b!270709 () Bool)

(declare-fun res!134737 () Bool)

(assert (=> b!270709 (=> (not res!134737) (not e!174377))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270709 (= res!134737 (not (= startIndex!26 i!1267)))))

(declare-fun b!270710 () Bool)

(declare-fun res!134738 () Bool)

(assert (=> b!270710 (=> (not res!134738) (not e!174377))))

(assert (=> b!270710 (= res!134738 (validKeyInArray!0 (select (arr!6295 a!3325) startIndex!26)))))

(declare-fun b!270711 () Bool)

(declare-fun res!134743 () Bool)

(assert (=> b!270711 (=> (not res!134743) (not e!174379))))

(declare-fun arrayContainsKey!0 (array!13292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270711 (= res!134743 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270712 () Bool)

(declare-fun res!134745 () Bool)

(assert (=> b!270712 (=> (not res!134745) (not e!174377))))

(assert (=> b!270712 (= res!134745 (not (contains!1933 Nil!4121 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270713 () Bool)

(declare-fun res!134735 () Bool)

(assert (=> b!270713 (=> (not res!134735) (not e!174377))))

(assert (=> b!270713 (= res!134735 (and (bvslt (size!6647 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6647 a!3325))))))

(declare-fun res!134740 () Bool)

(assert (=> start!26206 (=> (not res!134740) (not e!174379))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26206 (= res!134740 (validMask!0 mask!3868))))

(assert (=> start!26206 e!174379))

(declare-fun array_inv!4249 (array!13292) Bool)

(assert (=> start!26206 (array_inv!4249 a!3325)))

(assert (=> start!26206 true))

(declare-fun b!270714 () Bool)

(declare-fun res!134736 () Bool)

(assert (=> b!270714 (=> (not res!134736) (not e!174377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13292 (_ BitVec 32)) Bool)

(assert (=> b!270714 (= res!134736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270715 () Bool)

(declare-fun res!134733 () Bool)

(assert (=> b!270715 (=> (not res!134733) (not e!174377))))

(assert (=> b!270715 (= res!134733 (not (contains!1933 Nil!4121 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270716 () Bool)

(assert (=> b!270716 (= e!174379 e!174377)))

(declare-fun res!134741 () Bool)

(assert (=> b!270716 (=> (not res!134741) (not e!174377))))

(declare-datatypes ((SeekEntryResult!1464 0))(
  ( (MissingZero!1464 (index!8026 (_ BitVec 32))) (Found!1464 (index!8027 (_ BitVec 32))) (Intermediate!1464 (undefined!2276 Bool) (index!8028 (_ BitVec 32)) (x!26333 (_ BitVec 32))) (Undefined!1464) (MissingVacant!1464 (index!8029 (_ BitVec 32))) )
))
(declare-fun lt!135719 () SeekEntryResult!1464)

(assert (=> b!270716 (= res!134741 (or (= lt!135719 (MissingZero!1464 i!1267)) (= lt!135719 (MissingVacant!1464 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13292 (_ BitVec 32)) SeekEntryResult!1464)

(assert (=> b!270716 (= lt!135719 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270717 () Bool)

(declare-fun res!134739 () Bool)

(assert (=> b!270717 (=> (not res!134739) (not e!174379))))

(assert (=> b!270717 (= res!134739 (and (= (size!6647 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6647 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6647 a!3325))))))

(assert (= (and start!26206 res!134740) b!270717))

(assert (= (and b!270717 res!134739) b!270705))

(assert (= (and b!270705 res!134734) b!270707))

(assert (= (and b!270707 res!134744) b!270711))

(assert (= (and b!270711 res!134743) b!270716))

(assert (= (and b!270716 res!134741) b!270714))

(assert (= (and b!270714 res!134736) b!270709))

(assert (= (and b!270709 res!134737) b!270710))

(assert (= (and b!270710 res!134738) b!270713))

(assert (= (and b!270713 res!134735) b!270708))

(assert (= (and b!270708 res!134742) b!270712))

(assert (= (and b!270712 res!134745) b!270715))

(assert (= (and b!270715 res!134733) b!270706))

(declare-fun m!286261 () Bool)

(assert (=> b!270716 m!286261))

(declare-fun m!286263 () Bool)

(assert (=> b!270712 m!286263))

(declare-fun m!286265 () Bool)

(assert (=> b!270708 m!286265))

(declare-fun m!286267 () Bool)

(assert (=> b!270706 m!286267))

(declare-fun m!286269 () Bool)

(assert (=> b!270711 m!286269))

(declare-fun m!286271 () Bool)

(assert (=> b!270707 m!286271))

(declare-fun m!286273 () Bool)

(assert (=> b!270710 m!286273))

(assert (=> b!270710 m!286273))

(declare-fun m!286275 () Bool)

(assert (=> b!270710 m!286275))

(declare-fun m!286277 () Bool)

(assert (=> start!26206 m!286277))

(declare-fun m!286279 () Bool)

(assert (=> start!26206 m!286279))

(declare-fun m!286281 () Bool)

(assert (=> b!270705 m!286281))

(declare-fun m!286283 () Bool)

(assert (=> b!270714 m!286283))

(declare-fun m!286285 () Bool)

(assert (=> b!270715 m!286285))

(push 1)

