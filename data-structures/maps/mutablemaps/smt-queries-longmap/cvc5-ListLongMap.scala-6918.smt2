; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86956 () Bool)

(assert start!86956)

(declare-fun b!1008057 () Bool)

(declare-fun e!567274 () Bool)

(declare-fun e!567276 () Bool)

(assert (=> b!1008057 (= e!567274 e!567276)))

(declare-fun res!677117 () Bool)

(assert (=> b!1008057 (=> (not res!677117) (not e!567276))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!445524 () (_ BitVec 64))

(declare-datatypes ((array!63556 0))(
  ( (array!63557 (arr!30595 (Array (_ BitVec 32) (_ BitVec 64))) (size!31098 (_ BitVec 32))) )
))
(declare-fun lt!445519 () array!63556)

(declare-datatypes ((SeekEntryResult!9527 0))(
  ( (MissingZero!9527 (index!40478 (_ BitVec 32))) (Found!9527 (index!40479 (_ BitVec 32))) (Intermediate!9527 (undefined!10339 Bool) (index!40480 (_ BitVec 32)) (x!87902 (_ BitVec 32))) (Undefined!9527) (MissingVacant!9527 (index!40481 (_ BitVec 32))) )
))
(declare-fun lt!445523 () SeekEntryResult!9527)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63556 (_ BitVec 32)) SeekEntryResult!9527)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008057 (= res!677117 (not (= lt!445523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445524 mask!3464) lt!445524 lt!445519 mask!3464))))))

