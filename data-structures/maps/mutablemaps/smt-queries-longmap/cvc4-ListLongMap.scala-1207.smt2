; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25724 () Bool)

(assert start!25724)

(declare-fun b!266590 () Bool)

(declare-fun res!130929 () Bool)

(declare-fun e!172465 () Bool)

(assert (=> b!266590 (=> (not res!130929) (not e!172465))))

(declare-datatypes ((array!12890 0))(
  ( (array!12891 (arr!6099 (Array (_ BitVec 32) (_ BitVec 64))) (size!6451 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12890)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266590 (= res!130929 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266591 () Bool)

(declare-fun e!172463 () Bool)

(assert (=> b!266591 (= e!172463 false)))

(declare-fun lt!134504 () Bool)

(declare-datatypes ((List!3934 0))(
  ( (Nil!3931) (Cons!3930 (h!4597 (_ BitVec 64)) (t!9024 List!3934)) )
))
(declare-fun arrayNoDuplicates!0 (array!12890 (_ BitVec 32) List!3934) Bool)

(assert (=> b!266591 (= lt!134504 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3931))))

(declare-fun b!266593 () Bool)

(declare-fun res!130924 () Bool)

(assert (=> b!266593 (=> (not res!130924) (not e!172463))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12890 (_ BitVec 32)) Bool)

(assert (=> b!266593 (= res!130924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130928 () Bool)

(assert (=> start!25724 (=> (not res!130928) (not e!172465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25724 (= res!130928 (validMask!0 mask!4002))))

(assert (=> start!25724 e!172465))

(assert (=> start!25724 true))

(declare-fun array_inv!4053 (array!12890) Bool)

(assert (=> start!25724 (array_inv!4053 a!3436)))

(declare-fun b!266592 () Bool)

(declare-fun res!130927 () Bool)

(assert (=> b!266592 (=> (not res!130927) (not e!172465))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266592 (= res!130927 (and (= (size!6451 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6451 a!3436))))))

(declare-fun b!266594 () Bool)

(assert (=> b!266594 (= e!172465 e!172463)))

(declare-fun res!130926 () Bool)

(assert (=> b!266594 (=> (not res!130926) (not e!172463))))

(declare-datatypes ((SeekEntryResult!1301 0))(
  ( (MissingZero!1301 (index!7374 (_ BitVec 32))) (Found!1301 (index!7375 (_ BitVec 32))) (Intermediate!1301 (undefined!2113 Bool) (index!7376 (_ BitVec 32)) (x!25642 (_ BitVec 32))) (Undefined!1301) (MissingVacant!1301 (index!7377 (_ BitVec 32))) )
))
(declare-fun lt!134503 () SeekEntryResult!1301)

(assert (=> b!266594 (= res!130926 (or (= lt!134503 (MissingZero!1301 i!1355)) (= lt!134503 (MissingVacant!1301 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12890 (_ BitVec 32)) SeekEntryResult!1301)

(assert (=> b!266594 (= lt!134503 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266595 () Bool)

(declare-fun res!130925 () Bool)

(assert (=> b!266595 (=> (not res!130925) (not e!172465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266595 (= res!130925 (validKeyInArray!0 k!2698))))

(assert (= (and start!25724 res!130928) b!266592))

(assert (= (and b!266592 res!130927) b!266595))

(assert (= (and b!266595 res!130925) b!266590))

(assert (= (and b!266590 res!130929) b!266594))

(assert (= (and b!266594 res!130926) b!266593))

(assert (= (and b!266593 res!130924) b!266591))

(declare-fun m!283191 () Bool)

(assert (=> b!266593 m!283191))

(declare-fun m!283193 () Bool)

(assert (=> b!266591 m!283193))

(declare-fun m!283195 () Bool)

(assert (=> b!266595 m!283195))

(declare-fun m!283197 () Bool)

(assert (=> b!266590 m!283197))

(declare-fun m!283199 () Bool)

(assert (=> start!25724 m!283199))

(declare-fun m!283201 () Bool)

(assert (=> start!25724 m!283201))

(declare-fun m!283203 () Bool)

(assert (=> b!266594 m!283203))

(push 1)

(assert (not b!266595))

(assert (not b!266591))

(assert (not b!266594))

(assert (not b!266590))

(assert (not start!25724))

(assert (not b!266593))

(check-sat)

