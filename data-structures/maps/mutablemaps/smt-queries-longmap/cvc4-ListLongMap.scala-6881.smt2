; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86576 () Bool)

(assert start!86576)

(declare-fun b!1002883 () Bool)

(declare-fun e!564952 () Bool)

(declare-fun e!564950 () Bool)

(assert (=> b!1002883 (= e!564952 e!564950)))

(declare-fun res!672532 () Bool)

(assert (=> b!1002883 (=> (not res!672532) (not e!564950))))

(declare-datatypes ((SeekEntryResult!9418 0))(
  ( (MissingZero!9418 (index!40042 (_ BitVec 32))) (Found!9418 (index!40043 (_ BitVec 32))) (Intermediate!9418 (undefined!10230 Bool) (index!40044 (_ BitVec 32)) (x!87479 (_ BitVec 32))) (Undefined!9418) (MissingVacant!9418 (index!40045 (_ BitVec 32))) )
))
(declare-fun lt!443412 () SeekEntryResult!9418)

(declare-fun lt!443413 () SeekEntryResult!9418)

(assert (=> b!1002883 (= res!672532 (= lt!443412 lt!443413))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002883 (= lt!443413 (Intermediate!9418 false resIndex!38 resX!38))))

(declare-datatypes ((array!63329 0))(
  ( (array!63330 (arr!30486 (Array (_ BitVec 32) (_ BitVec 64))) (size!30989 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63329)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63329 (_ BitVec 32)) SeekEntryResult!9418)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002883 (= lt!443412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30486 a!3219) j!170) mask!3464) (select (arr!30486 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002884 () Bool)

(declare-fun res!672528 () Bool)

(declare-fun e!564956 () Bool)

(assert (=> b!1002884 (=> (not res!672528) (not e!564956))))

(declare-fun lt!443409 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1002884 (= res!672528 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443409 (select (arr!30486 a!3219) j!170) a!3219 mask!3464) lt!443413))))

(declare-fun b!1002885 () Bool)

(declare-fun res!672521 () Bool)

(declare-fun e!564955 () Bool)

(assert (=> b!1002885 (=> (not res!672521) (not e!564955))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002885 (= res!672521 (validKeyInArray!0 k!2224))))

(declare-fun b!1002886 () Bool)

(declare-fun res!672530 () Bool)

(declare-fun e!564954 () Bool)

(assert (=> b!1002886 (=> (not res!672530) (not e!564954))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443411 () (_ BitVec 64))

(declare-fun lt!443415 () array!63329)

(declare-fun lt!443410 () SeekEntryResult!9418)

(assert (=> b!1002886 (= res!672530 (not (= lt!443410 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443411 lt!443415 mask!3464))))))

(declare-fun b!1002887 () Bool)

(assert (=> b!1002887 (= e!564954 e!564956)))

(declare-fun res!672519 () Bool)

(assert (=> b!1002887 (=> (not res!672519) (not e!564956))))

