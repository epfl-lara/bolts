; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135920 () Bool)

(assert start!135920)

(declare-fun res!1076494 () Bool)

(declare-fun e!878639 () Bool)

(assert (=> start!135920 (=> (not res!1076494) (not e!878639))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135920 (= res!1076494 (validMask!0 mask!898))))

(assert (=> start!135920 e!878639))

(assert (=> start!135920 true))

(declare-datatypes ((array!105384 0))(
  ( (array!105385 (arr!50825 (Array (_ BitVec 32) (_ BitVec 64))) (size!51376 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105384)

(declare-fun array_inv!39470 (array!105384) Bool)

(assert (=> start!135920 (array_inv!39470 _keys!605)))

(declare-fun b!1575315 () Bool)

(declare-fun res!1076495 () Bool)

(assert (=> b!1575315 (=> (not res!1076495) (not e!878639))))

(assert (=> b!1575315 (= res!1076495 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51376 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575316 () Bool)

(declare-fun res!1076493 () Bool)

(assert (=> b!1575316 (=> (not res!1076493) (not e!878639))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575316 (= res!1076493 (validKeyInArray!0 k0!761))))

(declare-fun b!1575317 () Bool)

(assert (=> b!1575317 (= e!878639 false)))

(declare-datatypes ((SeekEntryResult!13706 0))(
  ( (MissingZero!13706 (index!57221 (_ BitVec 32))) (Found!13706 (index!57222 (_ BitVec 32))) (Intermediate!13706 (undefined!14518 Bool) (index!57223 (_ BitVec 32)) (x!142187 (_ BitVec 32))) (Undefined!13706) (MissingVacant!13706 (index!57224 (_ BitVec 32))) )
))
(declare-fun lt!675118 () SeekEntryResult!13706)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105384 (_ BitVec 32)) SeekEntryResult!13706)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575317 (= lt!675118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135920 res!1076494) b!1575315))

(assert (= (and b!1575315 res!1076495) b!1575316))

(assert (= (and b!1575316 res!1076493) b!1575317))

(declare-fun m!1448381 () Bool)

(assert (=> start!135920 m!1448381))

(declare-fun m!1448383 () Bool)

(assert (=> start!135920 m!1448383))

(declare-fun m!1448385 () Bool)

(assert (=> b!1575316 m!1448385))

(declare-fun m!1448387 () Bool)

(assert (=> b!1575317 m!1448387))

(assert (=> b!1575317 m!1448387))

(declare-fun m!1448389 () Bool)

(assert (=> b!1575317 m!1448389))

(check-sat (not b!1575317) (not start!135920) (not b!1575316))
