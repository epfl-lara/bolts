; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93266 () Bool)

(assert start!93266)

(declare-fun b!1056969 () Bool)

(declare-fun e!601060 () Bool)

(assert (=> b!1056969 (= e!601060 true)))

(declare-datatypes ((array!66652 0))(
  ( (array!66653 (arr!32045 (Array (_ BitVec 32) (_ BitVec 64))) (size!32582 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66652)

(declare-fun lt!466249 () (_ BitVec 32))

(declare-datatypes ((List!22488 0))(
  ( (Nil!22485) (Cons!22484 (h!23693 (_ BitVec 64)) (t!31802 List!22488)) )
))
(declare-fun arrayNoDuplicates!0 (array!66652 (_ BitVec 32) List!22488) Bool)

(assert (=> b!1056969 (arrayNoDuplicates!0 a!3488 lt!466249 Nil!22485)))

(declare-datatypes ((Unit!34621 0))(
  ( (Unit!34622) )
))
(declare-fun lt!466247 () Unit!34621)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66652 (_ BitVec 32) (_ BitVec 32)) Unit!34621)

(assert (=> b!1056969 (= lt!466247 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466249))))

(declare-fun b!1056970 () Bool)

(declare-fun e!601061 () Bool)

(declare-fun e!601063 () Bool)

(assert (=> b!1056970 (= e!601061 e!601063)))

(declare-fun res!705780 () Bool)

(assert (=> b!1056970 (=> (not res!705780) (not e!601063))))

(declare-fun lt!466248 () array!66652)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056970 (= res!705780 (arrayContainsKey!0 lt!466248 k0!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056970 (= lt!466248 (array!66653 (store (arr!32045 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32582 a!3488)))))

(declare-fun b!1056971 () Bool)

(declare-fun e!601059 () Bool)

(assert (=> b!1056971 (= e!601059 (not e!601060))))

(declare-fun res!705778 () Bool)

(assert (=> b!1056971 (=> res!705778 e!601060)))

(assert (=> b!1056971 (= res!705778 (or (bvsgt lt!466249 i!1381) (bvsle i!1381 lt!466249)))))

(declare-fun e!601064 () Bool)

(assert (=> b!1056971 e!601064))

(declare-fun res!705781 () Bool)

(assert (=> b!1056971 (=> (not res!705781) (not e!601064))))

(assert (=> b!1056971 (= res!705781 (= (select (store (arr!32045 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466249) k0!2747))))

(declare-fun e!601062 () Bool)

(declare-fun b!1056972 () Bool)

(assert (=> b!1056972 (= e!601062 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056973 () Bool)

(assert (=> b!1056973 (= e!601064 e!601062)))

(declare-fun res!705783 () Bool)

(assert (=> b!1056973 (=> res!705783 e!601062)))

(assert (=> b!1056973 (= res!705783 (or (bvsgt lt!466249 i!1381) (bvsle i!1381 lt!466249)))))

(declare-fun res!705779 () Bool)

(assert (=> start!93266 (=> (not res!705779) (not e!601061))))

(assert (=> start!93266 (= res!705779 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32582 a!3488)) (bvslt (size!32582 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93266 e!601061))

(assert (=> start!93266 true))

(declare-fun array_inv!24667 (array!66652) Bool)

(assert (=> start!93266 (array_inv!24667 a!3488)))

(declare-fun b!1056974 () Bool)

(declare-fun res!705784 () Bool)

(assert (=> b!1056974 (=> (not res!705784) (not e!601061))))

(assert (=> b!1056974 (= res!705784 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22485))))

(declare-fun b!1056975 () Bool)

(declare-fun res!705786 () Bool)

(assert (=> b!1056975 (=> (not res!705786) (not e!601061))))

(assert (=> b!1056975 (= res!705786 (= (select (arr!32045 a!3488) i!1381) k0!2747))))

(declare-fun b!1056976 () Bool)

(declare-fun res!705782 () Bool)

(assert (=> b!1056976 (=> (not res!705782) (not e!601061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056976 (= res!705782 (validKeyInArray!0 k0!2747))))

(declare-fun b!1056977 () Bool)

(assert (=> b!1056977 (= e!601063 e!601059)))

(declare-fun res!705785 () Bool)

(assert (=> b!1056977 (=> (not res!705785) (not e!601059))))

(assert (=> b!1056977 (= res!705785 (not (= lt!466249 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66652 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056977 (= lt!466249 (arrayScanForKey!0 lt!466248 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93266 res!705779) b!1056974))

(assert (= (and b!1056974 res!705784) b!1056976))

(assert (= (and b!1056976 res!705782) b!1056975))

(assert (= (and b!1056975 res!705786) b!1056970))

(assert (= (and b!1056970 res!705780) b!1056977))

(assert (= (and b!1056977 res!705785) b!1056971))

(assert (= (and b!1056971 res!705781) b!1056973))

(assert (= (and b!1056973 (not res!705783)) b!1056972))

(assert (= (and b!1056971 (not res!705778)) b!1056969))

(declare-fun m!976843 () Bool)

(assert (=> b!1056969 m!976843))

(declare-fun m!976845 () Bool)

(assert (=> b!1056969 m!976845))

(declare-fun m!976847 () Bool)

(assert (=> b!1056977 m!976847))

(declare-fun m!976849 () Bool)

(assert (=> b!1056974 m!976849))

(declare-fun m!976851 () Bool)

(assert (=> b!1056971 m!976851))

(declare-fun m!976853 () Bool)

(assert (=> b!1056971 m!976853))

(declare-fun m!976855 () Bool)

(assert (=> b!1056970 m!976855))

(assert (=> b!1056970 m!976851))

(declare-fun m!976857 () Bool)

(assert (=> b!1056975 m!976857))

(declare-fun m!976859 () Bool)

(assert (=> b!1056972 m!976859))

(declare-fun m!976861 () Bool)

(assert (=> start!93266 m!976861))

(declare-fun m!976863 () Bool)

(assert (=> b!1056976 m!976863))

(check-sat (not b!1056976) (not b!1056977) (not b!1056972) (not b!1056974) (not start!93266) (not b!1056970) (not b!1056969))
(check-sat)
