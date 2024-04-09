; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133424 () Bool)

(assert start!133424)

(declare-fun b!1559359 () Bool)

(declare-fun e!868900 () Bool)

(declare-fun e!868901 () Bool)

(declare-fun mapRes!59103 () Bool)

(assert (=> b!1559359 (= e!868900 (and e!868901 mapRes!59103))))

(declare-fun condMapEmpty!59103 () Bool)

(declare-datatypes ((V!59523 0))(
  ( (V!59524 (val!19327 Int)) )
))
(declare-datatypes ((ValueCell!18213 0))(
  ( (ValueCellFull!18213 (v!22075 V!59523)) (EmptyCell!18213) )
))
(declare-datatypes ((array!103653 0))(
  ( (array!103654 (arr!50015 (Array (_ BitVec 32) ValueCell!18213)) (size!50566 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103653)

(declare-fun mapDefault!59103 () ValueCell!18213)

(assert (=> b!1559359 (= condMapEmpty!59103 (= (arr!50015 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18213)) mapDefault!59103)))))

(declare-fun b!1559360 () Bool)

(declare-fun e!868905 () Bool)

(declare-fun tp_is_empty!38487 () Bool)

(assert (=> b!1559360 (= e!868905 tp_is_empty!38487)))

(declare-fun mapIsEmpty!59103 () Bool)

(assert (=> mapIsEmpty!59103 mapRes!59103))

(declare-fun mapNonEmpty!59103 () Bool)

(declare-fun tp!112759 () Bool)

(assert (=> mapNonEmpty!59103 (= mapRes!59103 (and tp!112759 e!868905))))

(declare-fun mapValue!59103 () ValueCell!18213)

(declare-fun mapKey!59103 () (_ BitVec 32))

(declare-fun mapRest!59103 () (Array (_ BitVec 32) ValueCell!18213))

(assert (=> mapNonEmpty!59103 (= (arr!50015 _values!487) (store mapRest!59103 mapKey!59103 mapValue!59103))))

(declare-fun b!1559361 () Bool)

(declare-fun e!868903 () Bool)

(declare-datatypes ((List!36493 0))(
  ( (Nil!36490) (Cons!36489 (h!37936 (_ BitVec 64)) (t!51233 List!36493)) )
))
(declare-fun contains!10226 (List!36493 (_ BitVec 64)) Bool)

(assert (=> b!1559361 (= e!868903 (contains!10226 Nil!36490 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559362 () Bool)

(declare-fun res!1066433 () Bool)

(declare-fun e!868902 () Bool)

(assert (=> b!1559362 (=> (not res!1066433) (not e!868902))))

(declare-datatypes ((array!103655 0))(
  ( (array!103656 (arr!50016 (Array (_ BitVec 32) (_ BitVec 64))) (size!50567 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103655)

(assert (=> b!1559362 (= res!1066433 (and (bvsle #b00000000000000000000000000000000 (size!50567 _keys!637)) (bvslt (size!50567 _keys!637) #b01111111111111111111111111111111)))))

(declare-fun b!1559363 () Bool)

(declare-fun res!1066434 () Bool)

(assert (=> b!1559363 (=> (not res!1066434) (not e!868902))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103655 (_ BitVec 32)) Bool)

(assert (=> b!1559363 (= res!1066434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1066431 () Bool)

(assert (=> start!133424 (=> (not res!1066431) (not e!868902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133424 (= res!1066431 (validMask!0 mask!947))))

(assert (=> start!133424 e!868902))

(assert (=> start!133424 true))

(declare-fun array_inv!38803 (array!103653) Bool)

(assert (=> start!133424 (and (array_inv!38803 _values!487) e!868900)))

(declare-fun array_inv!38804 (array!103655) Bool)

(assert (=> start!133424 (array_inv!38804 _keys!637)))

(declare-fun b!1559364 () Bool)

(declare-fun res!1066430 () Bool)

(assert (=> b!1559364 (=> (not res!1066430) (not e!868902))))

(declare-fun noDuplicate!2677 (List!36493) Bool)

(assert (=> b!1559364 (= res!1066430 (noDuplicate!2677 Nil!36490))))

(declare-fun b!1559365 () Bool)

(declare-fun res!1066429 () Bool)

(assert (=> b!1559365 (=> (not res!1066429) (not e!868902))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559365 (= res!1066429 (and (= (size!50566 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50567 _keys!637) (size!50566 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559366 () Bool)

(assert (=> b!1559366 (= e!868902 e!868903)))

(declare-fun res!1066432 () Bool)

(assert (=> b!1559366 (=> res!1066432 e!868903)))

(assert (=> b!1559366 (= res!1066432 (contains!10226 Nil!36490 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559367 () Bool)

(assert (=> b!1559367 (= e!868901 tp_is_empty!38487)))

(assert (= (and start!133424 res!1066431) b!1559365))

(assert (= (and b!1559365 res!1066429) b!1559363))

(assert (= (and b!1559363 res!1066434) b!1559362))

(assert (= (and b!1559362 res!1066433) b!1559364))

(assert (= (and b!1559364 res!1066430) b!1559366))

(assert (= (and b!1559366 (not res!1066432)) b!1559361))

(assert (= (and b!1559359 condMapEmpty!59103) mapIsEmpty!59103))

(assert (= (and b!1559359 (not condMapEmpty!59103)) mapNonEmpty!59103))

(get-info :version)

(assert (= (and mapNonEmpty!59103 ((_ is ValueCellFull!18213) mapValue!59103)) b!1559360))

(assert (= (and b!1559359 ((_ is ValueCellFull!18213) mapDefault!59103)) b!1559367))

(assert (= start!133424 b!1559359))

(declare-fun m!1435627 () Bool)

(assert (=> start!133424 m!1435627))

(declare-fun m!1435629 () Bool)

(assert (=> start!133424 m!1435629))

(declare-fun m!1435631 () Bool)

(assert (=> start!133424 m!1435631))

(declare-fun m!1435633 () Bool)

(assert (=> b!1559366 m!1435633))

(declare-fun m!1435635 () Bool)

(assert (=> b!1559363 m!1435635))

(declare-fun m!1435637 () Bool)

(assert (=> b!1559364 m!1435637))

(declare-fun m!1435639 () Bool)

(assert (=> b!1559361 m!1435639))

(declare-fun m!1435641 () Bool)

(assert (=> mapNonEmpty!59103 m!1435641))

(check-sat (not mapNonEmpty!59103) tp_is_empty!38487 (not b!1559366) (not start!133424) (not b!1559363) (not b!1559361) (not b!1559364))
(check-sat)
(get-model)

(declare-fun d!162853 () Bool)

(declare-fun res!1066457 () Bool)

(declare-fun e!868928 () Bool)

(assert (=> d!162853 (=> res!1066457 e!868928)))

(assert (=> d!162853 (= res!1066457 ((_ is Nil!36490) Nil!36490))))

(assert (=> d!162853 (= (noDuplicate!2677 Nil!36490) e!868928)))

(declare-fun b!1559399 () Bool)

(declare-fun e!868929 () Bool)

(assert (=> b!1559399 (= e!868928 e!868929)))

(declare-fun res!1066458 () Bool)

(assert (=> b!1559399 (=> (not res!1066458) (not e!868929))))

(assert (=> b!1559399 (= res!1066458 (not (contains!10226 (t!51233 Nil!36490) (h!37936 Nil!36490))))))

(declare-fun b!1559400 () Bool)

(assert (=> b!1559400 (= e!868929 (noDuplicate!2677 (t!51233 Nil!36490)))))

(assert (= (and d!162853 (not res!1066457)) b!1559399))

(assert (= (and b!1559399 res!1066458) b!1559400))

(declare-fun m!1435659 () Bool)

(assert (=> b!1559399 m!1435659))

(declare-fun m!1435661 () Bool)

(assert (=> b!1559400 m!1435661))

(assert (=> b!1559364 d!162853))

(declare-fun d!162855 () Bool)

(assert (=> d!162855 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133424 d!162855))

(declare-fun d!162857 () Bool)

(assert (=> d!162857 (= (array_inv!38803 _values!487) (bvsge (size!50566 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133424 d!162857))

(declare-fun d!162859 () Bool)

(assert (=> d!162859 (= (array_inv!38804 _keys!637) (bvsge (size!50567 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133424 d!162859))

(declare-fun d!162861 () Bool)

(declare-fun lt!670802 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!811 (List!36493) (InoxSet (_ BitVec 64)))

(assert (=> d!162861 (= lt!670802 (select (content!811 Nil!36490) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!868935 () Bool)

(assert (=> d!162861 (= lt!670802 e!868935)))

(declare-fun res!1066463 () Bool)

(assert (=> d!162861 (=> (not res!1066463) (not e!868935))))

(assert (=> d!162861 (= res!1066463 ((_ is Cons!36489) Nil!36490))))

(assert (=> d!162861 (= (contains!10226 Nil!36490 #b1000000000000000000000000000000000000000000000000000000000000000) lt!670802)))

(declare-fun b!1559405 () Bool)

(declare-fun e!868934 () Bool)

(assert (=> b!1559405 (= e!868935 e!868934)))

(declare-fun res!1066464 () Bool)

(assert (=> b!1559405 (=> res!1066464 e!868934)))

(assert (=> b!1559405 (= res!1066464 (= (h!37936 Nil!36490) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559406 () Bool)

(assert (=> b!1559406 (= e!868934 (contains!10226 (t!51233 Nil!36490) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!162861 res!1066463) b!1559405))

(assert (= (and b!1559405 (not res!1066464)) b!1559406))

(declare-fun m!1435663 () Bool)

(assert (=> d!162861 m!1435663))

(declare-fun m!1435665 () Bool)

(assert (=> d!162861 m!1435665))

(declare-fun m!1435667 () Bool)

(assert (=> b!1559406 m!1435667))

(assert (=> b!1559361 d!162861))

(declare-fun d!162863 () Bool)

(declare-fun lt!670803 () Bool)

(assert (=> d!162863 (= lt!670803 (select (content!811 Nil!36490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!868937 () Bool)

(assert (=> d!162863 (= lt!670803 e!868937)))

(declare-fun res!1066465 () Bool)

(assert (=> d!162863 (=> (not res!1066465) (not e!868937))))

(assert (=> d!162863 (= res!1066465 ((_ is Cons!36489) Nil!36490))))

(assert (=> d!162863 (= (contains!10226 Nil!36490 #b0000000000000000000000000000000000000000000000000000000000000000) lt!670803)))

(declare-fun b!1559407 () Bool)

(declare-fun e!868936 () Bool)

(assert (=> b!1559407 (= e!868937 e!868936)))

(declare-fun res!1066466 () Bool)

(assert (=> b!1559407 (=> res!1066466 e!868936)))

(assert (=> b!1559407 (= res!1066466 (= (h!37936 Nil!36490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559408 () Bool)

(assert (=> b!1559408 (= e!868936 (contains!10226 (t!51233 Nil!36490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!162863 res!1066465) b!1559407))

(assert (= (and b!1559407 (not res!1066466)) b!1559408))

(assert (=> d!162863 m!1435663))

(declare-fun m!1435669 () Bool)

(assert (=> d!162863 m!1435669))

(declare-fun m!1435671 () Bool)

(assert (=> b!1559408 m!1435671))

(assert (=> b!1559366 d!162863))

(declare-fun b!1559417 () Bool)

(declare-fun e!868945 () Bool)

(declare-fun e!868944 () Bool)

(assert (=> b!1559417 (= e!868945 e!868944)))

(declare-fun c!144158 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1559417 (= c!144158 (validKeyInArray!0 (select (arr!50016 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1559418 () Bool)

(declare-fun e!868946 () Bool)

(declare-fun call!71841 () Bool)

(assert (=> b!1559418 (= e!868946 call!71841)))

(declare-fun b!1559419 () Bool)

(assert (=> b!1559419 (= e!868944 e!868946)))

(declare-fun lt!670810 () (_ BitVec 64))

(assert (=> b!1559419 (= lt!670810 (select (arr!50016 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51836 0))(
  ( (Unit!51837) )
))
(declare-fun lt!670812 () Unit!51836)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103655 (_ BitVec 64) (_ BitVec 32)) Unit!51836)

(assert (=> b!1559419 (= lt!670812 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!670810 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1559419 (arrayContainsKey!0 _keys!637 lt!670810 #b00000000000000000000000000000000)))

(declare-fun lt!670811 () Unit!51836)

(assert (=> b!1559419 (= lt!670811 lt!670812)))

(declare-fun res!1066471 () Bool)

(declare-datatypes ((SeekEntryResult!13518 0))(
  ( (MissingZero!13518 (index!56469 (_ BitVec 32))) (Found!13518 (index!56470 (_ BitVec 32))) (Intermediate!13518 (undefined!14330 Bool) (index!56471 (_ BitVec 32)) (x!139779 (_ BitVec 32))) (Undefined!13518) (MissingVacant!13518 (index!56472 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103655 (_ BitVec 32)) SeekEntryResult!13518)

(assert (=> b!1559419 (= res!1066471 (= (seekEntryOrOpen!0 (select (arr!50016 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13518 #b00000000000000000000000000000000)))))

(assert (=> b!1559419 (=> (not res!1066471) (not e!868946))))

(declare-fun bm!71838 () Bool)

(assert (=> bm!71838 (= call!71841 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1559420 () Bool)

(assert (=> b!1559420 (= e!868944 call!71841)))

(declare-fun d!162865 () Bool)

(declare-fun res!1066472 () Bool)

(assert (=> d!162865 (=> res!1066472 e!868945)))

(assert (=> d!162865 (= res!1066472 (bvsge #b00000000000000000000000000000000 (size!50567 _keys!637)))))

(assert (=> d!162865 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!868945)))

(assert (= (and d!162865 (not res!1066472)) b!1559417))

(assert (= (and b!1559417 c!144158) b!1559419))

(assert (= (and b!1559417 (not c!144158)) b!1559420))

(assert (= (and b!1559419 res!1066471) b!1559418))

(assert (= (or b!1559418 b!1559420) bm!71838))

(declare-fun m!1435673 () Bool)

(assert (=> b!1559417 m!1435673))

(assert (=> b!1559417 m!1435673))

(declare-fun m!1435675 () Bool)

(assert (=> b!1559417 m!1435675))

(assert (=> b!1559419 m!1435673))

(declare-fun m!1435677 () Bool)

(assert (=> b!1559419 m!1435677))

(declare-fun m!1435679 () Bool)

(assert (=> b!1559419 m!1435679))

(assert (=> b!1559419 m!1435673))

(declare-fun m!1435681 () Bool)

(assert (=> b!1559419 m!1435681))

(declare-fun m!1435683 () Bool)

(assert (=> bm!71838 m!1435683))

(assert (=> b!1559363 d!162865))

(declare-fun mapIsEmpty!59109 () Bool)

(declare-fun mapRes!59109 () Bool)

(assert (=> mapIsEmpty!59109 mapRes!59109))

(declare-fun mapNonEmpty!59109 () Bool)

(declare-fun tp!112765 () Bool)

(declare-fun e!868951 () Bool)

(assert (=> mapNonEmpty!59109 (= mapRes!59109 (and tp!112765 e!868951))))

(declare-fun mapValue!59109 () ValueCell!18213)

(declare-fun mapRest!59109 () (Array (_ BitVec 32) ValueCell!18213))

(declare-fun mapKey!59109 () (_ BitVec 32))

(assert (=> mapNonEmpty!59109 (= mapRest!59103 (store mapRest!59109 mapKey!59109 mapValue!59109))))

(declare-fun condMapEmpty!59109 () Bool)

(declare-fun mapDefault!59109 () ValueCell!18213)

(assert (=> mapNonEmpty!59103 (= condMapEmpty!59109 (= mapRest!59103 ((as const (Array (_ BitVec 32) ValueCell!18213)) mapDefault!59109)))))

(declare-fun e!868952 () Bool)

(assert (=> mapNonEmpty!59103 (= tp!112759 (and e!868952 mapRes!59109))))

(declare-fun b!1559428 () Bool)

(assert (=> b!1559428 (= e!868952 tp_is_empty!38487)))

(declare-fun b!1559427 () Bool)

(assert (=> b!1559427 (= e!868951 tp_is_empty!38487)))

(assert (= (and mapNonEmpty!59103 condMapEmpty!59109) mapIsEmpty!59109))

(assert (= (and mapNonEmpty!59103 (not condMapEmpty!59109)) mapNonEmpty!59109))

(assert (= (and mapNonEmpty!59109 ((_ is ValueCellFull!18213) mapValue!59109)) b!1559427))

(assert (= (and mapNonEmpty!59103 ((_ is ValueCellFull!18213) mapDefault!59109)) b!1559428))

(declare-fun m!1435685 () Bool)

(assert (=> mapNonEmpty!59109 m!1435685))

(check-sat tp_is_empty!38487 (not b!1559400) (not b!1559406) (not b!1559408) (not bm!71838) (not b!1559399) (not b!1559417) (not d!162861) (not mapNonEmpty!59109) (not b!1559419) (not d!162863))
(check-sat)
