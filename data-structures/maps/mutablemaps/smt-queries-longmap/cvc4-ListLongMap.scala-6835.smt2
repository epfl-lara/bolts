; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86084 () Bool)

(assert start!86084)

(declare-fun b!996670 () Bool)

(declare-fun res!666948 () Bool)

(declare-fun e!562284 () Bool)

(assert (=> b!996670 (=> (not res!666948) (not e!562284))))

(declare-datatypes ((array!63041 0))(
  ( (array!63042 (arr!30348 (Array (_ BitVec 32) (_ BitVec 64))) (size!30851 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63041)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9280 0))(
  ( (MissingZero!9280 (index!39490 (_ BitVec 32))) (Found!9280 (index!39491 (_ BitVec 32))) (Intermediate!9280 (undefined!10092 Bool) (index!39492 (_ BitVec 32)) (x!86949 (_ BitVec 32))) (Undefined!9280) (MissingVacant!9280 (index!39493 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63041 (_ BitVec 32)) SeekEntryResult!9280)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996670 (= res!666948 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30348 a!3219) j!170) mask!3464) (select (arr!30348 a!3219) j!170) a!3219 mask!3464) (Intermediate!9280 false resIndex!38 resX!38)))))

(declare-fun b!996671 () Bool)

(declare-fun e!562286 () Bool)

(assert (=> b!996671 (= e!562286 e!562284)))

(declare-fun res!666947 () Bool)

(assert (=> b!996671 (=> (not res!666947) (not e!562284))))

(declare-fun lt!441243 () SeekEntryResult!9280)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996671 (= res!666947 (or (= lt!441243 (MissingVacant!9280 i!1194)) (= lt!441243 (MissingZero!9280 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63041 (_ BitVec 32)) SeekEntryResult!9280)

(assert (=> b!996671 (= lt!441243 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996672 () Bool)

(declare-fun res!666949 () Bool)

(assert (=> b!996672 (=> (not res!666949) (not e!562286))))

(assert (=> b!996672 (= res!666949 (and (= (size!30851 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30851 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30851 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996673 () Bool)

(declare-fun res!666946 () Bool)

(assert (=> b!996673 (=> (not res!666946) (not e!562284))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996673 (= res!666946 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30851 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30851 a!3219))))))

(declare-fun res!666940 () Bool)

(assert (=> start!86084 (=> (not res!666940) (not e!562286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86084 (= res!666940 (validMask!0 mask!3464))))

(assert (=> start!86084 e!562286))

(declare-fun array_inv!23338 (array!63041) Bool)

(assert (=> start!86084 (array_inv!23338 a!3219)))

(assert (=> start!86084 true))

(declare-fun b!996674 () Bool)

(declare-fun res!666941 () Bool)

(assert (=> b!996674 (=> (not res!666941) (not e!562286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996674 (= res!666941 (validKeyInArray!0 k!2224))))

(declare-fun b!996675 () Bool)

(declare-fun res!666942 () Bool)

(assert (=> b!996675 (=> (not res!666942) (not e!562284))))

(declare-datatypes ((List!21150 0))(
  ( (Nil!21147) (Cons!21146 (h!22311 (_ BitVec 64)) (t!30159 List!21150)) )
))
(declare-fun arrayNoDuplicates!0 (array!63041 (_ BitVec 32) List!21150) Bool)

(assert (=> b!996675 (= res!666942 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21147))))

(declare-fun b!996676 () Bool)

(assert (=> b!996676 (= e!562284 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!996677 () Bool)

(declare-fun res!666944 () Bool)

(assert (=> b!996677 (=> (not res!666944) (not e!562284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63041 (_ BitVec 32)) Bool)

(assert (=> b!996677 (= res!666944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996678 () Bool)

(declare-fun res!666945 () Bool)

(assert (=> b!996678 (=> (not res!666945) (not e!562286))))

(declare-fun arrayContainsKey!0 (array!63041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996678 (= res!666945 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996679 () Bool)

(declare-fun res!666943 () Bool)

(assert (=> b!996679 (=> (not res!666943) (not e!562286))))

(assert (=> b!996679 (= res!666943 (validKeyInArray!0 (select (arr!30348 a!3219) j!170)))))

(assert (= (and start!86084 res!666940) b!996672))

(assert (= (and b!996672 res!666949) b!996679))

(assert (= (and b!996679 res!666943) b!996674))

(assert (= (and b!996674 res!666941) b!996678))

(assert (= (and b!996678 res!666945) b!996671))

(assert (= (and b!996671 res!666947) b!996677))

(assert (= (and b!996677 res!666944) b!996675))

(assert (= (and b!996675 res!666942) b!996673))

(assert (= (and b!996673 res!666946) b!996670))

(assert (= (and b!996670 res!666948) b!996676))

(declare-fun m!923819 () Bool)

(assert (=> b!996674 m!923819))

(declare-fun m!923821 () Bool)

(assert (=> b!996678 m!923821))

(declare-fun m!923823 () Bool)

(assert (=> b!996670 m!923823))

(assert (=> b!996670 m!923823))

(declare-fun m!923825 () Bool)

(assert (=> b!996670 m!923825))

(assert (=> b!996670 m!923825))

(assert (=> b!996670 m!923823))

(declare-fun m!923827 () Bool)

(assert (=> b!996670 m!923827))

(declare-fun m!923829 () Bool)

(assert (=> b!996677 m!923829))

(declare-fun m!923831 () Bool)

(assert (=> b!996675 m!923831))

(assert (=> b!996679 m!923823))

(assert (=> b!996679 m!923823))

(declare-fun m!923833 () Bool)

(assert (=> b!996679 m!923833))

(declare-fun m!923835 () Bool)

(assert (=> b!996671 m!923835))

(declare-fun m!923837 () Bool)

(assert (=> start!86084 m!923837))

(declare-fun m!923839 () Bool)

(assert (=> start!86084 m!923839))

(push 1)

(assert (not b!996679))

(assert (not b!996674))

(assert (not start!86084))

(assert (not b!996675))

(assert (not b!996671))

(assert (not b!996670))

(assert (not b!996678))

(assert (not b!996677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

