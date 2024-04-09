; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86596 () Bool)

(assert start!86596)

(declare-fun b!1003363 () Bool)

(declare-fun res!673007 () Bool)

(declare-fun e!565161 () Bool)

(assert (=> b!1003363 (=> (not res!673007) (not e!565161))))

(declare-datatypes ((array!63349 0))(
  ( (array!63350 (arr!30496 (Array (_ BitVec 32) (_ BitVec 64))) (size!30999 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63349)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003363 (= res!673007 (and (= (size!30999 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30999 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30999 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003364 () Bool)

(declare-fun e!565163 () Bool)

(declare-fun e!565162 () Bool)

(assert (=> b!1003364 (= e!565163 e!565162)))

(declare-fun res!673009 () Bool)

(assert (=> b!1003364 (=> (not res!673009) (not e!565162))))

(declare-fun lt!443650 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9428 0))(
  ( (MissingZero!9428 (index!40082 (_ BitVec 32))) (Found!9428 (index!40083 (_ BitVec 32))) (Intermediate!9428 (undefined!10240 Bool) (index!40084 (_ BitVec 32)) (x!87521 (_ BitVec 32))) (Undefined!9428) (MissingVacant!9428 (index!40085 (_ BitVec 32))) )
))
(declare-fun lt!443651 () SeekEntryResult!9428)

(declare-fun lt!443653 () array!63349)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63349 (_ BitVec 32)) SeekEntryResult!9428)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003364 (= res!673009 (not (= lt!443651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443650 mask!3464) lt!443650 lt!443653 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1003364 (= lt!443650 (select (store (arr!30496 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003364 (= lt!443653 (array!63350 (store (arr!30496 a!3219) i!1194 k!2224) (size!30999 a!3219)))))

(declare-fun b!1003365 () Bool)

(declare-fun res!673011 () Bool)

(declare-fun e!565166 () Bool)

(assert (=> b!1003365 (=> (not res!673011) (not e!565166))))

(declare-datatypes ((List!21298 0))(
  ( (Nil!21295) (Cons!21294 (h!22471 (_ BitVec 64)) (t!30307 List!21298)) )
))
(declare-fun arrayNoDuplicates!0 (array!63349 (_ BitVec 32) List!21298) Bool)

(assert (=> b!1003365 (= res!673011 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21295))))

(declare-fun res!673005 () Bool)

(assert (=> start!86596 (=> (not res!673005) (not e!565161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86596 (= res!673005 (validMask!0 mask!3464))))

(assert (=> start!86596 e!565161))

(declare-fun array_inv!23486 (array!63349) Bool)

(assert (=> start!86596 (array_inv!23486 a!3219)))

(assert (=> start!86596 true))

(declare-fun b!1003366 () Bool)

(declare-fun e!565160 () Bool)

(assert (=> b!1003366 (= e!565166 e!565160)))

(declare-fun res!673010 () Bool)

(assert (=> b!1003366 (=> (not res!673010) (not e!565160))))

(declare-fun lt!443655 () SeekEntryResult!9428)

(assert (=> b!1003366 (= res!673010 (= lt!443651 lt!443655))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003366 (= lt!443655 (Intermediate!9428 false resIndex!38 resX!38))))

(assert (=> b!1003366 (= lt!443651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30496 a!3219) j!170) mask!3464) (select (arr!30496 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003367 () Bool)

(declare-fun e!565165 () Bool)

(assert (=> b!1003367 (= e!565162 e!565165)))

(declare-fun res!672999 () Bool)

(assert (=> b!1003367 (=> (not res!672999) (not e!565165))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443649 () (_ BitVec 32))

(assert (=> b!1003367 (= res!672999 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443649 #b00000000000000000000000000000000) (bvslt lt!443649 (size!30999 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003367 (= lt!443649 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003368 () Bool)

(declare-fun res!673004 () Bool)

(assert (=> b!1003368 (=> (not res!673004) (not e!565161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003368 (= res!673004 (validKeyInArray!0 k!2224))))

(declare-fun b!1003369 () Bool)

(declare-fun res!673002 () Bool)

(assert (=> b!1003369 (=> (not res!673002) (not e!565165))))

(assert (=> b!1003369 (= res!673002 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443649 (select (arr!30496 a!3219) j!170) a!3219 mask!3464) lt!443655))))

(declare-fun b!1003370 () Bool)

(declare-fun res!673012 () Bool)

(assert (=> b!1003370 (=> (not res!673012) (not e!565161))))

(assert (=> b!1003370 (= res!673012 (validKeyInArray!0 (select (arr!30496 a!3219) j!170)))))

(declare-fun b!1003371 () Bool)

(assert (=> b!1003371 (= e!565165 false)))

(declare-fun lt!443654 () SeekEntryResult!9428)

(assert (=> b!1003371 (= lt!443654 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443649 lt!443650 lt!443653 mask!3464))))

(declare-fun b!1003372 () Bool)

(declare-fun res!672998 () Bool)

(assert (=> b!1003372 (=> (not res!672998) (not e!565162))))

(declare-fun lt!443652 () SeekEntryResult!9428)

(assert (=> b!1003372 (= res!672998 (not (= lt!443652 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443650 lt!443653 mask!3464))))))

(declare-fun b!1003373 () Bool)

(declare-fun res!673006 () Bool)

(assert (=> b!1003373 (=> (not res!673006) (not e!565166))))

(assert (=> b!1003373 (= res!673006 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30999 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30999 a!3219))))))

(declare-fun b!1003374 () Bool)

(declare-fun res!673000 () Bool)

(assert (=> b!1003374 (=> (not res!673000) (not e!565166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63349 (_ BitVec 32)) Bool)

(assert (=> b!1003374 (= res!673000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003375 () Bool)

(declare-fun res!673003 () Bool)

(assert (=> b!1003375 (=> (not res!673003) (not e!565161))))

(declare-fun arrayContainsKey!0 (array!63349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003375 (= res!673003 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003376 () Bool)

(declare-fun res!673001 () Bool)

(assert (=> b!1003376 (=> (not res!673001) (not e!565162))))

(assert (=> b!1003376 (= res!673001 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003377 () Bool)

(assert (=> b!1003377 (= e!565161 e!565166)))

(declare-fun res!673008 () Bool)

(assert (=> b!1003377 (=> (not res!673008) (not e!565166))))

(declare-fun lt!443648 () SeekEntryResult!9428)

(assert (=> b!1003377 (= res!673008 (or (= lt!443648 (MissingVacant!9428 i!1194)) (= lt!443648 (MissingZero!9428 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63349 (_ BitVec 32)) SeekEntryResult!9428)

(assert (=> b!1003377 (= lt!443648 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003378 () Bool)

(assert (=> b!1003378 (= e!565160 e!565163)))

(declare-fun res!672997 () Bool)

(assert (=> b!1003378 (=> (not res!672997) (not e!565163))))

(assert (=> b!1003378 (= res!672997 (= lt!443652 lt!443655))))

(assert (=> b!1003378 (= lt!443652 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30496 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86596 res!673005) b!1003363))

(assert (= (and b!1003363 res!673007) b!1003370))

(assert (= (and b!1003370 res!673012) b!1003368))

(assert (= (and b!1003368 res!673004) b!1003375))

(assert (= (and b!1003375 res!673003) b!1003377))

(assert (= (and b!1003377 res!673008) b!1003374))

(assert (= (and b!1003374 res!673000) b!1003365))

(assert (= (and b!1003365 res!673011) b!1003373))

(assert (= (and b!1003373 res!673006) b!1003366))

(assert (= (and b!1003366 res!673010) b!1003378))

(assert (= (and b!1003378 res!672997) b!1003364))

(assert (= (and b!1003364 res!673009) b!1003372))

(assert (= (and b!1003372 res!672998) b!1003376))

(assert (= (and b!1003376 res!673001) b!1003367))

(assert (= (and b!1003367 res!672999) b!1003369))

(assert (= (and b!1003369 res!673002) b!1003371))

(declare-fun m!929181 () Bool)

(assert (=> b!1003369 m!929181))

(assert (=> b!1003369 m!929181))

(declare-fun m!929183 () Bool)

(assert (=> b!1003369 m!929183))

(declare-fun m!929185 () Bool)

(assert (=> b!1003367 m!929185))

(declare-fun m!929187 () Bool)

(assert (=> b!1003375 m!929187))

(assert (=> b!1003366 m!929181))

(assert (=> b!1003366 m!929181))

(declare-fun m!929189 () Bool)

(assert (=> b!1003366 m!929189))

(assert (=> b!1003366 m!929189))

(assert (=> b!1003366 m!929181))

(declare-fun m!929191 () Bool)

(assert (=> b!1003366 m!929191))

(declare-fun m!929193 () Bool)

(assert (=> start!86596 m!929193))

(declare-fun m!929195 () Bool)

(assert (=> start!86596 m!929195))

(declare-fun m!929197 () Bool)

(assert (=> b!1003374 m!929197))

(declare-fun m!929199 () Bool)

(assert (=> b!1003368 m!929199))

(declare-fun m!929201 () Bool)

(assert (=> b!1003372 m!929201))

(declare-fun m!929203 () Bool)

(assert (=> b!1003365 m!929203))

(assert (=> b!1003378 m!929181))

(assert (=> b!1003378 m!929181))

(declare-fun m!929205 () Bool)

(assert (=> b!1003378 m!929205))

(declare-fun m!929207 () Bool)

(assert (=> b!1003377 m!929207))

(declare-fun m!929209 () Bool)

(assert (=> b!1003364 m!929209))

(assert (=> b!1003364 m!929209))

(declare-fun m!929211 () Bool)

(assert (=> b!1003364 m!929211))

(declare-fun m!929213 () Bool)

(assert (=> b!1003364 m!929213))

(declare-fun m!929215 () Bool)

(assert (=> b!1003364 m!929215))

(declare-fun m!929217 () Bool)

(assert (=> b!1003371 m!929217))

(assert (=> b!1003370 m!929181))

(assert (=> b!1003370 m!929181))

(declare-fun m!929219 () Bool)

(assert (=> b!1003370 m!929219))

(push 1)

