; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71984 () Bool)

(assert start!71984)

(declare-fun b!835992 () Bool)

(declare-fun res!568895 () Bool)

(declare-fun e!466397 () Bool)

(assert (=> b!835992 (=> (not res!568895) (not e!466397))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835992 (= res!568895 (validKeyInArray!0 k!2968))))

(declare-fun b!835994 () Bool)

(assert (=> b!835994 (= e!466397 false)))

(declare-datatypes ((array!46838 0))(
  ( (array!46839 (arr!22449 (Array (_ BitVec 32) (_ BitVec 64))) (size!22870 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46838)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!380319 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46838 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835994 (= lt!380319 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!380318 () (_ BitVec 32))

(assert (=> b!835994 (= lt!380318 (arrayCountValidKeys!0 (array!46839 (store (arr!22449 a!4227) i!1466 k!2968) (size!22870 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!568894 () Bool)

(assert (=> start!71984 (=> (not res!568894) (not e!466397))))

(assert (=> start!71984 (= res!568894 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22870 a!4227))))))

(assert (=> start!71984 e!466397))

(assert (=> start!71984 true))

(declare-fun array_inv!17872 (array!46838) Bool)

(assert (=> start!71984 (array_inv!17872 a!4227)))

(declare-fun b!835991 () Bool)

(declare-fun res!568896 () Bool)

(assert (=> b!835991 (=> (not res!568896) (not e!466397))))

(assert (=> b!835991 (= res!568896 (not (validKeyInArray!0 (select (arr!22449 a!4227) i!1466))))))

(declare-fun b!835993 () Bool)

(declare-fun res!568897 () Bool)

(assert (=> b!835993 (=> (not res!568897) (not e!466397))))

(assert (=> b!835993 (= res!568897 (and (bvslt (size!22870 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22870 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71984 res!568894) b!835991))

(assert (= (and b!835991 res!568896) b!835992))

(assert (= (and b!835992 res!568895) b!835993))

(assert (= (and b!835993 res!568897) b!835994))

(declare-fun m!781505 () Bool)

(assert (=> b!835992 m!781505))

(declare-fun m!781507 () Bool)

(assert (=> b!835994 m!781507))

(declare-fun m!781509 () Bool)

(assert (=> b!835994 m!781509))

(declare-fun m!781511 () Bool)

(assert (=> b!835994 m!781511))

(declare-fun m!781513 () Bool)

(assert (=> start!71984 m!781513))

(declare-fun m!781515 () Bool)

(assert (=> b!835991 m!781515))

(assert (=> b!835991 m!781515))

(declare-fun m!781517 () Bool)

(assert (=> b!835991 m!781517))

(push 1)

(assert (not b!835991))

(assert (not start!71984))

(assert (not b!835994))

(assert (not b!835992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

