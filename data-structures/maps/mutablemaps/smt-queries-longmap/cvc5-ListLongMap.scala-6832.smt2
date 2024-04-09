; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86062 () Bool)

(assert start!86062)

(declare-fun res!666629 () Bool)

(declare-fun e!562186 () Bool)

(assert (=> start!86062 (=> (not res!666629) (not e!562186))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86062 (= res!666629 (validMask!0 mask!3464))))

(assert (=> start!86062 e!562186))

(declare-datatypes ((array!63019 0))(
  ( (array!63020 (arr!30337 (Array (_ BitVec 32) (_ BitVec 64))) (size!30840 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63019)

(declare-fun array_inv!23327 (array!63019) Bool)

(assert (=> start!86062 (array_inv!23327 a!3219)))

(assert (=> start!86062 true))

(declare-fun b!996356 () Bool)

(declare-fun res!666632 () Bool)

(assert (=> b!996356 (=> (not res!666632) (not e!562186))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996356 (= res!666632 (validKeyInArray!0 (select (arr!30337 a!3219) j!170)))))

(declare-fun b!996357 () Bool)

(declare-fun res!666634 () Bool)

(assert (=> b!996357 (=> (not res!666634) (not e!562186))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996357 (= res!666634 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996358 () Bool)

(declare-fun e!562187 () Bool)

(assert (=> b!996358 (= e!562186 e!562187)))

(declare-fun res!666626 () Bool)

(assert (=> b!996358 (=> (not res!666626) (not e!562187))))

(declare-datatypes ((SeekEntryResult!9269 0))(
  ( (MissingZero!9269 (index!39446 (_ BitVec 32))) (Found!9269 (index!39447 (_ BitVec 32))) (Intermediate!9269 (undefined!10081 Bool) (index!39448 (_ BitVec 32)) (x!86914 (_ BitVec 32))) (Undefined!9269) (MissingVacant!9269 (index!39449 (_ BitVec 32))) )
))
(declare-fun lt!441194 () SeekEntryResult!9269)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996358 (= res!666626 (or (= lt!441194 (MissingVacant!9269 i!1194)) (= lt!441194 (MissingZero!9269 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63019 (_ BitVec 32)) SeekEntryResult!9269)

(assert (=> b!996358 (= lt!441194 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996359 () Bool)

(assert (=> b!996359 (= e!562187 false)))

(declare-fun lt!441195 () SeekEntryResult!9269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63019 (_ BitVec 32)) SeekEntryResult!9269)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996359 (= lt!441195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30337 a!3219) j!170) mask!3464) (select (arr!30337 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!996360 () Bool)

(declare-fun res!666628 () Bool)

(assert (=> b!996360 (=> (not res!666628) (not e!562187))))

(declare-datatypes ((List!21139 0))(
  ( (Nil!21136) (Cons!21135 (h!22300 (_ BitVec 64)) (t!30148 List!21139)) )
))
(declare-fun arrayNoDuplicates!0 (array!63019 (_ BitVec 32) List!21139) Bool)

(assert (=> b!996360 (= res!666628 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21136))))

(declare-fun b!996361 () Bool)

(declare-fun res!666630 () Bool)

(assert (=> b!996361 (=> (not res!666630) (not e!562186))))

(assert (=> b!996361 (= res!666630 (and (= (size!30840 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30840 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30840 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996362 () Bool)

(declare-fun res!666631 () Bool)

(assert (=> b!996362 (=> (not res!666631) (not e!562187))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996362 (= res!666631 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30840 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30840 a!3219))))))

(declare-fun b!996363 () Bool)

(declare-fun res!666627 () Bool)

(assert (=> b!996363 (=> (not res!666627) (not e!562187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63019 (_ BitVec 32)) Bool)

(assert (=> b!996363 (= res!666627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996364 () Bool)

(declare-fun res!666633 () Bool)

(assert (=> b!996364 (=> (not res!666633) (not e!562186))))

(assert (=> b!996364 (= res!666633 (validKeyInArray!0 k!2224))))

(assert (= (and start!86062 res!666629) b!996361))

(assert (= (and b!996361 res!666630) b!996356))

(assert (= (and b!996356 res!666632) b!996364))

(assert (= (and b!996364 res!666633) b!996357))

(assert (= (and b!996357 res!666634) b!996358))

(assert (= (and b!996358 res!666626) b!996363))

(assert (= (and b!996363 res!666627) b!996360))

(assert (= (and b!996360 res!666628) b!996362))

(assert (= (and b!996362 res!666631) b!996359))

(declare-fun m!923577 () Bool)

(assert (=> b!996357 m!923577))

(declare-fun m!923579 () Bool)

(assert (=> b!996364 m!923579))

(declare-fun m!923581 () Bool)

(assert (=> b!996359 m!923581))

(assert (=> b!996359 m!923581))

(declare-fun m!923583 () Bool)

(assert (=> b!996359 m!923583))

(assert (=> b!996359 m!923583))

(assert (=> b!996359 m!923581))

(declare-fun m!923585 () Bool)

(assert (=> b!996359 m!923585))

(declare-fun m!923587 () Bool)

(assert (=> b!996363 m!923587))

(declare-fun m!923589 () Bool)

(assert (=> b!996360 m!923589))

(assert (=> b!996356 m!923581))

(assert (=> b!996356 m!923581))

(declare-fun m!923591 () Bool)

(assert (=> b!996356 m!923591))

(declare-fun m!923593 () Bool)

(assert (=> start!86062 m!923593))

(declare-fun m!923595 () Bool)

(assert (=> start!86062 m!923595))

(declare-fun m!923597 () Bool)

(assert (=> b!996358 m!923597))

(push 1)

