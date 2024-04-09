; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25974 () Bool)

(assert start!25974)

(declare-fun b!267933 () Bool)

(declare-fun e!173158 () Bool)

(assert (=> b!267933 (= e!173158 false)))

(declare-datatypes ((SeekEntryResult!1348 0))(
  ( (MissingZero!1348 (index!7562 (_ BitVec 32))) (Found!1348 (index!7563 (_ BitVec 32))) (Intermediate!1348 (undefined!2160 Bool) (index!7564 (_ BitVec 32)) (x!25905 (_ BitVec 32))) (Undefined!1348) (MissingVacant!1348 (index!7565 (_ BitVec 32))) )
))
(declare-fun lt!134783 () SeekEntryResult!1348)

(declare-datatypes ((array!13060 0))(
  ( (array!13061 (arr!6179 (Array (_ BitVec 32) (_ BitVec 64))) (size!6531 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13060)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13060 (_ BitVec 32)) SeekEntryResult!1348)

(assert (=> b!267933 (= lt!134783 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!267934 () Bool)

(declare-fun res!132249 () Bool)

(assert (=> b!267934 (=> (not res!132249) (not e!173158))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267934 (= res!132249 (and (= (size!6531 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6531 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6531 a!3325))))))

(declare-fun b!267935 () Bool)

(declare-fun res!132251 () Bool)

(assert (=> b!267935 (=> (not res!132251) (not e!173158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267935 (= res!132251 (validKeyInArray!0 k0!2581))))

(declare-fun b!267936 () Bool)

(declare-fun res!132250 () Bool)

(assert (=> b!267936 (=> (not res!132250) (not e!173158))))

(declare-datatypes ((List!4008 0))(
  ( (Nil!4005) (Cons!4004 (h!4671 (_ BitVec 64)) (t!9098 List!4008)) )
))
(declare-fun arrayNoDuplicates!0 (array!13060 (_ BitVec 32) List!4008) Bool)

(assert (=> b!267936 (= res!132250 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4005))))

(declare-fun res!132252 () Bool)

(assert (=> start!25974 (=> (not res!132252) (not e!173158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25974 (= res!132252 (validMask!0 mask!3868))))

(assert (=> start!25974 e!173158))

(declare-fun array_inv!4133 (array!13060) Bool)

(assert (=> start!25974 (array_inv!4133 a!3325)))

(assert (=> start!25974 true))

(declare-fun b!267932 () Bool)

(declare-fun res!132248 () Bool)

(assert (=> b!267932 (=> (not res!132248) (not e!173158))))

(declare-fun arrayContainsKey!0 (array!13060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267932 (= res!132248 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!25974 res!132252) b!267934))

(assert (= (and b!267934 res!132249) b!267935))

(assert (= (and b!267935 res!132251) b!267936))

(assert (= (and b!267936 res!132250) b!267932))

(assert (= (and b!267932 res!132248) b!267933))

(declare-fun m!284209 () Bool)

(assert (=> b!267933 m!284209))

(declare-fun m!284211 () Bool)

(assert (=> start!25974 m!284211))

(declare-fun m!284213 () Bool)

(assert (=> start!25974 m!284213))

(declare-fun m!284215 () Bool)

(assert (=> b!267932 m!284215))

(declare-fun m!284217 () Bool)

(assert (=> b!267935 m!284217))

(declare-fun m!284219 () Bool)

(assert (=> b!267936 m!284219))

(check-sat (not b!267933) (not start!25974) (not b!267932) (not b!267935) (not b!267936))
