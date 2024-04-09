; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135100 () Bool)

(assert start!135100)

(declare-fun res!1074498 () Bool)

(declare-fun e!876872 () Bool)

(assert (=> start!135100 (=> (not res!1074498) (not e!876872))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135100 (= res!1074498 (validMask!0 mask!889))))

(assert (=> start!135100 e!876872))

(assert (=> start!135100 true))

(declare-datatypes ((array!105005 0))(
  ( (array!105006 (arr!50661 (Array (_ BitVec 32) (_ BitVec 64))) (size!51212 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105005)

(declare-fun array_inv!39306 (array!105005) Bool)

(assert (=> start!135100 (array_inv!39306 _keys!600)))

(declare-fun b!1572498 () Bool)

(declare-fun res!1074500 () Bool)

(assert (=> b!1572498 (=> (not res!1074500) (not e!876872))))

(assert (=> b!1572498 (= res!1074500 (= (size!51212 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572499 () Bool)

(declare-fun res!1074499 () Bool)

(assert (=> b!1572499 (=> (not res!1074499) (not e!876872))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572499 (= res!1074499 (validKeyInArray!0 k!754))))

(declare-fun b!1572500 () Bool)

(assert (=> b!1572500 (= e!876872 false)))

(declare-datatypes ((SeekEntryResult!13590 0))(
  ( (MissingZero!13590 (index!56757 (_ BitVec 32))) (Found!13590 (index!56758 (_ BitVec 32))) (Intermediate!13590 (undefined!14402 Bool) (index!56759 (_ BitVec 32)) (x!141541 (_ BitVec 32))) (Undefined!13590) (MissingVacant!13590 (index!56760 (_ BitVec 32))) )
))
(declare-fun lt!673987 () SeekEntryResult!13590)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105005 (_ BitVec 32)) SeekEntryResult!13590)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572500 (= lt!673987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135100 res!1074498) b!1572498))

(assert (= (and b!1572498 res!1074500) b!1572499))

(assert (= (and b!1572499 res!1074499) b!1572500))

(declare-fun m!1446213 () Bool)

(assert (=> start!135100 m!1446213))

(declare-fun m!1446215 () Bool)

(assert (=> start!135100 m!1446215))

(declare-fun m!1446217 () Bool)

(assert (=> b!1572499 m!1446217))

(declare-fun m!1446219 () Bool)

(assert (=> b!1572500 m!1446219))

(assert (=> b!1572500 m!1446219))

(declare-fun m!1446221 () Bool)

(assert (=> b!1572500 m!1446221))

(push 1)

(assert (not b!1572500))

(assert (not start!135100))

(assert (not b!1572499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

