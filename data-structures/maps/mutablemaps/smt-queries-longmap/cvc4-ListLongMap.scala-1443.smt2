; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27872 () Bool)

(assert start!27872)

(declare-fun b!286495 () Bool)

(declare-fun res!148614 () Bool)

(declare-fun e!181536 () Bool)

(assert (=> b!286495 (=> (not res!148614) (not e!181536))))

(declare-datatypes ((array!14349 0))(
  ( (array!14350 (arr!6807 (Array (_ BitVec 32) (_ BitVec 64))) (size!7159 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14349)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286495 (= res!148614 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148612 () Bool)

(assert (=> start!27872 (=> (not res!148612) (not e!181536))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27872 (= res!148612 (validMask!0 mask!3809))))

(assert (=> start!27872 e!181536))

(assert (=> start!27872 true))

(declare-fun array_inv!4761 (array!14349) Bool)

(assert (=> start!27872 (array_inv!4761 a!3312)))

(declare-fun b!286496 () Bool)

(declare-fun res!148613 () Bool)

(assert (=> b!286496 (=> (not res!148613) (not e!181536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286496 (= res!148613 (validKeyInArray!0 k!2524))))

(declare-fun b!286497 () Bool)

(declare-fun e!181537 () Bool)

(assert (=> b!286497 (= e!181536 e!181537)))

(declare-fun res!148615 () Bool)

(assert (=> b!286497 (=> (not res!148615) (not e!181537))))

(declare-datatypes ((SeekEntryResult!1967 0))(
  ( (MissingZero!1967 (index!10038 (_ BitVec 32))) (Found!1967 (index!10039 (_ BitVec 32))) (Intermediate!1967 (undefined!2779 Bool) (index!10040 (_ BitVec 32)) (x!28223 (_ BitVec 32))) (Undefined!1967) (MissingVacant!1967 (index!10041 (_ BitVec 32))) )
))
(declare-fun lt!141160 () SeekEntryResult!1967)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286497 (= res!148615 (or (= lt!141160 (MissingZero!1967 i!1256)) (= lt!141160 (MissingVacant!1967 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14349 (_ BitVec 32)) SeekEntryResult!1967)

(assert (=> b!286497 (= lt!141160 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286498 () Bool)

(declare-fun res!148617 () Bool)

(assert (=> b!286498 (=> (not res!148617) (not e!181536))))

(assert (=> b!286498 (= res!148617 (and (= (size!7159 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7159 a!3312))))))

(declare-fun b!286499 () Bool)

(declare-fun res!148616 () Bool)

(assert (=> b!286499 (=> (not res!148616) (not e!181537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14349 (_ BitVec 32)) Bool)

(assert (=> b!286499 (= res!148616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286500 () Bool)

(assert (=> b!286500 (= e!181537 false)))

(declare-fun lt!141161 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286500 (= lt!141161 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!27872 res!148612) b!286498))

(assert (= (and b!286498 res!148617) b!286496))

(assert (= (and b!286496 res!148613) b!286495))

(assert (= (and b!286495 res!148614) b!286497))

(assert (= (and b!286497 res!148615) b!286499))

(assert (= (and b!286499 res!148616) b!286500))

(declare-fun m!301187 () Bool)

(assert (=> start!27872 m!301187))

(declare-fun m!301189 () Bool)

(assert (=> start!27872 m!301189))

(declare-fun m!301191 () Bool)

(assert (=> b!286499 m!301191))

(declare-fun m!301193 () Bool)

(assert (=> b!286497 m!301193))

(declare-fun m!301195 () Bool)

(assert (=> b!286495 m!301195))

(declare-fun m!301197 () Bool)

(assert (=> b!286500 m!301197))

(declare-fun m!301199 () Bool)

(assert (=> b!286496 m!301199))

(push 1)

(assert (not b!286499))

(assert (not b!286496))

(assert (not b!286495))

(assert (not b!286497))

(assert (not start!27872))

