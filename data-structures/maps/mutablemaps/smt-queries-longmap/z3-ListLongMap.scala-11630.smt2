; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135734 () Bool)

(assert start!135734)

(declare-fun res!1076077 () Bool)

(declare-fun e!878261 () Bool)

(assert (=> start!135734 (=> (not res!1076077) (not e!878261))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135734 (= res!1076077 (validMask!0 mask!898))))

(assert (=> start!135734 e!878261))

(assert (=> start!135734 true))

(declare-datatypes ((array!105306 0))(
  ( (array!105307 (arr!50792 (Array (_ BitVec 32) (_ BitVec 64))) (size!51343 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105306)

(declare-fun array_inv!39437 (array!105306) Bool)

(assert (=> start!135734 (array_inv!39437 _keys!605)))

(declare-fun b!1574694 () Bool)

(declare-fun res!1076076 () Bool)

(assert (=> b!1574694 (=> (not res!1076076) (not e!878261))))

(assert (=> b!1574694 (= res!1076076 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51343 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574695 () Bool)

(declare-fun res!1076078 () Bool)

(assert (=> b!1574695 (=> (not res!1076078) (not e!878261))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574695 (= res!1076078 (validKeyInArray!0 k0!761))))

(declare-fun b!1574696 () Bool)

(assert (=> b!1574696 (= e!878261 false)))

(declare-datatypes ((SeekEntryResult!13673 0))(
  ( (MissingZero!13673 (index!57089 (_ BitVec 32))) (Found!13673 (index!57090 (_ BitVec 32))) (Intermediate!13673 (undefined!14485 Bool) (index!57091 (_ BitVec 32)) (x!142042 (_ BitVec 32))) (Undefined!13673) (MissingVacant!13673 (index!57092 (_ BitVec 32))) )
))
(declare-fun lt!674875 () SeekEntryResult!13673)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105306 (_ BitVec 32)) SeekEntryResult!13673)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574696 (= lt!674875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135734 res!1076077) b!1574694))

(assert (= (and b!1574694 res!1076076) b!1574695))

(assert (= (and b!1574695 res!1076078) b!1574696))

(declare-fun m!1447937 () Bool)

(assert (=> start!135734 m!1447937))

(declare-fun m!1447939 () Bool)

(assert (=> start!135734 m!1447939))

(declare-fun m!1447941 () Bool)

(assert (=> b!1574695 m!1447941))

(declare-fun m!1447943 () Bool)

(assert (=> b!1574696 m!1447943))

(assert (=> b!1574696 m!1447943))

(declare-fun m!1447945 () Bool)

(assert (=> b!1574696 m!1447945))

(check-sat (not b!1574695) (not b!1574696) (not start!135734))
