; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86336 () Bool)

(assert start!86336)

(declare-fun b!998874 () Bool)

(declare-fun res!668676 () Bool)

(declare-fun e!563275 () Bool)

(assert (=> b!998874 (=> (not res!668676) (not e!563275))))

(declare-datatypes ((array!63140 0))(
  ( (array!63141 (arr!30393 (Array (_ BitVec 32) (_ BitVec 64))) (size!30896 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63140)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9325 0))(
  ( (MissingZero!9325 (index!39670 (_ BitVec 32))) (Found!9325 (index!39671 (_ BitVec 32))) (Intermediate!9325 (undefined!10137 Bool) (index!39672 (_ BitVec 32)) (x!87132 (_ BitVec 32))) (Undefined!9325) (MissingVacant!9325 (index!39673 (_ BitVec 32))) )
))
(declare-fun lt!441828 () SeekEntryResult!9325)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63140 (_ BitVec 32)) SeekEntryResult!9325)

(assert (=> b!998874 (= res!668676 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30393 a!3219) j!170) a!3219 mask!3464) lt!441828))))

(declare-fun res!668675 () Bool)

(declare-fun e!563273 () Bool)

(assert (=> start!86336 (=> (not res!668675) (not e!563273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86336 (= res!668675 (validMask!0 mask!3464))))

(assert (=> start!86336 e!563273))

(declare-fun array_inv!23383 (array!63140) Bool)

(assert (=> start!86336 (array_inv!23383 a!3219)))

(assert (=> start!86336 true))

(declare-fun b!998875 () Bool)

(declare-fun res!668672 () Bool)

(assert (=> b!998875 (=> (not res!668672) (not e!563273))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998875 (= res!668672 (and (= (size!30896 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30896 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30896 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998876 () Bool)

(declare-fun e!563274 () Bool)

(assert (=> b!998876 (= e!563274 e!563275)))

(declare-fun res!668674 () Bool)

(assert (=> b!998876 (=> (not res!668674) (not e!563275))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998876 (= res!668674 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30393 a!3219) j!170) mask!3464) (select (arr!30393 a!3219) j!170) a!3219 mask!3464) lt!441828))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998876 (= lt!441828 (Intermediate!9325 false resIndex!38 resX!38))))

(declare-fun b!998877 () Bool)

(assert (=> b!998877 (= e!563275 false)))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun lt!441827 () (_ BitVec 32))

(assert (=> b!998877 (= lt!441827 (toIndex!0 (select (store (arr!30393 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998878 () Bool)

(declare-fun res!668667 () Bool)

(assert (=> b!998878 (=> (not res!668667) (not e!563273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998878 (= res!668667 (validKeyInArray!0 (select (arr!30393 a!3219) j!170)))))

(declare-fun b!998879 () Bool)

(declare-fun res!668673 () Bool)

(assert (=> b!998879 (=> (not res!668673) (not e!563274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63140 (_ BitVec 32)) Bool)

(assert (=> b!998879 (= res!668673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998880 () Bool)

(declare-fun res!668671 () Bool)

(assert (=> b!998880 (=> (not res!668671) (not e!563273))))

(assert (=> b!998880 (= res!668671 (validKeyInArray!0 k!2224))))

(declare-fun b!998881 () Bool)

(declare-fun res!668668 () Bool)

(assert (=> b!998881 (=> (not res!668668) (not e!563273))))

(declare-fun arrayContainsKey!0 (array!63140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998881 (= res!668668 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998882 () Bool)

(declare-fun res!668677 () Bool)

(assert (=> b!998882 (=> (not res!668677) (not e!563274))))

(assert (=> b!998882 (= res!668677 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30896 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30896 a!3219))))))

(declare-fun b!998883 () Bool)

(declare-fun res!668670 () Bool)

(assert (=> b!998883 (=> (not res!668670) (not e!563274))))

(declare-datatypes ((List!21195 0))(
  ( (Nil!21192) (Cons!21191 (h!22365 (_ BitVec 64)) (t!30204 List!21195)) )
))
(declare-fun arrayNoDuplicates!0 (array!63140 (_ BitVec 32) List!21195) Bool)

(assert (=> b!998883 (= res!668670 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21192))))

(declare-fun b!998884 () Bool)

(assert (=> b!998884 (= e!563273 e!563274)))

(declare-fun res!668669 () Bool)

(assert (=> b!998884 (=> (not res!668669) (not e!563274))))

(declare-fun lt!441826 () SeekEntryResult!9325)

(assert (=> b!998884 (= res!668669 (or (= lt!441826 (MissingVacant!9325 i!1194)) (= lt!441826 (MissingZero!9325 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63140 (_ BitVec 32)) SeekEntryResult!9325)

(assert (=> b!998884 (= lt!441826 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86336 res!668675) b!998875))

(assert (= (and b!998875 res!668672) b!998878))

(assert (= (and b!998878 res!668667) b!998880))

(assert (= (and b!998880 res!668671) b!998881))

(assert (= (and b!998881 res!668668) b!998884))

(assert (= (and b!998884 res!668669) b!998879))

(assert (= (and b!998879 res!668673) b!998883))

(assert (= (and b!998883 res!668670) b!998882))

(assert (= (and b!998882 res!668677) b!998876))

(assert (= (and b!998876 res!668674) b!998874))

(assert (= (and b!998874 res!668676) b!998877))

(declare-fun m!925365 () Bool)

(assert (=> b!998877 m!925365))

(declare-fun m!925367 () Bool)

(assert (=> b!998877 m!925367))

(assert (=> b!998877 m!925367))

(declare-fun m!925369 () Bool)

(assert (=> b!998877 m!925369))

(declare-fun m!925371 () Bool)

(assert (=> b!998878 m!925371))

(assert (=> b!998878 m!925371))

(declare-fun m!925373 () Bool)

(assert (=> b!998878 m!925373))

(assert (=> b!998874 m!925371))

(assert (=> b!998874 m!925371))

(declare-fun m!925375 () Bool)

(assert (=> b!998874 m!925375))

(declare-fun m!925377 () Bool)

(assert (=> b!998879 m!925377))

(declare-fun m!925379 () Bool)

(assert (=> b!998880 m!925379))

(declare-fun m!925381 () Bool)

(assert (=> b!998881 m!925381))

(declare-fun m!925383 () Bool)

(assert (=> start!86336 m!925383))

(declare-fun m!925385 () Bool)

(assert (=> start!86336 m!925385))

(assert (=> b!998876 m!925371))

(assert (=> b!998876 m!925371))

(declare-fun m!925387 () Bool)

(assert (=> b!998876 m!925387))

(assert (=> b!998876 m!925387))

(assert (=> b!998876 m!925371))

(declare-fun m!925389 () Bool)

(assert (=> b!998876 m!925389))

(declare-fun m!925391 () Bool)

(assert (=> b!998883 m!925391))

(declare-fun m!925393 () Bool)

(assert (=> b!998884 m!925393))

(push 1)

(assert (not b!998881))

(assert (not b!998883))

(assert (not b!998880))

(assert (not b!998876))

