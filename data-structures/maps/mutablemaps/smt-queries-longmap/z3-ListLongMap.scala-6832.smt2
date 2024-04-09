; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86064 () Bool)

(assert start!86064)

(declare-fun b!996383 () Bool)

(declare-fun e!562195 () Bool)

(declare-fun e!562194 () Bool)

(assert (=> b!996383 (= e!562195 e!562194)))

(declare-fun res!666660 () Bool)

(assert (=> b!996383 (=> (not res!666660) (not e!562194))))

(declare-datatypes ((SeekEntryResult!9270 0))(
  ( (MissingZero!9270 (index!39450 (_ BitVec 32))) (Found!9270 (index!39451 (_ BitVec 32))) (Intermediate!9270 (undefined!10082 Bool) (index!39452 (_ BitVec 32)) (x!86915 (_ BitVec 32))) (Undefined!9270) (MissingVacant!9270 (index!39453 (_ BitVec 32))) )
))
(declare-fun lt!441201 () SeekEntryResult!9270)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996383 (= res!666660 (or (= lt!441201 (MissingVacant!9270 i!1194)) (= lt!441201 (MissingZero!9270 i!1194))))))

(declare-datatypes ((array!63021 0))(
  ( (array!63022 (arr!30338 (Array (_ BitVec 32) (_ BitVec 64))) (size!30841 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63021)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63021 (_ BitVec 32)) SeekEntryResult!9270)

(assert (=> b!996383 (= lt!441201 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!996384 () Bool)

(declare-fun res!666657 () Bool)

(assert (=> b!996384 (=> (not res!666657) (not e!562195))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996384 (= res!666657 (and (= (size!30841 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30841 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30841 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996385 () Bool)

(declare-fun res!666658 () Bool)

(assert (=> b!996385 (=> (not res!666658) (not e!562194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63021 (_ BitVec 32)) Bool)

(assert (=> b!996385 (= res!666658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996386 () Bool)

(assert (=> b!996386 (= e!562194 false)))

(declare-fun lt!441200 () SeekEntryResult!9270)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63021 (_ BitVec 32)) SeekEntryResult!9270)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996386 (= lt!441200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30338 a!3219) j!170) mask!3464) (select (arr!30338 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!666654 () Bool)

(assert (=> start!86064 (=> (not res!666654) (not e!562195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86064 (= res!666654 (validMask!0 mask!3464))))

(assert (=> start!86064 e!562195))

(declare-fun array_inv!23328 (array!63021) Bool)

(assert (=> start!86064 (array_inv!23328 a!3219)))

(assert (=> start!86064 true))

(declare-fun b!996387 () Bool)

(declare-fun res!666661 () Bool)

(assert (=> b!996387 (=> (not res!666661) (not e!562195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996387 (= res!666661 (validKeyInArray!0 (select (arr!30338 a!3219) j!170)))))

(declare-fun b!996388 () Bool)

(declare-fun res!666653 () Bool)

(assert (=> b!996388 (=> (not res!666653) (not e!562195))))

(assert (=> b!996388 (= res!666653 (validKeyInArray!0 k0!2224))))

(declare-fun b!996389 () Bool)

(declare-fun res!666659 () Bool)

(assert (=> b!996389 (=> (not res!666659) (not e!562194))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!996389 (= res!666659 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30841 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30841 a!3219))))))

(declare-fun b!996390 () Bool)

(declare-fun res!666655 () Bool)

(assert (=> b!996390 (=> (not res!666655) (not e!562194))))

(declare-datatypes ((List!21140 0))(
  ( (Nil!21137) (Cons!21136 (h!22301 (_ BitVec 64)) (t!30149 List!21140)) )
))
(declare-fun arrayNoDuplicates!0 (array!63021 (_ BitVec 32) List!21140) Bool)

(assert (=> b!996390 (= res!666655 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21137))))

(declare-fun b!996391 () Bool)

(declare-fun res!666656 () Bool)

(assert (=> b!996391 (=> (not res!666656) (not e!562195))))

(declare-fun arrayContainsKey!0 (array!63021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996391 (= res!666656 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86064 res!666654) b!996384))

(assert (= (and b!996384 res!666657) b!996387))

(assert (= (and b!996387 res!666661) b!996388))

(assert (= (and b!996388 res!666653) b!996391))

(assert (= (and b!996391 res!666656) b!996383))

(assert (= (and b!996383 res!666660) b!996385))

(assert (= (and b!996385 res!666658) b!996390))

(assert (= (and b!996390 res!666655) b!996389))

(assert (= (and b!996389 res!666659) b!996386))

(declare-fun m!923599 () Bool)

(assert (=> b!996385 m!923599))

(declare-fun m!923601 () Bool)

(assert (=> b!996388 m!923601))

(declare-fun m!923603 () Bool)

(assert (=> b!996386 m!923603))

(assert (=> b!996386 m!923603))

(declare-fun m!923605 () Bool)

(assert (=> b!996386 m!923605))

(assert (=> b!996386 m!923605))

(assert (=> b!996386 m!923603))

(declare-fun m!923607 () Bool)

(assert (=> b!996386 m!923607))

(declare-fun m!923609 () Bool)

(assert (=> start!86064 m!923609))

(declare-fun m!923611 () Bool)

(assert (=> start!86064 m!923611))

(declare-fun m!923613 () Bool)

(assert (=> b!996390 m!923613))

(declare-fun m!923615 () Bool)

(assert (=> b!996383 m!923615))

(assert (=> b!996387 m!923603))

(assert (=> b!996387 m!923603))

(declare-fun m!923617 () Bool)

(assert (=> b!996387 m!923617))

(declare-fun m!923619 () Bool)

(assert (=> b!996391 m!923619))

(check-sat (not start!86064) (not b!996387) (not b!996385) (not b!996383) (not b!996390) (not b!996388) (not b!996391) (not b!996386))
(check-sat)
