; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71828 () Bool)

(assert start!71828)

(declare-datatypes ((array!46682 0))(
  ( (array!46683 (arr!22371 (Array (_ BitVec 32) (_ BitVec 64))) (size!22792 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46682)

(declare-fun bm!36574 () Bool)

(declare-fun call!36578 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46682 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36574 (= call!36578 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834376 () Bool)

(declare-fun e!465556 () Bool)

(declare-fun e!465559 () Bool)

(assert (=> b!834376 (= e!465556 e!465559)))

(declare-fun res!567516 () Bool)

(assert (=> b!834376 (=> (not res!567516) (not e!465559))))

(assert (=> b!834376 (= res!567516 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22792 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28668 0))(
  ( (Unit!28669) )
))
(declare-fun lt!379140 () Unit!28668)

(declare-fun e!465560 () Unit!28668)

(assert (=> b!834376 (= lt!379140 e!465560)))

(declare-fun c!90826 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834376 (= c!90826 (validKeyInArray!0 (select (arr!22371 a!4227) to!390)))))

(declare-fun b!834377 () Bool)

(declare-fun res!567520 () Bool)

(declare-fun e!465557 () Bool)

(assert (=> b!834377 (=> (not res!567520) (not e!465557))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834377 (= res!567520 (validKeyInArray!0 k!2968))))

(declare-fun res!567515 () Bool)

(assert (=> start!71828 (=> (not res!567515) (not e!465557))))

(assert (=> start!71828 (= res!567515 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22792 a!4227))))))

(assert (=> start!71828 e!465557))

(assert (=> start!71828 true))

(declare-fun array_inv!17794 (array!46682) Bool)

(assert (=> start!71828 (array_inv!17794 a!4227)))

(declare-fun b!834378 () Bool)

(assert (=> b!834378 (= e!465559 false)))

(declare-fun lt!379148 () (_ BitVec 32))

(assert (=> b!834378 (= lt!379148 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379144 () (_ BitVec 32))

(declare-fun lt!379146 () array!46682)

(assert (=> b!834378 (= lt!379144 (arrayCountValidKeys!0 lt!379146 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun call!36577 () (_ BitVec 32))

(declare-fun bm!36575 () Bool)

(assert (=> bm!36575 (= call!36577 (arrayCountValidKeys!0 lt!379146 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834379 () Bool)

(assert (=> b!834379 (= e!465557 e!465556)))

(declare-fun res!567517 () Bool)

(assert (=> b!834379 (=> (not res!567517) (not e!465556))))

(declare-fun lt!379147 () (_ BitVec 32))

(declare-fun lt!379149 () (_ BitVec 32))

(assert (=> b!834379 (= res!567517 (and (= lt!379149 lt!379147) (not (= to!390 (size!22792 a!4227)))))))

(assert (=> b!834379 (= lt!379147 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834379 (= lt!379149 (arrayCountValidKeys!0 lt!379146 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834379 (= lt!379146 (array!46683 (store (arr!22371 a!4227) i!1466 k!2968) (size!22792 a!4227)))))

(declare-fun b!834380 () Bool)

(declare-fun res!567518 () Bool)

(assert (=> b!834380 (=> (not res!567518) (not e!465557))))

(assert (=> b!834380 (= res!567518 (and (bvslt (size!22792 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22792 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834381 () Bool)

(declare-fun lt!379141 () Unit!28668)

(assert (=> b!834381 (= e!465560 lt!379141)))

(declare-fun lt!379142 () Unit!28668)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46682 (_ BitVec 32) (_ BitVec 32)) Unit!28668)

(assert (=> b!834381 (= lt!379142 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834381 (= call!36578 (bvadd #b00000000000000000000000000000001 lt!379147))))

(assert (=> b!834381 (= lt!379141 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379146 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834381 (= call!36577 (bvadd #b00000000000000000000000000000001 lt!379149))))

(declare-fun b!834382 () Bool)

(declare-fun res!567519 () Bool)

(assert (=> b!834382 (=> (not res!567519) (not e!465557))))

(assert (=> b!834382 (= res!567519 (not (validKeyInArray!0 (select (arr!22371 a!4227) i!1466))))))

(declare-fun b!834383 () Bool)

(declare-fun lt!379145 () Unit!28668)

(assert (=> b!834383 (= e!465560 lt!379145)))

(declare-fun lt!379143 () Unit!28668)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46682 (_ BitVec 32) (_ BitVec 32)) Unit!28668)

(assert (=> b!834383 (= lt!379143 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834383 (= call!36578 lt!379147)))

(assert (=> b!834383 (= lt!379145 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379146 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834383 (= call!36577 lt!379149)))

(assert (= (and start!71828 res!567515) b!834382))

(assert (= (and b!834382 res!567519) b!834377))

(assert (= (and b!834377 res!567520) b!834380))

(assert (= (and b!834380 res!567518) b!834379))

(assert (= (and b!834379 res!567517) b!834376))

(assert (= (and b!834376 c!90826) b!834381))

(assert (= (and b!834376 (not c!90826)) b!834383))

(assert (= (or b!834381 b!834383) bm!36575))

(assert (= (or b!834381 b!834383) bm!36574))

(assert (= (and b!834376 res!567516) b!834378))

(declare-fun m!779501 () Bool)

(assert (=> b!834378 m!779501))

(declare-fun m!779503 () Bool)

(assert (=> b!834378 m!779503))

(declare-fun m!779505 () Bool)

(assert (=> start!71828 m!779505))

(assert (=> bm!36574 m!779501))

(declare-fun m!779507 () Bool)

(assert (=> b!834377 m!779507))

(declare-fun m!779509 () Bool)

(assert (=> b!834383 m!779509))

(declare-fun m!779511 () Bool)

(assert (=> b!834383 m!779511))

(declare-fun m!779513 () Bool)

(assert (=> b!834379 m!779513))

(declare-fun m!779515 () Bool)

(assert (=> b!834379 m!779515))

(declare-fun m!779517 () Bool)

(assert (=> b!834379 m!779517))

(declare-fun m!779519 () Bool)

(assert (=> b!834376 m!779519))

(assert (=> b!834376 m!779519))

(declare-fun m!779521 () Bool)

(assert (=> b!834376 m!779521))

(declare-fun m!779523 () Bool)

(assert (=> b!834382 m!779523))

(assert (=> b!834382 m!779523))

(declare-fun m!779525 () Bool)

(assert (=> b!834382 m!779525))

(assert (=> bm!36575 m!779503))

(declare-fun m!779527 () Bool)

(assert (=> b!834381 m!779527))

(declare-fun m!779529 () Bool)

(assert (=> b!834381 m!779529))

(push 1)

(assert (not b!834383))

(assert (not bm!36574))

(assert (not start!71828))

(assert (not b!834376))

