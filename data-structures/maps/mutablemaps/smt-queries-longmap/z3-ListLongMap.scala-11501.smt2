; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133874 () Bool)

(assert start!133874)

(declare-fun b!1564701 () Bool)

(declare-fun res!1069764 () Bool)

(declare-fun e!872154 () Bool)

(assert (=> b!1564701 (=> (not res!1069764) (not e!872154))))

(declare-datatypes ((array!104435 0))(
  ( (array!104436 (arr!50403 (Array (_ BitVec 32) (_ BitVec 64))) (size!50954 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104435)

(declare-datatypes ((List!36743 0))(
  ( (Nil!36740) (Cons!36739 (h!38186 (_ BitVec 64)) (t!51597 List!36743)) )
))
(declare-fun arrayNoDuplicates!0 (array!104435 (_ BitVec 32) List!36743) Bool)

(assert (=> b!1564701 (= res!1069764 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36740))))

(declare-fun b!1564702 () Bool)

(declare-fun e!872156 () Bool)

(declare-fun e!872155 () Bool)

(declare-fun mapRes!59716 () Bool)

(assert (=> b!1564702 (= e!872156 (and e!872155 mapRes!59716))))

(declare-fun condMapEmpty!59716 () Bool)

(declare-datatypes ((V!60059 0))(
  ( (V!60060 (val!19528 Int)) )
))
(declare-datatypes ((ValueCell!18414 0))(
  ( (ValueCellFull!18414 (v!22279 V!60059)) (EmptyCell!18414) )
))
(declare-datatypes ((array!104437 0))(
  ( (array!104438 (arr!50404 (Array (_ BitVec 32) ValueCell!18414)) (size!50955 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104437)

(declare-fun mapDefault!59716 () ValueCell!18414)

(assert (=> b!1564702 (= condMapEmpty!59716 (= (arr!50404 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18414)) mapDefault!59716)))))

(declare-fun b!1564703 () Bool)

(declare-fun tp_is_empty!38889 () Bool)

(assert (=> b!1564703 (= e!872155 tp_is_empty!38889)))

(declare-fun b!1564704 () Bool)

(declare-fun res!1069763 () Bool)

(assert (=> b!1564704 (=> (not res!1069763) (not e!872154))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564704 (= res!1069763 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50954 _keys!637)) (bvslt from!782 (size!50954 _keys!637))))))

(declare-fun mapIsEmpty!59716 () Bool)

(assert (=> mapIsEmpty!59716 mapRes!59716))

(declare-fun res!1069765 () Bool)

(assert (=> start!133874 (=> (not res!1069765) (not e!872154))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133874 (= res!1069765 (validMask!0 mask!947))))

(assert (=> start!133874 e!872154))

(assert (=> start!133874 true))

(declare-fun array_inv!39091 (array!104435) Bool)

(assert (=> start!133874 (array_inv!39091 _keys!637)))

(declare-fun array_inv!39092 (array!104437) Bool)

(assert (=> start!133874 (and (array_inv!39092 _values!487) e!872156)))

(declare-fun b!1564705 () Bool)

(declare-fun res!1069767 () Bool)

(assert (=> b!1564705 (=> (not res!1069767) (not e!872154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104435 (_ BitVec 32)) Bool)

(assert (=> b!1564705 (= res!1069767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564706 () Bool)

(declare-fun res!1069766 () Bool)

(assert (=> b!1564706 (=> (not res!1069766) (not e!872154))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564706 (= res!1069766 (and (= (size!50955 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50954 _keys!637) (size!50955 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564707 () Bool)

(declare-fun e!872153 () Bool)

(assert (=> b!1564707 (= e!872153 tp_is_empty!38889)))

(declare-fun mapNonEmpty!59716 () Bool)

(declare-fun tp!113642 () Bool)

(assert (=> mapNonEmpty!59716 (= mapRes!59716 (and tp!113642 e!872153))))

(declare-fun mapKey!59716 () (_ BitVec 32))

(declare-fun mapValue!59716 () ValueCell!18414)

(declare-fun mapRest!59716 () (Array (_ BitVec 32) ValueCell!18414))

(assert (=> mapNonEmpty!59716 (= (arr!50404 _values!487) (store mapRest!59716 mapKey!59716 mapValue!59716))))

(declare-fun b!1564708 () Bool)

(assert (=> b!1564708 (= e!872154 (bvsge (bvsub (size!50954 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!50954 _keys!637)) from!782)))))

(declare-fun b!1564709 () Bool)

(declare-fun res!1069762 () Bool)

(assert (=> b!1564709 (=> (not res!1069762) (not e!872154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564709 (= res!1069762 (validKeyInArray!0 (select (arr!50403 _keys!637) from!782)))))

(assert (= (and start!133874 res!1069765) b!1564706))

(assert (= (and b!1564706 res!1069766) b!1564705))

(assert (= (and b!1564705 res!1069767) b!1564701))

(assert (= (and b!1564701 res!1069764) b!1564704))

(assert (= (and b!1564704 res!1069763) b!1564709))

(assert (= (and b!1564709 res!1069762) b!1564708))

(assert (= (and b!1564702 condMapEmpty!59716) mapIsEmpty!59716))

(assert (= (and b!1564702 (not condMapEmpty!59716)) mapNonEmpty!59716))

(get-info :version)

(assert (= (and mapNonEmpty!59716 ((_ is ValueCellFull!18414) mapValue!59716)) b!1564707))

(assert (= (and b!1564702 ((_ is ValueCellFull!18414) mapDefault!59716)) b!1564703))

(assert (= start!133874 b!1564702))

(declare-fun m!1439819 () Bool)

(assert (=> mapNonEmpty!59716 m!1439819))

(declare-fun m!1439821 () Bool)

(assert (=> b!1564705 m!1439821))

(declare-fun m!1439823 () Bool)

(assert (=> b!1564709 m!1439823))

(assert (=> b!1564709 m!1439823))

(declare-fun m!1439825 () Bool)

(assert (=> b!1564709 m!1439825))

(declare-fun m!1439827 () Bool)

(assert (=> b!1564701 m!1439827))

(declare-fun m!1439829 () Bool)

(assert (=> start!133874 m!1439829))

(declare-fun m!1439831 () Bool)

(assert (=> start!133874 m!1439831))

(declare-fun m!1439833 () Bool)

(assert (=> start!133874 m!1439833))

(check-sat (not b!1564709) (not mapNonEmpty!59716) (not b!1564701) (not start!133874) tp_is_empty!38889 (not b!1564705))
(check-sat)
(get-model)

(declare-fun b!1564747 () Bool)

(declare-fun e!872182 () Bool)

(declare-fun call!71858 () Bool)

(assert (=> b!1564747 (= e!872182 call!71858)))

(declare-fun b!1564748 () Bool)

(assert (=> b!1564748 (= e!872182 call!71858)))

(declare-fun b!1564749 () Bool)

(declare-fun e!872183 () Bool)

(declare-fun e!872181 () Bool)

(assert (=> b!1564749 (= e!872183 e!872181)))

(declare-fun res!1069794 () Bool)

(assert (=> b!1564749 (=> (not res!1069794) (not e!872181))))

(declare-fun e!872180 () Bool)

(assert (=> b!1564749 (= res!1069794 (not e!872180))))

(declare-fun res!1069792 () Bool)

(assert (=> b!1564749 (=> (not res!1069792) (not e!872180))))

(assert (=> b!1564749 (= res!1069792 (validKeyInArray!0 (select (arr!50403 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71855 () Bool)

(declare-fun c!144188 () Bool)

(assert (=> bm!71855 (= call!71858 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144188 (Cons!36739 (select (arr!50403 _keys!637) #b00000000000000000000000000000000) Nil!36740) Nil!36740)))))

(declare-fun b!1564750 () Bool)

(assert (=> b!1564750 (= e!872181 e!872182)))

(assert (=> b!1564750 (= c!144188 (validKeyInArray!0 (select (arr!50403 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564751 () Bool)

(declare-fun contains!10340 (List!36743 (_ BitVec 64)) Bool)

(assert (=> b!1564751 (= e!872180 (contains!10340 Nil!36740 (select (arr!50403 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163059 () Bool)

(declare-fun res!1069793 () Bool)

(assert (=> d!163059 (=> res!1069793 e!872183)))

(assert (=> d!163059 (= res!1069793 (bvsge #b00000000000000000000000000000000 (size!50954 _keys!637)))))

(assert (=> d!163059 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36740) e!872183)))

(assert (= (and d!163059 (not res!1069793)) b!1564749))

(assert (= (and b!1564749 res!1069792) b!1564751))

(assert (= (and b!1564749 res!1069794) b!1564750))

(assert (= (and b!1564750 c!144188) b!1564748))

(assert (= (and b!1564750 (not c!144188)) b!1564747))

(assert (= (or b!1564748 b!1564747) bm!71855))

(declare-fun m!1439851 () Bool)

(assert (=> b!1564749 m!1439851))

(assert (=> b!1564749 m!1439851))

(declare-fun m!1439853 () Bool)

(assert (=> b!1564749 m!1439853))

(assert (=> bm!71855 m!1439851))

(declare-fun m!1439855 () Bool)

(assert (=> bm!71855 m!1439855))

(assert (=> b!1564750 m!1439851))

(assert (=> b!1564750 m!1439851))

(assert (=> b!1564750 m!1439853))

(assert (=> b!1564751 m!1439851))

(assert (=> b!1564751 m!1439851))

(declare-fun m!1439857 () Bool)

(assert (=> b!1564751 m!1439857))

(assert (=> b!1564701 d!163059))

(declare-fun d!163061 () Bool)

(declare-fun res!1069799 () Bool)

(declare-fun e!872192 () Bool)

(assert (=> d!163061 (=> res!1069799 e!872192)))

(assert (=> d!163061 (= res!1069799 (bvsge #b00000000000000000000000000000000 (size!50954 _keys!637)))))

(assert (=> d!163061 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!872192)))

(declare-fun b!1564760 () Bool)

(declare-fun e!872191 () Bool)

(declare-fun call!71861 () Bool)

(assert (=> b!1564760 (= e!872191 call!71861)))

(declare-fun b!1564761 () Bool)

(assert (=> b!1564761 (= e!872192 e!872191)))

(declare-fun c!144191 () Bool)

(assert (=> b!1564761 (= c!144191 (validKeyInArray!0 (select (arr!50403 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71858 () Bool)

(assert (=> bm!71858 (= call!71861 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1564762 () Bool)

(declare-fun e!872190 () Bool)

(assert (=> b!1564762 (= e!872190 call!71861)))

(declare-fun b!1564763 () Bool)

(assert (=> b!1564763 (= e!872191 e!872190)))

(declare-fun lt!672037 () (_ BitVec 64))

(assert (=> b!1564763 (= lt!672037 (select (arr!50403 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51932 0))(
  ( (Unit!51933) )
))
(declare-fun lt!672036 () Unit!51932)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104435 (_ BitVec 64) (_ BitVec 32)) Unit!51932)

(assert (=> b!1564763 (= lt!672036 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672037 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1564763 (arrayContainsKey!0 _keys!637 lt!672037 #b00000000000000000000000000000000)))

(declare-fun lt!672038 () Unit!51932)

(assert (=> b!1564763 (= lt!672038 lt!672036)))

(declare-fun res!1069800 () Bool)

(declare-datatypes ((SeekEntryResult!13521 0))(
  ( (MissingZero!13521 (index!56481 (_ BitVec 32))) (Found!13521 (index!56482 (_ BitVec 32))) (Intermediate!13521 (undefined!14333 Bool) (index!56483 (_ BitVec 32)) (x!140556 (_ BitVec 32))) (Undefined!13521) (MissingVacant!13521 (index!56484 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104435 (_ BitVec 32)) SeekEntryResult!13521)

(assert (=> b!1564763 (= res!1069800 (= (seekEntryOrOpen!0 (select (arr!50403 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13521 #b00000000000000000000000000000000)))))

(assert (=> b!1564763 (=> (not res!1069800) (not e!872190))))

(assert (= (and d!163061 (not res!1069799)) b!1564761))

(assert (= (and b!1564761 c!144191) b!1564763))

(assert (= (and b!1564761 (not c!144191)) b!1564760))

(assert (= (and b!1564763 res!1069800) b!1564762))

(assert (= (or b!1564762 b!1564760) bm!71858))

(assert (=> b!1564761 m!1439851))

(assert (=> b!1564761 m!1439851))

(assert (=> b!1564761 m!1439853))

(declare-fun m!1439859 () Bool)

(assert (=> bm!71858 m!1439859))

(assert (=> b!1564763 m!1439851))

(declare-fun m!1439861 () Bool)

(assert (=> b!1564763 m!1439861))

(declare-fun m!1439863 () Bool)

(assert (=> b!1564763 m!1439863))

(assert (=> b!1564763 m!1439851))

(declare-fun m!1439865 () Bool)

(assert (=> b!1564763 m!1439865))

(assert (=> b!1564705 d!163061))

(declare-fun d!163063 () Bool)

(assert (=> d!163063 (= (validKeyInArray!0 (select (arr!50403 _keys!637) from!782)) (and (not (= (select (arr!50403 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50403 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1564709 d!163063))

(declare-fun d!163065 () Bool)

(assert (=> d!163065 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133874 d!163065))

(declare-fun d!163067 () Bool)

(assert (=> d!163067 (= (array_inv!39091 _keys!637) (bvsge (size!50954 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133874 d!163067))

(declare-fun d!163069 () Bool)

(assert (=> d!163069 (= (array_inv!39092 _values!487) (bvsge (size!50955 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133874 d!163069))

(declare-fun condMapEmpty!59722 () Bool)

(declare-fun mapDefault!59722 () ValueCell!18414)

(assert (=> mapNonEmpty!59716 (= condMapEmpty!59722 (= mapRest!59716 ((as const (Array (_ BitVec 32) ValueCell!18414)) mapDefault!59722)))))

(declare-fun e!872198 () Bool)

(declare-fun mapRes!59722 () Bool)

(assert (=> mapNonEmpty!59716 (= tp!113642 (and e!872198 mapRes!59722))))

(declare-fun mapIsEmpty!59722 () Bool)

(assert (=> mapIsEmpty!59722 mapRes!59722))

(declare-fun b!1564770 () Bool)

(declare-fun e!872197 () Bool)

(assert (=> b!1564770 (= e!872197 tp_is_empty!38889)))

(declare-fun mapNonEmpty!59722 () Bool)

(declare-fun tp!113648 () Bool)

(assert (=> mapNonEmpty!59722 (= mapRes!59722 (and tp!113648 e!872197))))

(declare-fun mapRest!59722 () (Array (_ BitVec 32) ValueCell!18414))

(declare-fun mapKey!59722 () (_ BitVec 32))

(declare-fun mapValue!59722 () ValueCell!18414)

(assert (=> mapNonEmpty!59722 (= mapRest!59716 (store mapRest!59722 mapKey!59722 mapValue!59722))))

(declare-fun b!1564771 () Bool)

(assert (=> b!1564771 (= e!872198 tp_is_empty!38889)))

(assert (= (and mapNonEmpty!59716 condMapEmpty!59722) mapIsEmpty!59722))

(assert (= (and mapNonEmpty!59716 (not condMapEmpty!59722)) mapNonEmpty!59722))

(assert (= (and mapNonEmpty!59722 ((_ is ValueCellFull!18414) mapValue!59722)) b!1564770))

(assert (= (and mapNonEmpty!59716 ((_ is ValueCellFull!18414) mapDefault!59722)) b!1564771))

(declare-fun m!1439867 () Bool)

(assert (=> mapNonEmpty!59722 m!1439867))

(check-sat (not b!1564761) (not mapNonEmpty!59722) (not b!1564750) (not b!1564749) (not b!1564751) tp_is_empty!38889 (not bm!71855) (not bm!71858) (not b!1564763))
(check-sat)
