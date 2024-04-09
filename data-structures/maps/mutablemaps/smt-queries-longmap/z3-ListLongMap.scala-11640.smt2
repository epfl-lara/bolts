; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135914 () Bool)

(assert start!135914)

(declare-fun res!1076467 () Bool)

(declare-fun e!878622 () Bool)

(assert (=> start!135914 (=> (not res!1076467) (not e!878622))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135914 (= res!1076467 (validMask!0 mask!898))))

(assert (=> start!135914 e!878622))

(assert (=> start!135914 true))

(declare-datatypes ((array!105378 0))(
  ( (array!105379 (arr!50822 (Array (_ BitVec 32) (_ BitVec 64))) (size!51373 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105378)

(declare-fun array_inv!39467 (array!105378) Bool)

(assert (=> start!135914 (array_inv!39467 _keys!605)))

(declare-fun b!1575288 () Bool)

(declare-fun res!1076468 () Bool)

(assert (=> b!1575288 (=> (not res!1076468) (not e!878622))))

(assert (=> b!1575288 (= res!1076468 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51373 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575289 () Bool)

(declare-fun res!1076466 () Bool)

(assert (=> b!1575289 (=> (not res!1076466) (not e!878622))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575289 (= res!1076466 (validKeyInArray!0 k0!761))))

(declare-fun b!1575290 () Bool)

(assert (=> b!1575290 (= e!878622 false)))

(declare-datatypes ((SeekEntryResult!13703 0))(
  ( (MissingZero!13703 (index!57209 (_ BitVec 32))) (Found!13703 (index!57210 (_ BitVec 32))) (Intermediate!13703 (undefined!14515 Bool) (index!57211 (_ BitVec 32)) (x!142176 (_ BitVec 32))) (Undefined!13703) (MissingVacant!13703 (index!57212 (_ BitVec 32))) )
))
(declare-fun lt!675109 () SeekEntryResult!13703)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105378 (_ BitVec 32)) SeekEntryResult!13703)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575290 (= lt!675109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135914 res!1076467) b!1575288))

(assert (= (and b!1575288 res!1076468) b!1575289))

(assert (= (and b!1575289 res!1076466) b!1575290))

(declare-fun m!1448351 () Bool)

(assert (=> start!135914 m!1448351))

(declare-fun m!1448353 () Bool)

(assert (=> start!135914 m!1448353))

(declare-fun m!1448355 () Bool)

(assert (=> b!1575289 m!1448355))

(declare-fun m!1448357 () Bool)

(assert (=> b!1575290 m!1448357))

(assert (=> b!1575290 m!1448357))

(declare-fun m!1448359 () Bool)

(assert (=> b!1575290 m!1448359))

(check-sat (not b!1575290) (not start!135914) (not b!1575289))
