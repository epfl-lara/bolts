; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92330 () Bool)

(assert start!92330)

(declare-fun b!1048884 () Bool)

(declare-fun res!698119 () Bool)

(declare-fun e!595051 () Bool)

(assert (=> b!1048884 (=> (not res!698119) (not e!595051))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66079 0))(
  ( (array!66080 (arr!31775 (Array (_ BitVec 32) (_ BitVec 64))) (size!32312 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66079)

(assert (=> b!1048884 (= res!698119 (= (select (arr!31775 a!3488) i!1381) k0!2747))))

(declare-fun b!1048885 () Bool)

(declare-fun e!595055 () Bool)

(assert (=> b!1048885 (= e!595051 e!595055)))

(declare-fun res!698125 () Bool)

(assert (=> b!1048885 (=> (not res!698125) (not e!595055))))

(declare-fun lt!463311 () array!66079)

(declare-fun arrayContainsKey!0 (array!66079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048885 (= res!698125 (arrayContainsKey!0 lt!463311 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048885 (= lt!463311 (array!66080 (store (arr!31775 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32312 a!3488)))))

(declare-fun b!1048886 () Bool)

(declare-fun e!595050 () Bool)

(declare-fun e!595052 () Bool)

(assert (=> b!1048886 (= e!595050 (not e!595052))))

(declare-fun res!698123 () Bool)

(assert (=> b!1048886 (=> res!698123 e!595052)))

(declare-fun lt!463312 () (_ BitVec 32))

(assert (=> b!1048886 (= res!698123 (bvsle lt!463312 i!1381))))

(declare-fun e!595053 () Bool)

(assert (=> b!1048886 e!595053))

(declare-fun res!698120 () Bool)

(assert (=> b!1048886 (=> (not res!698120) (not e!595053))))

(assert (=> b!1048886 (= res!698120 (= (select (store (arr!31775 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463312) k0!2747))))

(declare-fun b!1048887 () Bool)

(declare-fun res!698126 () Bool)

(assert (=> b!1048887 (=> (not res!698126) (not e!595051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048887 (= res!698126 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048888 () Bool)

(assert (=> b!1048888 (= e!595052 true)))

(declare-datatypes ((List!22218 0))(
  ( (Nil!22215) (Cons!22214 (h!23423 (_ BitVec 64)) (t!31532 List!22218)) )
))
(declare-fun arrayNoDuplicates!0 (array!66079 (_ BitVec 32) List!22218) Bool)

(assert (=> b!1048888 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22215)))

(declare-datatypes ((Unit!34279 0))(
  ( (Unit!34280) )
))
(declare-fun lt!463310 () Unit!34279)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66079 (_ BitVec 32) (_ BitVec 32)) Unit!34279)

(assert (=> b!1048888 (= lt!463310 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048889 () Bool)

(declare-fun e!595054 () Bool)

(assert (=> b!1048889 (= e!595054 (arrayContainsKey!0 a!3488 k0!2747 lt!463312))))

(declare-fun b!1048890 () Bool)

(assert (=> b!1048890 (= e!595053 e!595054)))

(declare-fun res!698127 () Bool)

(assert (=> b!1048890 (=> res!698127 e!595054)))

(assert (=> b!1048890 (= res!698127 (bvsle lt!463312 i!1381))))

(declare-fun res!698121 () Bool)

(assert (=> start!92330 (=> (not res!698121) (not e!595051))))

(assert (=> start!92330 (= res!698121 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32312 a!3488)) (bvslt (size!32312 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92330 e!595051))

(assert (=> start!92330 true))

(declare-fun array_inv!24397 (array!66079) Bool)

(assert (=> start!92330 (array_inv!24397 a!3488)))

(declare-fun b!1048891 () Bool)

(declare-fun res!698124 () Bool)

(assert (=> b!1048891 (=> (not res!698124) (not e!595051))))

(assert (=> b!1048891 (= res!698124 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22215))))

(declare-fun b!1048892 () Bool)

(assert (=> b!1048892 (= e!595055 e!595050)))

(declare-fun res!698122 () Bool)

(assert (=> b!1048892 (=> (not res!698122) (not e!595050))))

(assert (=> b!1048892 (= res!698122 (not (= lt!463312 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66079 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048892 (= lt!463312 (arrayScanForKey!0 lt!463311 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92330 res!698121) b!1048891))

(assert (= (and b!1048891 res!698124) b!1048887))

(assert (= (and b!1048887 res!698126) b!1048884))

(assert (= (and b!1048884 res!698119) b!1048885))

(assert (= (and b!1048885 res!698125) b!1048892))

(assert (= (and b!1048892 res!698122) b!1048886))

(assert (= (and b!1048886 res!698120) b!1048890))

(assert (= (and b!1048890 (not res!698127)) b!1048889))

(assert (= (and b!1048886 (not res!698123)) b!1048888))

(declare-fun m!969877 () Bool)

(assert (=> start!92330 m!969877))

(declare-fun m!969879 () Bool)

(assert (=> b!1048886 m!969879))

(declare-fun m!969881 () Bool)

(assert (=> b!1048886 m!969881))

(declare-fun m!969883 () Bool)

(assert (=> b!1048888 m!969883))

(declare-fun m!969885 () Bool)

(assert (=> b!1048888 m!969885))

(declare-fun m!969887 () Bool)

(assert (=> b!1048885 m!969887))

(assert (=> b!1048885 m!969879))

(declare-fun m!969889 () Bool)

(assert (=> b!1048889 m!969889))

(declare-fun m!969891 () Bool)

(assert (=> b!1048884 m!969891))

(declare-fun m!969893 () Bool)

(assert (=> b!1048887 m!969893))

(declare-fun m!969895 () Bool)

(assert (=> b!1048891 m!969895))

(declare-fun m!969897 () Bool)

(assert (=> b!1048892 m!969897))

(check-sat (not start!92330) (not b!1048891) (not b!1048892) (not b!1048887) (not b!1048889) (not b!1048885) (not b!1048888))
(check-sat)
