; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135662 () Bool)

(assert start!135662)

(declare-fun res!1075858 () Bool)

(declare-fun e!878091 () Bool)

(assert (=> start!135662 (=> (not res!1075858) (not e!878091))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135662 (= res!1075858 (validMask!0 mask!898))))

(assert (=> start!135662 e!878091))

(assert (=> start!135662 true))

(declare-datatypes ((array!105261 0))(
  ( (array!105262 (arr!50771 (Array (_ BitVec 32) (_ BitVec 64))) (size!51322 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105261)

(declare-fun array_inv!39416 (array!105261) Bool)

(assert (=> start!135662 (array_inv!39416 _keys!605)))

(declare-fun b!1574424 () Bool)

(declare-fun res!1075857 () Bool)

(assert (=> b!1574424 (=> (not res!1075857) (not e!878091))))

(assert (=> b!1574424 (= res!1075857 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51322 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574425 () Bool)

(declare-fun res!1075859 () Bool)

(assert (=> b!1574425 (=> (not res!1075859) (not e!878091))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574425 (= res!1075859 (validKeyInArray!0 k0!761))))

(declare-fun b!1574426 () Bool)

(assert (=> b!1574426 (= e!878091 false)))

(declare-datatypes ((SeekEntryResult!13652 0))(
  ( (MissingZero!13652 (index!57005 (_ BitVec 32))) (Found!13652 (index!57006 (_ BitVec 32))) (Intermediate!13652 (undefined!14464 Bool) (index!57007 (_ BitVec 32)) (x!141959 (_ BitVec 32))) (Undefined!13652) (MissingVacant!13652 (index!57008 (_ BitVec 32))) )
))
(declare-fun lt!674776 () SeekEntryResult!13652)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105261 (_ BitVec 32)) SeekEntryResult!13652)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574426 (= lt!674776 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135662 res!1075858) b!1574424))

(assert (= (and b!1574424 res!1075857) b!1574425))

(assert (= (and b!1574425 res!1075859) b!1574426))

(declare-fun m!1447697 () Bool)

(assert (=> start!135662 m!1447697))

(declare-fun m!1447699 () Bool)

(assert (=> start!135662 m!1447699))

(declare-fun m!1447701 () Bool)

(assert (=> b!1574425 m!1447701))

(declare-fun m!1447703 () Bool)

(assert (=> b!1574426 m!1447703))

(assert (=> b!1574426 m!1447703))

(declare-fun m!1447705 () Bool)

(assert (=> b!1574426 m!1447705))

(check-sat (not b!1574426) (not b!1574425) (not start!135662))
