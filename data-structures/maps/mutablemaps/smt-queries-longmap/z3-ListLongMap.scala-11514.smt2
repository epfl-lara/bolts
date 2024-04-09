; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134080 () Bool)

(assert start!134080)

(declare-fun b!1566605 () Bool)

(declare-fun e!873265 () Bool)

(declare-fun tp_is_empty!38967 () Bool)

(assert (=> b!1566605 (= e!873265 tp_is_empty!38967)))

(declare-fun b!1566606 () Bool)

(declare-fun res!1070813 () Bool)

(declare-fun e!873262 () Bool)

(assert (=> b!1566606 (=> (not res!1070813) (not e!873262))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104595 0))(
  ( (array!104596 (arr!50479 (Array (_ BitVec 32) (_ BitVec 64))) (size!51030 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104595)

(declare-datatypes ((V!60163 0))(
  ( (V!60164 (val!19567 Int)) )
))
(declare-datatypes ((ValueCell!18453 0))(
  ( (ValueCellFull!18453 (v!22323 V!60163)) (EmptyCell!18453) )
))
(declare-datatypes ((array!104597 0))(
  ( (array!104598 (arr!50480 (Array (_ BitVec 32) ValueCell!18453)) (size!51031 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104597)

(assert (=> b!1566606 (= res!1070813 (and (= (size!51031 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51030 _keys!637) (size!51031 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1566607 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1566607 (= e!873262 (bvsge (bvsub (size!51030 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!51030 _keys!637)) from!782)))))

(declare-fun b!1566608 () Bool)

(declare-fun res!1070812 () Bool)

(assert (=> b!1566608 (=> (not res!1070812) (not e!873262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104595 (_ BitVec 32)) Bool)

(assert (=> b!1566608 (= res!1070812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1566609 () Bool)

(declare-fun res!1070814 () Bool)

(assert (=> b!1566609 (=> (not res!1070814) (not e!873262))))

(declare-datatypes ((List!36796 0))(
  ( (Nil!36793) (Cons!36792 (h!38240 (_ BitVec 64)) (t!51707 List!36796)) )
))
(declare-fun arrayNoDuplicates!0 (array!104595 (_ BitVec 32) List!36796) Bool)

(assert (=> b!1566609 (= res!1070814 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36793))))

(declare-fun b!1566610 () Bool)

(declare-fun e!873264 () Bool)

(declare-fun mapRes!59847 () Bool)

(assert (=> b!1566610 (= e!873264 (and e!873265 mapRes!59847))))

(declare-fun condMapEmpty!59847 () Bool)

(declare-fun mapDefault!59847 () ValueCell!18453)

(assert (=> b!1566610 (= condMapEmpty!59847 (= (arr!50480 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18453)) mapDefault!59847)))))

(declare-fun mapNonEmpty!59847 () Bool)

(declare-fun tp!113881 () Bool)

(declare-fun e!873263 () Bool)

(assert (=> mapNonEmpty!59847 (= mapRes!59847 (and tp!113881 e!873263))))

(declare-fun mapRest!59847 () (Array (_ BitVec 32) ValueCell!18453))

(declare-fun mapKey!59847 () (_ BitVec 32))

(declare-fun mapValue!59847 () ValueCell!18453)

(assert (=> mapNonEmpty!59847 (= (arr!50480 _values!487) (store mapRest!59847 mapKey!59847 mapValue!59847))))

(declare-fun b!1566611 () Bool)

(declare-fun res!1070811 () Bool)

(assert (=> b!1566611 (=> (not res!1070811) (not e!873262))))

(assert (=> b!1566611 (= res!1070811 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51030 _keys!637)) (bvslt from!782 (size!51030 _keys!637))))))

(declare-fun b!1566612 () Bool)

(assert (=> b!1566612 (= e!873263 tp_is_empty!38967)))

(declare-fun mapIsEmpty!59847 () Bool)

(assert (=> mapIsEmpty!59847 mapRes!59847))

(declare-fun res!1070810 () Bool)

(assert (=> start!134080 (=> (not res!1070810) (not e!873262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134080 (= res!1070810 (validMask!0 mask!947))))

(assert (=> start!134080 e!873262))

(assert (=> start!134080 true))

(declare-fun array_inv!39141 (array!104595) Bool)

(assert (=> start!134080 (array_inv!39141 _keys!637)))

(declare-fun array_inv!39142 (array!104597) Bool)

(assert (=> start!134080 (and (array_inv!39142 _values!487) e!873264)))

(declare-fun b!1566613 () Bool)

(declare-fun res!1070809 () Bool)

(assert (=> b!1566613 (=> (not res!1070809) (not e!873262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566613 (= res!1070809 (not (validKeyInArray!0 (select (arr!50479 _keys!637) from!782))))))

(assert (= (and start!134080 res!1070810) b!1566606))

(assert (= (and b!1566606 res!1070813) b!1566608))

(assert (= (and b!1566608 res!1070812) b!1566609))

(assert (= (and b!1566609 res!1070814) b!1566611))

(assert (= (and b!1566611 res!1070811) b!1566613))

(assert (= (and b!1566613 res!1070809) b!1566607))

(assert (= (and b!1566610 condMapEmpty!59847) mapIsEmpty!59847))

(assert (= (and b!1566610 (not condMapEmpty!59847)) mapNonEmpty!59847))

(get-info :version)

(assert (= (and mapNonEmpty!59847 ((_ is ValueCellFull!18453) mapValue!59847)) b!1566612))

(assert (= (and b!1566610 ((_ is ValueCellFull!18453) mapDefault!59847)) b!1566605))

(assert (= start!134080 b!1566610))

(declare-fun m!1441719 () Bool)

(assert (=> b!1566613 m!1441719))

(assert (=> b!1566613 m!1441719))

(declare-fun m!1441721 () Bool)

(assert (=> b!1566613 m!1441721))

(declare-fun m!1441723 () Bool)

(assert (=> mapNonEmpty!59847 m!1441723))

(declare-fun m!1441725 () Bool)

(assert (=> start!134080 m!1441725))

(declare-fun m!1441727 () Bool)

(assert (=> start!134080 m!1441727))

(declare-fun m!1441729 () Bool)

(assert (=> start!134080 m!1441729))

(declare-fun m!1441731 () Bool)

(assert (=> b!1566609 m!1441731))

(declare-fun m!1441733 () Bool)

(assert (=> b!1566608 m!1441733))

(check-sat (not b!1566609) (not b!1566613) (not mapNonEmpty!59847) (not b!1566608) tp_is_empty!38967 (not start!134080))
(check-sat)
(get-model)

(declare-fun bm!71912 () Bool)

(declare-fun call!71915 () Bool)

(declare-fun c!144394 () Bool)

(assert (=> bm!71912 (= call!71915 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144394 (Cons!36792 (select (arr!50479 _keys!637) #b00000000000000000000000000000000) Nil!36793) Nil!36793)))))

(declare-fun b!1566651 () Bool)

(declare-fun e!873292 () Bool)

(assert (=> b!1566651 (= e!873292 call!71915)))

(declare-fun b!1566652 () Bool)

(declare-fun e!873291 () Bool)

(declare-fun e!873293 () Bool)

(assert (=> b!1566652 (= e!873291 e!873293)))

(declare-fun res!1070841 () Bool)

(assert (=> b!1566652 (=> (not res!1070841) (not e!873293))))

(declare-fun e!873290 () Bool)

(assert (=> b!1566652 (= res!1070841 (not e!873290))))

(declare-fun res!1070839 () Bool)

(assert (=> b!1566652 (=> (not res!1070839) (not e!873290))))

(assert (=> b!1566652 (= res!1070839 (validKeyInArray!0 (select (arr!50479 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566653 () Bool)

(assert (=> b!1566653 (= e!873293 e!873292)))

(assert (=> b!1566653 (= c!144394 (validKeyInArray!0 (select (arr!50479 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163445 () Bool)

(declare-fun res!1070840 () Bool)

(assert (=> d!163445 (=> res!1070840 e!873291)))

(assert (=> d!163445 (= res!1070840 (bvsge #b00000000000000000000000000000000 (size!51030 _keys!637)))))

(assert (=> d!163445 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36793) e!873291)))

(declare-fun b!1566654 () Bool)

(declare-fun contains!10367 (List!36796 (_ BitVec 64)) Bool)

(assert (=> b!1566654 (= e!873290 (contains!10367 Nil!36793 (select (arr!50479 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566655 () Bool)

(assert (=> b!1566655 (= e!873292 call!71915)))

(assert (= (and d!163445 (not res!1070840)) b!1566652))

(assert (= (and b!1566652 res!1070839) b!1566654))

(assert (= (and b!1566652 res!1070841) b!1566653))

(assert (= (and b!1566653 c!144394) b!1566655))

(assert (= (and b!1566653 (not c!144394)) b!1566651))

(assert (= (or b!1566655 b!1566651) bm!71912))

(declare-fun m!1441751 () Bool)

(assert (=> bm!71912 m!1441751))

(declare-fun m!1441753 () Bool)

(assert (=> bm!71912 m!1441753))

(assert (=> b!1566652 m!1441751))

(assert (=> b!1566652 m!1441751))

(declare-fun m!1441755 () Bool)

(assert (=> b!1566652 m!1441755))

(assert (=> b!1566653 m!1441751))

(assert (=> b!1566653 m!1441751))

(assert (=> b!1566653 m!1441755))

(assert (=> b!1566654 m!1441751))

(assert (=> b!1566654 m!1441751))

(declare-fun m!1441757 () Bool)

(assert (=> b!1566654 m!1441757))

(assert (=> b!1566609 d!163445))

(declare-fun d!163447 () Bool)

(assert (=> d!163447 (= (validKeyInArray!0 (select (arr!50479 _keys!637) from!782)) (and (not (= (select (arr!50479 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50479 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1566613 d!163447))

(declare-fun b!1566664 () Bool)

(declare-fun e!873302 () Bool)

(declare-fun call!71918 () Bool)

(assert (=> b!1566664 (= e!873302 call!71918)))

(declare-fun b!1566665 () Bool)

(declare-fun e!873300 () Bool)

(assert (=> b!1566665 (= e!873300 e!873302)))

(declare-fun lt!672723 () (_ BitVec 64))

(assert (=> b!1566665 (= lt!672723 (select (arr!50479 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51993 0))(
  ( (Unit!51994) )
))
(declare-fun lt!672724 () Unit!51993)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104595 (_ BitVec 64) (_ BitVec 32)) Unit!51993)

(assert (=> b!1566665 (= lt!672724 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672723 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1566665 (arrayContainsKey!0 _keys!637 lt!672723 #b00000000000000000000000000000000)))

(declare-fun lt!672725 () Unit!51993)

(assert (=> b!1566665 (= lt!672725 lt!672724)))

(declare-fun res!1070846 () Bool)

(declare-datatypes ((SeekEntryResult!13525 0))(
  ( (MissingZero!13525 (index!56497 (_ BitVec 32))) (Found!13525 (index!56498 (_ BitVec 32))) (Intermediate!13525 (undefined!14337 Bool) (index!56499 (_ BitVec 32)) (x!140764 (_ BitVec 32))) (Undefined!13525) (MissingVacant!13525 (index!56500 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104595 (_ BitVec 32)) SeekEntryResult!13525)

(assert (=> b!1566665 (= res!1070846 (= (seekEntryOrOpen!0 (select (arr!50479 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13525 #b00000000000000000000000000000000)))))

(assert (=> b!1566665 (=> (not res!1070846) (not e!873302))))

(declare-fun bm!71915 () Bool)

(assert (=> bm!71915 (= call!71918 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1566666 () Bool)

(declare-fun e!873301 () Bool)

(assert (=> b!1566666 (= e!873301 e!873300)))

(declare-fun c!144397 () Bool)

(assert (=> b!1566666 (= c!144397 (validKeyInArray!0 (select (arr!50479 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163449 () Bool)

(declare-fun res!1070847 () Bool)

(assert (=> d!163449 (=> res!1070847 e!873301)))

(assert (=> d!163449 (= res!1070847 (bvsge #b00000000000000000000000000000000 (size!51030 _keys!637)))))

(assert (=> d!163449 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!873301)))

(declare-fun b!1566667 () Bool)

(assert (=> b!1566667 (= e!873300 call!71918)))

(assert (= (and d!163449 (not res!1070847)) b!1566666))

(assert (= (and b!1566666 c!144397) b!1566665))

(assert (= (and b!1566666 (not c!144397)) b!1566667))

(assert (= (and b!1566665 res!1070846) b!1566664))

(assert (= (or b!1566664 b!1566667) bm!71915))

(assert (=> b!1566665 m!1441751))

(declare-fun m!1441759 () Bool)

(assert (=> b!1566665 m!1441759))

(declare-fun m!1441761 () Bool)

(assert (=> b!1566665 m!1441761))

(assert (=> b!1566665 m!1441751))

(declare-fun m!1441763 () Bool)

(assert (=> b!1566665 m!1441763))

(declare-fun m!1441765 () Bool)

(assert (=> bm!71915 m!1441765))

(assert (=> b!1566666 m!1441751))

(assert (=> b!1566666 m!1441751))

(assert (=> b!1566666 m!1441755))

(assert (=> b!1566608 d!163449))

(declare-fun d!163451 () Bool)

(assert (=> d!163451 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!134080 d!163451))

(declare-fun d!163453 () Bool)

(assert (=> d!163453 (= (array_inv!39141 _keys!637) (bvsge (size!51030 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!134080 d!163453))

(declare-fun d!163455 () Bool)

(assert (=> d!163455 (= (array_inv!39142 _values!487) (bvsge (size!51031 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!134080 d!163455))

(declare-fun condMapEmpty!59853 () Bool)

(declare-fun mapDefault!59853 () ValueCell!18453)

(assert (=> mapNonEmpty!59847 (= condMapEmpty!59853 (= mapRest!59847 ((as const (Array (_ BitVec 32) ValueCell!18453)) mapDefault!59853)))))

(declare-fun e!873308 () Bool)

(declare-fun mapRes!59853 () Bool)

(assert (=> mapNonEmpty!59847 (= tp!113881 (and e!873308 mapRes!59853))))

(declare-fun b!1566674 () Bool)

(declare-fun e!873307 () Bool)

(assert (=> b!1566674 (= e!873307 tp_is_empty!38967)))

(declare-fun b!1566675 () Bool)

(assert (=> b!1566675 (= e!873308 tp_is_empty!38967)))

(declare-fun mapIsEmpty!59853 () Bool)

(assert (=> mapIsEmpty!59853 mapRes!59853))

(declare-fun mapNonEmpty!59853 () Bool)

(declare-fun tp!113887 () Bool)

(assert (=> mapNonEmpty!59853 (= mapRes!59853 (and tp!113887 e!873307))))

(declare-fun mapKey!59853 () (_ BitVec 32))

(declare-fun mapValue!59853 () ValueCell!18453)

(declare-fun mapRest!59853 () (Array (_ BitVec 32) ValueCell!18453))

(assert (=> mapNonEmpty!59853 (= mapRest!59847 (store mapRest!59853 mapKey!59853 mapValue!59853))))

(assert (= (and mapNonEmpty!59847 condMapEmpty!59853) mapIsEmpty!59853))

(assert (= (and mapNonEmpty!59847 (not condMapEmpty!59853)) mapNonEmpty!59853))

(assert (= (and mapNonEmpty!59853 ((_ is ValueCellFull!18453) mapValue!59853)) b!1566674))

(assert (= (and mapNonEmpty!59847 ((_ is ValueCellFull!18453) mapDefault!59853)) b!1566675))

(declare-fun m!1441767 () Bool)

(assert (=> mapNonEmpty!59853 m!1441767))

(check-sat (not b!1566666) tp_is_empty!38967 (not b!1566654) (not b!1566653) (not b!1566665) (not bm!71912) (not mapNonEmpty!59853) (not bm!71915) (not b!1566652))
(check-sat)
