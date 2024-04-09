; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86470 () Bool)

(assert start!86470)

(declare-fun b!1000511 () Bool)

(declare-fun res!670147 () Bool)

(declare-fun e!563932 () Bool)

(assert (=> b!1000511 (=> (not res!670147) (not e!563932))))

(declare-datatypes ((array!63223 0))(
  ( (array!63224 (arr!30433 (Array (_ BitVec 32) (_ BitVec 64))) (size!30936 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63223)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000511 (= res!670147 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000512 () Bool)

(declare-fun res!670148 () Bool)

(assert (=> b!1000512 (=> (not res!670148) (not e!563932))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000512 (= res!670148 (validKeyInArray!0 (select (arr!30433 a!3219) j!170)))))

(declare-fun b!1000514 () Bool)

(declare-fun res!670151 () Bool)

(declare-fun e!563931 () Bool)

(assert (=> b!1000514 (=> (not res!670151) (not e!563931))))

(declare-datatypes ((SeekEntryResult!9365 0))(
  ( (MissingZero!9365 (index!39830 (_ BitVec 32))) (Found!9365 (index!39831 (_ BitVec 32))) (Intermediate!9365 (undefined!10177 Bool) (index!39832 (_ BitVec 32)) (x!87290 (_ BitVec 32))) (Undefined!9365) (MissingVacant!9365 (index!39833 (_ BitVec 32))) )
))
(declare-fun lt!442289 () SeekEntryResult!9365)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63223 (_ BitVec 32)) SeekEntryResult!9365)

(assert (=> b!1000514 (= res!670151 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30433 a!3219) j!170) a!3219 mask!3464) lt!442289))))

(declare-fun b!1000515 () Bool)

(declare-fun e!563930 () Bool)

(assert (=> b!1000515 (= e!563932 e!563930)))

(declare-fun res!670152 () Bool)

(assert (=> b!1000515 (=> (not res!670152) (not e!563930))))

