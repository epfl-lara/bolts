; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135682 () Bool)

(assert start!135682)

(declare-fun res!1075949 () Bool)

(declare-fun e!878151 () Bool)

(assert (=> start!135682 (=> (not res!1075949) (not e!878151))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135682 (= res!1075949 (validMask!0 mask!898))))

(assert (=> start!135682 e!878151))

(assert (=> start!135682 true))

(declare-datatypes ((array!105281 0))(
  ( (array!105282 (arr!50781 (Array (_ BitVec 32) (_ BitVec 64))) (size!51332 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105281)

(declare-fun array_inv!39426 (array!105281) Bool)

(assert (=> start!135682 (array_inv!39426 _keys!605)))

(declare-fun b!1574514 () Bool)

(declare-fun res!1075948 () Bool)

(assert (=> b!1574514 (=> (not res!1075948) (not e!878151))))

(assert (=> b!1574514 (= res!1075948 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51332 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574515 () Bool)

(declare-fun res!1075947 () Bool)

(assert (=> b!1574515 (=> (not res!1075947) (not e!878151))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574515 (= res!1075947 (validKeyInArray!0 k!761))))

(declare-fun b!1574516 () Bool)

(assert (=> b!1574516 (= e!878151 false)))

(declare-datatypes ((SeekEntryResult!13662 0))(
  ( (MissingZero!13662 (index!57045 (_ BitVec 32))) (Found!13662 (index!57046 (_ BitVec 32))) (Intermediate!13662 (undefined!14474 Bool) (index!57047 (_ BitVec 32)) (x!141993 (_ BitVec 32))) (Undefined!13662) (MissingVacant!13662 (index!57048 (_ BitVec 32))) )
))
(declare-fun lt!674806 () SeekEntryResult!13662)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105281 (_ BitVec 32)) SeekEntryResult!13662)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574516 (= lt!674806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135682 res!1075949) b!1574514))

(assert (= (and b!1574514 res!1075948) b!1574515))

(assert (= (and b!1574515 res!1075947) b!1574516))

(declare-fun m!1447797 () Bool)

(assert (=> start!135682 m!1447797))

(declare-fun m!1447799 () Bool)

(assert (=> start!135682 m!1447799))

(declare-fun m!1447801 () Bool)

(assert (=> b!1574515 m!1447801))

(declare-fun m!1447803 () Bool)

(assert (=> b!1574516 m!1447803))

(assert (=> b!1574516 m!1447803))

(declare-fun m!1447805 () Bool)

(assert (=> b!1574516 m!1447805))

(push 1)

(assert (not b!1574515))

(assert (not start!135682))

(assert (not b!1574516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

