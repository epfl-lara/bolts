; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135224 () Bool)

(assert start!135224)

(declare-fun res!1074861 () Bool)

(declare-fun e!877204 () Bool)

(assert (=> start!135224 (=> (not res!1074861) (not e!877204))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135224 (= res!1074861 (validMask!0 mask!889))))

(assert (=> start!135224 e!877204))

(assert (=> start!135224 true))

(declare-datatypes ((array!105069 0))(
  ( (array!105070 (arr!50690 (Array (_ BitVec 32) (_ BitVec 64))) (size!51241 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105069)

(declare-fun array_inv!39335 (array!105069) Bool)

(assert (=> start!135224 (array_inv!39335 _keys!600)))

(declare-fun b!1573018 () Bool)

(declare-fun e!877205 () Bool)

(assert (=> b!1573018 (= e!877204 e!877205)))

(declare-fun res!1074860 () Bool)

(assert (=> b!1573018 (=> (not res!1074860) (not e!877205))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13619 0))(
  ( (MissingZero!13619 (index!56873 (_ BitVec 32))) (Found!13619 (index!56874 (_ BitVec 32))) (Intermediate!13619 (undefined!14431 Bool) (index!56875 (_ BitVec 32)) (x!141665 (_ BitVec 32))) (Undefined!13619) (MissingVacant!13619 (index!56876 (_ BitVec 32))) )
))
(declare-fun lt!674205 () SeekEntryResult!13619)

(get-info :version)

(assert (=> b!1573018 (= res!1074860 (and (not (undefined!14431 lt!674205)) ((_ is Intermediate!13619) lt!674205) (not (= (select (arr!50690 _keys!600) (index!56875 lt!674205)) k0!754)) (not (= (select (arr!50690 _keys!600) (index!56875 lt!674205)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50690 _keys!600) (index!56875 lt!674205)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56875 lt!674205) #b00000000000000000000000000000000) (bvslt (index!56875 lt!674205) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105069 (_ BitVec 32)) SeekEntryResult!13619)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573018 (= lt!674205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573019 () Bool)

(declare-fun lt!674206 () SeekEntryResult!13619)

(assert (=> b!1573019 (= e!877205 (and (not ((_ is MissingVacant!13619) lt!674206)) (not ((_ is Found!13619) lt!674206)) (not ((_ is MissingZero!13619) lt!674206)) (not ((_ is Undefined!13619) lt!674206))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105069 (_ BitVec 32)) SeekEntryResult!13619)

(assert (=> b!1573019 (= lt!674206 (seekKeyOrZeroReturnVacant!0 (x!141665 lt!674205) (index!56875 lt!674205) (index!56875 lt!674205) k0!754 _keys!600 mask!889))))

(declare-fun b!1573016 () Bool)

(declare-fun res!1074862 () Bool)

(assert (=> b!1573016 (=> (not res!1074862) (not e!877204))))

(assert (=> b!1573016 (= res!1074862 (= (size!51241 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573017 () Bool)

(declare-fun res!1074863 () Bool)

(assert (=> b!1573017 (=> (not res!1074863) (not e!877204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573017 (= res!1074863 (validKeyInArray!0 k0!754))))

(assert (= (and start!135224 res!1074861) b!1573016))

(assert (= (and b!1573016 res!1074862) b!1573017))

(assert (= (and b!1573017 res!1074863) b!1573018))

(assert (= (and b!1573018 res!1074860) b!1573019))

(declare-fun m!1446633 () Bool)

(assert (=> start!135224 m!1446633))

(declare-fun m!1446635 () Bool)

(assert (=> start!135224 m!1446635))

(declare-fun m!1446637 () Bool)

(assert (=> b!1573018 m!1446637))

(declare-fun m!1446639 () Bool)

(assert (=> b!1573018 m!1446639))

(assert (=> b!1573018 m!1446639))

(declare-fun m!1446641 () Bool)

(assert (=> b!1573018 m!1446641))

(declare-fun m!1446643 () Bool)

(assert (=> b!1573019 m!1446643))

(declare-fun m!1446645 () Bool)

(assert (=> b!1573017 m!1446645))

(check-sat (not b!1573019) (not b!1573018) (not start!135224) (not b!1573017))
(check-sat)
(get-model)

(declare-fun b!1573044 () Bool)

(declare-fun e!877224 () SeekEntryResult!13619)

(assert (=> b!1573044 (= e!877224 Undefined!13619)))

(declare-fun b!1573045 () Bool)

(declare-fun e!877222 () SeekEntryResult!13619)

(assert (=> b!1573045 (= e!877222 (MissingVacant!13619 (index!56875 lt!674205)))))

(declare-fun b!1573046 () Bool)

(declare-fun c!145337 () Bool)

(declare-fun lt!674218 () (_ BitVec 64))

(assert (=> b!1573046 (= c!145337 (= lt!674218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877223 () SeekEntryResult!13619)

(assert (=> b!1573046 (= e!877223 e!877222)))

(declare-fun b!1573047 () Bool)

(assert (=> b!1573047 (= e!877223 (Found!13619 (index!56875 lt!674205)))))

(declare-fun b!1573048 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573048 (= e!877222 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141665 lt!674205) #b00000000000000000000000000000001) (nextIndex!0 (index!56875 lt!674205) (x!141665 lt!674205) mask!889) (index!56875 lt!674205) k0!754 _keys!600 mask!889))))

(declare-fun d!164847 () Bool)

(declare-fun lt!674217 () SeekEntryResult!13619)

(assert (=> d!164847 (and (or ((_ is Undefined!13619) lt!674217) (not ((_ is Found!13619) lt!674217)) (and (bvsge (index!56874 lt!674217) #b00000000000000000000000000000000) (bvslt (index!56874 lt!674217) (size!51241 _keys!600)))) (or ((_ is Undefined!13619) lt!674217) ((_ is Found!13619) lt!674217) (not ((_ is MissingVacant!13619) lt!674217)) (not (= (index!56876 lt!674217) (index!56875 lt!674205))) (and (bvsge (index!56876 lt!674217) #b00000000000000000000000000000000) (bvslt (index!56876 lt!674217) (size!51241 _keys!600)))) (or ((_ is Undefined!13619) lt!674217) (ite ((_ is Found!13619) lt!674217) (= (select (arr!50690 _keys!600) (index!56874 lt!674217)) k0!754) (and ((_ is MissingVacant!13619) lt!674217) (= (index!56876 lt!674217) (index!56875 lt!674205)) (= (select (arr!50690 _keys!600) (index!56876 lt!674217)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164847 (= lt!674217 e!877224)))

(declare-fun c!145338 () Bool)

(assert (=> d!164847 (= c!145338 (bvsge (x!141665 lt!674205) #b01111111111111111111111111111110))))

(assert (=> d!164847 (= lt!674218 (select (arr!50690 _keys!600) (index!56875 lt!674205)))))

(assert (=> d!164847 (validMask!0 mask!889)))

(assert (=> d!164847 (= (seekKeyOrZeroReturnVacant!0 (x!141665 lt!674205) (index!56875 lt!674205) (index!56875 lt!674205) k0!754 _keys!600 mask!889) lt!674217)))

(declare-fun b!1573049 () Bool)

(assert (=> b!1573049 (= e!877224 e!877223)))

(declare-fun c!145336 () Bool)

(assert (=> b!1573049 (= c!145336 (= lt!674218 k0!754))))

(assert (= (and d!164847 c!145338) b!1573044))

(assert (= (and d!164847 (not c!145338)) b!1573049))

(assert (= (and b!1573049 c!145336) b!1573047))

(assert (= (and b!1573049 (not c!145336)) b!1573046))

(assert (= (and b!1573046 c!145337) b!1573045))

(assert (= (and b!1573046 (not c!145337)) b!1573048))

(declare-fun m!1446661 () Bool)

(assert (=> b!1573048 m!1446661))

(assert (=> b!1573048 m!1446661))

(declare-fun m!1446663 () Bool)

(assert (=> b!1573048 m!1446663))

(declare-fun m!1446665 () Bool)

(assert (=> d!164847 m!1446665))

(declare-fun m!1446667 () Bool)

(assert (=> d!164847 m!1446667))

(assert (=> d!164847 m!1446637))

(assert (=> d!164847 m!1446633))

(assert (=> b!1573019 d!164847))

(declare-fun b!1573103 () Bool)

(declare-fun e!877255 () SeekEntryResult!13619)

(assert (=> b!1573103 (= e!877255 (Intermediate!13619 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573104 () Bool)

(declare-fun e!877254 () SeekEntryResult!13619)

(assert (=> b!1573104 (= e!877254 (Intermediate!13619 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573105 () Bool)

(declare-fun e!877258 () Bool)

(declare-fun lt!674240 () SeekEntryResult!13619)

(assert (=> b!1573105 (= e!877258 (bvsge (x!141665 lt!674240) #b01111111111111111111111111111110))))

(declare-fun b!1573106 () Bool)

(assert (=> b!1573106 (= e!877255 e!877254)))

(declare-fun c!145359 () Bool)

(declare-fun lt!674239 () (_ BitVec 64))

(assert (=> b!1573106 (= c!145359 (or (= lt!674239 k0!754) (= (bvadd lt!674239 lt!674239) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573107 () Bool)

(assert (=> b!1573107 (= e!877254 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573109 () Bool)

(declare-fun e!877256 () Bool)

(assert (=> b!1573109 (= e!877258 e!877256)))

(declare-fun res!1074894 () Bool)

(assert (=> b!1573109 (= res!1074894 (and ((_ is Intermediate!13619) lt!674240) (not (undefined!14431 lt!674240)) (bvslt (x!141665 lt!674240) #b01111111111111111111111111111110) (bvsge (x!141665 lt!674240) #b00000000000000000000000000000000) (bvsge (x!141665 lt!674240) #b00000000000000000000000000000000)))))

(assert (=> b!1573109 (=> (not res!1074894) (not e!877256))))

(declare-fun b!1573110 () Bool)

(assert (=> b!1573110 (and (bvsge (index!56875 lt!674240) #b00000000000000000000000000000000) (bvslt (index!56875 lt!674240) (size!51241 _keys!600)))))

(declare-fun res!1074893 () Bool)

(assert (=> b!1573110 (= res!1074893 (= (select (arr!50690 _keys!600) (index!56875 lt!674240)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877257 () Bool)

(assert (=> b!1573110 (=> res!1074893 e!877257)))

(declare-fun b!1573111 () Bool)

(assert (=> b!1573111 (and (bvsge (index!56875 lt!674240) #b00000000000000000000000000000000) (bvslt (index!56875 lt!674240) (size!51241 _keys!600)))))

(declare-fun res!1074892 () Bool)

(assert (=> b!1573111 (= res!1074892 (= (select (arr!50690 _keys!600) (index!56875 lt!674240)) k0!754))))

(assert (=> b!1573111 (=> res!1074892 e!877257)))

(assert (=> b!1573111 (= e!877256 e!877257)))

(declare-fun d!164851 () Bool)

(assert (=> d!164851 e!877258))

(declare-fun c!145358 () Bool)

(assert (=> d!164851 (= c!145358 (and ((_ is Intermediate!13619) lt!674240) (undefined!14431 lt!674240)))))

(assert (=> d!164851 (= lt!674240 e!877255)))

(declare-fun c!145360 () Bool)

(assert (=> d!164851 (= c!145360 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164851 (= lt!674239 (select (arr!50690 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164851 (validMask!0 mask!889)))

(assert (=> d!164851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674240)))

(declare-fun b!1573108 () Bool)

(assert (=> b!1573108 (and (bvsge (index!56875 lt!674240) #b00000000000000000000000000000000) (bvslt (index!56875 lt!674240) (size!51241 _keys!600)))))

(assert (=> b!1573108 (= e!877257 (= (select (arr!50690 _keys!600) (index!56875 lt!674240)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!164851 c!145360) b!1573103))

(assert (= (and d!164851 (not c!145360)) b!1573106))

(assert (= (and b!1573106 c!145359) b!1573104))

(assert (= (and b!1573106 (not c!145359)) b!1573107))

(assert (= (and d!164851 c!145358) b!1573105))

(assert (= (and d!164851 (not c!145358)) b!1573109))

(assert (= (and b!1573109 res!1074894) b!1573111))

(assert (= (and b!1573111 (not res!1074892)) b!1573110))

(assert (= (and b!1573110 (not res!1074893)) b!1573108))

(assert (=> b!1573107 m!1446639))

(declare-fun m!1446677 () Bool)

(assert (=> b!1573107 m!1446677))

(assert (=> b!1573107 m!1446677))

(declare-fun m!1446679 () Bool)

(assert (=> b!1573107 m!1446679))

(declare-fun m!1446681 () Bool)

(assert (=> b!1573111 m!1446681))

(assert (=> d!164851 m!1446639))

(declare-fun m!1446683 () Bool)

(assert (=> d!164851 m!1446683))

(assert (=> d!164851 m!1446633))

(assert (=> b!1573110 m!1446681))

(assert (=> b!1573108 m!1446681))

(assert (=> b!1573018 d!164851))

(declare-fun d!164861 () Bool)

(declare-fun lt!674248 () (_ BitVec 32))

(declare-fun lt!674247 () (_ BitVec 32))

(assert (=> d!164861 (= lt!674248 (bvmul (bvxor lt!674247 (bvlshr lt!674247 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164861 (= lt!674247 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164861 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074901 (let ((h!38394 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141672 (bvmul (bvxor h!38394 (bvlshr h!38394 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141672 (bvlshr x!141672 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074901 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074901 #b00000000000000000000000000000000))))))

(assert (=> d!164861 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!674248 (bvlshr lt!674248 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573018 d!164861))

(declare-fun d!164865 () Bool)

(assert (=> d!164865 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135224 d!164865))

(declare-fun d!164873 () Bool)

(assert (=> d!164873 (= (array_inv!39335 _keys!600) (bvsge (size!51241 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135224 d!164873))

(declare-fun d!164875 () Bool)

(assert (=> d!164875 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573017 d!164875))

(check-sat (not b!1573107) (not d!164847) (not d!164851) (not b!1573048))
(check-sat)
