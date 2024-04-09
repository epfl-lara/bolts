; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86962 () Bool)

(assert start!86962)

(declare-fun b!1008183 () Bool)

(declare-fun e!567331 () Bool)

(assert (=> b!1008183 (= e!567331 false)))

(declare-fun lt!445584 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008183 (= lt!445584 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008184 () Bool)

(declare-fun res!677233 () Bool)

(declare-fun e!567330 () Bool)

(assert (=> b!1008184 (=> (not res!677233) (not e!567330))))

(declare-datatypes ((array!63562 0))(
  ( (array!63563 (arr!30598 (Array (_ BitVec 32) (_ BitVec 64))) (size!31101 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63562)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008184 (= res!677233 (and (= (size!31101 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31101 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31101 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008185 () Bool)

(declare-fun res!677239 () Bool)

(assert (=> b!1008185 (=> (not res!677239) (not e!567330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008185 (= res!677239 (validKeyInArray!0 (select (arr!30598 a!3219) j!170)))))

(declare-fun b!1008186 () Bool)

(declare-fun res!677245 () Bool)

(assert (=> b!1008186 (=> (not res!677245) (not e!567331))))

(declare-fun lt!445586 () array!63562)

(declare-fun lt!445582 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9530 0))(
  ( (MissingZero!9530 (index!40490 (_ BitVec 32))) (Found!9530 (index!40491 (_ BitVec 32))) (Intermediate!9530 (undefined!10342 Bool) (index!40492 (_ BitVec 32)) (x!87913 (_ BitVec 32))) (Undefined!9530) (MissingVacant!9530 (index!40493 (_ BitVec 32))) )
))
(declare-fun lt!445583 () SeekEntryResult!9530)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63562 (_ BitVec 32)) SeekEntryResult!9530)

(assert (=> b!1008186 (= res!677245 (not (= lt!445583 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445582 lt!445586 mask!3464))))))

(declare-fun b!1008187 () Bool)

(declare-fun e!567328 () Bool)

(assert (=> b!1008187 (= e!567328 e!567331)))

(declare-fun res!677243 () Bool)

(assert (=> b!1008187 (=> (not res!677243) (not e!567331))))

(declare-fun lt!445581 () SeekEntryResult!9530)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008187 (= res!677243 (not (= lt!445581 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445582 mask!3464) lt!445582 lt!445586 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1008187 (= lt!445582 (select (store (arr!30598 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008187 (= lt!445586 (array!63563 (store (arr!30598 a!3219) i!1194 k!2224) (size!31101 a!3219)))))

(declare-fun b!1008188 () Bool)

(declare-fun res!677240 () Bool)

(assert (=> b!1008188 (=> (not res!677240) (not e!567330))))

(declare-fun arrayContainsKey!0 (array!63562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008188 (= res!677240 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!677238 () Bool)

(assert (=> start!86962 (=> (not res!677238) (not e!567330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86962 (= res!677238 (validMask!0 mask!3464))))

(assert (=> start!86962 e!567330))

(declare-fun array_inv!23588 (array!63562) Bool)

(assert (=> start!86962 (array_inv!23588 a!3219)))

(assert (=> start!86962 true))

(declare-fun b!1008189 () Bool)

(declare-fun res!677242 () Bool)

(declare-fun e!567332 () Bool)

(assert (=> b!1008189 (=> (not res!677242) (not e!567332))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008189 (= res!677242 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31101 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31101 a!3219))))))

(declare-fun b!1008190 () Bool)

(declare-fun e!567329 () Bool)

(assert (=> b!1008190 (= e!567332 e!567329)))

(declare-fun res!677232 () Bool)

(assert (=> b!1008190 (=> (not res!677232) (not e!567329))))

(declare-fun lt!445587 () SeekEntryResult!9530)

(assert (=> b!1008190 (= res!677232 (= lt!445581 lt!445587))))

(assert (=> b!1008190 (= lt!445587 (Intermediate!9530 false resIndex!38 resX!38))))

(assert (=> b!1008190 (= lt!445581 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30598 a!3219) j!170) mask!3464) (select (arr!30598 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008191 () Bool)

(declare-fun res!677236 () Bool)

(assert (=> b!1008191 (=> (not res!677236) (not e!567330))))

(assert (=> b!1008191 (= res!677236 (validKeyInArray!0 k!2224))))

(declare-fun b!1008192 () Bool)

(assert (=> b!1008192 (= e!567329 e!567328)))

(declare-fun res!677244 () Bool)

(assert (=> b!1008192 (=> (not res!677244) (not e!567328))))

(assert (=> b!1008192 (= res!677244 (= lt!445583 lt!445587))))

(assert (=> b!1008192 (= lt!445583 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30598 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008193 () Bool)

(assert (=> b!1008193 (= e!567330 e!567332)))

(declare-fun res!677241 () Bool)

(assert (=> b!1008193 (=> (not res!677241) (not e!567332))))

(declare-fun lt!445585 () SeekEntryResult!9530)

(assert (=> b!1008193 (= res!677241 (or (= lt!445585 (MissingVacant!9530 i!1194)) (= lt!445585 (MissingZero!9530 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63562 (_ BitVec 32)) SeekEntryResult!9530)

(assert (=> b!1008193 (= lt!445585 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008194 () Bool)

(declare-fun res!677237 () Bool)

(assert (=> b!1008194 (=> (not res!677237) (not e!567332))))

(declare-datatypes ((List!21400 0))(
  ( (Nil!21397) (Cons!21396 (h!22582 (_ BitVec 64)) (t!30409 List!21400)) )
))
(declare-fun arrayNoDuplicates!0 (array!63562 (_ BitVec 32) List!21400) Bool)

(assert (=> b!1008194 (= res!677237 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21397))))

(declare-fun b!1008195 () Bool)

(declare-fun res!677235 () Bool)

(assert (=> b!1008195 (=> (not res!677235) (not e!567331))))

(assert (=> b!1008195 (= res!677235 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008196 () Bool)

(declare-fun res!677234 () Bool)

(assert (=> b!1008196 (=> (not res!677234) (not e!567332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63562 (_ BitVec 32)) Bool)

(assert (=> b!1008196 (= res!677234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86962 res!677238) b!1008184))

(assert (= (and b!1008184 res!677233) b!1008185))

(assert (= (and b!1008185 res!677239) b!1008191))

(assert (= (and b!1008191 res!677236) b!1008188))

(assert (= (and b!1008188 res!677240) b!1008193))

(assert (= (and b!1008193 res!677241) b!1008196))

(assert (= (and b!1008196 res!677234) b!1008194))

(assert (= (and b!1008194 res!677237) b!1008189))

(assert (= (and b!1008189 res!677242) b!1008190))

(assert (= (and b!1008190 res!677232) b!1008192))

(assert (= (and b!1008192 res!677244) b!1008187))

(assert (= (and b!1008187 res!677243) b!1008186))

(assert (= (and b!1008186 res!677245) b!1008195))

(assert (= (and b!1008195 res!677235) b!1008183))

(declare-fun m!933063 () Bool)

(assert (=> b!1008190 m!933063))

(assert (=> b!1008190 m!933063))

(declare-fun m!933065 () Bool)

(assert (=> b!1008190 m!933065))

(assert (=> b!1008190 m!933065))

(assert (=> b!1008190 m!933063))

(declare-fun m!933067 () Bool)

(assert (=> b!1008190 m!933067))

(assert (=> b!1008185 m!933063))

(assert (=> b!1008185 m!933063))

(declare-fun m!933069 () Bool)

(assert (=> b!1008185 m!933069))

(declare-fun m!933071 () Bool)

(assert (=> b!1008188 m!933071))

(declare-fun m!933073 () Bool)

(assert (=> b!1008193 m!933073))

(declare-fun m!933075 () Bool)

(assert (=> b!1008191 m!933075))

(declare-fun m!933077 () Bool)

(assert (=> b!1008186 m!933077))

(declare-fun m!933079 () Bool)

(assert (=> b!1008194 m!933079))

(declare-fun m!933081 () Bool)

(assert (=> b!1008196 m!933081))

(declare-fun m!933083 () Bool)

(assert (=> start!86962 m!933083))

(declare-fun m!933085 () Bool)

(assert (=> start!86962 m!933085))

(assert (=> b!1008192 m!933063))

(assert (=> b!1008192 m!933063))

(declare-fun m!933087 () Bool)

(assert (=> b!1008192 m!933087))

(declare-fun m!933089 () Bool)

(assert (=> b!1008183 m!933089))

(declare-fun m!933091 () Bool)

(assert (=> b!1008187 m!933091))

(assert (=> b!1008187 m!933091))

(declare-fun m!933093 () Bool)

(assert (=> b!1008187 m!933093))

(declare-fun m!933095 () Bool)

(assert (=> b!1008187 m!933095))

(declare-fun m!933097 () Bool)

(assert (=> b!1008187 m!933097))

(push 1)

