; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25624 () Bool)

(assert start!25624)

(declare-fun b!265618 () Bool)

(declare-fun res!129955 () Bool)

(declare-fun e!172013 () Bool)

(assert (=> b!265618 (=> (not res!129955) (not e!172013))))

(declare-datatypes ((array!12790 0))(
  ( (array!12791 (arr!6049 (Array (_ BitVec 32) (_ BitVec 64))) (size!6401 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12790)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265618 (= res!129955 (and (= (size!6401 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6401 a!3436))))))

(declare-fun b!265619 () Bool)

(declare-fun e!172015 () Bool)

(assert (=> b!265619 (= e!172013 e!172015)))

(declare-fun res!129957 () Bool)

(assert (=> b!265619 (=> (not res!129957) (not e!172015))))

(declare-datatypes ((SeekEntryResult!1251 0))(
  ( (MissingZero!1251 (index!7174 (_ BitVec 32))) (Found!1251 (index!7175 (_ BitVec 32))) (Intermediate!1251 (undefined!2063 Bool) (index!7176 (_ BitVec 32)) (x!25464 (_ BitVec 32))) (Undefined!1251) (MissingVacant!1251 (index!7177 (_ BitVec 32))) )
))
(declare-fun lt!134204 () SeekEntryResult!1251)

(assert (=> b!265619 (= res!129957 (or (= lt!134204 (MissingZero!1251 i!1355)) (= lt!134204 (MissingVacant!1251 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12790 (_ BitVec 32)) SeekEntryResult!1251)

(assert (=> b!265619 (= lt!134204 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!129956 () Bool)

(assert (=> start!25624 (=> (not res!129956) (not e!172013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25624 (= res!129956 (validMask!0 mask!4002))))

(assert (=> start!25624 e!172013))

(assert (=> start!25624 true))

(declare-fun array_inv!4003 (array!12790) Bool)

(assert (=> start!25624 (array_inv!4003 a!3436)))

(declare-fun b!265620 () Bool)

(declare-fun res!129953 () Bool)

(assert (=> b!265620 (=> (not res!129953) (not e!172015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12790 (_ BitVec 32)) Bool)

(assert (=> b!265620 (= res!129953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265621 () Bool)

(assert (=> b!265621 (= e!172015 false)))

(declare-fun lt!134203 () Bool)

(declare-datatypes ((List!3884 0))(
  ( (Nil!3881) (Cons!3880 (h!4547 (_ BitVec 64)) (t!8974 List!3884)) )
))
(declare-fun arrayNoDuplicates!0 (array!12790 (_ BitVec 32) List!3884) Bool)

(assert (=> b!265621 (= lt!134203 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3881))))

(declare-fun b!265622 () Bool)

(declare-fun res!129952 () Bool)

(assert (=> b!265622 (=> (not res!129952) (not e!172013))))

(declare-fun arrayContainsKey!0 (array!12790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265622 (= res!129952 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265623 () Bool)

(declare-fun res!129954 () Bool)

(assert (=> b!265623 (=> (not res!129954) (not e!172013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265623 (= res!129954 (validKeyInArray!0 k!2698))))

(assert (= (and start!25624 res!129956) b!265618))

(assert (= (and b!265618 res!129955) b!265623))

(assert (= (and b!265623 res!129954) b!265622))

(assert (= (and b!265622 res!129952) b!265619))

(assert (= (and b!265619 res!129957) b!265620))

(assert (= (and b!265620 res!129953) b!265621))

(declare-fun m!282419 () Bool)

(assert (=> b!265619 m!282419))

(declare-fun m!282421 () Bool)

(assert (=> start!25624 m!282421))

(declare-fun m!282423 () Bool)

(assert (=> start!25624 m!282423))

(declare-fun m!282425 () Bool)

(assert (=> b!265620 m!282425))

(declare-fun m!282427 () Bool)

(assert (=> b!265622 m!282427))

(declare-fun m!282429 () Bool)

(assert (=> b!265623 m!282429))

(declare-fun m!282431 () Bool)

(assert (=> b!265621 m!282431))

(push 1)