(assert (=> b!1002887 (= res!672519 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443409 #b00000000000000000000000000000000) (bvslt lt!443409 (size!30989 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002887 (= lt!443409 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002888 () Bool)

(assert (=> b!1002888 (= e!564956 false)))

(declare-fun lt!443414 () SeekEntryResult!9418)

(assert (=> b!1002888 (= lt!443414 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443409 lt!443411 lt!443415 mask!3464))))

(declare-fun b!1002889 () Bool)

(declare-fun e!564953 () Bool)

(assert (=> b!1002889 (= e!564950 e!564953)))

(declare-fun res!672524 () Bool)

(assert (=> b!1002889 (=> (not res!672524) (not e!564953))))

(assert (=> b!1002889 (= res!672524 (= lt!443410 lt!443413))))

(assert (=> b!1002889 (= lt!443410 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30486 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002890 () Bool)

(declare-fun res!672517 () Bool)

(assert (=> b!1002890 (=> (not res!672517) (not e!564955))))

(declare-fun arrayContainsKey!0 (array!63329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002890 (= res!672517 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!672522 () Bool)

(assert (=> start!86576 (=> (not res!672522) (not e!564955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86576 (= res!672522 (validMask!0 mask!3464))))

(assert (=> start!86576 e!564955))

(declare-fun array_inv!23476 (array!63329) Bool)

(assert (=> start!86576 (array_inv!23476 a!3219)))

(assert (=> start!86576 true))

(declare-fun b!1002891 () Bool)

(declare-fun res!672525 () Bool)

(assert (=> b!1002891 (=> (not res!672525) (not e!564954))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002891 (= res!672525 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002892 () Bool)

(declare-fun res!672527 () Bool)

(assert (=> b!1002892 (=> (not res!672527) (not e!564952))))

(assert (=> b!1002892 (= res!672527 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30989 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30989 a!3219))))))

(declare-fun b!1002893 () Bool)

(declare-fun res!672529 () Bool)

(assert (=> b!1002893 (=> (not res!672529) (not e!564955))))

(assert (=> b!1002893 (= res!672529 (validKeyInArray!0 (select (arr!30486 a!3219) j!170)))))

(declare-fun b!1002894 () Bool)

(declare-fun res!672520 () Bool)

(assert (=> b!1002894 (=> (not res!672520) (not e!564952))))

(declare-datatypes ((List!21288 0))(
  ( (Nil!21285) (Cons!21284 (h!22461 (_ BitVec 64)) (t!30297 List!21288)) )
))
(declare-fun arrayNoDuplicates!0 (array!63329 (_ BitVec 32) List!21288) Bool)

(assert (=> b!1002894 (= res!672520 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21285))))

(declare-fun b!1002895 () Bool)

(assert (=> b!1002895 (= e!564955 e!564952)))

(declare-fun res!672531 () Bool)

(assert (=> b!1002895 (=> (not res!672531) (not e!564952))))

(declare-fun lt!443408 () SeekEntryResult!9418)

(assert (=> b!1002895 (= res!672531 (or (= lt!443408 (MissingVacant!9418 i!1194)) (= lt!443408 (MissingZero!9418 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63329 (_ BitVec 32)) SeekEntryResult!9418)

(assert (=> b!1002895 (= lt!443408 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002896 () Bool)

(assert (=> b!1002896 (= e!564953 e!564954)))

(declare-fun res!672523 () Bool)

(assert (=> b!1002896 (=> (not res!672523) (not e!564954))))

(assert (=> b!1002896 (= res!672523 (not (= lt!443412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443411 mask!3464) lt!443411 lt!443415 mask!3464))))))

(assert (=> b!1002896 (= lt!443411 (select (store (arr!30486 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002896 (= lt!443415 (array!63330 (store (arr!30486 a!3219) i!1194 k!2224) (size!30989 a!3219)))))

(declare-fun b!1002897 () Bool)

(declare-fun res!672518 () Bool)

(assert (=> b!1002897 (=> (not res!672518) (not e!564952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63329 (_ BitVec 32)) Bool)

(assert (=> b!1002897 (= res!672518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002898 () Bool)

(declare-fun res!672526 () Bool)

(assert (=> b!1002898 (=> (not res!672526) (not e!564955))))

(assert (=> b!1002898 (= res!672526 (and (= (size!30989 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30989 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30989 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86576 res!672522) b!1002898))

(assert (= (and b!1002898 res!672526) b!1002893))

(assert (= (and b!1002893 res!672529) b!1002885))

(assert (= (and b!1002885 res!672521) b!1002890))

(assert (= (and b!1002890 res!672517) b!1002895))

(assert (= (and b!1002895 res!672531) b!1002897))

(assert (= (and b!1002897 res!672518) b!1002894))

(assert (= (and b!1002894 res!672520) b!1002892))

(assert (= (and b!1002892 res!672527) b!1002883))

(assert (= (and b!1002883 res!672532) b!1002889))

(assert (= (and b!1002889 res!672524) b!1002896))

(assert (= (and b!1002896 res!672523) b!1002886))

(assert (= (and b!1002886 res!672530) b!1002891))

(assert (= (and b!1002891 res!672525) b!1002887))

(assert (= (and b!1002887 res!672519) b!1002884))

(assert (= (and b!1002884 res!672528) b!1002888))

(declare-fun m!928781 () Bool)

(assert (=> b!1002888 m!928781))

(declare-fun m!928783 () Bool)

(assert (=> b!1002893 m!928783))

(assert (=> b!1002893 m!928783))

(declare-fun m!928785 () Bool)

(assert (=> b!1002893 m!928785))

(declare-fun m!928787 () Bool)

(assert (=> b!1002895 m!928787))

(declare-fun m!928789 () Bool)

(assert (=> b!1002894 m!928789))

(declare-fun m!928791 () Bool)

(assert (=> b!1002896 m!928791))

(assert (=> b!1002896 m!928791))

(declare-fun m!928793 () Bool)

(assert (=> b!1002896 m!928793))

(declare-fun m!928795 () Bool)

(assert (=> b!1002896 m!928795))

(declare-fun m!928797 () Bool)

(assert (=> b!1002896 m!928797))

(declare-fun m!928799 () Bool)

(assert (=> b!1002885 m!928799))

(declare-fun m!928801 () Bool)

(assert (=> b!1002887 m!928801))

(declare-fun m!928803 () Bool)

(assert (=> b!1002897 m!928803))

(declare-fun m!928805 () Bool)

(assert (=> b!1002890 m!928805))

(declare-fun m!928807 () Bool)

(assert (=> start!86576 m!928807))

(declare-fun m!928809 () Bool)

(assert (=> start!86576 m!928809))

(assert (=> b!1002883 m!928783))

(assert (=> b!1002883 m!928783))

(declare-fun m!928811 () Bool)

(assert (=> b!1002883 m!928811))

(assert (=> b!1002883 m!928811))

(assert (=> b!1002883 m!928783))

(declare-fun m!928813 () Bool)

(assert (=> b!1002883 m!928813))

(assert (=> b!1002884 m!928783))

(assert (=> b!1002884 m!928783))

(declare-fun m!928815 () Bool)

(assert (=> b!1002884 m!928815))

(declare-fun m!928817 () Bool)

(assert (=> b!1002886 m!928817))

(assert (=> b!1002889 m!928783))

(assert (=> b!1002889 m!928783))

(declare-fun m!928819 () Bool)

(assert (=> b!1002889 m!928819))

(push 1)

(assert (not b!1002896))

