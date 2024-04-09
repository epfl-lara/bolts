; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86806 () Bool)

(assert start!86806)

(declare-fun b!1005900 () Bool)

(declare-fun e!566317 () Bool)

(declare-fun e!566316 () Bool)

(assert (=> b!1005900 (= e!566317 e!566316)))

(declare-fun res!675153 () Bool)

(assert (=> b!1005900 (=> (not res!675153) (not e!566316))))

(declare-datatypes ((SeekEntryResult!9479 0))(
  ( (MissingZero!9479 (index!40286 (_ BitVec 32))) (Found!9479 (index!40287 (_ BitVec 32))) (Intermediate!9479 (undefined!10291 Bool) (index!40288 (_ BitVec 32)) (x!87720 (_ BitVec 32))) (Undefined!9479) (MissingVacant!9479 (index!40289 (_ BitVec 32))) )
))
(declare-fun lt!444623 () SeekEntryResult!9479)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005900 (= res!675153 (or (= lt!444623 (MissingVacant!9479 i!1194)) (= lt!444623 (MissingZero!9479 i!1194))))))

(declare-datatypes ((array!63457 0))(
  ( (array!63458 (arr!30547 (Array (_ BitVec 32) (_ BitVec 64))) (size!31050 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63457)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63457 (_ BitVec 32)) SeekEntryResult!9479)

(assert (=> b!1005900 (= lt!444623 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005901 () Bool)

(declare-fun res!675147 () Bool)

(assert (=> b!1005901 (=> (not res!675147) (not e!566317))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1005901 (= res!675147 (and (= (size!31050 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31050 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31050 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!675149 () Bool)

(assert (=> start!86806 (=> (not res!675149) (not e!566317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86806 (= res!675149 (validMask!0 mask!3464))))

(assert (=> start!86806 e!566317))

(declare-fun array_inv!23537 (array!63457) Bool)

(assert (=> start!86806 (array_inv!23537 a!3219)))

(assert (=> start!86806 true))

(declare-fun b!1005902 () Bool)

(declare-fun res!675145 () Bool)

(declare-fun e!566318 () Bool)

(assert (=> b!1005902 (=> (not res!675145) (not e!566318))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444624 () SeekEntryResult!9479)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63457 (_ BitVec 32)) SeekEntryResult!9479)

(assert (=> b!1005902 (= res!675145 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30547 a!3219) j!170) a!3219 mask!3464) lt!444624))))

(declare-fun b!1005903 () Bool)

(assert (=> b!1005903 (= e!566316 e!566318)))

(declare-fun res!675154 () Bool)

(assert (=> b!1005903 (=> (not res!675154) (not e!566318))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005903 (= res!675154 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30547 a!3219) j!170) mask!3464) (select (arr!30547 a!3219) j!170) a!3219 mask!3464) lt!444624))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005903 (= lt!444624 (Intermediate!9479 false resIndex!38 resX!38))))

(declare-fun b!1005904 () Bool)

(declare-fun res!675151 () Bool)

(assert (=> b!1005904 (=> (not res!675151) (not e!566317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005904 (= res!675151 (validKeyInArray!0 k!2224))))

(declare-fun b!1005905 () Bool)

(declare-fun res!675144 () Bool)

(assert (=> b!1005905 (=> (not res!675144) (not e!566316))))

(assert (=> b!1005905 (= res!675144 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31050 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31050 a!3219))))))

(declare-fun b!1005906 () Bool)

(declare-fun res!675146 () Bool)

(assert (=> b!1005906 (=> (not res!675146) (not e!566317))))

(assert (=> b!1005906 (= res!675146 (validKeyInArray!0 (select (arr!30547 a!3219) j!170)))))

(declare-fun b!1005907 () Bool)

(declare-fun res!675148 () Bool)

(assert (=> b!1005907 (=> (not res!675148) (not e!566317))))

(declare-fun arrayContainsKey!0 (array!63457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005907 (= res!675148 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005908 () Bool)

(assert (=> b!1005908 (= e!566318 false)))

(declare-fun lt!444622 () (_ BitVec 32))

(assert (=> b!1005908 (= lt!444622 (toIndex!0 (select (store (arr!30547 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!1005909 () Bool)

(declare-fun res!675150 () Bool)

(assert (=> b!1005909 (=> (not res!675150) (not e!566316))))

(declare-datatypes ((List!21349 0))(
  ( (Nil!21346) (Cons!21345 (h!22528 (_ BitVec 64)) (t!30358 List!21349)) )
))
(declare-fun arrayNoDuplicates!0 (array!63457 (_ BitVec 32) List!21349) Bool)

(assert (=> b!1005909 (= res!675150 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21346))))

(declare-fun b!1005910 () Bool)

(declare-fun res!675152 () Bool)

(assert (=> b!1005910 (=> (not res!675152) (not e!566316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63457 (_ BitVec 32)) Bool)

(assert (=> b!1005910 (= res!675152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86806 res!675149) b!1005901))

(assert (= (and b!1005901 res!675147) b!1005906))

(assert (= (and b!1005906 res!675146) b!1005904))

(assert (= (and b!1005904 res!675151) b!1005907))

(assert (= (and b!1005907 res!675148) b!1005900))

(assert (= (and b!1005900 res!675153) b!1005910))

(assert (= (and b!1005910 res!675152) b!1005909))

(assert (= (and b!1005909 res!675150) b!1005905))

(assert (= (and b!1005905 res!675144) b!1005903))

(assert (= (and b!1005903 res!675154) b!1005902))

(assert (= (and b!1005902 res!675145) b!1005908))

(declare-fun m!931137 () Bool)

(assert (=> b!1005907 m!931137))

(declare-fun m!931139 () Bool)

(assert (=> b!1005906 m!931139))

(assert (=> b!1005906 m!931139))

(declare-fun m!931141 () Bool)

(assert (=> b!1005906 m!931141))

(assert (=> b!1005903 m!931139))

(assert (=> b!1005903 m!931139))

(declare-fun m!931143 () Bool)

(assert (=> b!1005903 m!931143))

(assert (=> b!1005903 m!931143))

(assert (=> b!1005903 m!931139))

(declare-fun m!931145 () Bool)

(assert (=> b!1005903 m!931145))

(declare-fun m!931147 () Bool)

(assert (=> b!1005900 m!931147))

(declare-fun m!931149 () Bool)

(assert (=> b!1005909 m!931149))

(declare-fun m!931151 () Bool)

(assert (=> b!1005910 m!931151))

(declare-fun m!931153 () Bool)

(assert (=> b!1005908 m!931153))

(declare-fun m!931155 () Bool)

(assert (=> b!1005908 m!931155))

(assert (=> b!1005908 m!931155))

(declare-fun m!931157 () Bool)

(assert (=> b!1005908 m!931157))

(declare-fun m!931159 () Bool)

(assert (=> b!1005904 m!931159))

(declare-fun m!931161 () Bool)

(assert (=> start!86806 m!931161))

(declare-fun m!931163 () Bool)

(assert (=> start!86806 m!931163))

(assert (=> b!1005902 m!931139))

(assert (=> b!1005902 m!931139))

(declare-fun m!931165 () Bool)

(assert (=> b!1005902 m!931165))

(push 1)

