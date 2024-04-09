; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86798 () Bool)

(assert start!86798)

(declare-fun b!1005778 () Bool)

(declare-fun e!566279 () Bool)

(declare-fun e!566277 () Bool)

(assert (=> b!1005778 (= e!566279 e!566277)))

(declare-fun res!675027 () Bool)

(assert (=> b!1005778 (=> (not res!675027) (not e!566277))))

(declare-datatypes ((SeekEntryResult!9475 0))(
  ( (MissingZero!9475 (index!40270 (_ BitVec 32))) (Found!9475 (index!40271 (_ BitVec 32))) (Intermediate!9475 (undefined!10287 Bool) (index!40272 (_ BitVec 32)) (x!87700 (_ BitVec 32))) (Undefined!9475) (MissingVacant!9475 (index!40273 (_ BitVec 32))) )
))
(declare-fun lt!444596 () SeekEntryResult!9475)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005778 (= res!675027 (or (= lt!444596 (MissingVacant!9475 i!1194)) (= lt!444596 (MissingZero!9475 i!1194))))))

(declare-datatypes ((array!63449 0))(
  ( (array!63450 (arr!30543 (Array (_ BitVec 32) (_ BitVec 64))) (size!31046 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63449)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63449 (_ BitVec 32)) SeekEntryResult!9475)

(assert (=> b!1005778 (= lt!444596 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005779 () Bool)

(declare-fun res!675028 () Bool)

(assert (=> b!1005779 (=> (not res!675028) (not e!566277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63449 (_ BitVec 32)) Bool)

(assert (=> b!1005779 (= res!675028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005780 () Bool)

(declare-fun res!675023 () Bool)

(assert (=> b!1005780 (=> (not res!675023) (not e!566279))))

(declare-fun arrayContainsKey!0 (array!63449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005780 (= res!675023 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005781 () Bool)

(assert (=> b!1005781 (= e!566277 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444597 () SeekEntryResult!9475)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63449 (_ BitVec 32)) SeekEntryResult!9475)

(assert (=> b!1005781 (= lt!444597 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30543 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005782 () Bool)

(declare-fun res!675030 () Bool)

(assert (=> b!1005782 (=> (not res!675030) (not e!566279))))

(assert (=> b!1005782 (= res!675030 (and (= (size!31046 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31046 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31046 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005783 () Bool)

(declare-fun res!675024 () Bool)

(assert (=> b!1005783 (=> (not res!675024) (not e!566279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005783 (= res!675024 (validKeyInArray!0 (select (arr!30543 a!3219) j!170)))))

(declare-fun res!675031 () Bool)

(assert (=> start!86798 (=> (not res!675031) (not e!566279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86798 (= res!675031 (validMask!0 mask!3464))))

(assert (=> start!86798 e!566279))

(declare-fun array_inv!23533 (array!63449) Bool)

(assert (=> start!86798 (array_inv!23533 a!3219)))

(assert (=> start!86798 true))

(declare-fun b!1005784 () Bool)

(declare-fun res!675029 () Bool)

(assert (=> b!1005784 (=> (not res!675029) (not e!566277))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005784 (= res!675029 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31046 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31046 a!3219))))))

(declare-fun b!1005785 () Bool)

(declare-fun res!675022 () Bool)

(assert (=> b!1005785 (=> (not res!675022) (not e!566277))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005785 (= res!675022 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30543 a!3219) j!170) mask!3464) (select (arr!30543 a!3219) j!170) a!3219 mask!3464) (Intermediate!9475 false resIndex!38 resX!38)))))

(declare-fun b!1005786 () Bool)

(declare-fun res!675025 () Bool)

(assert (=> b!1005786 (=> (not res!675025) (not e!566277))))

(declare-datatypes ((List!21345 0))(
  ( (Nil!21342) (Cons!21341 (h!22524 (_ BitVec 64)) (t!30354 List!21345)) )
))
(declare-fun arrayNoDuplicates!0 (array!63449 (_ BitVec 32) List!21345) Bool)

(assert (=> b!1005786 (= res!675025 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21342))))

(declare-fun b!1005787 () Bool)

(declare-fun res!675026 () Bool)

(assert (=> b!1005787 (=> (not res!675026) (not e!566279))))

(assert (=> b!1005787 (= res!675026 (validKeyInArray!0 k!2224))))

(assert (= (and start!86798 res!675031) b!1005782))

(assert (= (and b!1005782 res!675030) b!1005783))

(assert (= (and b!1005783 res!675024) b!1005787))

(assert (= (and b!1005787 res!675026) b!1005780))

(assert (= (and b!1005780 res!675023) b!1005778))

(assert (= (and b!1005778 res!675027) b!1005779))

(assert (= (and b!1005779 res!675028) b!1005786))

(assert (= (and b!1005786 res!675025) b!1005784))

(assert (= (and b!1005784 res!675029) b!1005785))

(assert (= (and b!1005785 res!675022) b!1005781))

(declare-fun m!931041 () Bool)

(assert (=> b!1005787 m!931041))

(declare-fun m!931043 () Bool)

(assert (=> start!86798 m!931043))

(declare-fun m!931045 () Bool)

(assert (=> start!86798 m!931045))

(declare-fun m!931047 () Bool)

(assert (=> b!1005783 m!931047))

(assert (=> b!1005783 m!931047))

(declare-fun m!931049 () Bool)

(assert (=> b!1005783 m!931049))

(declare-fun m!931051 () Bool)

(assert (=> b!1005780 m!931051))

(declare-fun m!931053 () Bool)

(assert (=> b!1005786 m!931053))

(declare-fun m!931055 () Bool)

(assert (=> b!1005778 m!931055))

(assert (=> b!1005781 m!931047))

(assert (=> b!1005781 m!931047))

(declare-fun m!931057 () Bool)

(assert (=> b!1005781 m!931057))

(declare-fun m!931059 () Bool)

(assert (=> b!1005779 m!931059))

(assert (=> b!1005785 m!931047))

(assert (=> b!1005785 m!931047))

(declare-fun m!931061 () Bool)

(assert (=> b!1005785 m!931061))

(assert (=> b!1005785 m!931061))

(assert (=> b!1005785 m!931047))

(declare-fun m!931063 () Bool)

(assert (=> b!1005785 m!931063))

(push 1)

(assert (not b!1005786))

(assert (not b!1005779))

(assert (not b!1005780))

(assert (not b!1005787))

