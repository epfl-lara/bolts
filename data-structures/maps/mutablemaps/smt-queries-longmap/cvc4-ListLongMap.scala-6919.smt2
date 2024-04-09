; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86966 () Bool)

(assert start!86966)

(declare-fun b!1008267 () Bool)

(declare-fun res!677320 () Bool)

(declare-fun e!567366 () Bool)

(assert (=> b!1008267 (=> (not res!677320) (not e!567366))))

(declare-datatypes ((array!63566 0))(
  ( (array!63567 (arr!30600 (Array (_ BitVec 32) (_ BitVec 64))) (size!31103 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63566)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008267 (= res!677320 (validKeyInArray!0 (select (arr!30600 a!3219) j!170)))))

(declare-fun b!1008268 () Bool)

(declare-fun res!677323 () Bool)

(declare-fun e!567367 () Bool)

(assert (=> b!1008268 (=> (not res!677323) (not e!567367))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008268 (= res!677323 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008269 () Bool)

(assert (=> b!1008269 (= e!567367 false)))

(declare-fun lt!445625 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008269 (= lt!445625 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008270 () Bool)

(declare-fun e!567365 () Bool)

(assert (=> b!1008270 (= e!567366 e!567365)))

(declare-fun res!677316 () Bool)

(assert (=> b!1008270 (=> (not res!677316) (not e!567365))))

(declare-datatypes ((SeekEntryResult!9532 0))(
  ( (MissingZero!9532 (index!40498 (_ BitVec 32))) (Found!9532 (index!40499 (_ BitVec 32))) (Intermediate!9532 (undefined!10344 Bool) (index!40500 (_ BitVec 32)) (x!87915 (_ BitVec 32))) (Undefined!9532) (MissingVacant!9532 (index!40501 (_ BitVec 32))) )
))
(declare-fun lt!445623 () SeekEntryResult!9532)

(assert (=> b!1008270 (= res!677316 (or (= lt!445623 (MissingVacant!9532 i!1194)) (= lt!445623 (MissingZero!9532 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63566 (_ BitVec 32)) SeekEntryResult!9532)

(assert (=> b!1008270 (= lt!445623 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008272 () Bool)

(declare-fun res!677318 () Bool)

(assert (=> b!1008272 (=> (not res!677318) (not e!567365))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008272 (= res!677318 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31103 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31103 a!3219))))))

(declare-fun b!1008273 () Bool)

(declare-fun res!677328 () Bool)

(assert (=> b!1008273 (=> (not res!677328) (not e!567367))))

(declare-fun lt!445627 () array!63566)

(declare-fun lt!445629 () (_ BitVec 64))

(declare-fun lt!445628 () SeekEntryResult!9532)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63566 (_ BitVec 32)) SeekEntryResult!9532)

(assert (=> b!1008273 (= res!677328 (not (= lt!445628 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445629 lt!445627 mask!3464))))))

(declare-fun b!1008274 () Bool)

(declare-fun res!677321 () Bool)

(assert (=> b!1008274 (=> (not res!677321) (not e!567366))))

(declare-fun arrayContainsKey!0 (array!63566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008274 (= res!677321 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008275 () Bool)

(declare-fun e!567363 () Bool)

(declare-fun e!567368 () Bool)

(assert (=> b!1008275 (= e!567363 e!567368)))

(declare-fun res!677319 () Bool)

(assert (=> b!1008275 (=> (not res!677319) (not e!567368))))

(declare-fun lt!445626 () SeekEntryResult!9532)

(assert (=> b!1008275 (= res!677319 (= lt!445628 lt!445626))))

(assert (=> b!1008275 (= lt!445628 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30600 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008276 () Bool)

(assert (=> b!1008276 (= e!567368 e!567367)))

(declare-fun res!677325 () Bool)

(assert (=> b!1008276 (=> (not res!677325) (not e!567367))))

(declare-fun lt!445624 () SeekEntryResult!9532)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008276 (= res!677325 (not (= lt!445624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445629 mask!3464) lt!445629 lt!445627 mask!3464))))))

(assert (=> b!1008276 (= lt!445629 (select (store (arr!30600 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008276 (= lt!445627 (array!63567 (store (arr!30600 a!3219) i!1194 k!2224) (size!31103 a!3219)))))

(declare-fun b!1008277 () Bool)

(declare-fun res!677329 () Bool)

(assert (=> b!1008277 (=> (not res!677329) (not e!567365))))

(declare-datatypes ((List!21402 0))(
  ( (Nil!21399) (Cons!21398 (h!22584 (_ BitVec 64)) (t!30411 List!21402)) )
))
(declare-fun arrayNoDuplicates!0 (array!63566 (_ BitVec 32) List!21402) Bool)

(assert (=> b!1008277 (= res!677329 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21399))))

(declare-fun b!1008278 () Bool)

(assert (=> b!1008278 (= e!567365 e!567363)))

(declare-fun res!677322 () Bool)

(assert (=> b!1008278 (=> (not res!677322) (not e!567363))))

(assert (=> b!1008278 (= res!677322 (= lt!445624 lt!445626))))

(assert (=> b!1008278 (= lt!445626 (Intermediate!9532 false resIndex!38 resX!38))))

(assert (=> b!1008278 (= lt!445624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30600 a!3219) j!170) mask!3464) (select (arr!30600 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008279 () Bool)

(declare-fun res!677327 () Bool)

(assert (=> b!1008279 (=> (not res!677327) (not e!567365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63566 (_ BitVec 32)) Bool)

(assert (=> b!1008279 (= res!677327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008280 () Bool)

(declare-fun res!677317 () Bool)

(assert (=> b!1008280 (=> (not res!677317) (not e!567366))))

(assert (=> b!1008280 (= res!677317 (validKeyInArray!0 k!2224))))

(declare-fun res!677324 () Bool)

(assert (=> start!86966 (=> (not res!677324) (not e!567366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86966 (= res!677324 (validMask!0 mask!3464))))

(assert (=> start!86966 e!567366))

(declare-fun array_inv!23590 (array!63566) Bool)

(assert (=> start!86966 (array_inv!23590 a!3219)))

(assert (=> start!86966 true))

(declare-fun b!1008271 () Bool)

(declare-fun res!677326 () Bool)

(assert (=> b!1008271 (=> (not res!677326) (not e!567366))))

(assert (=> b!1008271 (= res!677326 (and (= (size!31103 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31103 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31103 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86966 res!677324) b!1008271))

(assert (= (and b!1008271 res!677326) b!1008267))

(assert (= (and b!1008267 res!677320) b!1008280))

(assert (= (and b!1008280 res!677317) b!1008274))

(assert (= (and b!1008274 res!677321) b!1008270))

(assert (= (and b!1008270 res!677316) b!1008279))

(assert (= (and b!1008279 res!677327) b!1008277))

(assert (= (and b!1008277 res!677329) b!1008272))

(assert (= (and b!1008272 res!677318) b!1008278))

(assert (= (and b!1008278 res!677322) b!1008275))

(assert (= (and b!1008275 res!677319) b!1008276))

(assert (= (and b!1008276 res!677325) b!1008273))

(assert (= (and b!1008273 res!677328) b!1008268))

(assert (= (and b!1008268 res!677323) b!1008269))

(declare-fun m!933135 () Bool)

(assert (=> b!1008274 m!933135))

(declare-fun m!933137 () Bool)

(assert (=> b!1008278 m!933137))

(assert (=> b!1008278 m!933137))

(declare-fun m!933139 () Bool)

(assert (=> b!1008278 m!933139))

(assert (=> b!1008278 m!933139))

(assert (=> b!1008278 m!933137))

(declare-fun m!933141 () Bool)

(assert (=> b!1008278 m!933141))

(declare-fun m!933143 () Bool)

(assert (=> b!1008277 m!933143))

(declare-fun m!933145 () Bool)

(assert (=> b!1008276 m!933145))

(assert (=> b!1008276 m!933145))

(declare-fun m!933147 () Bool)

(assert (=> b!1008276 m!933147))

(declare-fun m!933149 () Bool)

(assert (=> b!1008276 m!933149))

(declare-fun m!933151 () Bool)

(assert (=> b!1008276 m!933151))

(declare-fun m!933153 () Bool)

(assert (=> b!1008279 m!933153))

(assert (=> b!1008275 m!933137))

(assert (=> b!1008275 m!933137))

(declare-fun m!933155 () Bool)

(assert (=> b!1008275 m!933155))

(declare-fun m!933157 () Bool)

(assert (=> b!1008273 m!933157))

(declare-fun m!933159 () Bool)

(assert (=> b!1008280 m!933159))

(assert (=> b!1008267 m!933137))

(assert (=> b!1008267 m!933137))

(declare-fun m!933161 () Bool)

(assert (=> b!1008267 m!933161))

(declare-fun m!933163 () Bool)

(assert (=> start!86966 m!933163))

(declare-fun m!933165 () Bool)

(assert (=> start!86966 m!933165))

(declare-fun m!933167 () Bool)

(assert (=> b!1008269 m!933167))

(declare-fun m!933169 () Bool)

(assert (=> b!1008270 m!933169))

(push 1)

