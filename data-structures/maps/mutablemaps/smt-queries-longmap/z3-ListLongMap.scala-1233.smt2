; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25968 () Bool)

(assert start!25968)

(declare-fun b!267887 () Bool)

(declare-fun e!173139 () Bool)

(assert (=> b!267887 (= e!173139 false)))

(declare-datatypes ((array!13054 0))(
  ( (array!13055 (arr!6176 (Array (_ BitVec 32) (_ BitVec 64))) (size!6528 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13054)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1345 0))(
  ( (MissingZero!1345 (index!7550 (_ BitVec 32))) (Found!1345 (index!7551 (_ BitVec 32))) (Intermediate!1345 (undefined!2157 Bool) (index!7552 (_ BitVec 32)) (x!25894 (_ BitVec 32))) (Undefined!1345) (MissingVacant!1345 (index!7553 (_ BitVec 32))) )
))
(declare-fun lt!134774 () SeekEntryResult!1345)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13054 (_ BitVec 32)) SeekEntryResult!1345)

(assert (=> b!267887 (= lt!134774 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!267888 () Bool)

(declare-fun res!132205 () Bool)

(assert (=> b!267888 (=> (not res!132205) (not e!173139))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267888 (= res!132205 (and (= (size!6528 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6528 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6528 a!3325))))))

(declare-fun b!267889 () Bool)

(declare-fun res!132204 () Bool)

(assert (=> b!267889 (=> (not res!132204) (not e!173139))))

(declare-fun arrayContainsKey!0 (array!13054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267889 (= res!132204 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267890 () Bool)

(declare-fun res!132203 () Bool)

(assert (=> b!267890 (=> (not res!132203) (not e!173139))))

(declare-datatypes ((List!4005 0))(
  ( (Nil!4002) (Cons!4001 (h!4668 (_ BitVec 64)) (t!9095 List!4005)) )
))
(declare-fun arrayNoDuplicates!0 (array!13054 (_ BitVec 32) List!4005) Bool)

(assert (=> b!267890 (= res!132203 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4002))))

(declare-fun b!267891 () Bool)

(declare-fun res!132206 () Bool)

(assert (=> b!267891 (=> (not res!132206) (not e!173139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267891 (= res!132206 (validKeyInArray!0 k0!2581))))

(declare-fun res!132207 () Bool)

(assert (=> start!25968 (=> (not res!132207) (not e!173139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25968 (= res!132207 (validMask!0 mask!3868))))

(assert (=> start!25968 e!173139))

(declare-fun array_inv!4130 (array!13054) Bool)

(assert (=> start!25968 (array_inv!4130 a!3325)))

(assert (=> start!25968 true))

(assert (= (and start!25968 res!132207) b!267888))

(assert (= (and b!267888 res!132205) b!267891))

(assert (= (and b!267891 res!132206) b!267890))

(assert (= (and b!267890 res!132203) b!267889))

(assert (= (and b!267889 res!132204) b!267887))

(declare-fun m!284173 () Bool)

(assert (=> start!25968 m!284173))

(declare-fun m!284175 () Bool)

(assert (=> start!25968 m!284175))

(declare-fun m!284177 () Bool)

(assert (=> b!267890 m!284177))

(declare-fun m!284179 () Bool)

(assert (=> b!267891 m!284179))

(declare-fun m!284181 () Bool)

(assert (=> b!267887 m!284181))

(declare-fun m!284183 () Bool)

(assert (=> b!267889 m!284183))

(check-sat (not b!267891) (not b!267890) (not b!267889) (not start!25968) (not b!267887))
(check-sat)
