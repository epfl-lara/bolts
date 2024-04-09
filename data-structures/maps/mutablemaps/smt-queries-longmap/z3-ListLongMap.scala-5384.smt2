; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71928 () Bool)

(assert start!71928)

(declare-fun res!568415 () Bool)

(declare-fun e!466042 () Bool)

(assert (=> start!71928 (=> (not res!568415) (not e!466042))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46782 0))(
  ( (array!46783 (arr!22421 (Array (_ BitVec 32) (_ BitVec 64))) (size!22842 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46782)

(assert (=> start!71928 (= res!568415 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22842 a!4227))))))

(assert (=> start!71928 e!466042))

(assert (=> start!71928 true))

(declare-fun array_inv!17844 (array!46782) Bool)

(assert (=> start!71928 (array_inv!17844 a!4227)))

(declare-fun b!835364 () Bool)

(declare-fun res!568412 () Bool)

(assert (=> b!835364 (=> (not res!568412) (not e!466042))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835364 (= res!568412 (validKeyInArray!0 k0!2968))))

(declare-fun b!835365 () Bool)

(declare-fun res!568417 () Bool)

(assert (=> b!835365 (=> (not res!568417) (not e!466042))))

(assert (=> b!835365 (= res!568417 (not (validKeyInArray!0 (select (arr!22421 a!4227) i!1466))))))

(declare-fun b!835366 () Bool)

(declare-fun e!466041 () Bool)

(declare-fun e!466043 () Bool)

(assert (=> b!835366 (= e!466041 (not e!466043))))

(declare-fun res!568416 () Bool)

(assert (=> b!835366 (=> (not res!568416) (not e!466043))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835366 (= res!568416 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvslt to!390 (size!22842 a!4227))))))

(declare-fun lt!379698 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46782 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835366 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) lt!379698)))

(declare-datatypes ((Unit!28720 0))(
  ( (Unit!28721) )
))
(declare-fun lt!379697 () Unit!28720)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46782 (_ BitVec 32) (_ BitVec 32)) Unit!28720)

(assert (=> b!835366 (= lt!379697 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835367 () Bool)

(assert (=> b!835367 (= e!466042 e!466041)))

(declare-fun res!568411 () Bool)

(assert (=> b!835367 (=> (not res!568411) (not e!466041))))

(declare-fun lt!379696 () (_ BitVec 32))

(assert (=> b!835367 (= res!568411 (and (= lt!379696 lt!379698) (not (= to!390 (size!22842 a!4227)))))))

(assert (=> b!835367 (= lt!379698 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835367 (= lt!379696 (arrayCountValidKeys!0 (array!46783 (store (arr!22421 a!4227) i!1466 k0!2968) (size!22842 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835368 () Bool)

(declare-fun res!568413 () Bool)

(assert (=> b!835368 (=> (not res!568413) (not e!466042))))

(assert (=> b!835368 (= res!568413 (and (bvslt (size!22842 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22842 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835369 () Bool)

(assert (=> b!835369 (= e!466043 (not (validKeyInArray!0 (select (store (arr!22421 a!4227) i!1466 k0!2968) to!390))))))

(declare-fun b!835370 () Bool)

(declare-fun res!568414 () Bool)

(assert (=> b!835370 (=> (not res!568414) (not e!466041))))

(assert (=> b!835370 (= res!568414 (not (validKeyInArray!0 (select (arr!22421 a!4227) to!390))))))

(assert (= (and start!71928 res!568415) b!835365))

(assert (= (and b!835365 res!568417) b!835364))

(assert (= (and b!835364 res!568412) b!835368))

(assert (= (and b!835368 res!568413) b!835367))

(assert (= (and b!835367 res!568411) b!835370))

(assert (= (and b!835370 res!568414) b!835366))

(assert (= (and b!835366 res!568416) b!835369))

(declare-fun m!780657 () Bool)

(assert (=> b!835370 m!780657))

(assert (=> b!835370 m!780657))

(declare-fun m!780659 () Bool)

(assert (=> b!835370 m!780659))

(declare-fun m!780661 () Bool)

(assert (=> b!835369 m!780661))

(declare-fun m!780663 () Bool)

(assert (=> b!835369 m!780663))

(assert (=> b!835369 m!780663))

(declare-fun m!780665 () Bool)

(assert (=> b!835369 m!780665))

(declare-fun m!780667 () Bool)

(assert (=> b!835365 m!780667))

(assert (=> b!835365 m!780667))

(declare-fun m!780669 () Bool)

(assert (=> b!835365 m!780669))

(declare-fun m!780671 () Bool)

(assert (=> b!835367 m!780671))

(assert (=> b!835367 m!780661))

(declare-fun m!780673 () Bool)

(assert (=> b!835367 m!780673))

(declare-fun m!780675 () Bool)

(assert (=> start!71928 m!780675))

(declare-fun m!780677 () Bool)

(assert (=> b!835364 m!780677))

(declare-fun m!780679 () Bool)

(assert (=> b!835366 m!780679))

(declare-fun m!780681 () Bool)

(assert (=> b!835366 m!780681))

(check-sat (not b!835370) (not b!835365) (not start!71928) (not b!835369) (not b!835364) (not b!835366) (not b!835367))
(check-sat)
