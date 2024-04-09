; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135176 () Bool)

(assert start!135176)

(declare-fun b!1572812 () Bool)

(declare-fun e!877080 () Bool)

(assert (=> b!1572812 (= e!877080 false)))

(declare-fun k0!754 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13613 0))(
  ( (MissingZero!13613 (index!56849 (_ BitVec 32))) (Found!13613 (index!56850 (_ BitVec 32))) (Intermediate!13613 (undefined!14425 Bool) (index!56851 (_ BitVec 32)) (x!141634 (_ BitVec 32))) (Undefined!13613) (MissingVacant!13613 (index!56852 (_ BitVec 32))) )
))
(declare-fun lt!674116 () SeekEntryResult!13613)

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105054 0))(
  ( (array!105055 (arr!50684 (Array (_ BitVec 32) (_ BitVec 64))) (size!51235 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105054)

(declare-fun lt!674115 () SeekEntryResult!13613)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105054 (_ BitVec 32)) SeekEntryResult!13613)

(assert (=> b!1572812 (= lt!674115 (seekKeyOrZeroReturnVacant!0 (x!141634 lt!674116) (index!56851 lt!674116) (index!56851 lt!674116) k0!754 _keys!600 mask!889))))

(declare-fun b!1572809 () Bool)

(declare-fun res!1074760 () Bool)

(declare-fun e!877079 () Bool)

(assert (=> b!1572809 (=> (not res!1074760) (not e!877079))))

(assert (=> b!1572809 (= res!1074760 (= (size!51235 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572810 () Bool)

(declare-fun res!1074758 () Bool)

(assert (=> b!1572810 (=> (not res!1074758) (not e!877079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572810 (= res!1074758 (validKeyInArray!0 k0!754))))

(declare-fun b!1572811 () Bool)

(assert (=> b!1572811 (= e!877079 e!877080)))

(declare-fun res!1074759 () Bool)

(assert (=> b!1572811 (=> (not res!1074759) (not e!877080))))

(get-info :version)

(assert (=> b!1572811 (= res!1074759 (and (not (undefined!14425 lt!674116)) ((_ is Intermediate!13613) lt!674116) (not (= (select (arr!50684 _keys!600) (index!56851 lt!674116)) k0!754)) (not (= (select (arr!50684 _keys!600) (index!56851 lt!674116)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50684 _keys!600) (index!56851 lt!674116)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56851 lt!674116) #b00000000000000000000000000000000) (bvslt (index!56851 lt!674116) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105054 (_ BitVec 32)) SeekEntryResult!13613)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572811 (= lt!674116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun res!1074761 () Bool)

(assert (=> start!135176 (=> (not res!1074761) (not e!877079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135176 (= res!1074761 (validMask!0 mask!889))))

(assert (=> start!135176 e!877079))

(assert (=> start!135176 true))

(declare-fun array_inv!39329 (array!105054) Bool)

(assert (=> start!135176 (array_inv!39329 _keys!600)))

(assert (= (and start!135176 res!1074761) b!1572809))

(assert (= (and b!1572809 res!1074760) b!1572810))

(assert (= (and b!1572810 res!1074758) b!1572811))

(assert (= (and b!1572811 res!1074759) b!1572812))

(declare-fun m!1446501 () Bool)

(assert (=> b!1572812 m!1446501))

(declare-fun m!1446503 () Bool)

(assert (=> b!1572810 m!1446503))

(declare-fun m!1446505 () Bool)

(assert (=> b!1572811 m!1446505))

(declare-fun m!1446507 () Bool)

(assert (=> b!1572811 m!1446507))

(assert (=> b!1572811 m!1446507))

(declare-fun m!1446509 () Bool)

(assert (=> b!1572811 m!1446509))

(declare-fun m!1446511 () Bool)

(assert (=> start!135176 m!1446511))

(declare-fun m!1446513 () Bool)

(assert (=> start!135176 m!1446513))

(check-sat (not b!1572810) (not start!135176) (not b!1572811) (not b!1572812))
(check-sat)
