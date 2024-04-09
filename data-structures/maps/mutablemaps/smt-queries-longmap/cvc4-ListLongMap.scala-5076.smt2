; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68990 () Bool)

(assert start!68990)

(declare-fun b!804372 () Bool)

(declare-fun e!445633 () Bool)

(assert (=> b!804372 (= e!445633 false)))

(declare-fun lt!360126 () Bool)

(declare-datatypes ((array!43731 0))(
  ( (array!43732 (arr!20942 (Array (_ BitVec 32) (_ BitVec 64))) (size!21363 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43731)

(declare-datatypes ((List!14958 0))(
  ( (Nil!14955) (Cons!14954 (h!16083 (_ BitVec 64)) (t!21281 List!14958)) )
))
(declare-fun arrayNoDuplicates!0 (array!43731 (_ BitVec 32) List!14958) Bool)

(assert (=> b!804372 (= lt!360126 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14955))))

(declare-fun b!804373 () Bool)

(declare-fun res!549065 () Bool)

(assert (=> b!804373 (=> (not res!549065) (not e!445633))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43731 (_ BitVec 32)) Bool)

(assert (=> b!804373 (= res!549065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804374 () Bool)

(declare-fun res!549067 () Bool)

(declare-fun e!445632 () Bool)

(assert (=> b!804374 (=> (not res!549067) (not e!445632))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804374 (= res!549067 (and (= (size!21363 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21363 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21363 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804375 () Bool)

(assert (=> b!804375 (= e!445632 e!445633)))

(declare-fun res!549063 () Bool)

(assert (=> b!804375 (=> (not res!549063) (not e!445633))))

(declare-datatypes ((SeekEntryResult!8540 0))(
  ( (MissingZero!8540 (index!36527 (_ BitVec 32))) (Found!8540 (index!36528 (_ BitVec 32))) (Intermediate!8540 (undefined!9352 Bool) (index!36529 (_ BitVec 32)) (x!67379 (_ BitVec 32))) (Undefined!8540) (MissingVacant!8540 (index!36530 (_ BitVec 32))) )
))
(declare-fun lt!360127 () SeekEntryResult!8540)

(assert (=> b!804375 (= res!549063 (or (= lt!360127 (MissingZero!8540 i!1163)) (= lt!360127 (MissingVacant!8540 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43731 (_ BitVec 32)) SeekEntryResult!8540)

(assert (=> b!804375 (= lt!360127 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804376 () Bool)

(declare-fun res!549064 () Bool)

(assert (=> b!804376 (=> (not res!549064) (not e!445632))))

(declare-fun arrayContainsKey!0 (array!43731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804376 (= res!549064 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804377 () Bool)

(declare-fun res!549061 () Bool)

(assert (=> b!804377 (=> (not res!549061) (not e!445632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804377 (= res!549061 (validKeyInArray!0 k!2044))))

(declare-fun res!549066 () Bool)

(assert (=> start!68990 (=> (not res!549066) (not e!445632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68990 (= res!549066 (validMask!0 mask!3266))))

(assert (=> start!68990 e!445632))

(assert (=> start!68990 true))

(declare-fun array_inv!16716 (array!43731) Bool)

(assert (=> start!68990 (array_inv!16716 a!3170)))

(declare-fun b!804378 () Bool)

(declare-fun res!549062 () Bool)

(assert (=> b!804378 (=> (not res!549062) (not e!445632))))

(assert (=> b!804378 (= res!549062 (validKeyInArray!0 (select (arr!20942 a!3170) j!153)))))

(assert (= (and start!68990 res!549066) b!804374))

(assert (= (and b!804374 res!549067) b!804378))

(assert (= (and b!804378 res!549062) b!804377))

(assert (= (and b!804377 res!549061) b!804376))

(assert (= (and b!804376 res!549064) b!804375))

(assert (= (and b!804375 res!549063) b!804373))

(assert (= (and b!804373 res!549065) b!804372))

(declare-fun m!746329 () Bool)

(assert (=> b!804378 m!746329))

(assert (=> b!804378 m!746329))

(declare-fun m!746331 () Bool)

(assert (=> b!804378 m!746331))

(declare-fun m!746333 () Bool)

(assert (=> b!804376 m!746333))

(declare-fun m!746335 () Bool)

(assert (=> b!804373 m!746335))

(declare-fun m!746337 () Bool)

(assert (=> start!68990 m!746337))

(declare-fun m!746339 () Bool)

(assert (=> start!68990 m!746339))

(declare-fun m!746341 () Bool)

(assert (=> b!804377 m!746341))

(declare-fun m!746343 () Bool)

(assert (=> b!804375 m!746343))

(declare-fun m!746345 () Bool)

(assert (=> b!804372 m!746345))

(push 1)

(assert (not b!804377))

(assert (not b!804378))

(assert (not b!804372))

(assert (not b!804376))

