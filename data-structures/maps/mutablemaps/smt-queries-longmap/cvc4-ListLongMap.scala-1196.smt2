; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25658 () Bool)

(assert start!25658)

(declare-fun b!265924 () Bool)

(declare-fun e!172166 () Bool)

(declare-fun e!172168 () Bool)

(assert (=> b!265924 (= e!172166 e!172168)))

(declare-fun res!130258 () Bool)

(assert (=> b!265924 (=> (not res!130258) (not e!172168))))

(declare-datatypes ((SeekEntryResult!1268 0))(
  ( (MissingZero!1268 (index!7242 (_ BitVec 32))) (Found!1268 (index!7243 (_ BitVec 32))) (Intermediate!1268 (undefined!2080 Bool) (index!7244 (_ BitVec 32)) (x!25521 (_ BitVec 32))) (Undefined!1268) (MissingVacant!1268 (index!7245 (_ BitVec 32))) )
))
(declare-fun lt!134306 () SeekEntryResult!1268)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265924 (= res!130258 (or (= lt!134306 (MissingZero!1268 i!1355)) (= lt!134306 (MissingVacant!1268 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-datatypes ((array!12824 0))(
  ( (array!12825 (arr!6066 (Array (_ BitVec 32) (_ BitVec 64))) (size!6418 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12824)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12824 (_ BitVec 32)) SeekEntryResult!1268)

(assert (=> b!265924 (= lt!134306 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265925 () Bool)

(declare-fun res!130259 () Bool)

(assert (=> b!265925 (=> (not res!130259) (not e!172166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265925 (= res!130259 (validKeyInArray!0 k!2698))))

(declare-fun b!265926 () Bool)

(declare-fun res!130260 () Bool)

(assert (=> b!265926 (=> (not res!130260) (not e!172168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12824 (_ BitVec 32)) Bool)

(assert (=> b!265926 (= res!130260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265927 () Bool)

(declare-fun res!130262 () Bool)

(assert (=> b!265927 (=> (not res!130262) (not e!172166))))

(declare-fun arrayContainsKey!0 (array!12824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265927 (= res!130262 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265928 () Bool)

(assert (=> b!265928 (= e!172168 false)))

(declare-fun lt!134305 () Bool)

(declare-datatypes ((List!3901 0))(
  ( (Nil!3898) (Cons!3897 (h!4564 (_ BitVec 64)) (t!8991 List!3901)) )
))
(declare-fun arrayNoDuplicates!0 (array!12824 (_ BitVec 32) List!3901) Bool)

(assert (=> b!265928 (= lt!134305 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3898))))

(declare-fun res!130263 () Bool)

(assert (=> start!25658 (=> (not res!130263) (not e!172166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25658 (= res!130263 (validMask!0 mask!4002))))

(assert (=> start!25658 e!172166))

(assert (=> start!25658 true))

(declare-fun array_inv!4020 (array!12824) Bool)

(assert (=> start!25658 (array_inv!4020 a!3436)))

(declare-fun b!265929 () Bool)

(declare-fun res!130261 () Bool)

(assert (=> b!265929 (=> (not res!130261) (not e!172166))))

(assert (=> b!265929 (= res!130261 (and (= (size!6418 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6418 a!3436))))))

(assert (= (and start!25658 res!130263) b!265929))

(assert (= (and b!265929 res!130261) b!265925))

(assert (= (and b!265925 res!130259) b!265927))

(assert (= (and b!265927 res!130262) b!265924))

(assert (= (and b!265924 res!130258) b!265926))

(assert (= (and b!265926 res!130260) b!265928))

(declare-fun m!282657 () Bool)

(assert (=> b!265925 m!282657))

(declare-fun m!282659 () Bool)

(assert (=> start!25658 m!282659))

(declare-fun m!282661 () Bool)

(assert (=> start!25658 m!282661))

(declare-fun m!282663 () Bool)

(assert (=> b!265926 m!282663))

(declare-fun m!282665 () Bool)

(assert (=> b!265928 m!282665))

(declare-fun m!282667 () Bool)

(assert (=> b!265927 m!282667))

(declare-fun m!282669 () Bool)

(assert (=> b!265924 m!282669))

(push 1)

(assert (not b!265924))

(assert (not b!265925))

(assert (not b!265928))

(assert (not b!265926))

(assert (not start!25658))

(assert (not b!265927))

(check-sat)

