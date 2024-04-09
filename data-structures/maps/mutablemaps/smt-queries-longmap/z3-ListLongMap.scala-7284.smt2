; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93104 () Bool)

(assert start!93104)

(declare-fun b!1055865 () Bool)

(declare-fun res!704796 () Bool)

(declare-fun e!600215 () Bool)

(assert (=> b!1055865 (=> (not res!704796) (not e!600215))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055865 (= res!704796 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055866 () Bool)

(declare-fun res!704794 () Bool)

(assert (=> b!1055866 (=> (not res!704794) (not e!600215))))

(declare-datatypes ((array!66577 0))(
  ( (array!66578 (arr!32012 (Array (_ BitVec 32) (_ BitVec 64))) (size!32549 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66577)

(declare-datatypes ((List!22455 0))(
  ( (Nil!22452) (Cons!22451 (h!23660 (_ BitVec 64)) (t!31769 List!22455)) )
))
(declare-fun arrayNoDuplicates!0 (array!66577 (_ BitVec 32) List!22455) Bool)

(assert (=> b!1055866 (= res!704794 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22452))))

(declare-fun b!1055867 () Bool)

(declare-fun e!600214 () Bool)

(declare-fun e!600212 () Bool)

(assert (=> b!1055867 (= e!600214 (not e!600212))))

(declare-fun res!704788 () Bool)

(assert (=> b!1055867 (=> res!704788 e!600212)))

(declare-fun lt!465961 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055867 (= res!704788 (bvsle lt!465961 i!1381))))

(declare-fun e!600210 () Bool)

(assert (=> b!1055867 e!600210))

(declare-fun res!704790 () Bool)

(assert (=> b!1055867 (=> (not res!704790) (not e!600210))))

(assert (=> b!1055867 (= res!704790 (= (select (store (arr!32012 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465961) k0!2747))))

(declare-fun b!1055868 () Bool)

(declare-fun e!600209 () Bool)

(assert (=> b!1055868 (= e!600209 e!600214)))

(declare-fun res!704789 () Bool)

(assert (=> b!1055868 (=> (not res!704789) (not e!600214))))

(assert (=> b!1055868 (= res!704789 (not (= lt!465961 i!1381)))))

(declare-fun lt!465962 () array!66577)

(declare-fun arrayScanForKey!0 (array!66577 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055868 (= lt!465961 (arrayScanForKey!0 lt!465962 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055869 () Bool)

(assert (=> b!1055869 (= e!600212 true)))

(assert (=> b!1055869 false))

(declare-datatypes ((Unit!34591 0))(
  ( (Unit!34592) )
))
(declare-fun lt!465960 () Unit!34591)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66577 (_ BitVec 64) (_ BitVec 32) List!22455) Unit!34591)

(assert (=> b!1055869 (= lt!465960 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 i!1381 Nil!22452))))

(declare-fun arrayContainsKey!0 (array!66577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055869 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465963 () Unit!34591)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66577 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34591)

(assert (=> b!1055869 (= lt!465963 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465961 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055869 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22452)))

(declare-fun lt!465964 () Unit!34591)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66577 (_ BitVec 32) (_ BitVec 32)) Unit!34591)

(assert (=> b!1055869 (= lt!465964 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun e!600211 () Bool)

(declare-fun b!1055870 () Bool)

(assert (=> b!1055870 (= e!600211 (arrayContainsKey!0 a!3488 k0!2747 lt!465961))))

(declare-fun b!1055871 () Bool)

(assert (=> b!1055871 (= e!600210 e!600211)))

(declare-fun res!704793 () Bool)

(assert (=> b!1055871 (=> res!704793 e!600211)))

(assert (=> b!1055871 (= res!704793 (bvsle lt!465961 i!1381))))

(declare-fun b!1055872 () Bool)

(declare-fun res!704795 () Bool)

(assert (=> b!1055872 (=> (not res!704795) (not e!600215))))

(assert (=> b!1055872 (= res!704795 (= (select (arr!32012 a!3488) i!1381) k0!2747))))

(declare-fun b!1055873 () Bool)

(assert (=> b!1055873 (= e!600215 e!600209)))

(declare-fun res!704792 () Bool)

(assert (=> b!1055873 (=> (not res!704792) (not e!600209))))

(assert (=> b!1055873 (= res!704792 (arrayContainsKey!0 lt!465962 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055873 (= lt!465962 (array!66578 (store (arr!32012 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32549 a!3488)))))

(declare-fun res!704791 () Bool)

(assert (=> start!93104 (=> (not res!704791) (not e!600215))))

(assert (=> start!93104 (= res!704791 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32549 a!3488)) (bvslt (size!32549 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93104 e!600215))

(assert (=> start!93104 true))

(declare-fun array_inv!24634 (array!66577) Bool)

(assert (=> start!93104 (array_inv!24634 a!3488)))

(assert (= (and start!93104 res!704791) b!1055866))

(assert (= (and b!1055866 res!704794) b!1055865))

(assert (= (and b!1055865 res!704796) b!1055872))

(assert (= (and b!1055872 res!704795) b!1055873))

(assert (= (and b!1055873 res!704792) b!1055868))

(assert (= (and b!1055868 res!704789) b!1055867))

(assert (= (and b!1055867 res!704790) b!1055871))

(assert (= (and b!1055871 (not res!704793)) b!1055870))

(assert (= (and b!1055867 (not res!704788)) b!1055869))

(declare-fun m!975985 () Bool)

(assert (=> start!93104 m!975985))

(declare-fun m!975987 () Bool)

(assert (=> b!1055873 m!975987))

(declare-fun m!975989 () Bool)

(assert (=> b!1055873 m!975989))

(declare-fun m!975991 () Bool)

(assert (=> b!1055865 m!975991))

(assert (=> b!1055867 m!975989))

(declare-fun m!975993 () Bool)

(assert (=> b!1055867 m!975993))

(declare-fun m!975995 () Bool)

(assert (=> b!1055869 m!975995))

(declare-fun m!975997 () Bool)

(assert (=> b!1055869 m!975997))

(declare-fun m!975999 () Bool)

(assert (=> b!1055869 m!975999))

(declare-fun m!976001 () Bool)

(assert (=> b!1055869 m!976001))

(declare-fun m!976003 () Bool)

(assert (=> b!1055869 m!976003))

(declare-fun m!976005 () Bool)

(assert (=> b!1055872 m!976005))

(declare-fun m!976007 () Bool)

(assert (=> b!1055866 m!976007))

(declare-fun m!976009 () Bool)

(assert (=> b!1055868 m!976009))

(declare-fun m!976011 () Bool)

(assert (=> b!1055870 m!976011))

(check-sat (not b!1055865) (not b!1055869) (not start!93104) (not b!1055866) (not b!1055873) (not b!1055870) (not b!1055868))
(check-sat)
