; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71920 () Bool)

(assert start!71920)

(declare-fun b!835287 () Bool)

(declare-fun e!465999 () Bool)

(assert (=> b!835287 (= e!465999 (not true))))

(declare-datatypes ((array!46774 0))(
  ( (array!46775 (arr!22417 (Array (_ BitVec 32) (_ BitVec 64))) (size!22838 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46774)

(declare-fun lt!379660 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46774 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835287 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!379660)))

(declare-datatypes ((Unit!28712 0))(
  ( (Unit!28713) )
))
(declare-fun lt!379662 () Unit!28712)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46774 (_ BitVec 32) (_ BitVec 32)) Unit!28712)

(assert (=> b!835287 (= lt!379662 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835289 () Bool)

(declare-fun res!568335 () Bool)

(declare-fun e!466001 () Bool)

(assert (=> b!835289 (=> (not res!568335) (not e!466001))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835289 (= res!568335 (validKeyInArray!0 k!2968))))

(declare-fun b!835290 () Bool)

(assert (=> b!835290 (= e!466001 e!465999)))

(declare-fun res!568334 () Bool)

(assert (=> b!835290 (=> (not res!568334) (not e!465999))))

(declare-fun lt!379661 () (_ BitVec 32))

(assert (=> b!835290 (= res!568334 (and (= lt!379661 lt!379660) (not (= to!390 (size!22838 a!4227)))))))

(assert (=> b!835290 (= lt!379660 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835290 (= lt!379661 (arrayCountValidKeys!0 (array!46775 (store (arr!22417 a!4227) i!1466 k!2968) (size!22838 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835291 () Bool)

(declare-fun res!568337 () Bool)

(assert (=> b!835291 (=> (not res!568337) (not e!466001))))

(assert (=> b!835291 (= res!568337 (not (validKeyInArray!0 (select (arr!22417 a!4227) i!1466))))))

(declare-fun b!835292 () Bool)

(declare-fun res!568336 () Bool)

(assert (=> b!835292 (=> (not res!568336) (not e!466001))))

(assert (=> b!835292 (= res!568336 (and (bvslt (size!22838 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22838 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835288 () Bool)

(declare-fun res!568339 () Bool)

(assert (=> b!835288 (=> (not res!568339) (not e!465999))))

(assert (=> b!835288 (= res!568339 (not (validKeyInArray!0 (select (arr!22417 a!4227) to!390))))))

(declare-fun res!568338 () Bool)

(assert (=> start!71920 (=> (not res!568338) (not e!466001))))

(assert (=> start!71920 (= res!568338 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22838 a!4227))))))

(assert (=> start!71920 e!466001))

(assert (=> start!71920 true))

(declare-fun array_inv!17840 (array!46774) Bool)

(assert (=> start!71920 (array_inv!17840 a!4227)))

(assert (= (and start!71920 res!568338) b!835291))

(assert (= (and b!835291 res!568337) b!835289))

(assert (= (and b!835289 res!568335) b!835292))

(assert (= (and b!835292 res!568336) b!835290))

(assert (= (and b!835290 res!568334) b!835288))

(assert (= (and b!835288 res!568339) b!835287))

(declare-fun m!780565 () Bool)

(assert (=> b!835288 m!780565))

(assert (=> b!835288 m!780565))

(declare-fun m!780567 () Bool)

(assert (=> b!835288 m!780567))

(declare-fun m!780569 () Bool)

(assert (=> start!71920 m!780569))

(declare-fun m!780571 () Bool)

(assert (=> b!835287 m!780571))

(declare-fun m!780573 () Bool)

(assert (=> b!835287 m!780573))

(declare-fun m!780575 () Bool)

(assert (=> b!835289 m!780575))

(declare-fun m!780577 () Bool)

(assert (=> b!835290 m!780577))

(declare-fun m!780579 () Bool)

(assert (=> b!835290 m!780579))

(declare-fun m!780581 () Bool)

(assert (=> b!835290 m!780581))

(declare-fun m!780583 () Bool)

(assert (=> b!835291 m!780583))

(assert (=> b!835291 m!780583))

(declare-fun m!780585 () Bool)

(assert (=> b!835291 m!780585))

(push 1)

