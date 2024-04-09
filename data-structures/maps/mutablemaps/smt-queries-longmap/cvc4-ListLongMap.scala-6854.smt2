; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86414 () Bool)

(assert start!86414)

(declare-fun b!999540 () Bool)

(declare-fun res!669182 () Bool)

(declare-fun e!563595 () Bool)

(assert (=> b!999540 (=> (not res!669182) (not e!563595))))

(declare-datatypes ((array!63167 0))(
  ( (array!63168 (arr!30405 (Array (_ BitVec 32) (_ BitVec 64))) (size!30908 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63167)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999540 (= res!669182 (and (= (size!30908 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30908 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30908 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!669178 () Bool)

(assert (=> start!86414 (=> (not res!669178) (not e!563595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86414 (= res!669178 (validMask!0 mask!3464))))

(assert (=> start!86414 e!563595))

(declare-fun array_inv!23395 (array!63167) Bool)

(assert (=> start!86414 (array_inv!23395 a!3219)))

(assert (=> start!86414 true))

(declare-fun b!999541 () Bool)

(declare-fun e!563594 () Bool)

(assert (=> b!999541 (= e!563594 false)))

(declare-datatypes ((SeekEntryResult!9337 0))(
  ( (MissingZero!9337 (index!39718 (_ BitVec 32))) (Found!9337 (index!39719 (_ BitVec 32))) (Intermediate!9337 (undefined!10149 Bool) (index!39720 (_ BitVec 32)) (x!87182 (_ BitVec 32))) (Undefined!9337) (MissingVacant!9337 (index!39721 (_ BitVec 32))) )
))
(declare-fun lt!442038 () SeekEntryResult!9337)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63167 (_ BitVec 32)) SeekEntryResult!9337)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999541 (= lt!442038 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30405 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30405 a!3219) i!1194 k!2224) j!170) (array!63168 (store (arr!30405 a!3219) i!1194 k!2224) (size!30908 a!3219)) mask!3464))))

(declare-fun b!999542 () Bool)

(declare-fun res!669181 () Bool)

(declare-fun e!563596 () Bool)

(assert (=> b!999542 (=> (not res!669181) (not e!563596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63167 (_ BitVec 32)) Bool)

(assert (=> b!999542 (= res!669181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999543 () Bool)

(declare-fun res!669183 () Bool)

(assert (=> b!999543 (=> (not res!669183) (not e!563595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999543 (= res!669183 (validKeyInArray!0 (select (arr!30405 a!3219) j!170)))))

(declare-fun b!999544 () Bool)

(assert (=> b!999544 (= e!563596 e!563594)))

(declare-fun res!669177 () Bool)

(assert (=> b!999544 (=> (not res!669177) (not e!563594))))

(declare-fun lt!442036 () SeekEntryResult!9337)

(assert (=> b!999544 (= res!669177 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30405 a!3219) j!170) mask!3464) (select (arr!30405 a!3219) j!170) a!3219 mask!3464) lt!442036))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999544 (= lt!442036 (Intermediate!9337 false resIndex!38 resX!38))))

(declare-fun b!999545 () Bool)

(declare-fun res!669175 () Bool)

(assert (=> b!999545 (=> (not res!669175) (not e!563594))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!999545 (= res!669175 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30405 a!3219) j!170) a!3219 mask!3464) lt!442036))))

(declare-fun b!999546 () Bool)

(declare-fun res!669176 () Bool)

(assert (=> b!999546 (=> (not res!669176) (not e!563595))))

(declare-fun arrayContainsKey!0 (array!63167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999546 (= res!669176 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999547 () Bool)

(declare-fun res!669174 () Bool)

(assert (=> b!999547 (=> (not res!669174) (not e!563596))))

(assert (=> b!999547 (= res!669174 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30908 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30908 a!3219))))))

(declare-fun b!999548 () Bool)

(declare-fun res!669179 () Bool)

(assert (=> b!999548 (=> (not res!669179) (not e!563595))))

(assert (=> b!999548 (= res!669179 (validKeyInArray!0 k!2224))))

(declare-fun b!999549 () Bool)

(assert (=> b!999549 (= e!563595 e!563596)))

(declare-fun res!669180 () Bool)

(assert (=> b!999549 (=> (not res!669180) (not e!563596))))

(declare-fun lt!442037 () SeekEntryResult!9337)

(assert (=> b!999549 (= res!669180 (or (= lt!442037 (MissingVacant!9337 i!1194)) (= lt!442037 (MissingZero!9337 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63167 (_ BitVec 32)) SeekEntryResult!9337)

(assert (=> b!999549 (= lt!442037 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999550 () Bool)

(declare-fun res!669184 () Bool)

(assert (=> b!999550 (=> (not res!669184) (not e!563596))))

(declare-datatypes ((List!21207 0))(
  ( (Nil!21204) (Cons!21203 (h!22380 (_ BitVec 64)) (t!30216 List!21207)) )
))
(declare-fun arrayNoDuplicates!0 (array!63167 (_ BitVec 32) List!21207) Bool)

(assert (=> b!999550 (= res!669184 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21204))))

(assert (= (and start!86414 res!669178) b!999540))

(assert (= (and b!999540 res!669182) b!999543))

(assert (= (and b!999543 res!669183) b!999548))

(assert (= (and b!999548 res!669179) b!999546))

(assert (= (and b!999546 res!669176) b!999549))

(assert (= (and b!999549 res!669180) b!999542))

(assert (= (and b!999542 res!669181) b!999550))

(assert (= (and b!999550 res!669184) b!999547))

(assert (= (and b!999547 res!669174) b!999544))

(assert (= (and b!999544 res!669177) b!999545))

(assert (= (and b!999545 res!669175) b!999541))

(declare-fun m!925879 () Bool)

(assert (=> b!999543 m!925879))

(assert (=> b!999543 m!925879))

(declare-fun m!925881 () Bool)

(assert (=> b!999543 m!925881))

(declare-fun m!925883 () Bool)

(assert (=> b!999541 m!925883))

(declare-fun m!925885 () Bool)

(assert (=> b!999541 m!925885))

(assert (=> b!999541 m!925885))

(declare-fun m!925887 () Bool)

(assert (=> b!999541 m!925887))

(assert (=> b!999541 m!925887))

(assert (=> b!999541 m!925885))

(declare-fun m!925889 () Bool)

(assert (=> b!999541 m!925889))

(declare-fun m!925891 () Bool)

(assert (=> b!999549 m!925891))

(declare-fun m!925893 () Bool)

(assert (=> b!999546 m!925893))

(declare-fun m!925895 () Bool)

(assert (=> b!999542 m!925895))

(declare-fun m!925897 () Bool)

(assert (=> start!86414 m!925897))

(declare-fun m!925899 () Bool)

(assert (=> start!86414 m!925899))

(declare-fun m!925901 () Bool)

(assert (=> b!999548 m!925901))

(declare-fun m!925903 () Bool)

(assert (=> b!999550 m!925903))

(assert (=> b!999545 m!925879))

(assert (=> b!999545 m!925879))

(declare-fun m!925905 () Bool)

(assert (=> b!999545 m!925905))

(assert (=> b!999544 m!925879))

(assert (=> b!999544 m!925879))

(declare-fun m!925907 () Bool)

(assert (=> b!999544 m!925907))

(assert (=> b!999544 m!925907))

(assert (=> b!999544 m!925879))

(declare-fun m!925909 () Bool)

(assert (=> b!999544 m!925909))

(push 1)

(assert (not b!999550))

(assert (not b!999543))

(assert (not b!999546))

(assert (not b!999544))

