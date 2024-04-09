; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135268 () Bool)

(assert start!135268)

(declare-fun b!1573199 () Bool)

(declare-fun res!1074941 () Bool)

(declare-fun e!877314 () Bool)

(assert (=> b!1573199 (=> (not res!1074941) (not e!877314))))

(declare-datatypes ((array!105080 0))(
  ( (array!105081 (arr!50694 (Array (_ BitVec 32) (_ BitVec 64))) (size!51245 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105080)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1573199 (= res!1074941 (= (size!51245 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun e!877312 () Bool)

(declare-fun k!754 () (_ BitVec 64))

(declare-fun b!1573202 () Bool)

(declare-datatypes ((SeekEntryResult!13623 0))(
  ( (MissingZero!13623 (index!56889 (_ BitVec 32))) (Found!13623 (index!56890 (_ BitVec 32))) (Intermediate!13623 (undefined!14435 Bool) (index!56891 (_ BitVec 32)) (x!141686 (_ BitVec 32))) (Undefined!13623) (MissingVacant!13623 (index!56892 (_ BitVec 32))) )
))
(declare-fun lt!674283 () SeekEntryResult!13623)

(assert (=> b!1573202 (= e!877312 (and (not (is-MissingVacant!13623 lt!674283)) (is-Found!13623 lt!674283) (not (= (select (arr!50694 _keys!600) (index!56890 lt!674283)) k!754))))))

(declare-fun lt!674284 () SeekEntryResult!13623)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105080 (_ BitVec 32)) SeekEntryResult!13623)

(assert (=> b!1573202 (= lt!674283 (seekKeyOrZeroReturnVacant!0 (x!141686 lt!674284) (index!56891 lt!674284) (index!56891 lt!674284) k!754 _keys!600 mask!889))))

(declare-fun b!1573201 () Bool)

(assert (=> b!1573201 (= e!877314 e!877312)))

(declare-fun res!1074938 () Bool)

(assert (=> b!1573201 (=> (not res!1074938) (not e!877312))))

(assert (=> b!1573201 (= res!1074938 (and (not (undefined!14435 lt!674284)) (is-Intermediate!13623 lt!674284) (not (= (select (arr!50694 _keys!600) (index!56891 lt!674284)) k!754)) (not (= (select (arr!50694 _keys!600) (index!56891 lt!674284)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50694 _keys!600) (index!56891 lt!674284)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56891 lt!674284) #b00000000000000000000000000000000) (bvslt (index!56891 lt!674284) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105080 (_ BitVec 32)) SeekEntryResult!13623)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573201 (= lt!674284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573200 () Bool)

(declare-fun res!1074939 () Bool)

(assert (=> b!1573200 (=> (not res!1074939) (not e!877314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573200 (= res!1074939 (validKeyInArray!0 k!754))))

(declare-fun res!1074940 () Bool)

(assert (=> start!135268 (=> (not res!1074940) (not e!877314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135268 (= res!1074940 (validMask!0 mask!889))))

(assert (=> start!135268 e!877314))

(assert (=> start!135268 true))

(declare-fun array_inv!39339 (array!105080) Bool)

(assert (=> start!135268 (array_inv!39339 _keys!600)))

(assert (= (and start!135268 res!1074940) b!1573199))

(assert (= (and b!1573199 res!1074941) b!1573200))

(assert (= (and b!1573200 res!1074939) b!1573201))

(assert (= (and b!1573201 res!1074938) b!1573202))

(declare-fun m!1446741 () Bool)

(assert (=> b!1573202 m!1446741))

(declare-fun m!1446743 () Bool)

(assert (=> b!1573202 m!1446743))

(declare-fun m!1446745 () Bool)

(assert (=> b!1573201 m!1446745))

(declare-fun m!1446747 () Bool)

(assert (=> b!1573201 m!1446747))

(assert (=> b!1573201 m!1446747))

(declare-fun m!1446749 () Bool)

(assert (=> b!1573201 m!1446749))

(declare-fun m!1446751 () Bool)

(assert (=> b!1573200 m!1446751))

(declare-fun m!1446753 () Bool)

(assert (=> start!135268 m!1446753))

(declare-fun m!1446755 () Bool)

(assert (=> start!135268 m!1446755))

(push 1)

(assert (not b!1573201))

(assert (not start!135268))

(assert (not b!1573200))

(assert (not b!1573202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1573305 () Bool)

(declare-fun lt!674324 () SeekEntryResult!13623)

(assert (=> b!1573305 (and (bvsge (index!56891 lt!674324) #b00000000000000000000000000000000) (bvslt (index!56891 lt!674324) (size!51245 _keys!600)))))

(declare-fun res!1074969 () Bool)

(assert (=> b!1573305 (= res!1074969 (= (select (arr!50694 _keys!600) (index!56891 lt!674324)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877374 () Bool)

(assert (=> b!1573305 (=> res!1074969 e!877374)))

(declare-fun b!1573306 () Bool)

(declare-fun e!877371 () Bool)

(assert (=> b!1573306 (= e!877371 (bvsge (x!141686 lt!674324) #b01111111111111111111111111111110))))

(declare-fun d!164889 () Bool)

(assert (=> d!164889 e!877371))

(declare-fun c!145424 () Bool)

(assert (=> d!164889 (= c!145424 (and (is-Intermediate!13623 lt!674324) (undefined!14435 lt!674324)))))

(declare-fun e!877373 () SeekEntryResult!13623)

(assert (=> d!164889 (= lt!674324 e!877373)))

(declare-fun c!145425 () Bool)

(assert (=> d!164889 (= c!145425 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674323 () (_ BitVec 64))

(assert (=> d!164889 (= lt!674323 (select (arr!50694 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164889 (validMask!0 mask!889)))

(assert (=> d!164889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674324)))

(declare-fun b!1573307 () Bool)

(assert (=> b!1573307 (= e!877373 (Intermediate!13623 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573308 () Bool)

(declare-fun e!877370 () Bool)

(assert (=> b!1573308 (= e!877371 e!877370)))

(declare-fun res!1074968 () Bool)

(assert (=> b!1573308 (= res!1074968 (and (is-Intermediate!13623 lt!674324) (not (undefined!14435 lt!674324)) (bvslt (x!141686 lt!674324) #b01111111111111111111111111111110) (bvsge (x!141686 lt!674324) #b00000000000000000000000000000000) (bvsge (x!141686 lt!674324) #b00000000000000000000000000000000)))))

(assert (=> b!1573308 (=> (not res!1074968) (not e!877370))))

(declare-fun b!1573309 () Bool)

(declare-fun e!877372 () SeekEntryResult!13623)

(assert (=> b!1573309 (= e!877372 (Intermediate!13623 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573310 () Bool)

(assert (=> b!1573310 (= e!877373 e!877372)))

(declare-fun c!145423 () Bool)

(assert (=> b!1573310 (= c!145423 (or (= lt!674323 k!754) (= (bvadd lt!674323 lt!674323) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573311 () Bool)

(assert (=> b!1573311 (and (bvsge (index!56891 lt!674324) #b00000000000000000000000000000000) (bvslt (index!56891 lt!674324) (size!51245 _keys!600)))))

(declare-fun res!1074970 () Bool)

(assert (=> b!1573311 (= res!1074970 (= (select (arr!50694 _keys!600) (index!56891 lt!674324)) k!754))))

(assert (=> b!1573311 (=> res!1074970 e!877374)))

(assert (=> b!1573311 (= e!877370 e!877374)))

(declare-fun b!1573312 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573312 (= e!877372 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

