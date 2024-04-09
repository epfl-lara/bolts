; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136462 () Bool)

(assert start!136462)

(declare-fun res!1077705 () Bool)

(declare-fun e!879807 () Bool)

(assert (=> start!136462 (=> (not res!1077705) (not e!879807))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136462 (= res!1077705 (validMask!0 mask!910))))

(assert (=> start!136462 e!879807))

(assert (=> start!136462 true))

(declare-datatypes ((array!105584 0))(
  ( (array!105585 (arr!50907 (Array (_ BitVec 32) (_ BitVec 64))) (size!51458 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105584)

(declare-fun array_inv!39552 (array!105584) Bool)

(assert (=> start!136462 (array_inv!39552 _keys!610)))

(declare-fun b!1577306 () Bool)

(declare-fun x!458 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13752 0))(
  ( (MissingZero!13752 (index!57405 (_ BitVec 32))) (Found!13752 (index!57406 (_ BitVec 32))) (Intermediate!13752 (undefined!14564 Bool) (index!57407 (_ BitVec 32)) (x!142530 (_ BitVec 32))) (Undefined!13752) (MissingVacant!13752 (index!57408 (_ BitVec 32))) )
))
(declare-fun lt!675913 () SeekEntryResult!13752)

(assert (=> b!1577306 (= e!879807 (and (is-Intermediate!13752 lt!675913) (not (undefined!14564 lt!675913)) (bvslt (x!142530 lt!675913) #b01111111111111111111111111111110) (bvsge (x!142530 lt!675913) #b00000000000000000000000000000000) (bvsge (x!142530 lt!675913) x!458) (or (bvslt (index!57407 lt!675913) #b00000000000000000000000000000000) (bvsge (index!57407 lt!675913) (size!51458 _keys!610)))))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105584 (_ BitVec 32)) SeekEntryResult!13752)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577306 (= lt!675913 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577304 () Bool)

(declare-fun res!1077706 () Bool)

(assert (=> b!1577304 (=> (not res!1077706) (not e!879807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577304 (= res!1077706 (validKeyInArray!0 k!768))))

(declare-fun b!1577303 () Bool)

(declare-fun res!1077707 () Bool)

(assert (=> b!1577303 (=> (not res!1077707) (not e!879807))))

(assert (=> b!1577303 (= res!1077707 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51458 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577305 () Bool)

(declare-fun res!1077704 () Bool)

(assert (=> b!1577305 (=> (not res!1077704) (not e!879807))))

(assert (=> b!1577305 (= res!1077704 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50907 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50907 _keys!610) ee!12) (select (arr!50907 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136462 res!1077705) b!1577303))

(assert (= (and b!1577303 res!1077707) b!1577304))

(assert (= (and b!1577304 res!1077706) b!1577305))

(assert (= (and b!1577305 res!1077704) b!1577306))

(declare-fun m!1449623 () Bool)

(assert (=> start!136462 m!1449623))

(declare-fun m!1449625 () Bool)

(assert (=> start!136462 m!1449625))

(declare-fun m!1449627 () Bool)

(assert (=> b!1577306 m!1449627))

(assert (=> b!1577306 m!1449627))

(declare-fun m!1449629 () Bool)

(assert (=> b!1577306 m!1449629))

(declare-fun m!1449631 () Bool)

(assert (=> b!1577304 m!1449631))

(declare-fun m!1449633 () Bool)

(assert (=> b!1577305 m!1449633))

(push 1)

(assert (not b!1577304))

(assert (not b!1577306))

(assert (not start!136462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165803 () Bool)

(assert (=> d!165803 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577304 d!165803))

(declare-fun b!1577379 () Bool)

(declare-fun e!879848 () Bool)

(declare-fun e!879851 () Bool)

(assert (=> b!1577379 (= e!879848 e!879851)))

(declare-fun res!1077734 () Bool)

(declare-fun lt!675936 () SeekEntryResult!13752)

(assert (=> b!1577379 (= res!1077734 (and (is-Intermediate!13752 lt!675936) (not (undefined!14564 lt!675936)) (bvslt (x!142530 lt!675936) #b01111111111111111111111111111110) (bvsge (x!142530 lt!675936) #b00000000000000000000000000000000) (bvsge (x!142530 lt!675936) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577379 (=> (not res!1077734) (not e!879851))))

(declare-fun b!1577380 () Bool)

(assert (=> b!1577380 (= e!879848 (bvsge (x!142530 lt!675936) #b01111111111111111111111111111110))))

(declare-fun d!165805 () Bool)

(assert (=> d!165805 e!879848))

(declare-fun c!146111 () Bool)

(assert (=> d!165805 (= c!146111 (and (is-Intermediate!13752 lt!675936) (undefined!14564 lt!675936)))))

(declare-fun e!879852 () SeekEntryResult!13752)

(assert (=> d!165805 (= lt!675936 e!879852)))

(declare-fun c!146110 () Bool)

(assert (=> d!165805 (= c!146110 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(declare-fun lt!675937 () (_ BitVec 64))

(assert (=> d!165805 (= lt!675937 (select (arr!50907 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165805 (validMask!0 mask!910)))

(assert (=> d!165805 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!675936)))

(declare-fun b!1577381 () Bool)

(declare-fun e!879850 () SeekEntryResult!13752)

(assert (=> b!1577381 (= e!879850 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577382 () Bool)

(assert (=> b!1577382 (and (bvsge (index!57407 lt!675936) #b00000000000000000000000000000000) (bvslt (index!57407 lt!675936) (size!51458 _keys!610)))))

(declare-fun res!1077732 () Bool)

(assert (=> b!1577382 (= res!1077732 (= (select (arr!50907 _keys!610) (index!57407 lt!675936)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879849 () Bool)

(assert (=> b!1577382 (=> res!1077732 e!879849)))

(declare-fun b!1577383 () Bool)

(assert (=> b!1577383 (= e!879850 (Intermediate!13752 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577384 () Bool)

(assert (=> b!1577384 (= e!879852 e!879850)))

(declare-fun c!146112 () Bool)

(assert (=> b!1577384 (= c!146112 (or (= lt!675937 k!768) (= (bvadd lt!675937 lt!675937) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577385 () Bool)

(assert (=> b!1577385 (and (bvsge (index!57407 lt!675936) #b00000000000000000000000000000000) (bvslt (index!57407 lt!675936) (size!51458 _keys!610)))))

(assert (=> b!1577385 (= e!879849 (= (select (arr!50907 _keys!610) (index!57407 lt!675936)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577386 () Bool)

(assert (=> b!1577386 (= e!879852 (Intermediate!13752 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577387 () Bool)

(assert (=> b!1577387 (and (bvsge (index!57407 lt!675936) #b00000000000000000000000000000000) (bvslt (index!57407 lt!675936) (size!51458 _keys!610)))))

(declare-fun res!1077733 () Bool)

(assert (=> b!1577387 (= res!1077733 (= (select (arr!50907 _keys!610) (index!57407 lt!675936)) k!768))))

(assert (=> b!1577387 (=> res!1077733 e!879849)))

(assert (=> b!1577387 (= e!879851 e!879849)))

(assert (= (and d!165805 c!146110) b!1577386))

(assert (= (and d!165805 (not c!146110)) b!1577384))

(assert (= (and b!1577384 c!146112) b!1577383))

(assert (= (and b!1577384 (not c!146112)) b!1577381))

(assert (= (and d!165805 c!146111) b!1577380))

(assert (= (and d!165805 (not c!146111)) b!1577379))

(assert (= (and b!1577379 res!1077734) b!1577387))

(assert (= (and b!1577387 (not res!1077733)) b!1577382))

(assert (= (and b!1577382 (not res!1077732)) b!1577385))

(assert (=> b!1577381 m!1449627))

(declare-fun m!1449655 () Bool)

(assert (=> b!1577381 m!1449655))

(assert (=> b!1577381 m!1449655))

(declare-fun m!1449657 () Bool)

(assert (=> b!1577381 m!1449657))

(declare-fun m!1449659 () Bool)

(assert (=> b!1577382 m!1449659))

(assert (=> b!1577385 m!1449659))

(assert (=> b!1577387 m!1449659))

(assert (=> d!165805 m!1449627))

(declare-fun m!1449661 () Bool)

(assert (=> d!165805 m!1449661))

(assert (=> d!165805 m!1449623))

(assert (=> b!1577306 d!165805))

(declare-fun d!165815 () Bool)

(declare-fun lt!675940 () (_ BitVec 32))

(assert (=> d!165815 (and (bvsge lt!675940 #b00000000000000000000000000000000) (bvslt lt!675940 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165815 (= lt!675940 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165815 (validMask!0 mask!910)))

(assert (=> d!165815 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675940)))

(declare-fun bs!45574 () Bool)

(assert (= bs!45574 d!165815))

(declare-fun m!1449663 () Bool)

(assert (=> bs!45574 m!1449663))

(assert (=> bs!45574 m!1449623))

(assert (=> b!1577306 d!165815))

(declare-fun d!165817 () Bool)

(assert (=> d!165817 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136462 d!165817))

(declare-fun d!165823 () Bool)

(assert (=> d!165823 (= (array_inv!39552 _keys!610) (bvsge (size!51458 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136462 d!165823))

(push 1)

(assert (not d!165815))

(assert (not b!1577381))

(assert (not d!165805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