(declare-fun lt!442288 () SeekEntryResult!9365)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000515 (= res!670152 (or (= lt!442288 (MissingVacant!9365 i!1194)) (= lt!442288 (MissingZero!9365 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63223 (_ BitVec 32)) SeekEntryResult!9365)

(assert (=> b!1000515 (= lt!442288 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000516 () Bool)

(declare-fun res!670145 () Bool)

(assert (=> b!1000516 (=> (not res!670145) (not e!563932))))

(assert (=> b!1000516 (= res!670145 (validKeyInArray!0 k!2224))))

(declare-fun b!1000517 () Bool)

(declare-fun res!670155 () Bool)

(assert (=> b!1000517 (=> (not res!670155) (not e!563932))))

(assert (=> b!1000517 (= res!670155 (and (= (size!30936 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30936 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30936 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000518 () Bool)

(declare-fun res!670156 () Bool)

(assert (=> b!1000518 (=> (not res!670156) (not e!563930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63223 (_ BitVec 32)) Bool)

(assert (=> b!1000518 (= res!670156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000519 () Bool)

(declare-fun res!670154 () Bool)

(assert (=> b!1000519 (=> (not res!670154) (not e!563930))))

(declare-datatypes ((List!21235 0))(
  ( (Nil!21232) (Cons!21231 (h!22408 (_ BitVec 64)) (t!30244 List!21235)) )
))
(declare-fun arrayNoDuplicates!0 (array!63223 (_ BitVec 32) List!21235) Bool)

(assert (=> b!1000519 (= res!670154 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21232))))

(declare-fun b!1000520 () Bool)

(assert (=> b!1000520 (= e!563930 e!563931)))

(declare-fun res!670153 () Bool)

(assert (=> b!1000520 (=> (not res!670153) (not e!563931))))

(declare-fun lt!442290 () SeekEntryResult!9365)

(assert (=> b!1000520 (= res!670153 (= lt!442290 lt!442289))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000520 (= lt!442289 (Intermediate!9365 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000520 (= lt!442290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30433 a!3219) j!170) mask!3464) (select (arr!30433 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000513 () Bool)

(declare-fun res!670150 () Bool)

(assert (=> b!1000513 (=> (not res!670150) (not e!563930))))

(assert (=> b!1000513 (= res!670150 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30936 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30936 a!3219))))))

(declare-fun res!670149 () Bool)

(assert (=> start!86470 (=> (not res!670149) (not e!563932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86470 (= res!670149 (validMask!0 mask!3464))))

(assert (=> start!86470 e!563932))

(declare-fun array_inv!23423 (array!63223) Bool)

(assert (=> start!86470 (array_inv!23423 a!3219)))

(assert (=> start!86470 true))

(declare-fun b!1000521 () Bool)

(assert (=> b!1000521 (= e!563931 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1000522 () Bool)

(declare-fun res!670146 () Bool)

(assert (=> b!1000522 (=> (not res!670146) (not e!563931))))

(assert (=> b!1000522 (= res!670146 (not (= lt!442290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30433 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30433 a!3219) i!1194 k!2224) j!170) (array!63224 (store (arr!30433 a!3219) i!1194 k!2224) (size!30936 a!3219)) mask!3464))))))

(assert (= (and start!86470 res!670149) b!1000517))

(assert (= (and b!1000517 res!670155) b!1000512))

(assert (= (and b!1000512 res!670148) b!1000516))

(assert (= (and b!1000516 res!670145) b!1000511))

(assert (= (and b!1000511 res!670147) b!1000515))

(assert (= (and b!1000515 res!670152) b!1000518))

(assert (= (and b!1000518 res!670156) b!1000519))

(assert (= (and b!1000519 res!670154) b!1000513))

(assert (= (and b!1000513 res!670150) b!1000520))

(assert (= (and b!1000520 res!670153) b!1000514))

(assert (= (and b!1000514 res!670151) b!1000522))

(assert (= (and b!1000522 res!670146) b!1000521))

(declare-fun m!926775 () Bool)

(assert (=> b!1000522 m!926775))

(declare-fun m!926777 () Bool)

(assert (=> b!1000522 m!926777))

(assert (=> b!1000522 m!926777))

(declare-fun m!926779 () Bool)

(assert (=> b!1000522 m!926779))

(assert (=> b!1000522 m!926779))

(assert (=> b!1000522 m!926777))

(declare-fun m!926781 () Bool)

(assert (=> b!1000522 m!926781))

(declare-fun m!926783 () Bool)

(assert (=> b!1000518 m!926783))

(declare-fun m!926785 () Bool)

(assert (=> start!86470 m!926785))

(declare-fun m!926787 () Bool)

(assert (=> start!86470 m!926787))

(declare-fun m!926789 () Bool)

(assert (=> b!1000516 m!926789))

(declare-fun m!926791 () Bool)

(assert (=> b!1000512 m!926791))

(assert (=> b!1000512 m!926791))

(declare-fun m!926793 () Bool)

(assert (=> b!1000512 m!926793))

(declare-fun m!926795 () Bool)

(assert (=> b!1000515 m!926795))

(declare-fun m!926797 () Bool)

(assert (=> b!1000519 m!926797))

(assert (=> b!1000514 m!926791))

(assert (=> b!1000514 m!926791))

(declare-fun m!926799 () Bool)

(assert (=> b!1000514 m!926799))

(assert (=> b!1000520 m!926791))

(assert (=> b!1000520 m!926791))

(declare-fun m!926801 () Bool)

(assert (=> b!1000520 m!926801))

(assert (=> b!1000520 m!926801))

(assert (=> b!1000520 m!926791))

(declare-fun m!926803 () Bool)

(assert (=> b!1000520 m!926803))

(declare-fun m!926805 () Bool)

(assert (=> b!1000511 m!926805))

(push 1)

