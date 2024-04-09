; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87080 () Bool)

(assert start!87080)

(declare-fun b!1009476 () Bool)

(declare-fun res!678172 () Bool)

(declare-fun e!567993 () Bool)

(assert (=> b!1009476 (=> (not res!678172) (not e!567993))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009476 (= res!678172 (validKeyInArray!0 k!2224))))

(declare-fun b!1009477 () Bool)

(declare-fun res!678166 () Bool)

(declare-fun e!567995 () Bool)

(assert (=> b!1009477 (=> (not res!678166) (not e!567995))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009477 (= res!678166 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009478 () Bool)

(declare-fun res!678177 () Bool)

(declare-fun e!567997 () Bool)

(assert (=> b!1009478 (=> (not res!678177) (not e!567997))))

(declare-datatypes ((array!63599 0))(
  ( (array!63600 (arr!30615 (Array (_ BitVec 32) (_ BitVec 64))) (size!31118 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63599)

(declare-datatypes ((List!21417 0))(
  ( (Nil!21414) (Cons!21413 (h!22602 (_ BitVec 64)) (t!30426 List!21417)) )
))
(declare-fun arrayNoDuplicates!0 (array!63599 (_ BitVec 32) List!21417) Bool)

(assert (=> b!1009478 (= res!678177 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21414))))

(declare-fun b!1009479 () Bool)

(declare-fun res!678169 () Bool)

(assert (=> b!1009479 (=> (not res!678169) (not e!567993))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1009479 (= res!678169 (validKeyInArray!0 (select (arr!30615 a!3219) j!170)))))

(declare-fun b!1009480 () Bool)

(declare-fun e!567998 () Bool)

(declare-fun e!567994 () Bool)

(assert (=> b!1009480 (= e!567998 e!567994)))

(declare-fun res!678168 () Bool)

(assert (=> b!1009480 (=> (not res!678168) (not e!567994))))

(declare-datatypes ((SeekEntryResult!9547 0))(
  ( (MissingZero!9547 (index!40558 (_ BitVec 32))) (Found!9547 (index!40559 (_ BitVec 32))) (Intermediate!9547 (undefined!10359 Bool) (index!40560 (_ BitVec 32)) (x!87985 (_ BitVec 32))) (Undefined!9547) (MissingVacant!9547 (index!40561 (_ BitVec 32))) )
))
(declare-fun lt!446157 () SeekEntryResult!9547)

(declare-fun lt!446161 () SeekEntryResult!9547)

(assert (=> b!1009480 (= res!678168 (= lt!446157 lt!446161))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63599 (_ BitVec 32)) SeekEntryResult!9547)

(assert (=> b!1009480 (= lt!446157 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30615 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009481 () Bool)

(declare-fun res!678178 () Bool)

(assert (=> b!1009481 (=> (not res!678178) (not e!567993))))

(assert (=> b!1009481 (= res!678178 (and (= (size!31118 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31118 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31118 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009482 () Bool)

(declare-fun res!678173 () Bool)

(assert (=> b!1009482 (=> (not res!678173) (not e!567995))))

(declare-fun lt!446158 () (_ BitVec 64))

(declare-fun lt!446159 () array!63599)

(assert (=> b!1009482 (= res!678173 (not (= lt!446157 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446158 lt!446159 mask!3464))))))

(declare-fun b!1009483 () Bool)

(assert (=> b!1009483 (= e!567993 e!567997)))

(declare-fun res!678175 () Bool)

(assert (=> b!1009483 (=> (not res!678175) (not e!567997))))

(declare-fun lt!446162 () SeekEntryResult!9547)

(assert (=> b!1009483 (= res!678175 (or (= lt!446162 (MissingVacant!9547 i!1194)) (= lt!446162 (MissingZero!9547 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63599 (_ BitVec 32)) SeekEntryResult!9547)

(assert (=> b!1009483 (= lt!446162 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!678170 () Bool)

(assert (=> start!87080 (=> (not res!678170) (not e!567993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87080 (= res!678170 (validMask!0 mask!3464))))

(assert (=> start!87080 e!567993))

(declare-fun array_inv!23605 (array!63599) Bool)

(assert (=> start!87080 (array_inv!23605 a!3219)))

(assert (=> start!87080 true))

(declare-fun b!1009484 () Bool)

(declare-fun res!678176 () Bool)

(assert (=> b!1009484 (=> (not res!678176) (not e!567993))))

(declare-fun arrayContainsKey!0 (array!63599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009484 (= res!678176 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009485 () Bool)

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009485 (= e!567995 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvslt (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000)))))

(declare-fun lt!446160 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009485 (= lt!446160 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1009486 () Bool)

(declare-fun res!678171 () Bool)

(assert (=> b!1009486 (=> (not res!678171) (not e!567997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63599 (_ BitVec 32)) Bool)

(assert (=> b!1009486 (= res!678171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009487 () Bool)

(declare-fun res!678165 () Bool)

(assert (=> b!1009487 (=> (not res!678165) (not e!567997))))

(assert (=> b!1009487 (= res!678165 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31118 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31118 a!3219))))))

(declare-fun b!1009488 () Bool)

(assert (=> b!1009488 (= e!567994 e!567995)))

(declare-fun res!678167 () Bool)

(assert (=> b!1009488 (=> (not res!678167) (not e!567995))))

(declare-fun lt!446163 () SeekEntryResult!9547)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009488 (= res!678167 (not (= lt!446163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446158 mask!3464) lt!446158 lt!446159 mask!3464))))))

(assert (=> b!1009488 (= lt!446158 (select (store (arr!30615 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1009488 (= lt!446159 (array!63600 (store (arr!30615 a!3219) i!1194 k!2224) (size!31118 a!3219)))))

(declare-fun b!1009489 () Bool)

(assert (=> b!1009489 (= e!567997 e!567998)))

(declare-fun res!678174 () Bool)

(assert (=> b!1009489 (=> (not res!678174) (not e!567998))))

(assert (=> b!1009489 (= res!678174 (= lt!446163 lt!446161))))

(assert (=> b!1009489 (= lt!446161 (Intermediate!9547 false resIndex!38 resX!38))))

(assert (=> b!1009489 (= lt!446163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30615 a!3219) j!170) mask!3464) (select (arr!30615 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!87080 res!678170) b!1009481))

(assert (= (and b!1009481 res!678178) b!1009479))

(assert (= (and b!1009479 res!678169) b!1009476))

(assert (= (and b!1009476 res!678172) b!1009484))

(assert (= (and b!1009484 res!678176) b!1009483))

(assert (= (and b!1009483 res!678175) b!1009486))

(assert (= (and b!1009486 res!678171) b!1009478))

(assert (= (and b!1009478 res!678177) b!1009487))

(assert (= (and b!1009487 res!678165) b!1009489))

(assert (= (and b!1009489 res!678174) b!1009480))

(assert (= (and b!1009480 res!678168) b!1009488))

(assert (= (and b!1009488 res!678167) b!1009482))

(assert (= (and b!1009482 res!678173) b!1009477))

(assert (= (and b!1009477 res!678166) b!1009485))

(declare-fun m!934137 () Bool)

(assert (=> b!1009476 m!934137))

(declare-fun m!934139 () Bool)

(assert (=> b!1009480 m!934139))

(assert (=> b!1009480 m!934139))

(declare-fun m!934141 () Bool)

(assert (=> b!1009480 m!934141))

(declare-fun m!934143 () Bool)

(assert (=> b!1009484 m!934143))

(assert (=> b!1009479 m!934139))

(assert (=> b!1009479 m!934139))

(declare-fun m!934145 () Bool)

(assert (=> b!1009479 m!934145))

(assert (=> b!1009489 m!934139))

(assert (=> b!1009489 m!934139))

(declare-fun m!934147 () Bool)

(assert (=> b!1009489 m!934147))

(assert (=> b!1009489 m!934147))

(assert (=> b!1009489 m!934139))

(declare-fun m!934149 () Bool)

(assert (=> b!1009489 m!934149))

(declare-fun m!934151 () Bool)

(assert (=> b!1009483 m!934151))

(declare-fun m!934153 () Bool)

(assert (=> b!1009478 m!934153))

(declare-fun m!934155 () Bool)

(assert (=> b!1009482 m!934155))

(declare-fun m!934157 () Bool)

(assert (=> start!87080 m!934157))

(declare-fun m!934159 () Bool)

(assert (=> start!87080 m!934159))

(declare-fun m!934161 () Bool)

(assert (=> b!1009488 m!934161))

(assert (=> b!1009488 m!934161))

(declare-fun m!934163 () Bool)

(assert (=> b!1009488 m!934163))

(declare-fun m!934165 () Bool)

(assert (=> b!1009488 m!934165))

(declare-fun m!934167 () Bool)

(assert (=> b!1009488 m!934167))

(declare-fun m!934169 () Bool)

(assert (=> b!1009485 m!934169))

(declare-fun m!934171 () Bool)

(assert (=> b!1009486 m!934171))

(push 1)

(assert (not b!1009488))

(assert (not b!1009489))

