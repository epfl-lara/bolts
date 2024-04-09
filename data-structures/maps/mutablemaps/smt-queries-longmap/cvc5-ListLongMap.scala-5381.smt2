; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71908 () Bool)

(assert start!71908)

(declare-fun b!835163 () Bool)

(declare-fun res!568210 () Bool)

(declare-fun e!465948 () Bool)

(assert (=> b!835163 (=> (not res!568210) (not e!465948))))

(declare-datatypes ((array!46762 0))(
  ( (array!46763 (arr!22411 (Array (_ BitVec 32) (_ BitVec 64))) (size!22832 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46762)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835163 (= res!568210 (and (bvslt (size!22832 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22832 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835164 () Bool)

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun e!465947 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835164 (= e!465947 (validKeyInArray!0 (select (store (arr!22411 a!4227) i!1466 k!2968) to!390)))))

(declare-fun res!568212 () Bool)

(assert (=> start!71908 (=> (not res!568212) (not e!465948))))

(assert (=> start!71908 (= res!568212 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22832 a!4227))))))

(assert (=> start!71908 e!465948))

(assert (=> start!71908 true))

(declare-fun array_inv!17834 (array!46762) Bool)

(assert (=> start!71908 (array_inv!17834 a!4227)))

(declare-fun b!835165 () Bool)

(declare-fun res!568213 () Bool)

(declare-fun e!465949 () Bool)

(assert (=> b!835165 (=> (not res!568213) (not e!465949))))

(assert (=> b!835165 (= res!568213 (validKeyInArray!0 (select (arr!22411 a!4227) to!390)))))

(declare-fun b!835166 () Bool)

(declare-fun res!568215 () Bool)

(assert (=> b!835166 (=> (not res!568215) (not e!465948))))

(assert (=> b!835166 (= res!568215 (validKeyInArray!0 k!2968))))

(declare-fun b!835167 () Bool)

(assert (=> b!835167 (= e!465949 (not e!465947))))

(declare-fun res!568214 () Bool)

(assert (=> b!835167 (=> (not res!568214) (not e!465947))))

(assert (=> b!835167 (= res!568214 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvslt to!390 (size!22832 a!4227))))))

(declare-fun lt!379633 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46762 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835167 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!379633))))

(declare-datatypes ((Unit!28706 0))(
  ( (Unit!28707) )
))
(declare-fun lt!379635 () Unit!28706)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46762 (_ BitVec 32) (_ BitVec 32)) Unit!28706)

(assert (=> b!835167 (= lt!379635 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835168 () Bool)

(declare-fun res!568211 () Bool)

(assert (=> b!835168 (=> (not res!568211) (not e!465948))))

(assert (=> b!835168 (= res!568211 (not (validKeyInArray!0 (select (arr!22411 a!4227) i!1466))))))

(declare-fun b!835169 () Bool)

(assert (=> b!835169 (= e!465948 e!465949)))

(declare-fun res!568216 () Bool)

(assert (=> b!835169 (=> (not res!568216) (not e!465949))))

(declare-fun lt!379634 () (_ BitVec 32))

(assert (=> b!835169 (= res!568216 (and (= lt!379634 lt!379633) (not (= to!390 (size!22832 a!4227)))))))

(assert (=> b!835169 (= lt!379633 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835169 (= lt!379634 (arrayCountValidKeys!0 (array!46763 (store (arr!22411 a!4227) i!1466 k!2968) (size!22832 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (= (and start!71908 res!568212) b!835168))

(assert (= (and b!835168 res!568211) b!835166))

(assert (= (and b!835166 res!568215) b!835163))

(assert (= (and b!835163 res!568210) b!835169))

(assert (= (and b!835169 res!568216) b!835165))

(assert (= (and b!835165 res!568213) b!835167))

(assert (= (and b!835167 res!568214) b!835164))

(declare-fun m!780433 () Bool)

(assert (=> b!835167 m!780433))

(declare-fun m!780435 () Bool)

(assert (=> b!835167 m!780435))

(declare-fun m!780437 () Bool)

(assert (=> b!835164 m!780437))

(declare-fun m!780439 () Bool)

(assert (=> b!835164 m!780439))

(assert (=> b!835164 m!780439))

(declare-fun m!780441 () Bool)

(assert (=> b!835164 m!780441))

(declare-fun m!780443 () Bool)

(assert (=> b!835168 m!780443))

(assert (=> b!835168 m!780443))

(declare-fun m!780445 () Bool)

(assert (=> b!835168 m!780445))

(declare-fun m!780447 () Bool)

(assert (=> b!835169 m!780447))

(assert (=> b!835169 m!780437))

(declare-fun m!780449 () Bool)

(assert (=> b!835169 m!780449))

(declare-fun m!780451 () Bool)

(assert (=> b!835165 m!780451))

(assert (=> b!835165 m!780451))

(declare-fun m!780453 () Bool)

(assert (=> b!835165 m!780453))

(declare-fun m!780455 () Bool)

(assert (=> b!835166 m!780455))

(declare-fun m!780457 () Bool)

(assert (=> start!71908 m!780457))

(push 1)

(assert (not b!835164))

(assert (not start!71908))

(assert (not b!835165))

(assert (not b!835169))

(assert (not b!835166))

(assert (not b!835168))

(assert (not b!835167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

