; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86788 () Bool)

(assert start!86788)

(declare-fun b!1005628 () Bool)

(declare-fun res!674880 () Bool)

(declare-fun e!566233 () Bool)

(assert (=> b!1005628 (=> (not res!674880) (not e!566233))))

(declare-datatypes ((array!63439 0))(
  ( (array!63440 (arr!30538 (Array (_ BitVec 32) (_ BitVec 64))) (size!31041 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63439)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005628 (= res!674880 (validKeyInArray!0 (select (arr!30538 a!3219) j!170)))))

(declare-fun b!1005629 () Bool)

(declare-fun res!674879 () Bool)

(declare-fun e!566232 () Bool)

(assert (=> b!1005629 (=> (not res!674879) (not e!566232))))

(declare-datatypes ((List!21340 0))(
  ( (Nil!21337) (Cons!21336 (h!22519 (_ BitVec 64)) (t!30349 List!21340)) )
))
(declare-fun arrayNoDuplicates!0 (array!63439 (_ BitVec 32) List!21340) Bool)

(assert (=> b!1005629 (= res!674879 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21337))))

(declare-fun res!674876 () Bool)

(assert (=> start!86788 (=> (not res!674876) (not e!566233))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86788 (= res!674876 (validMask!0 mask!3464))))

(assert (=> start!86788 e!566233))

(declare-fun array_inv!23528 (array!63439) Bool)

(assert (=> start!86788 (array_inv!23528 a!3219)))

(assert (=> start!86788 true))

(declare-fun b!1005630 () Bool)

(declare-fun res!674878 () Bool)

(assert (=> b!1005630 (=> (not res!674878) (not e!566232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63439 (_ BitVec 32)) Bool)

(assert (=> b!1005630 (= res!674878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005631 () Bool)

(declare-fun res!674877 () Bool)

(assert (=> b!1005631 (=> (not res!674877) (not e!566233))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005631 (= res!674877 (and (= (size!31041 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31041 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31041 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005632 () Bool)

(assert (=> b!1005632 (= e!566232 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9470 0))(
  ( (MissingZero!9470 (index!40250 (_ BitVec 32))) (Found!9470 (index!40251 (_ BitVec 32))) (Intermediate!9470 (undefined!10282 Bool) (index!40252 (_ BitVec 32)) (x!87687 (_ BitVec 32))) (Undefined!9470) (MissingVacant!9470 (index!40253 (_ BitVec 32))) )
))
(declare-fun lt!444566 () SeekEntryResult!9470)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63439 (_ BitVec 32)) SeekEntryResult!9470)

(assert (=> b!1005632 (= lt!444566 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30538 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005633 () Bool)

(assert (=> b!1005633 (= e!566233 e!566232)))

(declare-fun res!674873 () Bool)

(assert (=> b!1005633 (=> (not res!674873) (not e!566232))))

(declare-fun lt!444567 () SeekEntryResult!9470)

(assert (=> b!1005633 (= res!674873 (or (= lt!444567 (MissingVacant!9470 i!1194)) (= lt!444567 (MissingZero!9470 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63439 (_ BitVec 32)) SeekEntryResult!9470)

(assert (=> b!1005633 (= lt!444567 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005634 () Bool)

(declare-fun res!674872 () Bool)

(assert (=> b!1005634 (=> (not res!674872) (not e!566232))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005634 (= res!674872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30538 a!3219) j!170) mask!3464) (select (arr!30538 a!3219) j!170) a!3219 mask!3464) (Intermediate!9470 false resIndex!38 resX!38)))))

(declare-fun b!1005635 () Bool)

(declare-fun res!674881 () Bool)

(assert (=> b!1005635 (=> (not res!674881) (not e!566233))))

(assert (=> b!1005635 (= res!674881 (validKeyInArray!0 k!2224))))

(declare-fun b!1005636 () Bool)

(declare-fun res!674875 () Bool)

(assert (=> b!1005636 (=> (not res!674875) (not e!566233))))

(declare-fun arrayContainsKey!0 (array!63439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005636 (= res!674875 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005637 () Bool)

(declare-fun res!674874 () Bool)

(assert (=> b!1005637 (=> (not res!674874) (not e!566232))))

(assert (=> b!1005637 (= res!674874 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31041 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31041 a!3219))))))

(assert (= (and start!86788 res!674876) b!1005631))

(assert (= (and b!1005631 res!674877) b!1005628))

(assert (= (and b!1005628 res!674880) b!1005635))

(assert (= (and b!1005635 res!674881) b!1005636))

(assert (= (and b!1005636 res!674875) b!1005633))

(assert (= (and b!1005633 res!674873) b!1005630))

(assert (= (and b!1005630 res!674878) b!1005629))

(assert (= (and b!1005629 res!674879) b!1005637))

(assert (= (and b!1005637 res!674874) b!1005634))

(assert (= (and b!1005634 res!674872) b!1005632))

(declare-fun m!930921 () Bool)

(assert (=> b!1005635 m!930921))

(declare-fun m!930923 () Bool)

(assert (=> b!1005629 m!930923))

(declare-fun m!930925 () Bool)

(assert (=> b!1005630 m!930925))

(declare-fun m!930927 () Bool)

(assert (=> b!1005632 m!930927))

(assert (=> b!1005632 m!930927))

(declare-fun m!930929 () Bool)

(assert (=> b!1005632 m!930929))

(declare-fun m!930931 () Bool)

(assert (=> b!1005633 m!930931))

(assert (=> b!1005628 m!930927))

(assert (=> b!1005628 m!930927))

(declare-fun m!930933 () Bool)

(assert (=> b!1005628 m!930933))

(declare-fun m!930935 () Bool)

(assert (=> b!1005636 m!930935))

(assert (=> b!1005634 m!930927))

(assert (=> b!1005634 m!930927))

(declare-fun m!930937 () Bool)

(assert (=> b!1005634 m!930937))

(assert (=> b!1005634 m!930937))

(assert (=> b!1005634 m!930927))

(declare-fun m!930939 () Bool)

(assert (=> b!1005634 m!930939))

(declare-fun m!930941 () Bool)

(assert (=> start!86788 m!930941))

(declare-fun m!930943 () Bool)

(assert (=> start!86788 m!930943))

(push 1)

