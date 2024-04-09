; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69006 () Bool)

(assert start!69006)

(declare-fun b!804568 () Bool)

(declare-fun res!549265 () Bool)

(declare-fun e!445705 () Bool)

(assert (=> b!804568 (=> (not res!549265) (not e!445705))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804568 (= res!549265 (validKeyInArray!0 k0!2044))))

(declare-fun b!804569 () Bool)

(declare-fun e!445704 () Bool)

(assert (=> b!804569 (= e!445704 false)))

(declare-fun lt!360220 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43747 0))(
  ( (array!43748 (arr!20950 (Array (_ BitVec 32) (_ BitVec 64))) (size!21371 (_ BitVec 32))) )
))
(declare-fun lt!360217 () array!43747)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8548 0))(
  ( (MissingZero!8548 (index!36559 (_ BitVec 32))) (Found!8548 (index!36560 (_ BitVec 32))) (Intermediate!8548 (undefined!9360 Bool) (index!36561 (_ BitVec 32)) (x!67411 (_ BitVec 32))) (Undefined!8548) (MissingVacant!8548 (index!36562 (_ BitVec 32))) )
))
(declare-fun lt!360219 () SeekEntryResult!8548)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43747 (_ BitVec 32)) SeekEntryResult!8548)

(assert (=> b!804569 (= lt!360219 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360220 lt!360217 mask!3266))))

(declare-fun lt!360216 () SeekEntryResult!8548)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43747 (_ BitVec 32)) SeekEntryResult!8548)

(assert (=> b!804569 (= lt!360216 (seekEntryOrOpen!0 lt!360220 lt!360217 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43747)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804569 (= lt!360220 (select (store (arr!20950 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!804569 (= lt!360217 (array!43748 (store (arr!20950 a!3170) i!1163 k0!2044) (size!21371 a!3170)))))

(declare-fun b!804570 () Bool)

(assert (=> b!804570 (= e!445705 e!445704)))

(declare-fun res!549257 () Bool)

(assert (=> b!804570 (=> (not res!549257) (not e!445704))))

(declare-fun lt!360218 () SeekEntryResult!8548)

(assert (=> b!804570 (= res!549257 (or (= lt!360218 (MissingZero!8548 i!1163)) (= lt!360218 (MissingVacant!8548 i!1163))))))

(assert (=> b!804570 (= lt!360218 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804571 () Bool)

(declare-fun res!549261 () Bool)

(assert (=> b!804571 (=> (not res!549261) (not e!445704))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804571 (= res!549261 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21371 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20950 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21371 a!3170)) (= (select (arr!20950 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549259 () Bool)

(assert (=> start!69006 (=> (not res!549259) (not e!445705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69006 (= res!549259 (validMask!0 mask!3266))))

(assert (=> start!69006 e!445705))

(assert (=> start!69006 true))

(declare-fun array_inv!16724 (array!43747) Bool)

(assert (=> start!69006 (array_inv!16724 a!3170)))

(declare-fun b!804572 () Bool)

(declare-fun res!549258 () Bool)

(assert (=> b!804572 (=> (not res!549258) (not e!445705))))

(declare-fun arrayContainsKey!0 (array!43747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804572 (= res!549258 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804573 () Bool)

(declare-fun res!549263 () Bool)

(assert (=> b!804573 (=> (not res!549263) (not e!445704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43747 (_ BitVec 32)) Bool)

(assert (=> b!804573 (= res!549263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804574 () Bool)

(declare-fun res!549264 () Bool)

(assert (=> b!804574 (=> (not res!549264) (not e!445705))))

(assert (=> b!804574 (= res!549264 (and (= (size!21371 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21371 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21371 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804575 () Bool)

(declare-fun res!549262 () Bool)

(assert (=> b!804575 (=> (not res!549262) (not e!445704))))

(declare-datatypes ((List!14966 0))(
  ( (Nil!14963) (Cons!14962 (h!16091 (_ BitVec 64)) (t!21289 List!14966)) )
))
(declare-fun arrayNoDuplicates!0 (array!43747 (_ BitVec 32) List!14966) Bool)

(assert (=> b!804575 (= res!549262 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14963))))

(declare-fun b!804576 () Bool)

(declare-fun res!549260 () Bool)

(assert (=> b!804576 (=> (not res!549260) (not e!445705))))

(assert (=> b!804576 (= res!549260 (validKeyInArray!0 (select (arr!20950 a!3170) j!153)))))

(assert (= (and start!69006 res!549259) b!804574))

(assert (= (and b!804574 res!549264) b!804576))

(assert (= (and b!804576 res!549260) b!804568))

(assert (= (and b!804568 res!549265) b!804572))

(assert (= (and b!804572 res!549258) b!804570))

(assert (= (and b!804570 res!549257) b!804573))

(assert (= (and b!804573 res!549263) b!804575))

(assert (= (and b!804575 res!549262) b!804571))

(assert (= (and b!804571 res!549261) b!804569))

(declare-fun m!746521 () Bool)

(assert (=> b!804572 m!746521))

(declare-fun m!746523 () Bool)

(assert (=> b!804575 m!746523))

(declare-fun m!746525 () Bool)

(assert (=> b!804570 m!746525))

(declare-fun m!746527 () Bool)

(assert (=> b!804573 m!746527))

(declare-fun m!746529 () Bool)

(assert (=> b!804568 m!746529))

(declare-fun m!746531 () Bool)

(assert (=> b!804569 m!746531))

(declare-fun m!746533 () Bool)

(assert (=> b!804569 m!746533))

(declare-fun m!746535 () Bool)

(assert (=> b!804569 m!746535))

(declare-fun m!746537 () Bool)

(assert (=> b!804569 m!746537))

(declare-fun m!746539 () Bool)

(assert (=> start!69006 m!746539))

(declare-fun m!746541 () Bool)

(assert (=> start!69006 m!746541))

(declare-fun m!746543 () Bool)

(assert (=> b!804571 m!746543))

(declare-fun m!746545 () Bool)

(assert (=> b!804571 m!746545))

(declare-fun m!746547 () Bool)

(assert (=> b!804576 m!746547))

(assert (=> b!804576 m!746547))

(declare-fun m!746549 () Bool)

(assert (=> b!804576 m!746549))

(check-sat (not b!804576) (not b!804570) (not start!69006) (not b!804569) (not b!804572) (not b!804575) (not b!804573) (not b!804568))
(check-sat)
