; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92318 () Bool)

(assert start!92318)

(declare-fun b!1048726 () Bool)

(declare-fun res!697966 () Bool)

(declare-fun e!594930 () Bool)

(assert (=> b!1048726 (=> (not res!697966) (not e!594930))))

(declare-datatypes ((array!66067 0))(
  ( (array!66068 (arr!31769 (Array (_ BitVec 32) (_ BitVec 64))) (size!32306 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66067)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048726 (= res!697966 (= (select (arr!31769 a!3488) i!1381) k0!2747))))

(declare-fun b!1048727 () Bool)

(declare-fun res!697968 () Bool)

(assert (=> b!1048727 (=> (not res!697968) (not e!594930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048727 (= res!697968 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048728 () Bool)

(declare-fun e!594932 () Bool)

(assert (=> b!1048728 (= e!594932 (not true))))

(declare-fun e!594928 () Bool)

(assert (=> b!1048728 e!594928))

(declare-fun res!697964 () Bool)

(assert (=> b!1048728 (=> (not res!697964) (not e!594928))))

(declare-fun lt!463260 () (_ BitVec 32))

(assert (=> b!1048728 (= res!697964 (= (select (store (arr!31769 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463260) k0!2747))))

(declare-fun b!1048729 () Bool)

(declare-fun e!594931 () Bool)

(assert (=> b!1048729 (= e!594930 e!594931)))

(declare-fun res!697961 () Bool)

(assert (=> b!1048729 (=> (not res!697961) (not e!594931))))

(declare-fun lt!463261 () array!66067)

(declare-fun arrayContainsKey!0 (array!66067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048729 (= res!697961 (arrayContainsKey!0 lt!463261 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048729 (= lt!463261 (array!66068 (store (arr!31769 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32306 a!3488)))))

(declare-fun b!1048730 () Bool)

(declare-fun res!697962 () Bool)

(assert (=> b!1048730 (=> (not res!697962) (not e!594930))))

(declare-datatypes ((List!22212 0))(
  ( (Nil!22209) (Cons!22208 (h!23417 (_ BitVec 64)) (t!31526 List!22212)) )
))
(declare-fun arrayNoDuplicates!0 (array!66067 (_ BitVec 32) List!22212) Bool)

(assert (=> b!1048730 (= res!697962 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22209))))

(declare-fun b!1048731 () Bool)

(assert (=> b!1048731 (= e!594931 e!594932)))

(declare-fun res!697965 () Bool)

(assert (=> b!1048731 (=> (not res!697965) (not e!594932))))

(assert (=> b!1048731 (= res!697965 (not (= lt!463260 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66067 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048731 (= lt!463260 (arrayScanForKey!0 lt!463261 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048732 () Bool)

(declare-fun e!594929 () Bool)

(assert (=> b!1048732 (= e!594928 e!594929)))

(declare-fun res!697967 () Bool)

(assert (=> b!1048732 (=> res!697967 e!594929)))

(assert (=> b!1048732 (= res!697967 (bvsle lt!463260 i!1381))))

(declare-fun res!697963 () Bool)

(assert (=> start!92318 (=> (not res!697963) (not e!594930))))

(assert (=> start!92318 (= res!697963 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32306 a!3488)) (bvslt (size!32306 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92318 e!594930))

(assert (=> start!92318 true))

(declare-fun array_inv!24391 (array!66067) Bool)

(assert (=> start!92318 (array_inv!24391 a!3488)))

(declare-fun b!1048733 () Bool)

(assert (=> b!1048733 (= e!594929 (arrayContainsKey!0 a!3488 k0!2747 lt!463260))))

(assert (= (and start!92318 res!697963) b!1048730))

(assert (= (and b!1048730 res!697962) b!1048727))

(assert (= (and b!1048727 res!697968) b!1048726))

(assert (= (and b!1048726 res!697966) b!1048729))

(assert (= (and b!1048729 res!697961) b!1048731))

(assert (= (and b!1048731 res!697965) b!1048728))

(assert (= (and b!1048728 res!697964) b!1048732))

(assert (= (and b!1048732 (not res!697967)) b!1048733))

(declare-fun m!969753 () Bool)

(assert (=> b!1048727 m!969753))

(declare-fun m!969755 () Bool)

(assert (=> b!1048731 m!969755))

(declare-fun m!969757 () Bool)

(assert (=> b!1048728 m!969757))

(declare-fun m!969759 () Bool)

(assert (=> b!1048728 m!969759))

(declare-fun m!969761 () Bool)

(assert (=> b!1048729 m!969761))

(assert (=> b!1048729 m!969757))

(declare-fun m!969763 () Bool)

(assert (=> b!1048733 m!969763))

(declare-fun m!969765 () Bool)

(assert (=> b!1048726 m!969765))

(declare-fun m!969767 () Bool)

(assert (=> b!1048730 m!969767))

(declare-fun m!969769 () Bool)

(assert (=> start!92318 m!969769))

(check-sat (not start!92318) (not b!1048727) (not b!1048730) (not b!1048729) (not b!1048731) (not b!1048733))
(check-sat)
