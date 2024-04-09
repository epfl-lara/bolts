; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86078 () Bool)

(assert start!86078)

(declare-fun b!996581 () Bool)

(declare-fun res!666858 () Bool)

(declare-fun e!562258 () Bool)

(assert (=> b!996581 (=> (not res!666858) (not e!562258))))

(declare-datatypes ((array!63035 0))(
  ( (array!63036 (arr!30345 (Array (_ BitVec 32) (_ BitVec 64))) (size!30848 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63035)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996581 (= res!666858 (validKeyInArray!0 (select (arr!30345 a!3219) j!170)))))

(declare-fun b!996582 () Bool)

(declare-fun res!666851 () Bool)

(declare-fun e!562259 () Bool)

(assert (=> b!996582 (=> (not res!666851) (not e!562259))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996582 (= res!666851 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30848 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30848 a!3219))))))

(declare-fun b!996583 () Bool)

(assert (=> b!996583 (= e!562259 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9277 0))(
  ( (MissingZero!9277 (index!39478 (_ BitVec 32))) (Found!9277 (index!39479 (_ BitVec 32))) (Intermediate!9277 (undefined!10089 Bool) (index!39480 (_ BitVec 32)) (x!86938 (_ BitVec 32))) (Undefined!9277) (MissingVacant!9277 (index!39481 (_ BitVec 32))) )
))
(declare-fun lt!441233 () SeekEntryResult!9277)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63035 (_ BitVec 32)) SeekEntryResult!9277)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996583 (= lt!441233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30345 a!3219) j!170) mask!3464) (select (arr!30345 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!996585 () Bool)

(declare-fun res!666859 () Bool)

(assert (=> b!996585 (=> (not res!666859) (not e!562259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63035 (_ BitVec 32)) Bool)

(assert (=> b!996585 (= res!666859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996586 () Bool)

(declare-fun res!666857 () Bool)

(assert (=> b!996586 (=> (not res!666857) (not e!562259))))

(declare-datatypes ((List!21147 0))(
  ( (Nil!21144) (Cons!21143 (h!22308 (_ BitVec 64)) (t!30156 List!21147)) )
))
(declare-fun arrayNoDuplicates!0 (array!63035 (_ BitVec 32) List!21147) Bool)

(assert (=> b!996586 (= res!666857 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21144))))

(declare-fun b!996587 () Bool)

(declare-fun res!666853 () Bool)

(assert (=> b!996587 (=> (not res!666853) (not e!562258))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996587 (= res!666853 (and (= (size!30848 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30848 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30848 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996588 () Bool)

(declare-fun res!666854 () Bool)

(assert (=> b!996588 (=> (not res!666854) (not e!562258))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996588 (= res!666854 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996589 () Bool)

(assert (=> b!996589 (= e!562258 e!562259)))

(declare-fun res!666856 () Bool)

(assert (=> b!996589 (=> (not res!666856) (not e!562259))))

(declare-fun lt!441234 () SeekEntryResult!9277)

(assert (=> b!996589 (= res!666856 (or (= lt!441234 (MissingVacant!9277 i!1194)) (= lt!441234 (MissingZero!9277 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63035 (_ BitVec 32)) SeekEntryResult!9277)

(assert (=> b!996589 (= lt!441234 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!666852 () Bool)

(assert (=> start!86078 (=> (not res!666852) (not e!562258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86078 (= res!666852 (validMask!0 mask!3464))))

(assert (=> start!86078 e!562258))

(declare-fun array_inv!23335 (array!63035) Bool)

(assert (=> start!86078 (array_inv!23335 a!3219)))

(assert (=> start!86078 true))

(declare-fun b!996584 () Bool)

(declare-fun res!666855 () Bool)

(assert (=> b!996584 (=> (not res!666855) (not e!562258))))

(assert (=> b!996584 (= res!666855 (validKeyInArray!0 k!2224))))

(assert (= (and start!86078 res!666852) b!996587))

(assert (= (and b!996587 res!666853) b!996581))

(assert (= (and b!996581 res!666858) b!996584))

(assert (= (and b!996584 res!666855) b!996588))

(assert (= (and b!996588 res!666854) b!996589))

(assert (= (and b!996589 res!666856) b!996585))

(assert (= (and b!996585 res!666859) b!996586))

(assert (= (and b!996586 res!666857) b!996582))

(assert (= (and b!996582 res!666851) b!996583))

(declare-fun m!923753 () Bool)

(assert (=> b!996583 m!923753))

(assert (=> b!996583 m!923753))

(declare-fun m!923755 () Bool)

(assert (=> b!996583 m!923755))

(assert (=> b!996583 m!923755))

(assert (=> b!996583 m!923753))

(declare-fun m!923757 () Bool)

(assert (=> b!996583 m!923757))

(declare-fun m!923759 () Bool)

(assert (=> b!996586 m!923759))

(declare-fun m!923761 () Bool)

(assert (=> b!996589 m!923761))

(declare-fun m!923763 () Bool)

(assert (=> b!996584 m!923763))

(declare-fun m!923765 () Bool)

(assert (=> b!996588 m!923765))

(declare-fun m!923767 () Bool)

(assert (=> b!996585 m!923767))

(assert (=> b!996581 m!923753))

(assert (=> b!996581 m!923753))

(declare-fun m!923769 () Bool)

(assert (=> b!996581 m!923769))

(declare-fun m!923771 () Bool)

(assert (=> start!86078 m!923771))

(declare-fun m!923773 () Bool)

(assert (=> start!86078 m!923773))

(push 1)

(assert (not b!996589))

(assert (not b!996588))

(assert (not b!996584))

(assert (not b!996585))

