; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118612 () Bool)

(assert start!118612)

(declare-fun b!1386076 () Bool)

(declare-fun res!927437 () Bool)

(declare-fun e!785263 () Bool)

(assert (=> b!1386076 (=> (not res!927437) (not e!785263))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94806 0))(
  ( (array!94807 (arr!45775 (Array (_ BitVec 32) (_ BitVec 64))) (size!46326 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94806)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386076 (= res!927437 (and (not (= (select (arr!45775 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45775 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1386077 () Bool)

(declare-fun res!927439 () Bool)

(assert (=> b!1386077 (=> (not res!927439) (not e!785263))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94806 (_ BitVec 32)) Bool)

(assert (=> b!1386077 (= res!927439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!927438 () Bool)

(assert (=> start!118612 (=> (not res!927438) (not e!785263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118612 (= res!927438 (validMask!0 mask!2987))))

(assert (=> start!118612 e!785263))

(assert (=> start!118612 true))

(declare-fun array_inv!34720 (array!94806) Bool)

(assert (=> start!118612 (array_inv!34720 a!2938)))

(declare-fun b!1386078 () Bool)

(declare-fun res!927441 () Bool)

(assert (=> b!1386078 (=> (not res!927441) (not e!785263))))

(declare-datatypes ((List!32483 0))(
  ( (Nil!32480) (Cons!32479 (h!33688 (_ BitVec 64)) (t!47184 List!32483)) )
))
(declare-fun arrayNoDuplicates!0 (array!94806 (_ BitVec 32) List!32483) Bool)

(assert (=> b!1386078 (= res!927441 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32480))))

(declare-fun b!1386079 () Bool)

(declare-fun res!927435 () Bool)

(assert (=> b!1386079 (=> (not res!927435) (not e!785263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386079 (= res!927435 (validKeyInArray!0 (select (arr!45775 a!2938) startIndex!16)))))

(declare-fun b!1386080 () Bool)

(declare-fun res!927440 () Bool)

(assert (=> b!1386080 (=> (not res!927440) (not e!785263))))

(assert (=> b!1386080 (= res!927440 (and (= (size!46326 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46326 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46326 a!2938))))))

(declare-fun b!1386081 () Bool)

(declare-fun res!927436 () Bool)

(assert (=> b!1386081 (=> (not res!927436) (not e!785263))))

(assert (=> b!1386081 (= res!927436 (validKeyInArray!0 (select (arr!45775 a!2938) i!1065)))))

(declare-fun b!1386082 () Bool)

(assert (=> b!1386082 (= e!785263 (not true))))

(declare-datatypes ((SeekEntryResult!10140 0))(
  ( (MissingZero!10140 (index!42930 (_ BitVec 32))) (Found!10140 (index!42931 (_ BitVec 32))) (Intermediate!10140 (undefined!10952 Bool) (index!42932 (_ BitVec 32)) (x!124560 (_ BitVec 32))) (Undefined!10140) (MissingVacant!10140 (index!42933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94806 (_ BitVec 32)) SeekEntryResult!10140)

(assert (=> b!1386082 (= (seekEntryOrOpen!0 (select (arr!45775 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45775 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94807 (store (arr!45775 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46326 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46222 0))(
  ( (Unit!46223) )
))
(declare-fun lt!609319 () Unit!46222)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94806 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46222)

(assert (=> b!1386082 (= lt!609319 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (= (and start!118612 res!927438) b!1386080))

(assert (= (and b!1386080 res!927440) b!1386081))

(assert (= (and b!1386081 res!927436) b!1386078))

(assert (= (and b!1386078 res!927441) b!1386077))

(assert (= (and b!1386077 res!927439) b!1386076))

(assert (= (and b!1386076 res!927437) b!1386079))

(assert (= (and b!1386079 res!927435) b!1386082))

(declare-fun m!1271465 () Bool)

(assert (=> b!1386076 m!1271465))

(declare-fun m!1271467 () Bool)

(assert (=> b!1386078 m!1271467))

(assert (=> b!1386081 m!1271465))

(assert (=> b!1386081 m!1271465))

(declare-fun m!1271469 () Bool)

(assert (=> b!1386081 m!1271469))

(declare-fun m!1271471 () Bool)

(assert (=> start!118612 m!1271471))

(declare-fun m!1271473 () Bool)

(assert (=> start!118612 m!1271473))

(declare-fun m!1271475 () Bool)

(assert (=> b!1386082 m!1271475))

(assert (=> b!1386082 m!1271475))

(declare-fun m!1271477 () Bool)

(assert (=> b!1386082 m!1271477))

(declare-fun m!1271479 () Bool)

(assert (=> b!1386082 m!1271479))

(declare-fun m!1271481 () Bool)

(assert (=> b!1386082 m!1271481))

(declare-fun m!1271483 () Bool)

(assert (=> b!1386082 m!1271483))

(assert (=> b!1386082 m!1271483))

(declare-fun m!1271485 () Bool)

(assert (=> b!1386082 m!1271485))

(assert (=> b!1386079 m!1271483))

(assert (=> b!1386079 m!1271483))

(declare-fun m!1271487 () Bool)

(assert (=> b!1386079 m!1271487))

(declare-fun m!1271489 () Bool)

(assert (=> b!1386077 m!1271489))

(push 1)

(assert (not start!118612))

(assert (not b!1386077))

(assert (not b!1386079))

(assert (not b!1386078))

(assert (not b!1386082))

(assert (not b!1386081))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

