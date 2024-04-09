; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135728 () Bool)

(assert start!135728)

(declare-fun res!1076051 () Bool)

(declare-fun e!878243 () Bool)

(assert (=> start!135728 (=> (not res!1076051) (not e!878243))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135728 (= res!1076051 (validMask!0 mask!898))))

(assert (=> start!135728 e!878243))

(assert (=> start!135728 true))

(declare-datatypes ((array!105300 0))(
  ( (array!105301 (arr!50789 (Array (_ BitVec 32) (_ BitVec 64))) (size!51340 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105300)

(declare-fun array_inv!39434 (array!105300) Bool)

(assert (=> start!135728 (array_inv!39434 _keys!605)))

(declare-fun b!1574667 () Bool)

(declare-fun res!1076050 () Bool)

(assert (=> b!1574667 (=> (not res!1076050) (not e!878243))))

(assert (=> b!1574667 (= res!1076050 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51340 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574668 () Bool)

(declare-fun res!1076049 () Bool)

(assert (=> b!1574668 (=> (not res!1076049) (not e!878243))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574668 (= res!1076049 (validKeyInArray!0 k0!761))))

(declare-fun b!1574669 () Bool)

(assert (=> b!1574669 (= e!878243 false)))

(declare-datatypes ((SeekEntryResult!13670 0))(
  ( (MissingZero!13670 (index!57077 (_ BitVec 32))) (Found!13670 (index!57078 (_ BitVec 32))) (Intermediate!13670 (undefined!14482 Bool) (index!57079 (_ BitVec 32)) (x!142031 (_ BitVec 32))) (Undefined!13670) (MissingVacant!13670 (index!57080 (_ BitVec 32))) )
))
(declare-fun lt!674866 () SeekEntryResult!13670)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105300 (_ BitVec 32)) SeekEntryResult!13670)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574669 (= lt!674866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135728 res!1076051) b!1574667))

(assert (= (and b!1574667 res!1076050) b!1574668))

(assert (= (and b!1574668 res!1076049) b!1574669))

(declare-fun m!1447907 () Bool)

(assert (=> start!135728 m!1447907))

(declare-fun m!1447909 () Bool)

(assert (=> start!135728 m!1447909))

(declare-fun m!1447911 () Bool)

(assert (=> b!1574668 m!1447911))

(declare-fun m!1447913 () Bool)

(assert (=> b!1574669 m!1447913))

(assert (=> b!1574669 m!1447913))

(declare-fun m!1447915 () Bool)

(assert (=> b!1574669 m!1447915))

(check-sat (not b!1574669) (not start!135728) (not b!1574668))
