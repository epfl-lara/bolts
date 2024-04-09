; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86534 () Bool)

(assert start!86534)

(declare-fun b!1001875 () Bool)

(declare-fun res!671517 () Bool)

(declare-fun e!564511 () Bool)

(assert (=> b!1001875 (=> (not res!671517) (not e!564511))))

(declare-datatypes ((array!63287 0))(
  ( (array!63288 (arr!30465 (Array (_ BitVec 32) (_ BitVec 64))) (size!30968 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63287)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001875 (= res!671517 (validKeyInArray!0 (select (arr!30465 a!3219) j!170)))))

(declare-fun b!1001876 () Bool)

(declare-fun res!671523 () Bool)

(declare-fun e!564510 () Bool)

(assert (=> b!1001876 (=> (not res!671523) (not e!564510))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001876 (= res!671523 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30968 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30968 a!3219))))))

(declare-fun b!1001877 () Bool)

(declare-fun res!671521 () Bool)

(assert (=> b!1001877 (=> (not res!671521) (not e!564511))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001877 (= res!671521 (and (= (size!30968 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30968 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30968 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001878 () Bool)

(assert (=> b!1001878 (= e!564511 e!564510)))

(declare-fun res!671520 () Bool)

(assert (=> b!1001878 (=> (not res!671520) (not e!564510))))

(declare-datatypes ((SeekEntryResult!9397 0))(
  ( (MissingZero!9397 (index!39958 (_ BitVec 32))) (Found!9397 (index!39959 (_ BitVec 32))) (Intermediate!9397 (undefined!10209 Bool) (index!39960 (_ BitVec 32)) (x!87402 (_ BitVec 32))) (Undefined!9397) (MissingVacant!9397 (index!39961 (_ BitVec 32))) )
))
(declare-fun lt!442904 () SeekEntryResult!9397)

(assert (=> b!1001878 (= res!671520 (or (= lt!442904 (MissingVacant!9397 i!1194)) (= lt!442904 (MissingZero!9397 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63287 (_ BitVec 32)) SeekEntryResult!9397)

(assert (=> b!1001878 (= lt!442904 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001879 () Bool)

(declare-fun e!564509 () Bool)

(declare-fun e!564513 () Bool)

(assert (=> b!1001879 (= e!564509 e!564513)))

(declare-fun res!671518 () Bool)

(assert (=> b!1001879 (=> (not res!671518) (not e!564513))))

(declare-fun lt!442908 () SeekEntryResult!9397)

(declare-fun lt!442907 () SeekEntryResult!9397)

(assert (=> b!1001879 (= res!671518 (= lt!442908 lt!442907))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63287 (_ BitVec 32)) SeekEntryResult!9397)

(assert (=> b!1001879 (= lt!442908 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30465 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001880 () Bool)

(declare-fun res!671519 () Bool)

(assert (=> b!1001880 (=> (not res!671519) (not e!564510))))

(declare-datatypes ((List!21267 0))(
  ( (Nil!21264) (Cons!21263 (h!22440 (_ BitVec 64)) (t!30276 List!21267)) )
))
(declare-fun arrayNoDuplicates!0 (array!63287 (_ BitVec 32) List!21267) Bool)

(assert (=> b!1001880 (= res!671519 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21264))))

(declare-fun b!1001881 () Bool)

(declare-fun res!671515 () Bool)

(assert (=> b!1001881 (=> (not res!671515) (not e!564511))))

(assert (=> b!1001881 (= res!671515 (validKeyInArray!0 k!2224))))

(declare-fun b!1001882 () Bool)

(declare-fun e!564512 () Bool)

(declare-fun e!564514 () Bool)

(assert (=> b!1001882 (= e!564512 e!564514)))

(declare-fun res!671512 () Bool)

(assert (=> b!1001882 (=> (not res!671512) (not e!564514))))

(declare-fun lt!442905 () (_ BitVec 32))

(assert (=> b!1001882 (= res!671512 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442905 #b00000000000000000000000000000000) (bvslt lt!442905 (size!30968 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001882 (= lt!442905 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001883 () Bool)

(declare-fun res!671514 () Bool)

(assert (=> b!1001883 (=> (not res!671514) (not e!564512))))

(declare-fun lt!442910 () array!63287)

(declare-fun lt!442911 () (_ BitVec 64))

(assert (=> b!1001883 (= res!671514 (not (= lt!442908 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442911 lt!442910 mask!3464))))))

(declare-fun res!671524 () Bool)

(assert (=> start!86534 (=> (not res!671524) (not e!564511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86534 (= res!671524 (validMask!0 mask!3464))))

(assert (=> start!86534 e!564511))

(declare-fun array_inv!23455 (array!63287) Bool)

(assert (=> start!86534 (array_inv!23455 a!3219)))

(assert (=> start!86534 true))

(declare-fun b!1001884 () Bool)

(assert (=> b!1001884 (= e!564514 false)))

(declare-fun lt!442906 () SeekEntryResult!9397)

(assert (=> b!1001884 (= lt!442906 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442905 lt!442911 lt!442910 mask!3464))))

(declare-fun b!1001885 () Bool)

(declare-fun res!671511 () Bool)

(assert (=> b!1001885 (=> (not res!671511) (not e!564510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63287 (_ BitVec 32)) Bool)

(assert (=> b!1001885 (= res!671511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001886 () Bool)

(assert (=> b!1001886 (= e!564510 e!564509)))

(declare-fun res!671510 () Bool)

(assert (=> b!1001886 (=> (not res!671510) (not e!564509))))

(declare-fun lt!442909 () SeekEntryResult!9397)

(assert (=> b!1001886 (= res!671510 (= lt!442909 lt!442907))))

(assert (=> b!1001886 (= lt!442907 (Intermediate!9397 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001886 (= lt!442909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30465 a!3219) j!170) mask!3464) (select (arr!30465 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001887 () Bool)

(declare-fun res!671516 () Bool)

(assert (=> b!1001887 (=> (not res!671516) (not e!564512))))

(assert (=> b!1001887 (= res!671516 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001888 () Bool)

(declare-fun res!671522 () Bool)

(assert (=> b!1001888 (=> (not res!671522) (not e!564511))))

(declare-fun arrayContainsKey!0 (array!63287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001888 (= res!671522 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001889 () Bool)

(assert (=> b!1001889 (= e!564513 e!564512)))

(declare-fun res!671509 () Bool)

(assert (=> b!1001889 (=> (not res!671509) (not e!564512))))

(assert (=> b!1001889 (= res!671509 (not (= lt!442909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442911 mask!3464) lt!442911 lt!442910 mask!3464))))))

(assert (=> b!1001889 (= lt!442911 (select (store (arr!30465 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001889 (= lt!442910 (array!63288 (store (arr!30465 a!3219) i!1194 k!2224) (size!30968 a!3219)))))

(declare-fun b!1001890 () Bool)

(declare-fun res!671513 () Bool)

(assert (=> b!1001890 (=> (not res!671513) (not e!564514))))

(assert (=> b!1001890 (= res!671513 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442905 (select (arr!30465 a!3219) j!170) a!3219 mask!3464) lt!442907))))

(assert (= (and start!86534 res!671524) b!1001877))

(assert (= (and b!1001877 res!671521) b!1001875))

(assert (= (and b!1001875 res!671517) b!1001881))

(assert (= (and b!1001881 res!671515) b!1001888))

(assert (= (and b!1001888 res!671522) b!1001878))

(assert (= (and b!1001878 res!671520) b!1001885))

(assert (= (and b!1001885 res!671511) b!1001880))

(assert (= (and b!1001880 res!671519) b!1001876))

(assert (= (and b!1001876 res!671523) b!1001886))

(assert (= (and b!1001886 res!671510) b!1001879))

(assert (= (and b!1001879 res!671518) b!1001889))

(assert (= (and b!1001889 res!671509) b!1001883))

(assert (= (and b!1001883 res!671514) b!1001887))

(assert (= (and b!1001887 res!671516) b!1001882))

(assert (= (and b!1001882 res!671512) b!1001890))

(assert (= (and b!1001890 res!671513) b!1001884))

(declare-fun m!927941 () Bool)

(assert (=> b!1001880 m!927941))

(declare-fun m!927943 () Bool)

(assert (=> b!1001883 m!927943))

(declare-fun m!927945 () Bool)

(assert (=> b!1001888 m!927945))

(declare-fun m!927947 () Bool)

(assert (=> b!1001875 m!927947))

(assert (=> b!1001875 m!927947))

(declare-fun m!927949 () Bool)

(assert (=> b!1001875 m!927949))

(declare-fun m!927951 () Bool)

(assert (=> b!1001881 m!927951))

(assert (=> b!1001890 m!927947))

(assert (=> b!1001890 m!927947))

(declare-fun m!927953 () Bool)

(assert (=> b!1001890 m!927953))

(assert (=> b!1001886 m!927947))

(assert (=> b!1001886 m!927947))

(declare-fun m!927955 () Bool)

(assert (=> b!1001886 m!927955))

(assert (=> b!1001886 m!927955))

(assert (=> b!1001886 m!927947))

(declare-fun m!927957 () Bool)

(assert (=> b!1001886 m!927957))

(declare-fun m!927959 () Bool)

(assert (=> b!1001889 m!927959))

(assert (=> b!1001889 m!927959))

(declare-fun m!927961 () Bool)

(assert (=> b!1001889 m!927961))

(declare-fun m!927963 () Bool)

(assert (=> b!1001889 m!927963))

(declare-fun m!927965 () Bool)

(assert (=> b!1001889 m!927965))

(assert (=> b!1001879 m!927947))

(assert (=> b!1001879 m!927947))

(declare-fun m!927967 () Bool)

(assert (=> b!1001879 m!927967))

(declare-fun m!927969 () Bool)

(assert (=> b!1001878 m!927969))

(declare-fun m!927971 () Bool)

(assert (=> b!1001885 m!927971))

(declare-fun m!927973 () Bool)

(assert (=> start!86534 m!927973))

(declare-fun m!927975 () Bool)

(assert (=> start!86534 m!927975))

(declare-fun m!927977 () Bool)

(assert (=> b!1001882 m!927977))

(declare-fun m!927979 () Bool)

(assert (=> b!1001884 m!927979))

(push 1)

