; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86618 () Bool)

(assert start!86618)

(declare-fun b!1003891 () Bool)

(declare-fun e!565396 () Bool)

(declare-fun e!565392 () Bool)

(assert (=> b!1003891 (= e!565396 e!565392)))

(declare-fun res!673533 () Bool)

(assert (=> b!1003891 (=> (not res!673533) (not e!565392))))

(declare-datatypes ((SeekEntryResult!9439 0))(
  ( (MissingZero!9439 (index!40126 (_ BitVec 32))) (Found!9439 (index!40127 (_ BitVec 32))) (Intermediate!9439 (undefined!10251 Bool) (index!40128 (_ BitVec 32)) (x!87556 (_ BitVec 32))) (Undefined!9439) (MissingVacant!9439 (index!40129 (_ BitVec 32))) )
))
(declare-fun lt!443915 () SeekEntryResult!9439)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003891 (= res!673533 (or (= lt!443915 (MissingVacant!9439 i!1194)) (= lt!443915 (MissingZero!9439 i!1194))))))

(declare-datatypes ((array!63371 0))(
  ( (array!63372 (arr!30507 (Array (_ BitVec 32) (_ BitVec 64))) (size!31010 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63371)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63371 (_ BitVec 32)) SeekEntryResult!9439)

(assert (=> b!1003891 (= lt!443915 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003892 () Bool)

(declare-fun res!673536 () Bool)

(assert (=> b!1003892 (=> (not res!673536) (not e!565392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63371 (_ BitVec 32)) Bool)

(assert (=> b!1003892 (= res!673536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003893 () Bool)

(declare-fun res!673532 () Bool)

(declare-fun e!565391 () Bool)

(assert (=> b!1003893 (=> (not res!673532) (not e!565391))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1003893 (= res!673532 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003895 () Bool)

(declare-fun e!565393 () Bool)

(assert (=> b!1003895 (= e!565392 e!565393)))

(declare-fun res!673531 () Bool)

(assert (=> b!1003895 (=> (not res!673531) (not e!565393))))

(declare-fun lt!443917 () SeekEntryResult!9439)

(declare-fun lt!443913 () SeekEntryResult!9439)

(assert (=> b!1003895 (= res!673531 (= lt!443917 lt!443913))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003895 (= lt!443913 (Intermediate!9439 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63371 (_ BitVec 32)) SeekEntryResult!9439)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003895 (= lt!443917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30507 a!3219) j!170) mask!3464) (select (arr!30507 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003896 () Bool)

(declare-fun res!673537 () Bool)

(assert (=> b!1003896 (=> (not res!673537) (not e!565392))))

(declare-datatypes ((List!21309 0))(
  ( (Nil!21306) (Cons!21305 (h!22482 (_ BitVec 64)) (t!30318 List!21309)) )
))
(declare-fun arrayNoDuplicates!0 (array!63371 (_ BitVec 32) List!21309) Bool)

(assert (=> b!1003896 (= res!673537 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21306))))

(declare-fun b!1003897 () Bool)

(declare-fun e!565394 () Bool)

(assert (=> b!1003897 (= e!565394 e!565391)))

(declare-fun res!673525 () Bool)

(assert (=> b!1003897 (=> (not res!673525) (not e!565391))))

(declare-fun lt!443916 () (_ BitVec 64))

(declare-fun lt!443918 () array!63371)

(assert (=> b!1003897 (= res!673525 (not (= lt!443917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443916 mask!3464) lt!443916 lt!443918 mask!3464))))))

(assert (=> b!1003897 (= lt!443916 (select (store (arr!30507 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003897 (= lt!443918 (array!63372 (store (arr!30507 a!3219) i!1194 k!2224) (size!31010 a!3219)))))

(declare-fun b!1003898 () Bool)

(declare-fun res!673529 () Bool)

(assert (=> b!1003898 (=> (not res!673529) (not e!565396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003898 (= res!673529 (validKeyInArray!0 (select (arr!30507 a!3219) j!170)))))

(declare-fun b!1003899 () Bool)

(declare-fun res!673538 () Bool)

(assert (=> b!1003899 (=> (not res!673538) (not e!565396))))

(assert (=> b!1003899 (= res!673538 (validKeyInArray!0 k!2224))))

(declare-fun b!1003900 () Bool)

(declare-fun e!565397 () Bool)

(assert (=> b!1003900 (= e!565397 false)))

(declare-fun lt!443914 () (_ BitVec 32))

(declare-fun lt!443919 () SeekEntryResult!9439)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1003900 (= lt!443919 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443914 lt!443916 lt!443918 mask!3464))))

(declare-fun b!1003901 () Bool)

(declare-fun res!673526 () Bool)

(assert (=> b!1003901 (=> (not res!673526) (not e!565396))))

(assert (=> b!1003901 (= res!673526 (and (= (size!31010 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31010 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31010 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003902 () Bool)

(assert (=> b!1003902 (= e!565393 e!565394)))

(declare-fun res!673530 () Bool)

(assert (=> b!1003902 (=> (not res!673530) (not e!565394))))

(declare-fun lt!443912 () SeekEntryResult!9439)

(assert (=> b!1003902 (= res!673530 (= lt!443912 lt!443913))))

(assert (=> b!1003902 (= lt!443912 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30507 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003903 () Bool)

(declare-fun res!673527 () Bool)

(assert (=> b!1003903 (=> (not res!673527) (not e!565391))))

(assert (=> b!1003903 (= res!673527 (not (= lt!443912 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443916 lt!443918 mask!3464))))))

(declare-fun b!1003904 () Bool)

(declare-fun res!673535 () Bool)

(assert (=> b!1003904 (=> (not res!673535) (not e!565396))))

(declare-fun arrayContainsKey!0 (array!63371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003904 (= res!673535 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003894 () Bool)

(declare-fun res!673540 () Bool)

(assert (=> b!1003894 (=> (not res!673540) (not e!565392))))

(assert (=> b!1003894 (= res!673540 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31010 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31010 a!3219))))))

(declare-fun res!673539 () Bool)

(assert (=> start!86618 (=> (not res!673539) (not e!565396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86618 (= res!673539 (validMask!0 mask!3464))))

(assert (=> start!86618 e!565396))

(declare-fun array_inv!23497 (array!63371) Bool)

(assert (=> start!86618 (array_inv!23497 a!3219)))

(assert (=> start!86618 true))

(declare-fun b!1003905 () Bool)

(declare-fun res!673534 () Bool)

(assert (=> b!1003905 (=> (not res!673534) (not e!565397))))

(assert (=> b!1003905 (= res!673534 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443914 (select (arr!30507 a!3219) j!170) a!3219 mask!3464) lt!443913))))

(declare-fun b!1003906 () Bool)

(assert (=> b!1003906 (= e!565391 e!565397)))

(declare-fun res!673528 () Bool)

(assert (=> b!1003906 (=> (not res!673528) (not e!565397))))

(assert (=> b!1003906 (= res!673528 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443914 #b00000000000000000000000000000000) (bvslt lt!443914 (size!31010 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003906 (= lt!443914 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86618 res!673539) b!1003901))

(assert (= (and b!1003901 res!673526) b!1003898))

(assert (= (and b!1003898 res!673529) b!1003899))

(assert (= (and b!1003899 res!673538) b!1003904))

(assert (= (and b!1003904 res!673535) b!1003891))

(assert (= (and b!1003891 res!673533) b!1003892))

(assert (= (and b!1003892 res!673536) b!1003896))

(assert (= (and b!1003896 res!673537) b!1003894))

(assert (= (and b!1003894 res!673540) b!1003895))

(assert (= (and b!1003895 res!673531) b!1003902))

(assert (= (and b!1003902 res!673530) b!1003897))

(assert (= (and b!1003897 res!673525) b!1003903))

(assert (= (and b!1003903 res!673527) b!1003893))

(assert (= (and b!1003893 res!673532) b!1003906))

(assert (= (and b!1003906 res!673528) b!1003905))

(assert (= (and b!1003905 res!673534) b!1003900))

(declare-fun m!929621 () Bool)

(assert (=> b!1003896 m!929621))

(declare-fun m!929623 () Bool)

(assert (=> b!1003892 m!929623))

(declare-fun m!929625 () Bool)

(assert (=> b!1003900 m!929625))

(declare-fun m!929627 () Bool)

(assert (=> b!1003898 m!929627))

(assert (=> b!1003898 m!929627))

(declare-fun m!929629 () Bool)

(assert (=> b!1003898 m!929629))

(declare-fun m!929631 () Bool)

(assert (=> start!86618 m!929631))

(declare-fun m!929633 () Bool)

(assert (=> start!86618 m!929633))

(declare-fun m!929635 () Bool)

(assert (=> b!1003906 m!929635))

(assert (=> b!1003905 m!929627))

(assert (=> b!1003905 m!929627))

(declare-fun m!929637 () Bool)

(assert (=> b!1003905 m!929637))

(assert (=> b!1003902 m!929627))

(assert (=> b!1003902 m!929627))

(declare-fun m!929639 () Bool)

(assert (=> b!1003902 m!929639))

(declare-fun m!929641 () Bool)

(assert (=> b!1003891 m!929641))

(declare-fun m!929643 () Bool)

(assert (=> b!1003903 m!929643))

(declare-fun m!929645 () Bool)

(assert (=> b!1003899 m!929645))

(assert (=> b!1003895 m!929627))

(assert (=> b!1003895 m!929627))

(declare-fun m!929647 () Bool)

(assert (=> b!1003895 m!929647))

(assert (=> b!1003895 m!929647))

(assert (=> b!1003895 m!929627))

(declare-fun m!929649 () Bool)

(assert (=> b!1003895 m!929649))

(declare-fun m!929651 () Bool)

(assert (=> b!1003897 m!929651))

(assert (=> b!1003897 m!929651))

(declare-fun m!929653 () Bool)

(assert (=> b!1003897 m!929653))

(declare-fun m!929655 () Bool)

(assert (=> b!1003897 m!929655))

(declare-fun m!929657 () Bool)

(assert (=> b!1003897 m!929657))

(declare-fun m!929659 () Bool)

(assert (=> b!1003904 m!929659))

(push 1)

