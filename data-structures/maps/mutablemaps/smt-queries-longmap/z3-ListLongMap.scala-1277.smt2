; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26232 () Bool)

(assert start!26232)

(declare-fun b!271212 () Bool)

(declare-fun e!174495 () Bool)

(declare-fun e!174494 () Bool)

(assert (=> b!271212 (= e!174495 e!174494)))

(declare-fun res!135249 () Bool)

(assert (=> b!271212 (=> (not res!135249) (not e!174494))))

(declare-datatypes ((SeekEntryResult!1477 0))(
  ( (MissingZero!1477 (index!8078 (_ BitVec 32))) (Found!1477 (index!8079 (_ BitVec 32))) (Intermediate!1477 (undefined!2289 Bool) (index!8080 (_ BitVec 32)) (x!26378 (_ BitVec 32))) (Undefined!1477) (MissingVacant!1477 (index!8081 (_ BitVec 32))) )
))
(declare-fun lt!135797 () SeekEntryResult!1477)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271212 (= res!135249 (or (= lt!135797 (MissingZero!1477 i!1267)) (= lt!135797 (MissingVacant!1477 i!1267))))))

(declare-datatypes ((array!13318 0))(
  ( (array!13319 (arr!6308 (Array (_ BitVec 32) (_ BitVec 64))) (size!6660 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13318)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13318 (_ BitVec 32)) SeekEntryResult!1477)

(assert (=> b!271212 (= lt!135797 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271213 () Bool)

(declare-fun res!135251 () Bool)

(assert (=> b!271213 (=> (not res!135251) (not e!174495))))

(declare-fun arrayContainsKey!0 (array!13318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271213 (= res!135251 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271215 () Bool)

(declare-fun res!135247 () Bool)

(assert (=> b!271215 (=> (not res!135247) (not e!174495))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271215 (= res!135247 (and (= (size!6660 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6660 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6660 a!3325))))))

(declare-fun b!271216 () Bool)

(declare-fun res!135242 () Bool)

(assert (=> b!271216 (=> (not res!135242) (not e!174495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271216 (= res!135242 (validKeyInArray!0 k0!2581))))

(declare-fun b!271217 () Bool)

(declare-fun res!135240 () Bool)

(assert (=> b!271217 (=> (not res!135240) (not e!174494))))

(declare-datatypes ((List!4137 0))(
  ( (Nil!4134) (Cons!4133 (h!4800 (_ BitVec 64)) (t!9227 List!4137)) )
))
(declare-fun noDuplicate!135 (List!4137) Bool)

(assert (=> b!271217 (= res!135240 (noDuplicate!135 Nil!4134))))

(declare-fun b!271218 () Bool)

(declare-fun res!135246 () Bool)

(assert (=> b!271218 (=> (not res!135246) (not e!174494))))

(assert (=> b!271218 (= res!135246 (not (= startIndex!26 i!1267)))))

(declare-fun b!271219 () Bool)

(declare-fun res!135244 () Bool)

(assert (=> b!271219 (=> (not res!135244) (not e!174494))))

(declare-fun contains!1946 (List!4137 (_ BitVec 64)) Bool)

(assert (=> b!271219 (= res!135244 (not (contains!1946 Nil!4134 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271220 () Bool)

(declare-fun res!135245 () Bool)

(assert (=> b!271220 (=> (not res!135245) (not e!174494))))

(assert (=> b!271220 (= res!135245 (not (contains!1946 Nil!4134 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!135243 () Bool)

(assert (=> start!26232 (=> (not res!135243) (not e!174495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26232 (= res!135243 (validMask!0 mask!3868))))

(assert (=> start!26232 e!174495))

(declare-fun array_inv!4262 (array!13318) Bool)

(assert (=> start!26232 (array_inv!4262 a!3325)))

(assert (=> start!26232 true))

(declare-fun b!271214 () Bool)

(declare-fun res!135248 () Bool)

(assert (=> b!271214 (=> (not res!135248) (not e!174494))))

(assert (=> b!271214 (= res!135248 (validKeyInArray!0 (select (arr!6308 a!3325) startIndex!26)))))

(declare-fun b!271221 () Bool)

(declare-fun res!135250 () Bool)

(assert (=> b!271221 (=> (not res!135250) (not e!174494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13318 (_ BitVec 32)) Bool)

(assert (=> b!271221 (= res!135250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271222 () Bool)

(declare-fun res!135252 () Bool)

(assert (=> b!271222 (=> (not res!135252) (not e!174494))))

(assert (=> b!271222 (= res!135252 (and (bvslt (size!6660 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6660 a!3325))))))

(declare-fun b!271223 () Bool)

(declare-fun res!135241 () Bool)

(assert (=> b!271223 (=> (not res!135241) (not e!174495))))

(declare-fun arrayNoDuplicates!0 (array!13318 (_ BitVec 32) List!4137) Bool)

(assert (=> b!271223 (= res!135241 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4134))))

(declare-fun b!271224 () Bool)

(assert (=> b!271224 (= e!174494 false)))

(declare-fun lt!135796 () Bool)

(assert (=> b!271224 (= lt!135796 (contains!1946 Nil!4134 k0!2581))))

(assert (= (and start!26232 res!135243) b!271215))

(assert (= (and b!271215 res!135247) b!271216))

(assert (= (and b!271216 res!135242) b!271223))

(assert (= (and b!271223 res!135241) b!271213))

(assert (= (and b!271213 res!135251) b!271212))

(assert (= (and b!271212 res!135249) b!271221))

(assert (= (and b!271221 res!135250) b!271218))

(assert (= (and b!271218 res!135246) b!271214))

(assert (= (and b!271214 res!135248) b!271222))

(assert (= (and b!271222 res!135252) b!271217))

(assert (= (and b!271217 res!135240) b!271220))

(assert (= (and b!271220 res!135245) b!271219))

(assert (= (and b!271219 res!135244) b!271224))

(declare-fun m!286599 () Bool)

(assert (=> b!271217 m!286599))

(declare-fun m!286601 () Bool)

(assert (=> b!271212 m!286601))

(declare-fun m!286603 () Bool)

(assert (=> b!271216 m!286603))

(declare-fun m!286605 () Bool)

(assert (=> b!271223 m!286605))

(declare-fun m!286607 () Bool)

(assert (=> b!271220 m!286607))

(declare-fun m!286609 () Bool)

(assert (=> b!271214 m!286609))

(assert (=> b!271214 m!286609))

(declare-fun m!286611 () Bool)

(assert (=> b!271214 m!286611))

(declare-fun m!286613 () Bool)

(assert (=> b!271224 m!286613))

(declare-fun m!286615 () Bool)

(assert (=> b!271221 m!286615))

(declare-fun m!286617 () Bool)

(assert (=> start!26232 m!286617))

(declare-fun m!286619 () Bool)

(assert (=> start!26232 m!286619))

(declare-fun m!286621 () Bool)

(assert (=> b!271219 m!286621))

(declare-fun m!286623 () Bool)

(assert (=> b!271213 m!286623))

(check-sat (not b!271217) (not b!271216) (not start!26232) (not b!271223) (not b!271213) (not b!271219) (not b!271220) (not b!271224) (not b!271214) (not b!271212) (not b!271221))
(check-sat)
