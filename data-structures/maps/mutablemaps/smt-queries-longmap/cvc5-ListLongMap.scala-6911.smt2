; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86914 () Bool)

(assert start!86914)

(declare-fun b!1007175 () Bool)

(declare-fun res!676234 () Bool)

(declare-fun e!566900 () Bool)

(assert (=> b!1007175 (=> (not res!676234) (not e!566900))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007175 (= res!676234 (validKeyInArray!0 k!2224))))

(declare-fun b!1007176 () Bool)

(declare-fun e!566896 () Bool)

(declare-fun e!566899 () Bool)

(assert (=> b!1007176 (= e!566896 e!566899)))

(declare-fun res!676230 () Bool)

(assert (=> b!1007176 (=> (not res!676230) (not e!566899))))

(declare-fun lt!445083 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9506 0))(
  ( (MissingZero!9506 (index!40394 (_ BitVec 32))) (Found!9506 (index!40395 (_ BitVec 32))) (Intermediate!9506 (undefined!10318 Bool) (index!40396 (_ BitVec 32)) (x!87825 (_ BitVec 32))) (Undefined!9506) (MissingVacant!9506 (index!40397 (_ BitVec 32))) )
))
(declare-fun lt!445079 () SeekEntryResult!9506)

(declare-datatypes ((array!63514 0))(
  ( (array!63515 (arr!30574 (Array (_ BitVec 32) (_ BitVec 64))) (size!31077 (_ BitVec 32))) )
))
(declare-fun lt!445077 () array!63514)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63514 (_ BitVec 32)) SeekEntryResult!9506)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007176 (= res!676230 (not (= lt!445079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445083 mask!3464) lt!445083 lt!445077 mask!3464))))))

