; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92358 () Bool)

(assert start!92358)

(declare-fun b!1049268 () Bool)

(declare-fun e!595347 () Bool)

(declare-fun e!595348 () Bool)

(assert (=> b!1049268 (= e!595347 e!595348)))

(declare-fun res!698509 () Bool)

(assert (=> b!1049268 (=> res!698509 e!595348)))

(declare-fun lt!463444 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049268 (= res!698509 (bvsle lt!463444 i!1381))))

(declare-fun b!1049269 () Bool)

(declare-fun e!595349 () Bool)

(declare-fun e!595346 () Bool)

(assert (=> b!1049269 (= e!595349 e!595346)))

(declare-fun res!698513 () Bool)

(assert (=> b!1049269 (=> res!698513 e!595346)))

(declare-datatypes ((array!66107 0))(
  ( (array!66108 (arr!31789 (Array (_ BitVec 32) (_ BitVec 64))) (size!32326 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66107)

(assert (=> b!1049269 (= res!698513 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32326 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049269 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34307 0))(
  ( (Unit!34308) )
))
(declare-fun lt!463441 () Unit!34307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66107 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34307)

(assert (=> b!1049269 (= lt!463441 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463444 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22232 0))(
  ( (Nil!22229) (Cons!22228 (h!23437 (_ BitVec 64)) (t!31546 List!22232)) )
))
(declare-fun arrayNoDuplicates!0 (array!66107 (_ BitVec 32) List!22232) Bool)

(assert (=> b!1049269 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22229)))

(declare-fun lt!463442 () Unit!34307)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66107 (_ BitVec 32) (_ BitVec 32)) Unit!34307)

(assert (=> b!1049269 (= lt!463442 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049270 () Bool)

(declare-fun e!595345 () Bool)

(declare-fun e!595350 () Bool)

(assert (=> b!1049270 (= e!595345 e!595350)))

(declare-fun res!698506 () Bool)

(assert (=> b!1049270 (=> (not res!698506) (not e!595350))))

(assert (=> b!1049270 (= res!698506 (not (= lt!463444 i!1381)))))

(declare-fun lt!463443 () array!66107)

(declare-fun arrayScanForKey!0 (array!66107 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049270 (= lt!463444 (arrayScanForKey!0 lt!463443 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049271 () Bool)

(declare-fun res!698504 () Bool)

(declare-fun e!595352 () Bool)

(assert (=> b!1049271 (=> (not res!698504) (not e!595352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049271 (= res!698504 (validKeyInArray!0 k!2747))))

(declare-fun b!1049272 () Bool)

(declare-fun res!698510 () Bool)

(assert (=> b!1049272 (=> res!698510 e!595346)))

(declare-fun noDuplicate!1509 (List!22232) Bool)

(assert (=> b!1049272 (= res!698510 (not (noDuplicate!1509 Nil!22229)))))

(declare-fun b!1049273 () Bool)

(assert (=> b!1049273 (= e!595350 (not e!595349))))

(declare-fun res!698508 () Bool)

(assert (=> b!1049273 (=> res!698508 e!595349)))

(assert (=> b!1049273 (= res!698508 (bvsle lt!463444 i!1381))))

(assert (=> b!1049273 e!595347))

(declare-fun res!698505 () Bool)

(assert (=> b!1049273 (=> (not res!698505) (not e!595347))))

(assert (=> b!1049273 (= res!698505 (= (select (store (arr!31789 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463444) k!2747))))

(declare-fun b!1049274 () Bool)

(declare-fun res!698512 () Bool)

(assert (=> b!1049274 (=> res!698512 e!595346)))

(declare-fun contains!6124 (List!22232 (_ BitVec 64)) Bool)

(assert (=> b!1049274 (= res!698512 (contains!6124 Nil!22229 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049275 () Bool)

(declare-fun res!698511 () Bool)

(assert (=> b!1049275 (=> (not res!698511) (not e!595352))))

(assert (=> b!1049275 (= res!698511 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22229))))

(declare-fun b!1049276 () Bool)

(assert (=> b!1049276 (= e!595348 (arrayContainsKey!0 a!3488 k!2747 lt!463444))))

(declare-fun b!1049278 () Bool)

(assert (=> b!1049278 (= e!595352 e!595345)))

(declare-fun res!698507 () Bool)

(assert (=> b!1049278 (=> (not res!698507) (not e!595345))))

(assert (=> b!1049278 (= res!698507 (arrayContainsKey!0 lt!463443 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049278 (= lt!463443 (array!66108 (store (arr!31789 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32326 a!3488)))))

(declare-fun b!1049279 () Bool)

(declare-fun res!698503 () Bool)

(assert (=> b!1049279 (=> (not res!698503) (not e!595352))))

(assert (=> b!1049279 (= res!698503 (= (select (arr!31789 a!3488) i!1381) k!2747))))

(declare-fun res!698514 () Bool)

(assert (=> start!92358 (=> (not res!698514) (not e!595352))))

(assert (=> start!92358 (= res!698514 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32326 a!3488)) (bvslt (size!32326 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92358 e!595352))

(assert (=> start!92358 true))

(declare-fun array_inv!24411 (array!66107) Bool)

(assert (=> start!92358 (array_inv!24411 a!3488)))

(declare-fun b!1049277 () Bool)

(assert (=> b!1049277 (= e!595346 true)))

(declare-fun lt!463440 () Bool)

(assert (=> b!1049277 (= lt!463440 (contains!6124 Nil!22229 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92358 res!698514) b!1049275))

(assert (= (and b!1049275 res!698511) b!1049271))

(assert (= (and b!1049271 res!698504) b!1049279))

(assert (= (and b!1049279 res!698503) b!1049278))

(assert (= (and b!1049278 res!698507) b!1049270))

(assert (= (and b!1049270 res!698506) b!1049273))

(assert (= (and b!1049273 res!698505) b!1049268))

(assert (= (and b!1049268 (not res!698509)) b!1049276))

(assert (= (and b!1049273 (not res!698508)) b!1049269))

(assert (= (and b!1049269 (not res!698513)) b!1049272))

(assert (= (and b!1049272 (not res!698510)) b!1049274))

(assert (= (and b!1049274 (not res!698512)) b!1049277))

(declare-fun m!970185 () Bool)

(assert (=> b!1049271 m!970185))

(declare-fun m!970187 () Bool)

(assert (=> start!92358 m!970187))

(declare-fun m!970189 () Bool)

(assert (=> b!1049278 m!970189))

(declare-fun m!970191 () Bool)

(assert (=> b!1049278 m!970191))

(assert (=> b!1049273 m!970191))

(declare-fun m!970193 () Bool)

(assert (=> b!1049273 m!970193))

(declare-fun m!970195 () Bool)

(assert (=> b!1049279 m!970195))

(declare-fun m!970197 () Bool)

(assert (=> b!1049275 m!970197))

(declare-fun m!970199 () Bool)

(assert (=> b!1049276 m!970199))

(declare-fun m!970201 () Bool)

(assert (=> b!1049270 m!970201))

(declare-fun m!970203 () Bool)

(assert (=> b!1049272 m!970203))

(declare-fun m!970205 () Bool)

(assert (=> b!1049269 m!970205))

(declare-fun m!970207 () Bool)

(assert (=> b!1049269 m!970207))

(declare-fun m!970209 () Bool)

(assert (=> b!1049269 m!970209))

(declare-fun m!970211 () Bool)

(assert (=> b!1049269 m!970211))

(declare-fun m!970213 () Bool)

(assert (=> b!1049274 m!970213))

(declare-fun m!970215 () Bool)

(assert (=> b!1049277 m!970215))

(push 1)

