; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68256 () Bool)

(assert start!68256)

(declare-fun b!792543 () Bool)

(declare-fun res!537237 () Bool)

(declare-fun e!440412 () Bool)

(assert (=> b!792543 (=> (not res!537237) (not e!440412))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792543 (= res!537237 (validKeyInArray!0 k0!2044))))

(declare-fun b!792544 () Bool)

(declare-fun res!537235 () Bool)

(declare-fun e!440413 () Bool)

(assert (=> b!792544 (=> (not res!537235) (not e!440413))))

(declare-datatypes ((array!42997 0))(
  ( (array!42998 (arr!20575 (Array (_ BitVec 32) (_ BitVec 64))) (size!20996 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42997)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42997 (_ BitVec 32)) Bool)

(assert (=> b!792544 (= res!537235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792545 () Bool)

(declare-fun res!537232 () Bool)

(assert (=> b!792545 (=> (not res!537232) (not e!440412))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792545 (= res!537232 (and (= (size!20996 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20996 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20996 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792546 () Bool)

(assert (=> b!792546 (= e!440413 false)))

(declare-fun lt!353514 () Bool)

(declare-datatypes ((List!14591 0))(
  ( (Nil!14588) (Cons!14587 (h!15716 (_ BitVec 64)) (t!20914 List!14591)) )
))
(declare-fun arrayNoDuplicates!0 (array!42997 (_ BitVec 32) List!14591) Bool)

(assert (=> b!792546 (= lt!353514 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14588))))

(declare-fun b!792548 () Bool)

(declare-fun res!537234 () Bool)

(assert (=> b!792548 (=> (not res!537234) (not e!440412))))

(declare-fun arrayContainsKey!0 (array!42997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792548 (= res!537234 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792549 () Bool)

(assert (=> b!792549 (= e!440412 e!440413)))

(declare-fun res!537233 () Bool)

(assert (=> b!792549 (=> (not res!537233) (not e!440413))))

(declare-datatypes ((SeekEntryResult!8173 0))(
  ( (MissingZero!8173 (index!35059 (_ BitVec 32))) (Found!8173 (index!35060 (_ BitVec 32))) (Intermediate!8173 (undefined!8985 Bool) (index!35061 (_ BitVec 32)) (x!66036 (_ BitVec 32))) (Undefined!8173) (MissingVacant!8173 (index!35062 (_ BitVec 32))) )
))
(declare-fun lt!353515 () SeekEntryResult!8173)

(assert (=> b!792549 (= res!537233 (or (= lt!353515 (MissingZero!8173 i!1163)) (= lt!353515 (MissingVacant!8173 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42997 (_ BitVec 32)) SeekEntryResult!8173)

(assert (=> b!792549 (= lt!353515 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!792547 () Bool)

(declare-fun res!537236 () Bool)

(assert (=> b!792547 (=> (not res!537236) (not e!440412))))

(assert (=> b!792547 (= res!537236 (validKeyInArray!0 (select (arr!20575 a!3170) j!153)))))

(declare-fun res!537238 () Bool)

(assert (=> start!68256 (=> (not res!537238) (not e!440412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68256 (= res!537238 (validMask!0 mask!3266))))

(assert (=> start!68256 e!440412))

(assert (=> start!68256 true))

(declare-fun array_inv!16349 (array!42997) Bool)

(assert (=> start!68256 (array_inv!16349 a!3170)))

(assert (= (and start!68256 res!537238) b!792545))

(assert (= (and b!792545 res!537232) b!792547))

(assert (= (and b!792547 res!537236) b!792543))

(assert (= (and b!792543 res!537237) b!792548))

(assert (= (and b!792548 res!537234) b!792549))

(assert (= (and b!792549 res!537233) b!792544))

(assert (= (and b!792544 res!537235) b!792546))

(declare-fun m!733165 () Bool)

(assert (=> start!68256 m!733165))

(declare-fun m!733167 () Bool)

(assert (=> start!68256 m!733167))

(declare-fun m!733169 () Bool)

(assert (=> b!792543 m!733169))

(declare-fun m!733171 () Bool)

(assert (=> b!792547 m!733171))

(assert (=> b!792547 m!733171))

(declare-fun m!733173 () Bool)

(assert (=> b!792547 m!733173))

(declare-fun m!733175 () Bool)

(assert (=> b!792546 m!733175))

(declare-fun m!733177 () Bool)

(assert (=> b!792549 m!733177))

(declare-fun m!733179 () Bool)

(assert (=> b!792544 m!733179))

(declare-fun m!733181 () Bool)

(assert (=> b!792548 m!733181))

(check-sat (not b!792543) (not b!792544) (not b!792549) (not start!68256) (not b!792547) (not b!792546) (not b!792548))
(check-sat)
