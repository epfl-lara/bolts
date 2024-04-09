; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86960 () Bool)

(assert start!86960)

(declare-fun b!1008141 () Bool)

(declare-fun e!567312 () Bool)

(declare-fun e!567313 () Bool)

(assert (=> b!1008141 (= e!567312 e!567313)))

(declare-fun res!677190 () Bool)

(assert (=> b!1008141 (=> (not res!677190) (not e!567313))))

(declare-datatypes ((SeekEntryResult!9529 0))(
  ( (MissingZero!9529 (index!40486 (_ BitVec 32))) (Found!9529 (index!40487 (_ BitVec 32))) (Intermediate!9529 (undefined!10341 Bool) (index!40488 (_ BitVec 32)) (x!87904 (_ BitVec 32))) (Undefined!9529) (MissingVacant!9529 (index!40489 (_ BitVec 32))) )
))
(declare-fun lt!445566 () SeekEntryResult!9529)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008141 (= res!677190 (or (= lt!445566 (MissingVacant!9529 i!1194)) (= lt!445566 (MissingZero!9529 i!1194))))))

(declare-datatypes ((array!63560 0))(
  ( (array!63561 (arr!30597 (Array (_ BitVec 32) (_ BitVec 64))) (size!31100 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63560)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63560 (_ BitVec 32)) SeekEntryResult!9529)

(assert (=> b!1008141 (= lt!445566 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008142 () Bool)

(declare-fun e!567311 () Bool)

(declare-fun e!567309 () Bool)

(assert (=> b!1008142 (= e!567311 e!567309)))

(declare-fun res!677199 () Bool)

(assert (=> b!1008142 (=> (not res!677199) (not e!567309))))

(declare-fun lt!445562 () SeekEntryResult!9529)

(declare-fun lt!445560 () SeekEntryResult!9529)

(assert (=> b!1008142 (= res!677199 (= lt!445562 lt!445560))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63560 (_ BitVec 32)) SeekEntryResult!9529)

(assert (=> b!1008142 (= lt!445562 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30597 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008143 () Bool)

(declare-fun res!677200 () Bool)

(assert (=> b!1008143 (=> (not res!677200) (not e!567313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63560 (_ BitVec 32)) Bool)

(assert (=> b!1008143 (= res!677200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008145 () Bool)

(declare-fun res!677195 () Bool)

(assert (=> b!1008145 (=> (not res!677195) (not e!567312))))

(assert (=> b!1008145 (= res!677195 (and (= (size!31100 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31100 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31100 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008146 () Bool)

(declare-fun res!677196 () Bool)

(assert (=> b!1008146 (=> (not res!677196) (not e!567312))))

(declare-fun arrayContainsKey!0 (array!63560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008146 (= res!677196 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008147 () Bool)

(declare-fun res!677201 () Bool)

(assert (=> b!1008147 (=> (not res!677201) (not e!567312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008147 (= res!677201 (validKeyInArray!0 (select (arr!30597 a!3219) j!170)))))

(declare-fun b!1008148 () Bool)

(assert (=> b!1008148 (= e!567313 e!567311)))

(declare-fun res!677194 () Bool)

(assert (=> b!1008148 (=> (not res!677194) (not e!567311))))

(declare-fun lt!445563 () SeekEntryResult!9529)

(assert (=> b!1008148 (= res!677194 (= lt!445563 lt!445560))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008148 (= lt!445560 (Intermediate!9529 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008148 (= lt!445563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30597 a!3219) j!170) mask!3464) (select (arr!30597 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008149 () Bool)

(declare-fun res!677198 () Bool)

(declare-fun e!567310 () Bool)

(assert (=> b!1008149 (=> (not res!677198) (not e!567310))))

(declare-fun lt!445565 () (_ BitVec 64))

(declare-fun lt!445564 () array!63560)

(assert (=> b!1008149 (= res!677198 (not (= lt!445562 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445565 lt!445564 mask!3464))))))

(declare-fun b!1008150 () Bool)

(assert (=> b!1008150 (= e!567309 e!567310)))

(declare-fun res!677192 () Bool)

(assert (=> b!1008150 (=> (not res!677192) (not e!567310))))

(assert (=> b!1008150 (= res!677192 (not (= lt!445563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445565 mask!3464) lt!445565 lt!445564 mask!3464))))))

(assert (=> b!1008150 (= lt!445565 (select (store (arr!30597 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008150 (= lt!445564 (array!63561 (store (arr!30597 a!3219) i!1194 k!2224) (size!31100 a!3219)))))

(declare-fun b!1008151 () Bool)

(declare-fun res!677202 () Bool)

(assert (=> b!1008151 (=> (not res!677202) (not e!567313))))

(assert (=> b!1008151 (= res!677202 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31100 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31100 a!3219))))))

(declare-fun b!1008152 () Bool)

(assert (=> b!1008152 (= e!567310 false)))

(declare-fun lt!445561 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008152 (= lt!445561 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!677191 () Bool)

(assert (=> start!86960 (=> (not res!677191) (not e!567312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86960 (= res!677191 (validMask!0 mask!3464))))

(assert (=> start!86960 e!567312))

(declare-fun array_inv!23587 (array!63560) Bool)

(assert (=> start!86960 (array_inv!23587 a!3219)))

(assert (=> start!86960 true))

(declare-fun b!1008144 () Bool)

(declare-fun res!677193 () Bool)

(assert (=> b!1008144 (=> (not res!677193) (not e!567313))))

(declare-datatypes ((List!21399 0))(
  ( (Nil!21396) (Cons!21395 (h!22581 (_ BitVec 64)) (t!30408 List!21399)) )
))
(declare-fun arrayNoDuplicates!0 (array!63560 (_ BitVec 32) List!21399) Bool)

(assert (=> b!1008144 (= res!677193 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21396))))

(declare-fun b!1008153 () Bool)

(declare-fun res!677203 () Bool)

(assert (=> b!1008153 (=> (not res!677203) (not e!567312))))

(assert (=> b!1008153 (= res!677203 (validKeyInArray!0 k!2224))))

(declare-fun b!1008154 () Bool)

(declare-fun res!677197 () Bool)

(assert (=> b!1008154 (=> (not res!677197) (not e!567310))))

(assert (=> b!1008154 (= res!677197 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86960 res!677191) b!1008145))

(assert (= (and b!1008145 res!677195) b!1008147))

(assert (= (and b!1008147 res!677201) b!1008153))

(assert (= (and b!1008153 res!677203) b!1008146))

(assert (= (and b!1008146 res!677196) b!1008141))

(assert (= (and b!1008141 res!677190) b!1008143))

(assert (= (and b!1008143 res!677200) b!1008144))

(assert (= (and b!1008144 res!677193) b!1008151))

(assert (= (and b!1008151 res!677202) b!1008148))

(assert (= (and b!1008148 res!677194) b!1008142))

(assert (= (and b!1008142 res!677199) b!1008150))

(assert (= (and b!1008150 res!677192) b!1008149))

(assert (= (and b!1008149 res!677198) b!1008154))

(assert (= (and b!1008154 res!677197) b!1008152))

(declare-fun m!933027 () Bool)

(assert (=> b!1008142 m!933027))

(assert (=> b!1008142 m!933027))

(declare-fun m!933029 () Bool)

(assert (=> b!1008142 m!933029))

(assert (=> b!1008147 m!933027))

(assert (=> b!1008147 m!933027))

(declare-fun m!933031 () Bool)

(assert (=> b!1008147 m!933031))

(declare-fun m!933033 () Bool)

(assert (=> b!1008144 m!933033))

(declare-fun m!933035 () Bool)

(assert (=> b!1008149 m!933035))

(declare-fun m!933037 () Bool)

(assert (=> b!1008150 m!933037))

(assert (=> b!1008150 m!933037))

(declare-fun m!933039 () Bool)

(assert (=> b!1008150 m!933039))

(declare-fun m!933041 () Bool)

(assert (=> b!1008150 m!933041))

(declare-fun m!933043 () Bool)

(assert (=> b!1008150 m!933043))

(assert (=> b!1008148 m!933027))

(assert (=> b!1008148 m!933027))

(declare-fun m!933045 () Bool)

(assert (=> b!1008148 m!933045))

(assert (=> b!1008148 m!933045))

(assert (=> b!1008148 m!933027))

(declare-fun m!933047 () Bool)

(assert (=> b!1008148 m!933047))

(declare-fun m!933049 () Bool)

(assert (=> b!1008146 m!933049))

(declare-fun m!933051 () Bool)

(assert (=> b!1008143 m!933051))

(declare-fun m!933053 () Bool)

(assert (=> b!1008141 m!933053))

(declare-fun m!933055 () Bool)

(assert (=> start!86960 m!933055))

(declare-fun m!933057 () Bool)

(assert (=> start!86960 m!933057))

(declare-fun m!933059 () Bool)

(assert (=> b!1008152 m!933059))

(declare-fun m!933061 () Bool)

(assert (=> b!1008153 m!933061))

(push 1)

