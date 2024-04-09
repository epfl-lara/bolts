; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30006 () Bool)

(assert start!30006)

(declare-fun res!158835 () Bool)

(declare-fun e!189987 () Bool)

(assert (=> start!30006 (=> (not res!158835) (not e!189987))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30006 (= res!158835 (validMask!0 mask!3709))))

(assert (=> start!30006 e!189987))

(assert (=> start!30006 true))

(declare-datatypes ((array!15227 0))(
  ( (array!15228 (arr!7204 (Array (_ BitVec 32) (_ BitVec 64))) (size!7556 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15227)

(declare-fun array_inv!5158 (array!15227) Bool)

(assert (=> start!30006 (array_inv!5158 a!3293)))

(declare-fun b!300925 () Bool)

(declare-fun res!158832 () Bool)

(assert (=> b!300925 (=> (not res!158832) (not e!189987))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300925 (= res!158832 (validKeyInArray!0 k!2441))))

(declare-fun b!300924 () Bool)

(declare-fun res!158834 () Bool)

(assert (=> b!300924 (=> (not res!158834) (not e!189987))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300924 (= res!158834 (and (= (size!7556 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7556 a!3293))))))

(declare-fun b!300926 () Bool)

(declare-fun res!158833 () Bool)

(assert (=> b!300926 (=> (not res!158833) (not e!189987))))

(declare-fun arrayContainsKey!0 (array!15227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300926 (= res!158833 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300927 () Bool)

(assert (=> b!300927 (= e!189987 false)))

(declare-datatypes ((SeekEntryResult!2355 0))(
  ( (MissingZero!2355 (index!11596 (_ BitVec 32))) (Found!2355 (index!11597 (_ BitVec 32))) (Intermediate!2355 (undefined!3167 Bool) (index!11598 (_ BitVec 32)) (x!29846 (_ BitVec 32))) (Undefined!2355) (MissingVacant!2355 (index!11599 (_ BitVec 32))) )
))
(declare-fun lt!149735 () SeekEntryResult!2355)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15227 (_ BitVec 32)) SeekEntryResult!2355)

(assert (=> b!300927 (= lt!149735 (seekEntryOrOpen!0 k!2441 a!3293 mask!3709))))

(assert (= (and start!30006 res!158835) b!300924))

(assert (= (and b!300924 res!158834) b!300925))

(assert (= (and b!300925 res!158832) b!300926))

(assert (= (and b!300926 res!158833) b!300927))

(declare-fun m!312829 () Bool)

(assert (=> start!30006 m!312829))

(declare-fun m!312831 () Bool)

(assert (=> start!30006 m!312831))

(declare-fun m!312833 () Bool)

(assert (=> b!300925 m!312833))

(declare-fun m!312835 () Bool)

(assert (=> b!300926 m!312835))

(declare-fun m!312837 () Bool)

(assert (=> b!300927 m!312837))

(push 1)

(assert (not b!300927))

(assert (not b!300925))

(assert (not b!300926))

(assert (not start!30006))

(check-sat)

