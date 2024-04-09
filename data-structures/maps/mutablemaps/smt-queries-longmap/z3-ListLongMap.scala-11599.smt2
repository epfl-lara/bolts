; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135344 () Bool)

(assert start!135344)

(declare-fun b!1573468 () Bool)

(declare-fun e!877467 () Bool)

(declare-fun e!877466 () Bool)

(assert (=> b!1573468 (= e!877467 e!877466)))

(declare-fun res!1075050 () Bool)

(assert (=> b!1573468 (=> (not res!1075050) (not e!877466))))

(declare-fun lt!674410 () Bool)

(declare-datatypes ((SeekEntryResult!13628 0))(
  ( (MissingZero!13628 (index!56909 (_ BitVec 32))) (Found!13628 (index!56910 (_ BitVec 32))) (Intermediate!13628 (undefined!14440 Bool) (index!56911 (_ BitVec 32)) (x!141722 (_ BitVec 32))) (Undefined!13628) (MissingVacant!13628 (index!56912 (_ BitVec 32))) )
))
(declare-fun lt!674408 () SeekEntryResult!13628)

(assert (=> b!1573468 (= res!1075050 (and (or lt!674410 (not (undefined!14440 lt!674408))) (or lt!674410 (undefined!14440 lt!674408))))))

(get-info :version)

(assert (=> b!1573468 (= lt!674410 (not ((_ is Intermediate!13628) lt!674408)))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105096 0))(
  ( (array!105097 (arr!50699 (Array (_ BitVec 32) (_ BitVec 64))) (size!51250 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105096)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105096 (_ BitVec 32)) SeekEntryResult!13628)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573468 (= lt!674408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573467 () Bool)

(declare-fun res!1075049 () Bool)

(assert (=> b!1573467 (=> (not res!1075049) (not e!877467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573467 (= res!1075049 (validKeyInArray!0 k0!754))))

(declare-fun res!1075051 () Bool)

(assert (=> start!135344 (=> (not res!1075051) (not e!877467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135344 (= res!1075051 (validMask!0 mask!889))))

(assert (=> start!135344 e!877467))

(assert (=> start!135344 true))

(declare-fun array_inv!39344 (array!105096) Bool)

(assert (=> start!135344 (array_inv!39344 _keys!600)))

(declare-fun b!1573469 () Bool)

(declare-fun lt!674409 () SeekEntryResult!13628)

(assert (=> b!1573469 (= e!877466 (and (not ((_ is MissingVacant!13628) lt!674409)) ((_ is Found!13628) lt!674409) (or (bvslt (index!56910 lt!674409) #b00000000000000000000000000000000) (bvsge (index!56910 lt!674409) (size!51250 _keys!600)))))))

(declare-fun err!142 () SeekEntryResult!13628)

(assert (=> b!1573469 (= lt!674409 err!142)))

(assert (=> b!1573469 true))

(declare-fun b!1573466 () Bool)

(declare-fun res!1075052 () Bool)

(assert (=> b!1573466 (=> (not res!1075052) (not e!877467))))

(assert (=> b!1573466 (= res!1075052 (= (size!51250 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(assert (= (and start!135344 res!1075051) b!1573466))

(assert (= (and b!1573466 res!1075052) b!1573467))

(assert (= (and b!1573467 res!1075049) b!1573468))

(assert (= (and b!1573468 res!1075050) b!1573469))

(declare-fun m!1446869 () Bool)

(assert (=> b!1573468 m!1446869))

(assert (=> b!1573468 m!1446869))

(declare-fun m!1446871 () Bool)

(assert (=> b!1573468 m!1446871))

(declare-fun m!1446873 () Bool)

(assert (=> b!1573467 m!1446873))

(declare-fun m!1446875 () Bool)

(assert (=> start!135344 m!1446875))

(declare-fun m!1446877 () Bool)

(assert (=> start!135344 m!1446877))

(check-sat (not b!1573467) (not start!135344) (not b!1573468))
(check-sat)
(get-model)

(declare-fun d!164961 () Bool)

(assert (=> d!164961 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573467 d!164961))

(declare-fun d!164963 () Bool)

(assert (=> d!164963 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135344 d!164963))

(declare-fun d!164975 () Bool)

(assert (=> d!164975 (= (array_inv!39344 _keys!600) (bvsge (size!51250 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135344 d!164975))

(declare-fun b!1573554 () Bool)

(declare-fun lt!674449 () SeekEntryResult!13628)

(assert (=> b!1573554 (and (bvsge (index!56911 lt!674449) #b00000000000000000000000000000000) (bvslt (index!56911 lt!674449) (size!51250 _keys!600)))))

(declare-fun res!1075091 () Bool)

(assert (=> b!1573554 (= res!1075091 (= (select (arr!50699 _keys!600) (index!56911 lt!674449)) k0!754))))

(declare-fun e!877518 () Bool)

(assert (=> b!1573554 (=> res!1075091 e!877518)))

(declare-fun e!877519 () Bool)

(assert (=> b!1573554 (= e!877519 e!877518)))

(declare-fun b!1573555 () Bool)

(declare-fun e!877521 () SeekEntryResult!13628)

(assert (=> b!1573555 (= e!877521 (Intermediate!13628 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573556 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573556 (= e!877521 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573557 () Bool)

(declare-fun e!877517 () Bool)

(assert (=> b!1573557 (= e!877517 e!877519)))

(declare-fun res!1075093 () Bool)

(assert (=> b!1573557 (= res!1075093 (and ((_ is Intermediate!13628) lt!674449) (not (undefined!14440 lt!674449)) (bvslt (x!141722 lt!674449) #b01111111111111111111111111111110) (bvsge (x!141722 lt!674449) #b00000000000000000000000000000000) (bvsge (x!141722 lt!674449) #b00000000000000000000000000000000)))))

(assert (=> b!1573557 (=> (not res!1075093) (not e!877519))))

(declare-fun b!1573558 () Bool)

(declare-fun e!877520 () SeekEntryResult!13628)

(assert (=> b!1573558 (= e!877520 e!877521)))

(declare-fun c!145489 () Bool)

(declare-fun lt!674448 () (_ BitVec 64))

(assert (=> b!1573558 (= c!145489 (or (= lt!674448 k0!754) (= (bvadd lt!674448 lt!674448) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164977 () Bool)

(assert (=> d!164977 e!877517))

(declare-fun c!145490 () Bool)

(assert (=> d!164977 (= c!145490 (and ((_ is Intermediate!13628) lt!674449) (undefined!14440 lt!674449)))))

(assert (=> d!164977 (= lt!674449 e!877520)))

(declare-fun c!145491 () Bool)

