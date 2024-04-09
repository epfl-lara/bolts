; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71980 () Bool)

(assert start!71980)

(declare-fun b!835967 () Bool)

(declare-fun res!568870 () Bool)

(declare-fun e!466384 () Bool)

(assert (=> b!835967 (=> (not res!568870) (not e!466384))))

(declare-datatypes ((array!46834 0))(
  ( (array!46835 (arr!22447 (Array (_ BitVec 32) (_ BitVec 64))) (size!22868 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46834)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835967 (= res!568870 (not (validKeyInArray!0 (select (arr!22447 a!4227) i!1466))))))

(declare-fun b!835970 () Bool)

(assert (=> b!835970 (= e!466384 false)))

(declare-fun lt!380306 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46834 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835970 (= lt!380306 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun lt!380307 () (_ BitVec 32))

(assert (=> b!835970 (= lt!380307 (arrayCountValidKeys!0 (array!46835 (store (arr!22447 a!4227) i!1466 k!2968) (size!22868 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835968 () Bool)

(declare-fun res!568871 () Bool)

(assert (=> b!835968 (=> (not res!568871) (not e!466384))))

(assert (=> b!835968 (= res!568871 (validKeyInArray!0 k!2968))))

(declare-fun b!835969 () Bool)

(declare-fun res!568872 () Bool)

(assert (=> b!835969 (=> (not res!568872) (not e!466384))))

(assert (=> b!835969 (= res!568872 (and (bvslt (size!22868 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22868 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun res!568873 () Bool)

(assert (=> start!71980 (=> (not res!568873) (not e!466384))))

(assert (=> start!71980 (= res!568873 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22868 a!4227))))))

(assert (=> start!71980 e!466384))

(assert (=> start!71980 true))

(declare-fun array_inv!17870 (array!46834) Bool)

(assert (=> start!71980 (array_inv!17870 a!4227)))

(assert (= (and start!71980 res!568873) b!835967))

(assert (= (and b!835967 res!568870) b!835968))

(assert (= (and b!835968 res!568871) b!835969))

(assert (= (and b!835969 res!568872) b!835970))

(declare-fun m!781477 () Bool)

(assert (=> b!835967 m!781477))

(assert (=> b!835967 m!781477))

(declare-fun m!781479 () Bool)

(assert (=> b!835967 m!781479))

(declare-fun m!781481 () Bool)

(assert (=> b!835970 m!781481))

(declare-fun m!781483 () Bool)

(assert (=> b!835970 m!781483))

(declare-fun m!781485 () Bool)

(assert (=> b!835970 m!781485))

(declare-fun m!781487 () Bool)

(assert (=> b!835968 m!781487))

(declare-fun m!781489 () Bool)

(assert (=> start!71980 m!781489))

(push 1)

(assert (not b!835968))

(assert (not b!835967))

(assert (not start!71980))

(assert (not b!835970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