(declare-fun a!3219 () array!63556)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1008057 (= lt!445524 (select (store (arr!30595 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008057 (= lt!445519 (array!63557 (store (arr!30595 a!3219) i!1194 k!2224) (size!31098 a!3219)))))

(declare-fun res!677118 () Bool)

(declare-fun e!567277 () Bool)

(assert (=> start!86956 (=> (not res!677118) (not e!567277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86956 (= res!677118 (validMask!0 mask!3464))))

(assert (=> start!86956 e!567277))

(declare-fun array_inv!23585 (array!63556) Bool)

(assert (=> start!86956 (array_inv!23585 a!3219)))

(assert (=> start!86956 true))

(declare-fun b!1008058 () Bool)

(declare-fun res!677107 () Bool)

(declare-fun e!567275 () Bool)

(assert (=> b!1008058 (=> (not res!677107) (not e!567275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63556 (_ BitVec 32)) Bool)

(assert (=> b!1008058 (= res!677107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008059 () Bool)

(declare-fun res!677110 () Bool)

(assert (=> b!1008059 (=> (not res!677110) (not e!567277))))

(declare-fun arrayContainsKey!0 (array!63556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008059 (= res!677110 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008060 () Bool)

(declare-fun res!677112 () Bool)

(assert (=> b!1008060 (=> (not res!677112) (not e!567276))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1008060 (= res!677112 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008061 () Bool)

(declare-fun res!677119 () Bool)

(assert (=> b!1008061 (=> (not res!677119) (not e!567275))))

(declare-datatypes ((List!21397 0))(
  ( (Nil!21394) (Cons!21393 (h!22579 (_ BitVec 64)) (t!30406 List!21397)) )
))
(declare-fun arrayNoDuplicates!0 (array!63556 (_ BitVec 32) List!21397) Bool)

(assert (=> b!1008061 (= res!677119 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21394))))

(declare-fun b!1008062 () Bool)

(assert (=> b!1008062 (= e!567276 false)))

(declare-fun lt!445522 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008062 (= lt!445522 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008063 () Bool)

(declare-fun res!677116 () Bool)

(assert (=> b!1008063 (=> (not res!677116) (not e!567275))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008063 (= res!677116 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31098 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31098 a!3219))))))

(declare-fun b!1008064 () Bool)

(declare-fun e!567278 () Bool)

(assert (=> b!1008064 (= e!567275 e!567278)))

(declare-fun res!677108 () Bool)

(assert (=> b!1008064 (=> (not res!677108) (not e!567278))))

(declare-fun lt!445518 () SeekEntryResult!9527)

(assert (=> b!1008064 (= res!677108 (= lt!445523 lt!445518))))

(assert (=> b!1008064 (= lt!445518 (Intermediate!9527 false resIndex!38 resX!38))))

(assert (=> b!1008064 (= lt!445523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30595 a!3219) j!170) mask!3464) (select (arr!30595 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008065 () Bool)

(assert (=> b!1008065 (= e!567277 e!567275)))

(declare-fun res!677111 () Bool)

(assert (=> b!1008065 (=> (not res!677111) (not e!567275))))

(declare-fun lt!445521 () SeekEntryResult!9527)

(assert (=> b!1008065 (= res!677111 (or (= lt!445521 (MissingVacant!9527 i!1194)) (= lt!445521 (MissingZero!9527 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63556 (_ BitVec 32)) SeekEntryResult!9527)

(assert (=> b!1008065 (= lt!445521 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008066 () Bool)

(declare-fun res!677113 () Bool)

(assert (=> b!1008066 (=> (not res!677113) (not e!567276))))

(declare-fun lt!445520 () SeekEntryResult!9527)

(assert (=> b!1008066 (= res!677113 (not (= lt!445520 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445524 lt!445519 mask!3464))))))

(declare-fun b!1008067 () Bool)

(declare-fun res!677109 () Bool)

(assert (=> b!1008067 (=> (not res!677109) (not e!567277))))

(assert (=> b!1008067 (= res!677109 (and (= (size!31098 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31098 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31098 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008068 () Bool)

(declare-fun res!677106 () Bool)

(assert (=> b!1008068 (=> (not res!677106) (not e!567277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008068 (= res!677106 (validKeyInArray!0 k!2224))))

(declare-fun b!1008069 () Bool)

(declare-fun res!677115 () Bool)

(assert (=> b!1008069 (=> (not res!677115) (not e!567277))))

(assert (=> b!1008069 (= res!677115 (validKeyInArray!0 (select (arr!30595 a!3219) j!170)))))

(declare-fun b!1008070 () Bool)

(assert (=> b!1008070 (= e!567278 e!567274)))

(declare-fun res!677114 () Bool)

(assert (=> b!1008070 (=> (not res!677114) (not e!567274))))

(assert (=> b!1008070 (= res!677114 (= lt!445520 lt!445518))))

(assert (=> b!1008070 (= lt!445520 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30595 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86956 res!677118) b!1008067))

(assert (= (and b!1008067 res!677109) b!1008069))

(assert (= (and b!1008069 res!677115) b!1008068))

(assert (= (and b!1008068 res!677106) b!1008059))

(assert (= (and b!1008059 res!677110) b!1008065))

(assert (= (and b!1008065 res!677111) b!1008058))

(assert (= (and b!1008058 res!677107) b!1008061))

(assert (= (and b!1008061 res!677119) b!1008063))

(assert (= (and b!1008063 res!677116) b!1008064))

(assert (= (and b!1008064 res!677108) b!1008070))

(assert (= (and b!1008070 res!677114) b!1008057))

(assert (= (and b!1008057 res!677117) b!1008066))

(assert (= (and b!1008066 res!677113) b!1008060))

(assert (= (and b!1008060 res!677112) b!1008062))

(declare-fun m!932955 () Bool)

(assert (=> start!86956 m!932955))

(declare-fun m!932957 () Bool)

(assert (=> start!86956 m!932957))

(declare-fun m!932959 () Bool)

(assert (=> b!1008064 m!932959))

(assert (=> b!1008064 m!932959))

(declare-fun m!932961 () Bool)

(assert (=> b!1008064 m!932961))

(assert (=> b!1008064 m!932961))

(assert (=> b!1008064 m!932959))

(declare-fun m!932963 () Bool)

(assert (=> b!1008064 m!932963))

(declare-fun m!932965 () Bool)

(assert (=> b!1008059 m!932965))

(declare-fun m!932967 () Bool)

(assert (=> b!1008066 m!932967))

(assert (=> b!1008069 m!932959))

(assert (=> b!1008069 m!932959))

(declare-fun m!932969 () Bool)

(assert (=> b!1008069 m!932969))

(declare-fun m!932971 () Bool)

(assert (=> b!1008058 m!932971))

(declare-fun m!932973 () Bool)

(assert (=> b!1008068 m!932973))

(declare-fun m!932975 () Bool)

(assert (=> b!1008057 m!932975))

(assert (=> b!1008057 m!932975))

(declare-fun m!932977 () Bool)

(assert (=> b!1008057 m!932977))

(declare-fun m!932979 () Bool)

(assert (=> b!1008057 m!932979))

(declare-fun m!932981 () Bool)

(assert (=> b!1008057 m!932981))

(declare-fun m!932983 () Bool)

(assert (=> b!1008062 m!932983))

(declare-fun m!932985 () Bool)

(assert (=> b!1008061 m!932985))

(assert (=> b!1008070 m!932959))

(assert (=> b!1008070 m!932959))

(declare-fun m!932987 () Bool)

(assert (=> b!1008070 m!932987))

(declare-fun m!932989 () Bool)

(assert (=> b!1008065 m!932989))

(push 1)

