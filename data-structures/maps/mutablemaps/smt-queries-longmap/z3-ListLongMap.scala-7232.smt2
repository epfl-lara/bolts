; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92492 () Bool)

(assert start!92492)

(declare-fun b!1051188 () Bool)

(declare-fun e!596709 () Bool)

(declare-fun e!596707 () Bool)

(assert (=> b!1051188 (= e!596709 e!596707)))

(declare-fun res!700431 () Bool)

(assert (=> b!1051188 (=> (not res!700431) (not e!596707))))

(declare-datatypes ((array!66241 0))(
  ( (array!66242 (arr!31856 (Array (_ BitVec 32) (_ BitVec 64))) (size!32393 (_ BitVec 32))) )
))
(declare-fun lt!464185 () array!66241)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051188 (= res!700431 (arrayContainsKey!0 lt!464185 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66241)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051188 (= lt!464185 (array!66242 (store (arr!31856 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32393 a!3488)))))

(declare-fun b!1051189 () Bool)

(declare-fun e!596706 () Bool)

(assert (=> b!1051189 (= e!596706 true)))

(declare-fun lt!464184 () (_ BitVec 32))

(declare-datatypes ((List!22299 0))(
  ( (Nil!22296) (Cons!22295 (h!23504 (_ BitVec 64)) (t!31613 List!22299)) )
))
(declare-fun arrayNoDuplicates!0 (array!66241 (_ BitVec 32) List!22299) Bool)

(assert (=> b!1051189 (arrayNoDuplicates!0 a!3488 lt!464184 Nil!22296)))

(declare-datatypes ((Unit!34393 0))(
  ( (Unit!34394) )
))
(declare-fun lt!464183 () Unit!34393)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66241 (_ BitVec 32) (_ BitVec 32)) Unit!34393)

(assert (=> b!1051189 (= lt!464183 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464184))))

(declare-fun b!1051190 () Bool)

(declare-fun e!596705 () Bool)

(declare-fun e!596711 () Bool)

(assert (=> b!1051190 (= e!596705 e!596711)))

(declare-fun res!700426 () Bool)

(assert (=> b!1051190 (=> res!700426 e!596711)))

(assert (=> b!1051190 (= res!700426 (or (bvsgt lt!464184 i!1381) (bvsle i!1381 lt!464184)))))

(declare-fun b!1051191 () Bool)

(declare-fun e!596710 () Bool)

(assert (=> b!1051191 (= e!596710 (not e!596706))))

(declare-fun res!700429 () Bool)

(assert (=> b!1051191 (=> res!700429 e!596706)))

(assert (=> b!1051191 (= res!700429 (or (bvsgt lt!464184 i!1381) (bvsle i!1381 lt!464184)))))

(assert (=> b!1051191 e!596705))

(declare-fun res!700428 () Bool)

(assert (=> b!1051191 (=> (not res!700428) (not e!596705))))

(assert (=> b!1051191 (= res!700428 (= (select (store (arr!31856 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464184) k0!2747))))

(declare-fun res!700424 () Bool)

(assert (=> start!92492 (=> (not res!700424) (not e!596709))))

(assert (=> start!92492 (= res!700424 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32393 a!3488)) (bvslt (size!32393 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92492 e!596709))

(assert (=> start!92492 true))

(declare-fun array_inv!24478 (array!66241) Bool)

(assert (=> start!92492 (array_inv!24478 a!3488)))

(declare-fun b!1051192 () Bool)

(assert (=> b!1051192 (= e!596707 e!596710)))

(declare-fun res!700425 () Bool)

(assert (=> b!1051192 (=> (not res!700425) (not e!596710))))

(assert (=> b!1051192 (= res!700425 (not (= lt!464184 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66241 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051192 (= lt!464184 (arrayScanForKey!0 lt!464185 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051193 () Bool)

(declare-fun res!700423 () Bool)

(assert (=> b!1051193 (=> (not res!700423) (not e!596709))))

(assert (=> b!1051193 (= res!700423 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22296))))

(declare-fun b!1051194 () Bool)

(declare-fun res!700430 () Bool)

(assert (=> b!1051194 (=> (not res!700430) (not e!596709))))

(assert (=> b!1051194 (= res!700430 (= (select (arr!31856 a!3488) i!1381) k0!2747))))

(declare-fun b!1051195 () Bool)

(assert (=> b!1051195 (= e!596711 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051196 () Bool)

(declare-fun res!700427 () Bool)

(assert (=> b!1051196 (=> (not res!700427) (not e!596709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051196 (= res!700427 (validKeyInArray!0 k0!2747))))

(assert (= (and start!92492 res!700424) b!1051193))

(assert (= (and b!1051193 res!700423) b!1051196))

(assert (= (and b!1051196 res!700427) b!1051194))

(assert (= (and b!1051194 res!700430) b!1051188))

(assert (= (and b!1051188 res!700431) b!1051192))

(assert (= (and b!1051192 res!700425) b!1051191))

(assert (= (and b!1051191 res!700428) b!1051190))

(assert (= (and b!1051190 (not res!700426)) b!1051195))

(assert (= (and b!1051191 (not res!700429)) b!1051189))

(declare-fun m!971869 () Bool)

(assert (=> b!1051194 m!971869))

(declare-fun m!971871 () Bool)

(assert (=> b!1051188 m!971871))

(declare-fun m!971873 () Bool)

(assert (=> b!1051188 m!971873))

(declare-fun m!971875 () Bool)

(assert (=> b!1051193 m!971875))

(declare-fun m!971877 () Bool)

(assert (=> start!92492 m!971877))

(declare-fun m!971879 () Bool)

(assert (=> b!1051189 m!971879))

(declare-fun m!971881 () Bool)

(assert (=> b!1051189 m!971881))

(assert (=> b!1051191 m!971873))

(declare-fun m!971883 () Bool)

(assert (=> b!1051191 m!971883))

(declare-fun m!971885 () Bool)

(assert (=> b!1051195 m!971885))

(declare-fun m!971887 () Bool)

(assert (=> b!1051196 m!971887))

(declare-fun m!971889 () Bool)

(assert (=> b!1051192 m!971889))

(check-sat (not b!1051189) (not b!1051193) (not b!1051188) (not b!1051195) (not b!1051196) (not start!92492) (not b!1051192))
(check-sat)
