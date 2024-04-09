; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25690 () Bool)

(assert start!25690)

(declare-fun b!266216 () Bool)

(declare-fun res!130556 () Bool)

(declare-fun e!172312 () Bool)

(assert (=> b!266216 (=> (not res!130556) (not e!172312))))

(declare-datatypes ((array!12856 0))(
  ( (array!12857 (arr!6082 (Array (_ BitVec 32) (_ BitVec 64))) (size!6434 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12856)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12856 (_ BitVec 32)) Bool)

(assert (=> b!266216 (= res!130556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266217 () Bool)

(declare-fun e!172310 () Bool)

(assert (=> b!266217 (= e!172310 e!172312)))

(declare-fun res!130557 () Bool)

(assert (=> b!266217 (=> (not res!130557) (not e!172312))))

(declare-datatypes ((SeekEntryResult!1284 0))(
  ( (MissingZero!1284 (index!7306 (_ BitVec 32))) (Found!1284 (index!7307 (_ BitVec 32))) (Intermediate!1284 (undefined!2096 Bool) (index!7308 (_ BitVec 32)) (x!25585 (_ BitVec 32))) (Undefined!1284) (MissingVacant!1284 (index!7309 (_ BitVec 32))) )
))
(declare-fun lt!134402 () SeekEntryResult!1284)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266217 (= res!130557 (or (= lt!134402 (MissingZero!1284 i!1355)) (= lt!134402 (MissingVacant!1284 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12856 (_ BitVec 32)) SeekEntryResult!1284)

(assert (=> b!266217 (= lt!134402 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266219 () Bool)

(declare-fun res!130553 () Bool)

(assert (=> b!266219 (=> (not res!130553) (not e!172312))))

(declare-datatypes ((List!3917 0))(
  ( (Nil!3914) (Cons!3913 (h!4580 (_ BitVec 64)) (t!9007 List!3917)) )
))
(declare-fun arrayNoDuplicates!0 (array!12856 (_ BitVec 32) List!3917) Bool)

(assert (=> b!266219 (= res!130553 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3914))))

(declare-fun b!266220 () Bool)

(declare-fun res!130550 () Bool)

(assert (=> b!266220 (=> (not res!130550) (not e!172312))))

(assert (=> b!266220 (= res!130550 (bvslt #b00000000000000000000000000000000 (size!6434 a!3436)))))

(declare-fun b!266221 () Bool)

(assert (=> b!266221 (= e!172312 (not true))))

(assert (=> b!266221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12857 (store (arr!6082 a!3436) i!1355 k!2698) (size!6434 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8268 0))(
  ( (Unit!8269) )
))
(declare-fun lt!134401 () Unit!8268)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12856 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8268)

(assert (=> b!266221 (= lt!134401 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266222 () Bool)

(declare-fun res!130554 () Bool)

(assert (=> b!266222 (=> (not res!130554) (not e!172310))))

(assert (=> b!266222 (= res!130554 (and (= (size!6434 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6434 a!3436))))))

(declare-fun b!266223 () Bool)

(declare-fun res!130551 () Bool)

(assert (=> b!266223 (=> (not res!130551) (not e!172310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266223 (= res!130551 (validKeyInArray!0 k!2698))))

(declare-fun b!266218 () Bool)

(declare-fun res!130552 () Bool)

(assert (=> b!266218 (=> (not res!130552) (not e!172310))))

(declare-fun arrayContainsKey!0 (array!12856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266218 (= res!130552 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!130555 () Bool)

(assert (=> start!25690 (=> (not res!130555) (not e!172310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25690 (= res!130555 (validMask!0 mask!4002))))

(assert (=> start!25690 e!172310))

(assert (=> start!25690 true))

(declare-fun array_inv!4036 (array!12856) Bool)

(assert (=> start!25690 (array_inv!4036 a!3436)))

(assert (= (and start!25690 res!130555) b!266222))

(assert (= (and b!266222 res!130554) b!266223))

(assert (= (and b!266223 res!130551) b!266218))

(assert (= (and b!266218 res!130552) b!266217))

(assert (= (and b!266217 res!130557) b!266216))

(assert (= (and b!266216 res!130556) b!266219))

(assert (= (and b!266219 res!130553) b!266220))

(assert (= (and b!266220 res!130550) b!266221))

(declare-fun m!282881 () Bool)

(assert (=> b!266219 m!282881))

(declare-fun m!282883 () Bool)

(assert (=> start!25690 m!282883))

(declare-fun m!282885 () Bool)

(assert (=> start!25690 m!282885))

(declare-fun m!282887 () Bool)

(assert (=> b!266218 m!282887))

(declare-fun m!282889 () Bool)

(assert (=> b!266217 m!282889))

(declare-fun m!282891 () Bool)

(assert (=> b!266221 m!282891))

(declare-fun m!282893 () Bool)

(assert (=> b!266221 m!282893))

(declare-fun m!282895 () Bool)

(assert (=> b!266221 m!282895))

(declare-fun m!282897 () Bool)

(assert (=> b!266216 m!282897))

(declare-fun m!282899 () Bool)

(assert (=> b!266223 m!282899))

(push 1)

