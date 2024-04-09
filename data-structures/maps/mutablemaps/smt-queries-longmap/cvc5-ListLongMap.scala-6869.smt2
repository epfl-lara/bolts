; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86500 () Bool)

(assert start!86500)

(declare-fun b!1001080 () Bool)

(declare-fun e!564161 () Bool)

(declare-fun e!564162 () Bool)

(assert (=> b!1001080 (= e!564161 e!564162)))

(declare-fun res!670717 () Bool)

(assert (=> b!1001080 (=> (not res!670717) (not e!564162))))

(declare-datatypes ((SeekEntryResult!9380 0))(
  ( (MissingZero!9380 (index!39890 (_ BitVec 32))) (Found!9380 (index!39891 (_ BitVec 32))) (Intermediate!9380 (undefined!10192 Bool) (index!39892 (_ BitVec 32)) (x!87345 (_ BitVec 32))) (Undefined!9380) (MissingVacant!9380 (index!39893 (_ BitVec 32))) )
))
(declare-fun lt!442515 () SeekEntryResult!9380)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001080 (= res!670717 (or (= lt!442515 (MissingVacant!9380 i!1194)) (= lt!442515 (MissingZero!9380 i!1194))))))

(declare-datatypes ((array!63253 0))(
  ( (array!63254 (arr!30448 (Array (_ BitVec 32) (_ BitVec 64))) (size!30951 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63253)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63253 (_ BitVec 32)) SeekEntryResult!9380)

(assert (=> b!1001080 (= lt!442515 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001081 () Bool)

(declare-fun e!564159 () Bool)

(declare-fun e!564163 () Bool)

(assert (=> b!1001081 (= e!564159 e!564163)))

(declare-fun res!670714 () Bool)

(assert (=> b!1001081 (=> (not res!670714) (not e!564163))))

(declare-fun lt!442514 () SeekEntryResult!9380)

(declare-fun lt!442512 () SeekEntryResult!9380)

(assert (=> b!1001081 (= res!670714 (= lt!442514 lt!442512))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63253 (_ BitVec 32)) SeekEntryResult!9380)

(assert (=> b!1001081 (= lt!442514 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30448 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001082 () Bool)

(declare-fun res!670716 () Bool)

(assert (=> b!1001082 (=> (not res!670716) (not e!564161))))

(declare-fun arrayContainsKey!0 (array!63253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001082 (= res!670716 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001083 () Bool)

(declare-fun res!670719 () Bool)

(assert (=> b!1001083 (=> (not res!670719) (not e!564162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63253 (_ BitVec 32)) Bool)

(assert (=> b!1001083 (= res!670719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!670722 () Bool)

(assert (=> start!86500 (=> (not res!670722) (not e!564161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86500 (= res!670722 (validMask!0 mask!3464))))

(assert (=> start!86500 e!564161))

(declare-fun array_inv!23438 (array!63253) Bool)

(assert (=> start!86500 (array_inv!23438 a!3219)))

(assert (=> start!86500 true))

(declare-fun b!1001084 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun e!564160 () Bool)

(assert (=> b!1001084 (= e!564160 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1001085 () Bool)

(assert (=> b!1001085 (= e!564162 e!564159)))

(declare-fun res!670720 () Bool)

(assert (=> b!1001085 (=> (not res!670720) (not e!564159))))

(declare-fun lt!442511 () SeekEntryResult!9380)

(assert (=> b!1001085 (= res!670720 (= lt!442511 lt!442512))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001085 (= lt!442512 (Intermediate!9380 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001085 (= lt!442511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30448 a!3219) j!170) mask!3464) (select (arr!30448 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001086 () Bool)

(assert (=> b!1001086 (= e!564163 e!564160)))

(declare-fun res!670715 () Bool)

(assert (=> b!1001086 (=> (not res!670715) (not e!564160))))

(declare-fun lt!442513 () (_ BitVec 64))

(declare-fun lt!442510 () array!63253)

(assert (=> b!1001086 (= res!670715 (not (= lt!442511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442513 mask!3464) lt!442513 lt!442510 mask!3464))))))

(assert (=> b!1001086 (= lt!442513 (select (store (arr!30448 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001086 (= lt!442510 (array!63254 (store (arr!30448 a!3219) i!1194 k!2224) (size!30951 a!3219)))))

(declare-fun b!1001087 () Bool)

(declare-fun res!670718 () Bool)

(assert (=> b!1001087 (=> (not res!670718) (not e!564160))))

(assert (=> b!1001087 (= res!670718 (not (= lt!442514 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442513 lt!442510 mask!3464))))))

(declare-fun b!1001088 () Bool)

(declare-fun res!670724 () Bool)

(assert (=> b!1001088 (=> (not res!670724) (not e!564161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001088 (= res!670724 (validKeyInArray!0 (select (arr!30448 a!3219) j!170)))))

(declare-fun b!1001089 () Bool)

(declare-fun res!670726 () Bool)

(assert (=> b!1001089 (=> (not res!670726) (not e!564162))))

(assert (=> b!1001089 (= res!670726 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30951 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30951 a!3219))))))

(declare-fun b!1001090 () Bool)

(declare-fun res!670721 () Bool)

(assert (=> b!1001090 (=> (not res!670721) (not e!564161))))

(assert (=> b!1001090 (= res!670721 (validKeyInArray!0 k!2224))))

(declare-fun b!1001091 () Bool)

(declare-fun res!670725 () Bool)

(assert (=> b!1001091 (=> (not res!670725) (not e!564161))))

(assert (=> b!1001091 (= res!670725 (and (= (size!30951 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30951 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30951 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001092 () Bool)

(declare-fun res!670723 () Bool)

(assert (=> b!1001092 (=> (not res!670723) (not e!564162))))

(declare-datatypes ((List!21250 0))(
  ( (Nil!21247) (Cons!21246 (h!22423 (_ BitVec 64)) (t!30259 List!21250)) )
))
(declare-fun arrayNoDuplicates!0 (array!63253 (_ BitVec 32) List!21250) Bool)

(assert (=> b!1001092 (= res!670723 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21247))))

(assert (= (and start!86500 res!670722) b!1001091))

(assert (= (and b!1001091 res!670725) b!1001088))

(assert (= (and b!1001088 res!670724) b!1001090))

(assert (= (and b!1001090 res!670721) b!1001082))

(assert (= (and b!1001082 res!670716) b!1001080))

(assert (= (and b!1001080 res!670717) b!1001083))

(assert (= (and b!1001083 res!670719) b!1001092))

(assert (= (and b!1001092 res!670723) b!1001089))

(assert (= (and b!1001089 res!670726) b!1001085))

(assert (= (and b!1001085 res!670720) b!1001081))

(assert (= (and b!1001081 res!670714) b!1001086))

(assert (= (and b!1001086 res!670715) b!1001087))

(assert (= (and b!1001087 res!670718) b!1001084))

(declare-fun m!927279 () Bool)

(assert (=> b!1001090 m!927279))

(declare-fun m!927281 () Bool)

(assert (=> b!1001092 m!927281))

(declare-fun m!927283 () Bool)

(assert (=> b!1001080 m!927283))

(declare-fun m!927285 () Bool)

(assert (=> start!86500 m!927285))

(declare-fun m!927287 () Bool)

(assert (=> start!86500 m!927287))

(declare-fun m!927289 () Bool)

(assert (=> b!1001082 m!927289))

(declare-fun m!927291 () Bool)

(assert (=> b!1001081 m!927291))

(assert (=> b!1001081 m!927291))

(declare-fun m!927293 () Bool)

(assert (=> b!1001081 m!927293))

(declare-fun m!927295 () Bool)

(assert (=> b!1001086 m!927295))

(assert (=> b!1001086 m!927295))

(declare-fun m!927297 () Bool)

(assert (=> b!1001086 m!927297))

(declare-fun m!927299 () Bool)

(assert (=> b!1001086 m!927299))

(declare-fun m!927301 () Bool)

(assert (=> b!1001086 m!927301))

(declare-fun m!927303 () Bool)

(assert (=> b!1001087 m!927303))

(declare-fun m!927305 () Bool)

(assert (=> b!1001083 m!927305))

(assert (=> b!1001085 m!927291))

(assert (=> b!1001085 m!927291))

(declare-fun m!927307 () Bool)

(assert (=> b!1001085 m!927307))

(assert (=> b!1001085 m!927307))

(assert (=> b!1001085 m!927291))

(declare-fun m!927309 () Bool)

(assert (=> b!1001085 m!927309))

(assert (=> b!1001088 m!927291))

(assert (=> b!1001088 m!927291))

(declare-fun m!927311 () Bool)

(assert (=> b!1001088 m!927311))

(push 1)

