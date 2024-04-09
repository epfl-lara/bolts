; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25686 () Bool)

(assert start!25686)

(declare-fun res!130511 () Bool)

(declare-fun e!172294 () Bool)

(assert (=> start!25686 (=> (not res!130511) (not e!172294))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25686 (= res!130511 (validMask!0 mask!4002))))

(assert (=> start!25686 e!172294))

(assert (=> start!25686 true))

(declare-datatypes ((array!12852 0))(
  ( (array!12853 (arr!6080 (Array (_ BitVec 32) (_ BitVec 64))) (size!6432 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12852)

(declare-fun array_inv!4034 (array!12852) Bool)

(assert (=> start!25686 (array_inv!4034 a!3436)))

(declare-fun b!266176 () Bool)

(declare-fun e!172293 () Bool)

(assert (=> b!266176 (= e!172294 e!172293)))

(declare-fun res!130510 () Bool)

(assert (=> b!266176 (=> (not res!130510) (not e!172293))))

(declare-datatypes ((SeekEntryResult!1282 0))(
  ( (MissingZero!1282 (index!7298 (_ BitVec 32))) (Found!1282 (index!7299 (_ BitVec 32))) (Intermediate!1282 (undefined!2094 Bool) (index!7300 (_ BitVec 32)) (x!25575 (_ BitVec 32))) (Undefined!1282) (MissingVacant!1282 (index!7301 (_ BitVec 32))) )
))
(declare-fun lt!134389 () SeekEntryResult!1282)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266176 (= res!130510 (or (= lt!134389 (MissingZero!1282 i!1355)) (= lt!134389 (MissingVacant!1282 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12852 (_ BitVec 32)) SeekEntryResult!1282)

(assert (=> b!266176 (= lt!134389 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266177 () Bool)

(assert (=> b!266177 (= e!172293 false)))

(declare-fun lt!134390 () Bool)

(declare-datatypes ((List!3915 0))(
  ( (Nil!3912) (Cons!3911 (h!4578 (_ BitVec 64)) (t!9005 List!3915)) )
))
(declare-fun arrayNoDuplicates!0 (array!12852 (_ BitVec 32) List!3915) Bool)

(assert (=> b!266177 (= lt!134390 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3912))))

(declare-fun b!266178 () Bool)

(declare-fun res!130514 () Bool)

(assert (=> b!266178 (=> (not res!130514) (not e!172294))))

(assert (=> b!266178 (= res!130514 (and (= (size!6432 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6432 a!3436))))))

(declare-fun b!266179 () Bool)

(declare-fun res!130513 () Bool)

(assert (=> b!266179 (=> (not res!130513) (not e!172294))))

(declare-fun arrayContainsKey!0 (array!12852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266179 (= res!130513 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266180 () Bool)

(declare-fun res!130515 () Bool)

(assert (=> b!266180 (=> (not res!130515) (not e!172293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12852 (_ BitVec 32)) Bool)

(assert (=> b!266180 (= res!130515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266181 () Bool)

(declare-fun res!130512 () Bool)

(assert (=> b!266181 (=> (not res!130512) (not e!172294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266181 (= res!130512 (validKeyInArray!0 k0!2698))))

(assert (= (and start!25686 res!130511) b!266178))

(assert (= (and b!266178 res!130514) b!266181))

(assert (= (and b!266181 res!130512) b!266179))

(assert (= (and b!266179 res!130513) b!266176))

(assert (= (and b!266176 res!130510) b!266180))

(assert (= (and b!266180 res!130515) b!266177))

(declare-fun m!282853 () Bool)

(assert (=> b!266177 m!282853))

(declare-fun m!282855 () Bool)

(assert (=> b!266176 m!282855))

(declare-fun m!282857 () Bool)

(assert (=> b!266180 m!282857))

(declare-fun m!282859 () Bool)

(assert (=> b!266179 m!282859))

(declare-fun m!282861 () Bool)

(assert (=> start!25686 m!282861))

(declare-fun m!282863 () Bool)

(assert (=> start!25686 m!282863))

(declare-fun m!282865 () Bool)

(assert (=> b!266181 m!282865))

(check-sat (not start!25686) (not b!266179) (not b!266177) (not b!266181) (not b!266176) (not b!266180))
(check-sat)
