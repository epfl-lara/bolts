; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86054 () Bool)

(assert start!86054)

(declare-fun b!996248 () Bool)

(declare-fun res!666525 () Bool)

(declare-fun e!562149 () Bool)

(assert (=> b!996248 (=> (not res!666525) (not e!562149))))

(declare-datatypes ((array!63011 0))(
  ( (array!63012 (arr!30333 (Array (_ BitVec 32) (_ BitVec 64))) (size!30836 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63011)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996248 (= res!666525 (validKeyInArray!0 (select (arr!30333 a!3219) j!170)))))

(declare-fun b!996249 () Bool)

(declare-fun res!666518 () Bool)

(declare-fun e!562151 () Bool)

(assert (=> b!996249 (=> (not res!666518) (not e!562151))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63011 (_ BitVec 32)) Bool)

(assert (=> b!996249 (= res!666518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996250 () Bool)

(assert (=> b!996250 (= e!562149 e!562151)))

(declare-fun res!666524 () Bool)

(assert (=> b!996250 (=> (not res!666524) (not e!562151))))

(declare-datatypes ((SeekEntryResult!9265 0))(
  ( (MissingZero!9265 (index!39430 (_ BitVec 32))) (Found!9265 (index!39431 (_ BitVec 32))) (Intermediate!9265 (undefined!10077 Bool) (index!39432 (_ BitVec 32)) (x!86894 (_ BitVec 32))) (Undefined!9265) (MissingVacant!9265 (index!39433 (_ BitVec 32))) )
))
(declare-fun lt!441170 () SeekEntryResult!9265)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996250 (= res!666524 (or (= lt!441170 (MissingVacant!9265 i!1194)) (= lt!441170 (MissingZero!9265 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63011 (_ BitVec 32)) SeekEntryResult!9265)

(assert (=> b!996250 (= lt!441170 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996251 () Bool)

(declare-fun res!666520 () Bool)

(assert (=> b!996251 (=> (not res!666520) (not e!562151))))

(declare-datatypes ((List!21135 0))(
  ( (Nil!21132) (Cons!21131 (h!22296 (_ BitVec 64)) (t!30144 List!21135)) )
))
(declare-fun arrayNoDuplicates!0 (array!63011 (_ BitVec 32) List!21135) Bool)

(assert (=> b!996251 (= res!666520 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21132))))

(declare-fun b!996252 () Bool)

(assert (=> b!996252 (= e!562151 false)))

(declare-fun lt!441171 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996252 (= lt!441171 (toIndex!0 (select (arr!30333 a!3219) j!170) mask!3464))))

(declare-fun b!996253 () Bool)

(declare-fun res!666526 () Bool)

(assert (=> b!996253 (=> (not res!666526) (not e!562149))))

(declare-fun arrayContainsKey!0 (array!63011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996253 (= res!666526 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!666521 () Bool)

(assert (=> start!86054 (=> (not res!666521) (not e!562149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86054 (= res!666521 (validMask!0 mask!3464))))

(assert (=> start!86054 e!562149))

(declare-fun array_inv!23323 (array!63011) Bool)

(assert (=> start!86054 (array_inv!23323 a!3219)))

(assert (=> start!86054 true))

(declare-fun b!996254 () Bool)

(declare-fun res!666523 () Bool)

(assert (=> b!996254 (=> (not res!666523) (not e!562149))))

(assert (=> b!996254 (= res!666523 (validKeyInArray!0 k!2224))))

(declare-fun b!996255 () Bool)

(declare-fun res!666519 () Bool)

(assert (=> b!996255 (=> (not res!666519) (not e!562149))))

(assert (=> b!996255 (= res!666519 (and (= (size!30836 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30836 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30836 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996256 () Bool)

(declare-fun res!666522 () Bool)

(assert (=> b!996256 (=> (not res!666522) (not e!562151))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996256 (= res!666522 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30836 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30836 a!3219))))))

(assert (= (and start!86054 res!666521) b!996255))

(assert (= (and b!996255 res!666519) b!996248))

(assert (= (and b!996248 res!666525) b!996254))

(assert (= (and b!996254 res!666523) b!996253))

(assert (= (and b!996253 res!666526) b!996250))

(assert (= (and b!996250 res!666524) b!996249))

(assert (= (and b!996249 res!666518) b!996251))

(assert (= (and b!996251 res!666520) b!996256))

(assert (= (and b!996256 res!666522) b!996252))

(declare-fun m!923497 () Bool)

(assert (=> b!996251 m!923497))

(declare-fun m!923499 () Bool)

(assert (=> start!86054 m!923499))

(declare-fun m!923501 () Bool)

(assert (=> start!86054 m!923501))

(declare-fun m!923503 () Bool)

(assert (=> b!996248 m!923503))

(assert (=> b!996248 m!923503))

(declare-fun m!923505 () Bool)

(assert (=> b!996248 m!923505))

(declare-fun m!923507 () Bool)

(assert (=> b!996249 m!923507))

(declare-fun m!923509 () Bool)

(assert (=> b!996253 m!923509))

(declare-fun m!923511 () Bool)

(assert (=> b!996250 m!923511))

(assert (=> b!996252 m!923503))

(assert (=> b!996252 m!923503))

(declare-fun m!923513 () Bool)

(assert (=> b!996252 m!923513))

(declare-fun m!923515 () Bool)

(assert (=> b!996254 m!923515))

(push 1)

(assert (not b!996251))

(assert (not b!996253))

(assert (not b!996250))

(assert (not b!996254))

(assert (not b!996252))

(assert (not start!86054))

(assert (not b!996248))

(assert (not b!996249))

(check-sat)

