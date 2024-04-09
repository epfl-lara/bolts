; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86330 () Bool)

(assert start!86330)

(declare-fun b!998775 () Bool)

(declare-fun res!668576 () Bool)

(declare-fun e!563238 () Bool)

(assert (=> b!998775 (=> (not res!668576) (not e!563238))))

(declare-datatypes ((array!63134 0))(
  ( (array!63135 (arr!30390 (Array (_ BitVec 32) (_ BitVec 64))) (size!30893 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63134)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998775 (= res!668576 (validKeyInArray!0 (select (arr!30390 a!3219) j!170)))))

(declare-fun b!998776 () Bool)

(declare-fun res!668571 () Bool)

(declare-fun e!563240 () Bool)

(assert (=> b!998776 (=> (not res!668571) (not e!563240))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998776 (= res!668571 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30893 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30893 a!3219))))))

(declare-fun b!998777 () Bool)

(declare-fun res!668574 () Bool)

(declare-fun e!563237 () Bool)

(assert (=> b!998777 (=> (not res!668574) (not e!563237))))

(declare-datatypes ((SeekEntryResult!9322 0))(
  ( (MissingZero!9322 (index!39658 (_ BitVec 32))) (Found!9322 (index!39659 (_ BitVec 32))) (Intermediate!9322 (undefined!10134 Bool) (index!39660 (_ BitVec 32)) (x!87121 (_ BitVec 32))) (Undefined!9322) (MissingVacant!9322 (index!39661 (_ BitVec 32))) )
))
(declare-fun lt!441800 () SeekEntryResult!9322)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63134 (_ BitVec 32)) SeekEntryResult!9322)

(assert (=> b!998777 (= res!668574 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30390 a!3219) j!170) a!3219 mask!3464) lt!441800))))

(declare-fun b!998778 () Bool)

(assert (=> b!998778 (= e!563238 e!563240)))

(declare-fun res!668573 () Bool)

(assert (=> b!998778 (=> (not res!668573) (not e!563240))))

(declare-fun lt!441799 () SeekEntryResult!9322)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998778 (= res!668573 (or (= lt!441799 (MissingVacant!9322 i!1194)) (= lt!441799 (MissingZero!9322 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63134 (_ BitVec 32)) SeekEntryResult!9322)

(assert (=> b!998778 (= lt!441799 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998779 () Bool)

(declare-fun res!668569 () Bool)

(assert (=> b!998779 (=> (not res!668569) (not e!563238))))

(declare-fun arrayContainsKey!0 (array!63134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998779 (= res!668569 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998780 () Bool)

(assert (=> b!998780 (= e!563237 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun lt!441801 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998780 (= lt!441801 (toIndex!0 (select (store (arr!30390 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998781 () Bool)

(assert (=> b!998781 (= e!563240 e!563237)))

(declare-fun res!668578 () Bool)

(assert (=> b!998781 (=> (not res!668578) (not e!563237))))

(assert (=> b!998781 (= res!668578 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30390 a!3219) j!170) mask!3464) (select (arr!30390 a!3219) j!170) a!3219 mask!3464) lt!441800))))

(assert (=> b!998781 (= lt!441800 (Intermediate!9322 false resIndex!38 resX!38))))

(declare-fun res!668572 () Bool)

(assert (=> start!86330 (=> (not res!668572) (not e!563238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86330 (= res!668572 (validMask!0 mask!3464))))

(assert (=> start!86330 e!563238))

(declare-fun array_inv!23380 (array!63134) Bool)

(assert (=> start!86330 (array_inv!23380 a!3219)))

(assert (=> start!86330 true))

(declare-fun b!998782 () Bool)

(declare-fun res!668568 () Bool)

(assert (=> b!998782 (=> (not res!668568) (not e!563240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63134 (_ BitVec 32)) Bool)

(assert (=> b!998782 (= res!668568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998783 () Bool)

(declare-fun res!668570 () Bool)

(assert (=> b!998783 (=> (not res!668570) (not e!563238))))

(assert (=> b!998783 (= res!668570 (and (= (size!30893 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30893 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30893 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998784 () Bool)

(declare-fun res!668575 () Bool)

(assert (=> b!998784 (=> (not res!668575) (not e!563240))))

(declare-datatypes ((List!21192 0))(
  ( (Nil!21189) (Cons!21188 (h!22362 (_ BitVec 64)) (t!30201 List!21192)) )
))
(declare-fun arrayNoDuplicates!0 (array!63134 (_ BitVec 32) List!21192) Bool)

(assert (=> b!998784 (= res!668575 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21189))))

(declare-fun b!998785 () Bool)

(declare-fun res!668577 () Bool)

(assert (=> b!998785 (=> (not res!668577) (not e!563238))))

(assert (=> b!998785 (= res!668577 (validKeyInArray!0 k!2224))))

(assert (= (and start!86330 res!668572) b!998783))

(assert (= (and b!998783 res!668570) b!998775))

(assert (= (and b!998775 res!668576) b!998785))

(assert (= (and b!998785 res!668577) b!998779))

(assert (= (and b!998779 res!668569) b!998778))

(assert (= (and b!998778 res!668573) b!998782))

(assert (= (and b!998782 res!668568) b!998784))

(assert (= (and b!998784 res!668575) b!998776))

(assert (= (and b!998776 res!668571) b!998781))

(assert (= (and b!998781 res!668578) b!998777))

(assert (= (and b!998777 res!668574) b!998780))

(declare-fun m!925275 () Bool)

(assert (=> b!998784 m!925275))

(declare-fun m!925277 () Bool)

(assert (=> b!998785 m!925277))

(declare-fun m!925279 () Bool)

(assert (=> b!998777 m!925279))

(assert (=> b!998777 m!925279))

(declare-fun m!925281 () Bool)

(assert (=> b!998777 m!925281))

(declare-fun m!925283 () Bool)

(assert (=> start!86330 m!925283))

(declare-fun m!925285 () Bool)

(assert (=> start!86330 m!925285))

(declare-fun m!925287 () Bool)

(assert (=> b!998782 m!925287))

(declare-fun m!925289 () Bool)

(assert (=> b!998780 m!925289))

(declare-fun m!925291 () Bool)

(assert (=> b!998780 m!925291))

(assert (=> b!998780 m!925291))

(declare-fun m!925293 () Bool)

(assert (=> b!998780 m!925293))

(assert (=> b!998775 m!925279))

(assert (=> b!998775 m!925279))

(declare-fun m!925295 () Bool)

(assert (=> b!998775 m!925295))

(declare-fun m!925297 () Bool)

(assert (=> b!998779 m!925297))

(declare-fun m!925299 () Bool)

(assert (=> b!998778 m!925299))

(assert (=> b!998781 m!925279))

(assert (=> b!998781 m!925279))

(declare-fun m!925301 () Bool)

(assert (=> b!998781 m!925301))

(assert (=> b!998781 m!925301))

(assert (=> b!998781 m!925279))

(declare-fun m!925303 () Bool)

(assert (=> b!998781 m!925303))

(push 1)

(assert (not b!998778))

(assert (not b!998777))

(assert (not b!998780))