(declare-fun a!3219 () array!63514)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007176 (= lt!445083 (select (store (arr!30574 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007176 (= lt!445077 (array!63515 (store (arr!30574 a!3219) i!1194 k!2224) (size!31077 a!3219)))))

(declare-fun b!1007177 () Bool)

(assert (=> b!1007177 (= e!566899 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445078 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007177 (= lt!445078 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007178 () Bool)

(declare-fun res!676224 () Bool)

(assert (=> b!1007178 (=> (not res!676224) (not e!566900))))

(declare-fun arrayContainsKey!0 (array!63514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007178 (= res!676224 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007179 () Bool)

(declare-fun e!566898 () Bool)

(assert (=> b!1007179 (= e!566900 e!566898)))

(declare-fun res!676226 () Bool)

(assert (=> b!1007179 (=> (not res!676226) (not e!566898))))

(declare-fun lt!445082 () SeekEntryResult!9506)

(assert (=> b!1007179 (= res!676226 (or (= lt!445082 (MissingVacant!9506 i!1194)) (= lt!445082 (MissingZero!9506 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63514 (_ BitVec 32)) SeekEntryResult!9506)

(assert (=> b!1007179 (= lt!445082 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007180 () Bool)

(declare-fun res!676228 () Bool)

(assert (=> b!1007180 (=> (not res!676228) (not e!566898))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007180 (= res!676228 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31077 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31077 a!3219))))))

(declare-fun b!1007181 () Bool)

(declare-fun res!676227 () Bool)

(assert (=> b!1007181 (=> (not res!676227) (not e!566898))))

(declare-datatypes ((List!21376 0))(
  ( (Nil!21373) (Cons!21372 (h!22558 (_ BitVec 64)) (t!30385 List!21376)) )
))
(declare-fun arrayNoDuplicates!0 (array!63514 (_ BitVec 32) List!21376) Bool)

(assert (=> b!1007181 (= res!676227 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21373))))

(declare-fun b!1007182 () Bool)

(declare-fun res!676225 () Bool)

(assert (=> b!1007182 (=> (not res!676225) (not e!566899))))

(assert (=> b!1007182 (= res!676225 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007183 () Bool)

(declare-fun e!566897 () Bool)

(assert (=> b!1007183 (= e!566898 e!566897)))

(declare-fun res!676232 () Bool)

(assert (=> b!1007183 (=> (not res!676232) (not e!566897))))

(declare-fun lt!445080 () SeekEntryResult!9506)

(assert (=> b!1007183 (= res!676232 (= lt!445079 lt!445080))))

(assert (=> b!1007183 (= lt!445080 (Intermediate!9506 false resIndex!38 resX!38))))

(assert (=> b!1007183 (= lt!445079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30574 a!3219) j!170) mask!3464) (select (arr!30574 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007184 () Bool)

(declare-fun res!676236 () Bool)

(assert (=> b!1007184 (=> (not res!676236) (not e!566899))))

(declare-fun lt!445081 () SeekEntryResult!9506)

(assert (=> b!1007184 (= res!676236 (not (= lt!445081 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445083 lt!445077 mask!3464))))))

(declare-fun b!1007185 () Bool)

(declare-fun res!676231 () Bool)

(assert (=> b!1007185 (=> (not res!676231) (not e!566900))))

(assert (=> b!1007185 (= res!676231 (validKeyInArray!0 (select (arr!30574 a!3219) j!170)))))

(declare-fun res!676237 () Bool)

(assert (=> start!86914 (=> (not res!676237) (not e!566900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86914 (= res!676237 (validMask!0 mask!3464))))

(assert (=> start!86914 e!566900))

(declare-fun array_inv!23564 (array!63514) Bool)

(assert (=> start!86914 (array_inv!23564 a!3219)))

(assert (=> start!86914 true))

(declare-fun b!1007186 () Bool)

(declare-fun res!676235 () Bool)

(assert (=> b!1007186 (=> (not res!676235) (not e!566900))))

(assert (=> b!1007186 (= res!676235 (and (= (size!31077 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31077 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31077 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007187 () Bool)

(declare-fun res!676233 () Bool)

(assert (=> b!1007187 (=> (not res!676233) (not e!566898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63514 (_ BitVec 32)) Bool)

(assert (=> b!1007187 (= res!676233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007188 () Bool)

(assert (=> b!1007188 (= e!566897 e!566896)))

(declare-fun res!676229 () Bool)

(assert (=> b!1007188 (=> (not res!676229) (not e!566896))))

(assert (=> b!1007188 (= res!676229 (= lt!445081 lt!445080))))

(assert (=> b!1007188 (= lt!445081 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30574 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86914 res!676237) b!1007186))

(assert (= (and b!1007186 res!676235) b!1007185))

(assert (= (and b!1007185 res!676231) b!1007175))

(assert (= (and b!1007175 res!676234) b!1007178))

(assert (= (and b!1007178 res!676224) b!1007179))

(assert (= (and b!1007179 res!676226) b!1007187))

(assert (= (and b!1007187 res!676233) b!1007181))

(assert (= (and b!1007181 res!676227) b!1007180))

(assert (= (and b!1007180 res!676228) b!1007183))

(assert (= (and b!1007183 res!676232) b!1007188))

(assert (= (and b!1007188 res!676229) b!1007176))

(assert (= (and b!1007176 res!676230) b!1007184))

(assert (= (and b!1007184 res!676236) b!1007182))

(assert (= (and b!1007182 res!676225) b!1007177))

(declare-fun m!932199 () Bool)

(assert (=> b!1007179 m!932199))

(declare-fun m!932201 () Bool)

(assert (=> b!1007176 m!932201))

(assert (=> b!1007176 m!932201))

(declare-fun m!932203 () Bool)

(assert (=> b!1007176 m!932203))

(declare-fun m!932205 () Bool)

(assert (=> b!1007176 m!932205))

(declare-fun m!932207 () Bool)

(assert (=> b!1007176 m!932207))

(declare-fun m!932209 () Bool)

(assert (=> b!1007181 m!932209))

(declare-fun m!932211 () Bool)

(assert (=> b!1007187 m!932211))

(declare-fun m!932213 () Bool)

(assert (=> b!1007183 m!932213))

(assert (=> b!1007183 m!932213))

(declare-fun m!932215 () Bool)

(assert (=> b!1007183 m!932215))

(assert (=> b!1007183 m!932215))

(assert (=> b!1007183 m!932213))

(declare-fun m!932217 () Bool)

(assert (=> b!1007183 m!932217))

(declare-fun m!932219 () Bool)

(assert (=> b!1007177 m!932219))

(assert (=> b!1007188 m!932213))

(assert (=> b!1007188 m!932213))

(declare-fun m!932221 () Bool)

(assert (=> b!1007188 m!932221))

(declare-fun m!932223 () Bool)

(assert (=> b!1007178 m!932223))

(declare-fun m!932225 () Bool)

(assert (=> b!1007184 m!932225))

(declare-fun m!932227 () Bool)

(assert (=> b!1007175 m!932227))

(assert (=> b!1007185 m!932213))

(assert (=> b!1007185 m!932213))

(declare-fun m!932229 () Bool)

(assert (=> b!1007185 m!932229))

(declare-fun m!932231 () Bool)

(assert (=> start!86914 m!932231))

(declare-fun m!932233 () Bool)

(assert (=> start!86914 m!932233))

(push 1)

