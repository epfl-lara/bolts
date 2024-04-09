; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86080 () Bool)

(assert start!86080)

(declare-fun res!666884 () Bool)

(declare-fun e!562266 () Bool)

(assert (=> start!86080 (=> (not res!666884) (not e!562266))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86080 (= res!666884 (validMask!0 mask!3464))))

(assert (=> start!86080 e!562266))

(declare-datatypes ((array!63037 0))(
  ( (array!63038 (arr!30346 (Array (_ BitVec 32) (_ BitVec 64))) (size!30849 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63037)

(declare-fun array_inv!23336 (array!63037) Bool)

(assert (=> start!86080 (array_inv!23336 a!3219)))

(assert (=> start!86080 true))

(declare-fun b!996610 () Bool)

(declare-fun res!666887 () Bool)

(assert (=> b!996610 (=> (not res!666887) (not e!562266))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996610 (= res!666887 (and (= (size!30849 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30849 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30849 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996611 () Bool)

(declare-fun e!562268 () Bool)

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996611 (= e!562268 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!996612 () Bool)

(declare-fun res!666883 () Bool)

(assert (=> b!996612 (=> (not res!666883) (not e!562266))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996612 (= res!666883 (validKeyInArray!0 k!2224))))

(declare-fun b!996613 () Bool)

(declare-fun res!666881 () Bool)

(assert (=> b!996613 (=> (not res!666881) (not e!562266))))

(assert (=> b!996613 (= res!666881 (validKeyInArray!0 (select (arr!30346 a!3219) j!170)))))

(declare-fun b!996614 () Bool)

(declare-fun res!666880 () Bool)

(assert (=> b!996614 (=> (not res!666880) (not e!562268))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996614 (= res!666880 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30849 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30849 a!3219))))))

(declare-fun b!996615 () Bool)

(declare-fun res!666889 () Bool)

(assert (=> b!996615 (=> (not res!666889) (not e!562268))))

(declare-datatypes ((List!21148 0))(
  ( (Nil!21145) (Cons!21144 (h!22309 (_ BitVec 64)) (t!30157 List!21148)) )
))
(declare-fun arrayNoDuplicates!0 (array!63037 (_ BitVec 32) List!21148) Bool)

(assert (=> b!996615 (= res!666889 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21145))))

(declare-fun b!996616 () Bool)

(declare-fun res!666888 () Bool)

(assert (=> b!996616 (=> (not res!666888) (not e!562268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63037 (_ BitVec 32)) Bool)

(assert (=> b!996616 (= res!666888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996617 () Bool)

(declare-fun res!666882 () Bool)

(assert (=> b!996617 (=> (not res!666882) (not e!562266))))

(declare-fun arrayContainsKey!0 (array!63037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996617 (= res!666882 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996618 () Bool)

(assert (=> b!996618 (= e!562266 e!562268)))

(declare-fun res!666886 () Bool)

(assert (=> b!996618 (=> (not res!666886) (not e!562268))))

(declare-datatypes ((SeekEntryResult!9278 0))(
  ( (MissingZero!9278 (index!39482 (_ BitVec 32))) (Found!9278 (index!39483 (_ BitVec 32))) (Intermediate!9278 (undefined!10090 Bool) (index!39484 (_ BitVec 32)) (x!86947 (_ BitVec 32))) (Undefined!9278) (MissingVacant!9278 (index!39485 (_ BitVec 32))) )
))
(declare-fun lt!441237 () SeekEntryResult!9278)

(assert (=> b!996618 (= res!666886 (or (= lt!441237 (MissingVacant!9278 i!1194)) (= lt!441237 (MissingZero!9278 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63037 (_ BitVec 32)) SeekEntryResult!9278)

(assert (=> b!996618 (= lt!441237 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996619 () Bool)

(declare-fun res!666885 () Bool)

(assert (=> b!996619 (=> (not res!666885) (not e!562268))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63037 (_ BitVec 32)) SeekEntryResult!9278)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996619 (= res!666885 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30346 a!3219) j!170) mask!3464) (select (arr!30346 a!3219) j!170) a!3219 mask!3464) (Intermediate!9278 false resIndex!38 resX!38)))))

(assert (= (and start!86080 res!666884) b!996610))

(assert (= (and b!996610 res!666887) b!996613))

(assert (= (and b!996613 res!666881) b!996612))

(assert (= (and b!996612 res!666883) b!996617))

(assert (= (and b!996617 res!666882) b!996618))

(assert (= (and b!996618 res!666886) b!996616))

(assert (= (and b!996616 res!666888) b!996615))

(assert (= (and b!996615 res!666889) b!996614))

(assert (= (and b!996614 res!666880) b!996619))

(assert (= (and b!996619 res!666885) b!996611))

(declare-fun m!923775 () Bool)

(assert (=> b!996612 m!923775))

(declare-fun m!923777 () Bool)

(assert (=> start!86080 m!923777))

(declare-fun m!923779 () Bool)

(assert (=> start!86080 m!923779))

(declare-fun m!923781 () Bool)

(assert (=> b!996616 m!923781))

(declare-fun m!923783 () Bool)

(assert (=> b!996615 m!923783))

(declare-fun m!923785 () Bool)

(assert (=> b!996618 m!923785))

(declare-fun m!923787 () Bool)

(assert (=> b!996617 m!923787))

(declare-fun m!923789 () Bool)

(assert (=> b!996613 m!923789))

(assert (=> b!996613 m!923789))

(declare-fun m!923791 () Bool)

(assert (=> b!996613 m!923791))

(assert (=> b!996619 m!923789))

(assert (=> b!996619 m!923789))

(declare-fun m!923793 () Bool)

(assert (=> b!996619 m!923793))

(assert (=> b!996619 m!923793))

(assert (=> b!996619 m!923789))

(declare-fun m!923795 () Bool)

(assert (=> b!996619 m!923795))

(push 1)

(assert (not start!86080))

(assert (not b!996618))

(assert (not b!996616))

(assert (not b!996615))

(assert (not b!996617))

(assert (not b!996619))

(assert (not b!996612))

(assert (not b!996613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

