; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86086 () Bool)

(assert start!86086)

(declare-fun b!996700 () Bool)

(declare-fun res!666970 () Bool)

(declare-fun e!562293 () Bool)

(assert (=> b!996700 (=> (not res!666970) (not e!562293))))

(declare-datatypes ((array!63043 0))(
  ( (array!63044 (arr!30349 (Array (_ BitVec 32) (_ BitVec 64))) (size!30852 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63043)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63043 (_ BitVec 32)) Bool)

(assert (=> b!996700 (= res!666970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996701 () Bool)

(declare-fun res!666972 () Bool)

(declare-fun e!562294 () Bool)

(assert (=> b!996701 (=> (not res!666972) (not e!562294))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996701 (= res!666972 (and (= (size!30852 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30852 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30852 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996702 () Bool)

(declare-fun res!666973 () Bool)

(assert (=> b!996702 (=> (not res!666973) (not e!562293))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996702 (= res!666973 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30852 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30852 a!3219))))))

(declare-fun b!996703 () Bool)

(declare-fun res!666977 () Bool)

(assert (=> b!996703 (=> (not res!666977) (not e!562294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996703 (= res!666977 (validKeyInArray!0 (select (arr!30349 a!3219) j!170)))))

(declare-fun b!996704 () Bool)

(declare-fun res!666978 () Bool)

(assert (=> b!996704 (=> (not res!666978) (not e!562293))))

(declare-datatypes ((SeekEntryResult!9281 0))(
  ( (MissingZero!9281 (index!39494 (_ BitVec 32))) (Found!9281 (index!39495 (_ BitVec 32))) (Intermediate!9281 (undefined!10093 Bool) (index!39496 (_ BitVec 32)) (x!86958 (_ BitVec 32))) (Undefined!9281) (MissingVacant!9281 (index!39497 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63043 (_ BitVec 32)) SeekEntryResult!9281)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996704 (= res!666978 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30349 a!3219) j!170) mask!3464) (select (arr!30349 a!3219) j!170) a!3219 mask!3464) (Intermediate!9281 false resIndex!38 resX!38)))))

(declare-fun b!996705 () Bool)

(assert (=> b!996705 (= e!562294 e!562293)))

(declare-fun res!666975 () Bool)

(assert (=> b!996705 (=> (not res!666975) (not e!562293))))

(declare-fun lt!441246 () SeekEntryResult!9281)

(assert (=> b!996705 (= res!666975 (or (= lt!441246 (MissingVacant!9281 i!1194)) (= lt!441246 (MissingZero!9281 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63043 (_ BitVec 32)) SeekEntryResult!9281)

(assert (=> b!996705 (= lt!441246 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996706 () Bool)

(declare-fun res!666979 () Bool)

(assert (=> b!996706 (=> (not res!666979) (not e!562294))))

(declare-fun arrayContainsKey!0 (array!63043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996706 (= res!666979 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996707 () Bool)

(declare-fun res!666976 () Bool)

(assert (=> b!996707 (=> (not res!666976) (not e!562294))))

(assert (=> b!996707 (= res!666976 (validKeyInArray!0 k!2224))))

(declare-fun res!666974 () Bool)

(assert (=> start!86086 (=> (not res!666974) (not e!562294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86086 (= res!666974 (validMask!0 mask!3464))))

(assert (=> start!86086 e!562294))

(declare-fun array_inv!23339 (array!63043) Bool)

(assert (=> start!86086 (array_inv!23339 a!3219)))

(assert (=> start!86086 true))

(declare-fun b!996708 () Bool)

(assert (=> b!996708 (= e!562293 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!996709 () Bool)

(declare-fun res!666971 () Bool)

(assert (=> b!996709 (=> (not res!666971) (not e!562293))))

(declare-datatypes ((List!21151 0))(
  ( (Nil!21148) (Cons!21147 (h!22312 (_ BitVec 64)) (t!30160 List!21151)) )
))
(declare-fun arrayNoDuplicates!0 (array!63043 (_ BitVec 32) List!21151) Bool)

(assert (=> b!996709 (= res!666971 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21148))))

(assert (= (and start!86086 res!666974) b!996701))

(assert (= (and b!996701 res!666972) b!996703))

(assert (= (and b!996703 res!666977) b!996707))

(assert (= (and b!996707 res!666976) b!996706))

(assert (= (and b!996706 res!666979) b!996705))

(assert (= (and b!996705 res!666975) b!996700))

(assert (= (and b!996700 res!666970) b!996709))

(assert (= (and b!996709 res!666971) b!996702))

(assert (= (and b!996702 res!666973) b!996704))

(assert (= (and b!996704 res!666978) b!996708))

(declare-fun m!923841 () Bool)

(assert (=> b!996704 m!923841))

(assert (=> b!996704 m!923841))

(declare-fun m!923843 () Bool)

(assert (=> b!996704 m!923843))

(assert (=> b!996704 m!923843))

(assert (=> b!996704 m!923841))

(declare-fun m!923845 () Bool)

(assert (=> b!996704 m!923845))

(declare-fun m!923847 () Bool)

(assert (=> b!996705 m!923847))

(declare-fun m!923849 () Bool)

(assert (=> b!996707 m!923849))

(declare-fun m!923851 () Bool)

(assert (=> b!996709 m!923851))

(declare-fun m!923853 () Bool)

(assert (=> b!996706 m!923853))

(assert (=> b!996703 m!923841))

(assert (=> b!996703 m!923841))

(declare-fun m!923855 () Bool)

(assert (=> b!996703 m!923855))

(declare-fun m!923857 () Bool)

(assert (=> start!86086 m!923857))

(declare-fun m!923859 () Bool)

(assert (=> start!86086 m!923859))

(declare-fun m!923861 () Bool)

(assert (=> b!996700 m!923861))

(push 1)

