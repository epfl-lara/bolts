; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26208 () Bool)

(assert start!26208)

(declare-fun b!270744 () Bool)

(declare-fun res!134782 () Bool)

(declare-fun e!174387 () Bool)

(assert (=> b!270744 (=> (not res!134782) (not e!174387))))

(declare-datatypes ((array!13294 0))(
  ( (array!13295 (arr!6296 (Array (_ BitVec 32) (_ BitVec 64))) (size!6648 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13294)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270744 (= res!134782 (validKeyInArray!0 (select (arr!6296 a!3325) startIndex!26)))))

(declare-fun b!270745 () Bool)

(declare-fun res!134781 () Bool)

(declare-fun e!174388 () Bool)

(assert (=> b!270745 (=> (not res!134781) (not e!174388))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270745 (= res!134781 (and (= (size!6648 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6648 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6648 a!3325))))))

(declare-fun b!270746 () Bool)

(assert (=> b!270746 (= e!174388 e!174387)))

(declare-fun res!134773 () Bool)

(assert (=> b!270746 (=> (not res!134773) (not e!174387))))

(declare-datatypes ((SeekEntryResult!1465 0))(
  ( (MissingZero!1465 (index!8030 (_ BitVec 32))) (Found!1465 (index!8031 (_ BitVec 32))) (Intermediate!1465 (undefined!2277 Bool) (index!8032 (_ BitVec 32)) (x!26334 (_ BitVec 32))) (Undefined!1465) (MissingVacant!1465 (index!8033 (_ BitVec 32))) )
))
(declare-fun lt!135724 () SeekEntryResult!1465)

(assert (=> b!270746 (= res!134773 (or (= lt!135724 (MissingZero!1465 i!1267)) (= lt!135724 (MissingVacant!1465 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13294 (_ BitVec 32)) SeekEntryResult!1465)

(assert (=> b!270746 (= lt!135724 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270747 () Bool)

(declare-fun res!134774 () Bool)

(assert (=> b!270747 (=> (not res!134774) (not e!174387))))

(declare-datatypes ((List!4125 0))(
  ( (Nil!4122) (Cons!4121 (h!4788 (_ BitVec 64)) (t!9215 List!4125)) )
))
(declare-fun contains!1934 (List!4125 (_ BitVec 64)) Bool)

(assert (=> b!270747 (= res!134774 (not (contains!1934 Nil!4122 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270748 () Bool)

(assert (=> b!270748 (= e!174387 false)))

(declare-fun lt!135725 () Bool)

(assert (=> b!270748 (= lt!135725 (contains!1934 Nil!4122 k0!2581))))

(declare-fun b!270749 () Bool)

(declare-fun res!134775 () Bool)

(assert (=> b!270749 (=> (not res!134775) (not e!174388))))

(declare-fun arrayNoDuplicates!0 (array!13294 (_ BitVec 32) List!4125) Bool)

(assert (=> b!270749 (= res!134775 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4122))))

(declare-fun res!134783 () Bool)

(assert (=> start!26208 (=> (not res!134783) (not e!174388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26208 (= res!134783 (validMask!0 mask!3868))))

(assert (=> start!26208 e!174388))

(declare-fun array_inv!4250 (array!13294) Bool)

(assert (=> start!26208 (array_inv!4250 a!3325)))

(assert (=> start!26208 true))

(declare-fun b!270750 () Bool)

(declare-fun res!134776 () Bool)

(assert (=> b!270750 (=> (not res!134776) (not e!174387))))

(declare-fun noDuplicate!123 (List!4125) Bool)

(assert (=> b!270750 (= res!134776 (noDuplicate!123 Nil!4122))))

(declare-fun b!270751 () Bool)

(declare-fun res!134779 () Bool)

(assert (=> b!270751 (=> (not res!134779) (not e!174387))))

(assert (=> b!270751 (= res!134779 (not (= startIndex!26 i!1267)))))

(declare-fun b!270752 () Bool)

(declare-fun res!134780 () Bool)

(assert (=> b!270752 (=> (not res!134780) (not e!174388))))

(assert (=> b!270752 (= res!134780 (validKeyInArray!0 k0!2581))))

(declare-fun b!270753 () Bool)

(declare-fun res!134778 () Bool)

(assert (=> b!270753 (=> (not res!134778) (not e!174387))))

(assert (=> b!270753 (= res!134778 (and (bvslt (size!6648 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6648 a!3325))))))

(declare-fun b!270754 () Bool)

(declare-fun res!134772 () Bool)

(assert (=> b!270754 (=> (not res!134772) (not e!174387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13294 (_ BitVec 32)) Bool)

(assert (=> b!270754 (= res!134772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270755 () Bool)

(declare-fun res!134784 () Bool)

(assert (=> b!270755 (=> (not res!134784) (not e!174387))))

(assert (=> b!270755 (= res!134784 (not (contains!1934 Nil!4122 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270756 () Bool)

(declare-fun res!134777 () Bool)

(assert (=> b!270756 (=> (not res!134777) (not e!174388))))

(declare-fun arrayContainsKey!0 (array!13294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270756 (= res!134777 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26208 res!134783) b!270745))

(assert (= (and b!270745 res!134781) b!270752))

(assert (= (and b!270752 res!134780) b!270749))

(assert (= (and b!270749 res!134775) b!270756))

(assert (= (and b!270756 res!134777) b!270746))

(assert (= (and b!270746 res!134773) b!270754))

(assert (= (and b!270754 res!134772) b!270751))

(assert (= (and b!270751 res!134779) b!270744))

(assert (= (and b!270744 res!134782) b!270753))

(assert (= (and b!270753 res!134778) b!270750))

(assert (= (and b!270750 res!134776) b!270755))

(assert (= (and b!270755 res!134784) b!270747))

(assert (= (and b!270747 res!134774) b!270748))

(declare-fun m!286287 () Bool)

(assert (=> b!270754 m!286287))

(declare-fun m!286289 () Bool)

(assert (=> b!270744 m!286289))

(assert (=> b!270744 m!286289))

(declare-fun m!286291 () Bool)

(assert (=> b!270744 m!286291))

(declare-fun m!286293 () Bool)

(assert (=> b!270756 m!286293))

(declare-fun m!286295 () Bool)

(assert (=> b!270749 m!286295))

(declare-fun m!286297 () Bool)

(assert (=> b!270746 m!286297))

(declare-fun m!286299 () Bool)

(assert (=> b!270755 m!286299))

(declare-fun m!286301 () Bool)

(assert (=> b!270752 m!286301))

(declare-fun m!286303 () Bool)

(assert (=> b!270747 m!286303))

(declare-fun m!286305 () Bool)

(assert (=> b!270748 m!286305))

(declare-fun m!286307 () Bool)

(assert (=> b!270750 m!286307))

(declare-fun m!286309 () Bool)

(assert (=> start!26208 m!286309))

(declare-fun m!286311 () Bool)

(assert (=> start!26208 m!286311))

(check-sat (not b!270754) (not b!270755) (not start!26208) (not b!270747) (not b!270744) (not b!270746) (not b!270752) (not b!270750) (not b!270749) (not b!270748) (not b!270756))
(check-sat)
