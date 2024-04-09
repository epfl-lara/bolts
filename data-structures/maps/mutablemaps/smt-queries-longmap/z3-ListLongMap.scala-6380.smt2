; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82046 () Bool)

(assert start!82046)

(declare-fun b_free!18441 () Bool)

(declare-fun b_next!18441 () Bool)

(assert (=> start!82046 (= b_free!18441 (not b_next!18441))))

(declare-fun tp!64132 () Bool)

(declare-fun b_and!29945 () Bool)

(assert (=> start!82046 (= tp!64132 b_and!29945)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!33059 0))(
  ( (V!33060 (val!10579 Int)) )
))
(declare-fun zeroValue!1139 () V!33059)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58231 0))(
  ( (array!58232 (arr!27991 (Array (_ BitVec 32) (_ BitVec 64))) (size!28471 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58231)

(declare-datatypes ((ValueCell!10047 0))(
  ( (ValueCellFull!10047 (v!13134 V!33059)) (EmptyCell!10047) )
))
(declare-datatypes ((array!58233 0))(
  ( (array!58234 (arr!27992 (Array (_ BitVec 32) ValueCell!10047)) (size!28472 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58233)

(declare-fun e!538982 () Bool)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun b!956410 () Bool)

(declare-fun minValue!1139 () V!33059)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13786 0))(
  ( (tuple2!13787 (_1!6903 (_ BitVec 64)) (_2!6903 V!33059)) )
))
(declare-datatypes ((List!19630 0))(
  ( (Nil!19627) (Cons!19626 (h!20788 tuple2!13786) (t!27999 List!19630)) )
))
(declare-datatypes ((ListLongMap!12497 0))(
  ( (ListLongMap!12498 (toList!6264 List!19630)) )
))
(declare-fun contains!5314 (ListLongMap!12497 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3449 (array!58231 array!58233 (_ BitVec 32) (_ BitVec 32) V!33059 V!33059 (_ BitVec 32) Int) ListLongMap!12497)

(assert (=> b!956410 (= e!538982 (not (contains!5314 (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27991 _keys!1441) i!735))))))

(declare-fun res!640485 () Bool)

(assert (=> start!82046 (=> (not res!640485) (not e!538982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82046 (= res!640485 (validMask!0 mask!1823))))

(assert (=> start!82046 e!538982))

(assert (=> start!82046 true))

(declare-fun tp_is_empty!21057 () Bool)

(assert (=> start!82046 tp_is_empty!21057))

(declare-fun array_inv!21657 (array!58231) Bool)

(assert (=> start!82046 (array_inv!21657 _keys!1441)))

(declare-fun e!538983 () Bool)

(declare-fun array_inv!21658 (array!58233) Bool)

(assert (=> start!82046 (and (array_inv!21658 _values!1197) e!538983)))

(assert (=> start!82046 tp!64132))

(declare-fun b!956411 () Bool)

(declare-fun e!538985 () Bool)

(assert (=> b!956411 (= e!538985 tp_is_empty!21057)))

(declare-fun b!956412 () Bool)

(declare-fun e!538986 () Bool)

(assert (=> b!956412 (= e!538986 tp_is_empty!21057)))

(declare-fun b!956413 () Bool)

(declare-fun mapRes!33547 () Bool)

(assert (=> b!956413 (= e!538983 (and e!538986 mapRes!33547))))

(declare-fun condMapEmpty!33547 () Bool)

(declare-fun mapDefault!33547 () ValueCell!10047)

(assert (=> b!956413 (= condMapEmpty!33547 (= (arr!27992 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10047)) mapDefault!33547)))))

(declare-fun b!956414 () Bool)

(declare-fun res!640484 () Bool)

(assert (=> b!956414 (=> (not res!640484) (not e!538982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956414 (= res!640484 (validKeyInArray!0 (select (arr!27991 _keys!1441) i!735)))))

(declare-fun b!956415 () Bool)

(declare-fun res!640481 () Bool)

(assert (=> b!956415 (=> (not res!640481) (not e!538982))))

(declare-datatypes ((List!19631 0))(
  ( (Nil!19628) (Cons!19627 (h!20789 (_ BitVec 64)) (t!28000 List!19631)) )
))
(declare-fun arrayNoDuplicates!0 (array!58231 (_ BitVec 32) List!19631) Bool)

(assert (=> b!956415 (= res!640481 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19628))))

(declare-fun b!956416 () Bool)

(declare-fun res!640483 () Bool)

(assert (=> b!956416 (=> (not res!640483) (not e!538982))))

(assert (=> b!956416 (= res!640483 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28471 _keys!1441))))))

(declare-fun mapNonEmpty!33547 () Bool)

(declare-fun tp!64131 () Bool)

(assert (=> mapNonEmpty!33547 (= mapRes!33547 (and tp!64131 e!538985))))

(declare-fun mapValue!33547 () ValueCell!10047)

(declare-fun mapKey!33547 () (_ BitVec 32))

(declare-fun mapRest!33547 () (Array (_ BitVec 32) ValueCell!10047))

(assert (=> mapNonEmpty!33547 (= (arr!27992 _values!1197) (store mapRest!33547 mapKey!33547 mapValue!33547))))

(declare-fun mapIsEmpty!33547 () Bool)

(assert (=> mapIsEmpty!33547 mapRes!33547))

(declare-fun b!956417 () Bool)

(declare-fun res!640486 () Bool)

(assert (=> b!956417 (=> (not res!640486) (not e!538982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58231 (_ BitVec 32)) Bool)

(assert (=> b!956417 (= res!640486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956418 () Bool)

(declare-fun res!640482 () Bool)

(assert (=> b!956418 (=> (not res!640482) (not e!538982))))

(assert (=> b!956418 (= res!640482 (and (= (size!28472 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28471 _keys!1441) (size!28472 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(assert (= (and start!82046 res!640485) b!956418))

(assert (= (and b!956418 res!640482) b!956417))

(assert (= (and b!956417 res!640486) b!956415))

(assert (= (and b!956415 res!640481) b!956416))

(assert (= (and b!956416 res!640483) b!956414))

(assert (= (and b!956414 res!640484) b!956410))

(assert (= (and b!956413 condMapEmpty!33547) mapIsEmpty!33547))

(assert (= (and b!956413 (not condMapEmpty!33547)) mapNonEmpty!33547))

(get-info :version)

(assert (= (and mapNonEmpty!33547 ((_ is ValueCellFull!10047) mapValue!33547)) b!956411))

(assert (= (and b!956413 ((_ is ValueCellFull!10047) mapDefault!33547)) b!956412))

(assert (= start!82046 b!956413))

(declare-fun m!887753 () Bool)

(assert (=> start!82046 m!887753))

(declare-fun m!887755 () Bool)

(assert (=> start!82046 m!887755))

(declare-fun m!887757 () Bool)

(assert (=> start!82046 m!887757))

(declare-fun m!887759 () Bool)

(assert (=> b!956410 m!887759))

(declare-fun m!887761 () Bool)

(assert (=> b!956410 m!887761))

(assert (=> b!956410 m!887759))

(assert (=> b!956410 m!887761))

(declare-fun m!887763 () Bool)

(assert (=> b!956410 m!887763))

(declare-fun m!887765 () Bool)

(assert (=> b!956417 m!887765))

(declare-fun m!887767 () Bool)

(assert (=> b!956415 m!887767))

(assert (=> b!956414 m!887761))

(assert (=> b!956414 m!887761))

(declare-fun m!887769 () Bool)

(assert (=> b!956414 m!887769))

(declare-fun m!887771 () Bool)

(assert (=> mapNonEmpty!33547 m!887771))

(check-sat tp_is_empty!21057 b_and!29945 (not b!956410) (not b!956415) (not b_next!18441) (not b!956414) (not start!82046) (not mapNonEmpty!33547) (not b!956417))
(check-sat b_and!29945 (not b_next!18441))
(get-model)

(declare-fun d!115761 () Bool)

(declare-fun e!539006 () Bool)

(assert (=> d!115761 e!539006))

(declare-fun res!640507 () Bool)

(assert (=> d!115761 (=> res!640507 e!539006)))

(declare-fun lt!430111 () Bool)

(assert (=> d!115761 (= res!640507 (not lt!430111))))

(declare-fun lt!430114 () Bool)

(assert (=> d!115761 (= lt!430111 lt!430114)))

(declare-datatypes ((Unit!32123 0))(
  ( (Unit!32124) )
))
(declare-fun lt!430112 () Unit!32123)

(declare-fun e!539007 () Unit!32123)

(assert (=> d!115761 (= lt!430112 e!539007)))

(declare-fun c!99787 () Bool)

(assert (=> d!115761 (= c!99787 lt!430114)))

(declare-fun containsKey!476 (List!19630 (_ BitVec 64)) Bool)

(assert (=> d!115761 (= lt!430114 (containsKey!476 (toList!6264 (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205)) (select (arr!27991 _keys!1441) i!735)))))

(assert (=> d!115761 (= (contains!5314 (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27991 _keys!1441) i!735)) lt!430111)))

(declare-fun b!956452 () Bool)

(declare-fun lt!430113 () Unit!32123)

(assert (=> b!956452 (= e!539007 lt!430113)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!371 (List!19630 (_ BitVec 64)) Unit!32123)

(assert (=> b!956452 (= lt!430113 (lemmaContainsKeyImpliesGetValueByKeyDefined!371 (toList!6264 (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205)) (select (arr!27991 _keys!1441) i!735)))))

(declare-datatypes ((Option!517 0))(
  ( (Some!516 (v!13136 V!33059)) (None!515) )
))
(declare-fun isDefined!381 (Option!517) Bool)

(declare-fun getValueByKey!511 (List!19630 (_ BitVec 64)) Option!517)

(assert (=> b!956452 (isDefined!381 (getValueByKey!511 (toList!6264 (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205)) (select (arr!27991 _keys!1441) i!735)))))

(declare-fun b!956453 () Bool)

(declare-fun Unit!32125 () Unit!32123)

(assert (=> b!956453 (= e!539007 Unit!32125)))

(declare-fun b!956454 () Bool)

(assert (=> b!956454 (= e!539006 (isDefined!381 (getValueByKey!511 (toList!6264 (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205)) (select (arr!27991 _keys!1441) i!735))))))

(assert (= (and d!115761 c!99787) b!956452))

(assert (= (and d!115761 (not c!99787)) b!956453))

(assert (= (and d!115761 (not res!640507)) b!956454))

(assert (=> d!115761 m!887761))

(declare-fun m!887793 () Bool)

(assert (=> d!115761 m!887793))

(assert (=> b!956452 m!887761))

(declare-fun m!887795 () Bool)

(assert (=> b!956452 m!887795))

(assert (=> b!956452 m!887761))

(declare-fun m!887797 () Bool)

(assert (=> b!956452 m!887797))

(assert (=> b!956452 m!887797))

(declare-fun m!887799 () Bool)

(assert (=> b!956452 m!887799))

(assert (=> b!956454 m!887761))

(assert (=> b!956454 m!887797))

(assert (=> b!956454 m!887797))

(assert (=> b!956454 m!887799))

(assert (=> b!956410 d!115761))

(declare-fun b!956497 () Bool)

(declare-fun e!539034 () Bool)

(assert (=> b!956497 (= e!539034 (validKeyInArray!0 (select (arr!27991 _keys!1441) i!735)))))

(declare-fun b!956498 () Bool)

(declare-fun e!539043 () Bool)

(declare-fun call!41696 () Bool)

(assert (=> b!956498 (= e!539043 (not call!41696))))

(declare-fun b!956499 () Bool)

(declare-fun e!539038 () ListLongMap!12497)

(declare-fun call!41698 () ListLongMap!12497)

(assert (=> b!956499 (= e!539038 call!41698)))

(declare-fun bm!41690 () Bool)

(declare-fun lt!430176 () ListLongMap!12497)

(assert (=> bm!41690 (= call!41696 (contains!5314 lt!430176 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!539044 () Bool)

(declare-fun b!956500 () Bool)

(declare-fun apply!924 (ListLongMap!12497 (_ BitVec 64)) V!33059)

(declare-fun get!14693 (ValueCell!10047 V!33059) V!33059)

(declare-fun dynLambda!1677 (Int (_ BitVec 64)) V!33059)

(assert (=> b!956500 (= e!539044 (= (apply!924 lt!430176 (select (arr!27991 _keys!1441) i!735)) (get!14693 (select (arr!27992 _values!1197) i!735) (dynLambda!1677 defaultEntry!1205 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!956500 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28472 _values!1197)))))

(assert (=> b!956500 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28471 _keys!1441)))))

(declare-fun b!956501 () Bool)

(declare-fun e!539035 () ListLongMap!12497)

(declare-fun call!41694 () ListLongMap!12497)

(declare-fun +!2838 (ListLongMap!12497 tuple2!13786) ListLongMap!12497)

(assert (=> b!956501 (= e!539035 (+!2838 call!41694 (tuple2!13787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1139)))))

(declare-fun b!956502 () Bool)

(declare-fun e!539041 () Bool)

(declare-fun call!41695 () Bool)

(assert (=> b!956502 (= e!539041 (not call!41695))))

(declare-fun b!956503 () Bool)

(declare-fun call!41699 () ListLongMap!12497)

(assert (=> b!956503 (= e!539038 call!41699)))

(declare-fun b!956504 () Bool)

(declare-fun e!539039 () Unit!32123)

(declare-fun lt!430165 () Unit!32123)

(assert (=> b!956504 (= e!539039 lt!430165)))

(declare-fun lt!430169 () ListLongMap!12497)

(declare-fun getCurrentListMapNoExtraKeys!3344 (array!58231 array!58233 (_ BitVec 32) (_ BitVec 32) V!33059 V!33059 (_ BitVec 32) Int) ListLongMap!12497)

(assert (=> b!956504 (= lt!430169 (getCurrentListMapNoExtraKeys!3344 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205))))

(declare-fun lt!430159 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430159 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!430170 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430170 (select (arr!27991 _keys!1441) i!735))))

(declare-fun lt!430166 () Unit!32123)

(declare-fun addStillContains!594 (ListLongMap!12497 (_ BitVec 64) V!33059 (_ BitVec 64)) Unit!32123)

(assert (=> b!956504 (= lt!430166 (addStillContains!594 lt!430169 lt!430159 zeroValue!1139 lt!430170))))

(assert (=> b!956504 (contains!5314 (+!2838 lt!430169 (tuple2!13787 lt!430159 zeroValue!1139)) lt!430170)))

(declare-fun lt!430174 () Unit!32123)

(assert (=> b!956504 (= lt!430174 lt!430166)))

(declare-fun lt!430178 () ListLongMap!12497)

(assert (=> b!956504 (= lt!430178 (getCurrentListMapNoExtraKeys!3344 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205))))

(declare-fun lt!430175 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430175 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!430177 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430177 (select (arr!27991 _keys!1441) i!735))))

(declare-fun lt!430171 () Unit!32123)

(declare-fun addApplyDifferent!468 (ListLongMap!12497 (_ BitVec 64) V!33059 (_ BitVec 64)) Unit!32123)

(assert (=> b!956504 (= lt!430171 (addApplyDifferent!468 lt!430178 lt!430175 minValue!1139 lt!430177))))

(assert (=> b!956504 (= (apply!924 (+!2838 lt!430178 (tuple2!13787 lt!430175 minValue!1139)) lt!430177) (apply!924 lt!430178 lt!430177))))

(declare-fun lt!430172 () Unit!32123)

(assert (=> b!956504 (= lt!430172 lt!430171)))

(declare-fun lt!430160 () ListLongMap!12497)

(assert (=> b!956504 (= lt!430160 (getCurrentListMapNoExtraKeys!3344 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205))))

(declare-fun lt!430173 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430173 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!430163 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430163 (select (arr!27991 _keys!1441) i!735))))

(declare-fun lt!430161 () Unit!32123)

(assert (=> b!956504 (= lt!430161 (addApplyDifferent!468 lt!430160 lt!430173 zeroValue!1139 lt!430163))))

(assert (=> b!956504 (= (apply!924 (+!2838 lt!430160 (tuple2!13787 lt!430173 zeroValue!1139)) lt!430163) (apply!924 lt!430160 lt!430163))))

(declare-fun lt!430168 () Unit!32123)

(assert (=> b!956504 (= lt!430168 lt!430161)))

(declare-fun lt!430179 () ListLongMap!12497)

(assert (=> b!956504 (= lt!430179 (getCurrentListMapNoExtraKeys!3344 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205))))

(declare-fun lt!430164 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430164 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!430180 () (_ BitVec 64))

(assert (=> b!956504 (= lt!430180 (select (arr!27991 _keys!1441) i!735))))

(assert (=> b!956504 (= lt!430165 (addApplyDifferent!468 lt!430179 lt!430164 minValue!1139 lt!430180))))

(assert (=> b!956504 (= (apply!924 (+!2838 lt!430179 (tuple2!13787 lt!430164 minValue!1139)) lt!430180) (apply!924 lt!430179 lt!430180))))

(declare-fun call!41693 () ListLongMap!12497)

(declare-fun bm!41691 () Bool)

(assert (=> bm!41691 (= call!41693 (getCurrentListMapNoExtraKeys!3344 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205))))

(declare-fun b!956505 () Bool)

(declare-fun Unit!32126 () Unit!32123)

(assert (=> b!956505 (= e!539039 Unit!32126)))

(declare-fun b!956506 () Bool)

(declare-fun e!539040 () ListLongMap!12497)

(assert (=> b!956506 (= e!539040 call!41698)))

(declare-fun bm!41692 () Bool)

(declare-fun call!41697 () ListLongMap!12497)

(assert (=> bm!41692 (= call!41699 call!41697)))

(declare-fun b!956507 () Bool)

(declare-fun e!539045 () Bool)

(assert (=> b!956507 (= e!539045 (validKeyInArray!0 (select (arr!27991 _keys!1441) i!735)))))

(declare-fun b!956508 () Bool)

(declare-fun e!539037 () Bool)

(assert (=> b!956508 (= e!539037 (= (apply!924 lt!430176 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1139))))

(declare-fun b!956509 () Bool)

(declare-fun e!539042 () Bool)

(assert (=> b!956509 (= e!539042 e!539044)))

(declare-fun res!640531 () Bool)

(assert (=> b!956509 (=> (not res!640531) (not e!539044))))

(assert (=> b!956509 (= res!640531 (contains!5314 lt!430176 (select (arr!27991 _keys!1441) i!735)))))

(assert (=> b!956509 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28471 _keys!1441)))))

(declare-fun b!956510 () Bool)

(declare-fun res!640529 () Bool)

(declare-fun e!539046 () Bool)

(assert (=> b!956510 (=> (not res!640529) (not e!539046))))

(assert (=> b!956510 (= res!640529 e!539043)))

(declare-fun c!99804 () Bool)

(assert (=> b!956510 (= c!99804 (not (= (bvand extraKeys!1118 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!956511 () Bool)

(assert (=> b!956511 (= e!539046 e!539041)))

(declare-fun c!99803 () Bool)

(assert (=> b!956511 (= c!99803 (not (= (bvand extraKeys!1118 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!956512 () Bool)

(assert (=> b!956512 (= e!539035 e!539040)))

(declare-fun c!99802 () Bool)

(assert (=> b!956512 (= c!99802 (and (not (= (bvand extraKeys!1118 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1118 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41693 () Bool)

(assert (=> bm!41693 (= call!41695 (contains!5314 lt!430176 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!956513 () Bool)

(declare-fun e!539036 () Bool)

(assert (=> b!956513 (= e!539043 e!539036)))

(declare-fun res!640532 () Bool)

(assert (=> b!956513 (= res!640532 call!41696)))

(assert (=> b!956513 (=> (not res!640532) (not e!539036))))

(declare-fun bm!41694 () Bool)

(assert (=> bm!41694 (= call!41698 call!41694)))

(declare-fun b!956514 () Bool)

(declare-fun c!99801 () Bool)

(assert (=> b!956514 (= c!99801 (and (not (= (bvand extraKeys!1118 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1118 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!956514 (= e!539040 e!539038)))

(declare-fun c!99805 () Bool)

(declare-fun bm!41695 () Bool)

(assert (=> bm!41695 (= call!41694 (+!2838 (ite c!99805 call!41693 (ite c!99802 call!41697 call!41699)) (ite (or c!99805 c!99802) (tuple2!13787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1139) (tuple2!13787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1139))))))

(declare-fun b!956515 () Bool)

(assert (=> b!956515 (= e!539041 e!539037)))

(declare-fun res!640534 () Bool)

(assert (=> b!956515 (= res!640534 call!41695)))

(assert (=> b!956515 (=> (not res!640534) (not e!539037))))

(declare-fun d!115763 () Bool)

(assert (=> d!115763 e!539046))

(declare-fun res!640528 () Bool)

(assert (=> d!115763 (=> (not res!640528) (not e!539046))))

(assert (=> d!115763 (= res!640528 (or (bvsge i!735 (size!28471 _keys!1441)) (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28471 _keys!1441)))))))

(declare-fun lt!430167 () ListLongMap!12497)

(assert (=> d!115763 (= lt!430176 lt!430167)))

(declare-fun lt!430162 () Unit!32123)

(assert (=> d!115763 (= lt!430162 e!539039)))

(declare-fun c!99800 () Bool)

(assert (=> d!115763 (= c!99800 e!539034)))

(declare-fun res!640533 () Bool)

(assert (=> d!115763 (=> (not res!640533) (not e!539034))))

(assert (=> d!115763 (= res!640533 (bvslt i!735 (size!28471 _keys!1441)))))

(assert (=> d!115763 (= lt!430167 e!539035)))

(assert (=> d!115763 (= c!99805 (and (not (= (bvand extraKeys!1118 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1118 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115763 (validMask!0 mask!1823)))

(assert (=> d!115763 (= (getCurrentListMap!3449 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) lt!430176)))

(declare-fun b!956516 () Bool)

(declare-fun res!640530 () Bool)

(assert (=> b!956516 (=> (not res!640530) (not e!539046))))

(assert (=> b!956516 (= res!640530 e!539042)))

(declare-fun res!640527 () Bool)

(assert (=> b!956516 (=> res!640527 e!539042)))

(assert (=> b!956516 (= res!640527 (not e!539045))))

(declare-fun res!640526 () Bool)

(assert (=> b!956516 (=> (not res!640526) (not e!539045))))

(assert (=> b!956516 (= res!640526 (bvslt i!735 (size!28471 _keys!1441)))))

(declare-fun b!956517 () Bool)

(assert (=> b!956517 (= e!539036 (= (apply!924 lt!430176 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1139))))

(declare-fun bm!41696 () Bool)

(assert (=> bm!41696 (= call!41697 call!41693)))

(assert (= (and d!115763 c!99805) b!956501))

(assert (= (and d!115763 (not c!99805)) b!956512))

(assert (= (and b!956512 c!99802) b!956506))

(assert (= (and b!956512 (not c!99802)) b!956514))

(assert (= (and b!956514 c!99801) b!956499))

(assert (= (and b!956514 (not c!99801)) b!956503))

(assert (= (or b!956499 b!956503) bm!41692))

(assert (= (or b!956506 bm!41692) bm!41696))

(assert (= (or b!956506 b!956499) bm!41694))

(assert (= (or b!956501 bm!41696) bm!41691))

(assert (= (or b!956501 bm!41694) bm!41695))

(assert (= (and d!115763 res!640533) b!956497))

(assert (= (and d!115763 c!99800) b!956504))

(assert (= (and d!115763 (not c!99800)) b!956505))

(assert (= (and d!115763 res!640528) b!956516))

(assert (= (and b!956516 res!640526) b!956507))

(assert (= (and b!956516 (not res!640527)) b!956509))

(assert (= (and b!956509 res!640531) b!956500))

(assert (= (and b!956516 res!640530) b!956510))

(assert (= (and b!956510 c!99804) b!956513))

(assert (= (and b!956510 (not c!99804)) b!956498))

(assert (= (and b!956513 res!640532) b!956517))

(assert (= (or b!956513 b!956498) bm!41690))

(assert (= (and b!956510 res!640529) b!956511))

(assert (= (and b!956511 c!99803) b!956515))

(assert (= (and b!956511 (not c!99803)) b!956502))

(assert (= (and b!956515 res!640534) b!956508))

(assert (= (or b!956515 b!956502) bm!41693))

(declare-fun b_lambda!14457 () Bool)

(assert (=> (not b_lambda!14457) (not b!956500)))

(declare-fun t!28002 () Bool)

(declare-fun tb!6221 () Bool)

(assert (=> (and start!82046 (= defaultEntry!1205 defaultEntry!1205) t!28002) tb!6221))

(declare-fun result!12379 () Bool)

(assert (=> tb!6221 (= result!12379 tp_is_empty!21057)))

(assert (=> b!956500 t!28002))

(declare-fun b_and!29949 () Bool)

(assert (= b_and!29945 (and (=> t!28002 result!12379) b_and!29949)))

(declare-fun m!887801 () Bool)

(assert (=> b!956517 m!887801))

(declare-fun m!887803 () Bool)

(assert (=> bm!41695 m!887803))

(assert (=> d!115763 m!887753))

(declare-fun m!887805 () Bool)

(assert (=> b!956504 m!887805))

(declare-fun m!887807 () Bool)

(assert (=> b!956504 m!887807))

(declare-fun m!887809 () Bool)

(assert (=> b!956504 m!887809))

(declare-fun m!887811 () Bool)

(assert (=> b!956504 m!887811))

(declare-fun m!887813 () Bool)

(assert (=> b!956504 m!887813))

(declare-fun m!887815 () Bool)

(assert (=> b!956504 m!887815))

(declare-fun m!887817 () Bool)

(assert (=> b!956504 m!887817))

(declare-fun m!887819 () Bool)

(assert (=> b!956504 m!887819))

(assert (=> b!956504 m!887815))

(declare-fun m!887821 () Bool)

(assert (=> b!956504 m!887821))

(assert (=> b!956504 m!887813))

(declare-fun m!887823 () Bool)

(assert (=> b!956504 m!887823))

(declare-fun m!887825 () Bool)

(assert (=> b!956504 m!887825))

(declare-fun m!887827 () Bool)

(assert (=> b!956504 m!887827))

(declare-fun m!887829 () Bool)

(assert (=> b!956504 m!887829))

(assert (=> b!956504 m!887817))

(declare-fun m!887831 () Bool)

(assert (=> b!956504 m!887831))

(assert (=> b!956504 m!887825))

(declare-fun m!887833 () Bool)

(assert (=> b!956504 m!887833))

(declare-fun m!887835 () Bool)

(assert (=> b!956504 m!887835))

(assert (=> b!956504 m!887761))

(assert (=> b!956507 m!887761))

(assert (=> b!956507 m!887761))

(assert (=> b!956507 m!887769))

(declare-fun m!887837 () Bool)

(assert (=> b!956508 m!887837))

(declare-fun m!887839 () Bool)

(assert (=> b!956500 m!887839))

(declare-fun m!887841 () Bool)

(assert (=> b!956500 m!887841))

(declare-fun m!887843 () Bool)

(assert (=> b!956500 m!887843))

(assert (=> b!956500 m!887841))

(assert (=> b!956500 m!887839))

(assert (=> b!956500 m!887761))

(declare-fun m!887845 () Bool)

(assert (=> b!956500 m!887845))

(assert (=> b!956500 m!887761))

(assert (=> b!956509 m!887761))

(assert (=> b!956509 m!887761))

(declare-fun m!887847 () Bool)

(assert (=> b!956509 m!887847))

(declare-fun m!887849 () Bool)

(assert (=> bm!41693 m!887849))

(declare-fun m!887851 () Bool)

(assert (=> bm!41690 m!887851))

(assert (=> bm!41691 m!887835))

(assert (=> b!956497 m!887761))

(assert (=> b!956497 m!887761))

(assert (=> b!956497 m!887769))

(declare-fun m!887853 () Bool)

(assert (=> b!956501 m!887853))

(assert (=> b!956410 d!115763))

(declare-fun b!956530 () Bool)

(declare-fun e!539055 () Bool)

(declare-fun contains!5315 (List!19631 (_ BitVec 64)) Bool)

(assert (=> b!956530 (= e!539055 (contains!5315 Nil!19628 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun b!956531 () Bool)

(declare-fun e!539057 () Bool)

(declare-fun call!41702 () Bool)

(assert (=> b!956531 (= e!539057 call!41702)))

(declare-fun b!956532 () Bool)

(declare-fun e!539056 () Bool)

(declare-fun e!539058 () Bool)

(assert (=> b!956532 (= e!539056 e!539058)))

(declare-fun res!640541 () Bool)

(assert (=> b!956532 (=> (not res!640541) (not e!539058))))

(assert (=> b!956532 (= res!640541 (not e!539055))))

(declare-fun res!640543 () Bool)

(assert (=> b!956532 (=> (not res!640543) (not e!539055))))

(assert (=> b!956532 (= res!640543 (validKeyInArray!0 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun b!956533 () Bool)

(assert (=> b!956533 (= e!539058 e!539057)))

(declare-fun c!99808 () Bool)

(assert (=> b!956533 (= c!99808 (validKeyInArray!0 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun b!956534 () Bool)

(assert (=> b!956534 (= e!539057 call!41702)))

(declare-fun bm!41699 () Bool)

(assert (=> bm!41699 (= call!41702 (arrayNoDuplicates!0 _keys!1441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99808 (Cons!19627 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000) Nil!19628) Nil!19628)))))

(declare-fun d!115765 () Bool)

(declare-fun res!640542 () Bool)

(assert (=> d!115765 (=> res!640542 e!539056)))

(assert (=> d!115765 (= res!640542 (bvsge #b00000000000000000000000000000000 (size!28471 _keys!1441)))))

(assert (=> d!115765 (= (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19628) e!539056)))

(assert (= (and d!115765 (not res!640542)) b!956532))

(assert (= (and b!956532 res!640543) b!956530))

(assert (= (and b!956532 res!640541) b!956533))

(assert (= (and b!956533 c!99808) b!956531))

(assert (= (and b!956533 (not c!99808)) b!956534))

(assert (= (or b!956531 b!956534) bm!41699))

(declare-fun m!887855 () Bool)

(assert (=> b!956530 m!887855))

(assert (=> b!956530 m!887855))

(declare-fun m!887857 () Bool)

(assert (=> b!956530 m!887857))

(assert (=> b!956532 m!887855))

(assert (=> b!956532 m!887855))

(declare-fun m!887859 () Bool)

(assert (=> b!956532 m!887859))

(assert (=> b!956533 m!887855))

(assert (=> b!956533 m!887855))

(assert (=> b!956533 m!887859))

(assert (=> bm!41699 m!887855))

(declare-fun m!887861 () Bool)

(assert (=> bm!41699 m!887861))

(assert (=> b!956415 d!115765))

(declare-fun d!115767 () Bool)

(assert (=> d!115767 (= (validMask!0 mask!1823) (and (or (= mask!1823 #b00000000000000000000000000000111) (= mask!1823 #b00000000000000000000000000001111) (= mask!1823 #b00000000000000000000000000011111) (= mask!1823 #b00000000000000000000000000111111) (= mask!1823 #b00000000000000000000000001111111) (= mask!1823 #b00000000000000000000000011111111) (= mask!1823 #b00000000000000000000000111111111) (= mask!1823 #b00000000000000000000001111111111) (= mask!1823 #b00000000000000000000011111111111) (= mask!1823 #b00000000000000000000111111111111) (= mask!1823 #b00000000000000000001111111111111) (= mask!1823 #b00000000000000000011111111111111) (= mask!1823 #b00000000000000000111111111111111) (= mask!1823 #b00000000000000001111111111111111) (= mask!1823 #b00000000000000011111111111111111) (= mask!1823 #b00000000000000111111111111111111) (= mask!1823 #b00000000000001111111111111111111) (= mask!1823 #b00000000000011111111111111111111) (= mask!1823 #b00000000000111111111111111111111) (= mask!1823 #b00000000001111111111111111111111) (= mask!1823 #b00000000011111111111111111111111) (= mask!1823 #b00000000111111111111111111111111) (= mask!1823 #b00000001111111111111111111111111) (= mask!1823 #b00000011111111111111111111111111) (= mask!1823 #b00000111111111111111111111111111) (= mask!1823 #b00001111111111111111111111111111) (= mask!1823 #b00011111111111111111111111111111) (= mask!1823 #b00111111111111111111111111111111)) (bvsle mask!1823 #b00111111111111111111111111111111)))))

(assert (=> start!82046 d!115767))

(declare-fun d!115769 () Bool)

(assert (=> d!115769 (= (array_inv!21657 _keys!1441) (bvsge (size!28471 _keys!1441) #b00000000000000000000000000000000))))

(assert (=> start!82046 d!115769))

(declare-fun d!115771 () Bool)

(assert (=> d!115771 (= (array_inv!21658 _values!1197) (bvsge (size!28472 _values!1197) #b00000000000000000000000000000000))))

(assert (=> start!82046 d!115771))

(declare-fun d!115773 () Bool)

(assert (=> d!115773 (= (validKeyInArray!0 (select (arr!27991 _keys!1441) i!735)) (and (not (= (select (arr!27991 _keys!1441) i!735) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27991 _keys!1441) i!735) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!956414 d!115773))

(declare-fun b!956543 () Bool)

(declare-fun e!539065 () Bool)

(declare-fun call!41705 () Bool)

(assert (=> b!956543 (= e!539065 call!41705)))

(declare-fun b!956544 () Bool)

(declare-fun e!539066 () Bool)

(assert (=> b!956544 (= e!539066 e!539065)))

(declare-fun c!99811 () Bool)

(assert (=> b!956544 (= c!99811 (validKeyInArray!0 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun d!115775 () Bool)

(declare-fun res!640548 () Bool)

(assert (=> d!115775 (=> res!640548 e!539066)))

(assert (=> d!115775 (= res!640548 (bvsge #b00000000000000000000000000000000 (size!28471 _keys!1441)))))

(assert (=> d!115775 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823) e!539066)))

(declare-fun b!956545 () Bool)

(declare-fun e!539067 () Bool)

(assert (=> b!956545 (= e!539065 e!539067)))

(declare-fun lt!430188 () (_ BitVec 64))

(assert (=> b!956545 (= lt!430188 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000))))

(declare-fun lt!430189 () Unit!32123)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58231 (_ BitVec 64) (_ BitVec 32)) Unit!32123)

(assert (=> b!956545 (= lt!430189 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1441 lt!430188 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!956545 (arrayContainsKey!0 _keys!1441 lt!430188 #b00000000000000000000000000000000)))

(declare-fun lt!430187 () Unit!32123)

(assert (=> b!956545 (= lt!430187 lt!430189)))

(declare-fun res!640549 () Bool)

(declare-datatypes ((SeekEntryResult!9176 0))(
  ( (MissingZero!9176 (index!39074 (_ BitVec 32))) (Found!9176 (index!39075 (_ BitVec 32))) (Intermediate!9176 (undefined!9988 Bool) (index!39076 (_ BitVec 32)) (x!82413 (_ BitVec 32))) (Undefined!9176) (MissingVacant!9176 (index!39077 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58231 (_ BitVec 32)) SeekEntryResult!9176)

(assert (=> b!956545 (= res!640549 (= (seekEntryOrOpen!0 (select (arr!27991 _keys!1441) #b00000000000000000000000000000000) _keys!1441 mask!1823) (Found!9176 #b00000000000000000000000000000000)))))

(assert (=> b!956545 (=> (not res!640549) (not e!539067))))

(declare-fun bm!41702 () Bool)

(assert (=> bm!41702 (= call!41705 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1441 mask!1823))))

(declare-fun b!956546 () Bool)

(assert (=> b!956546 (= e!539067 call!41705)))

(assert (= (and d!115775 (not res!640548)) b!956544))

(assert (= (and b!956544 c!99811) b!956545))

(assert (= (and b!956544 (not c!99811)) b!956543))

(assert (= (and b!956545 res!640549) b!956546))

(assert (= (or b!956546 b!956543) bm!41702))

(assert (=> b!956544 m!887855))

(assert (=> b!956544 m!887855))

(assert (=> b!956544 m!887859))

(assert (=> b!956545 m!887855))

(declare-fun m!887863 () Bool)

(assert (=> b!956545 m!887863))

(declare-fun m!887865 () Bool)

(assert (=> b!956545 m!887865))

(assert (=> b!956545 m!887855))

(declare-fun m!887867 () Bool)

(assert (=> b!956545 m!887867))

(declare-fun m!887869 () Bool)

(assert (=> bm!41702 m!887869))

(assert (=> b!956417 d!115775))

(declare-fun b!956554 () Bool)

(declare-fun e!539073 () Bool)

(assert (=> b!956554 (= e!539073 tp_is_empty!21057)))

(declare-fun mapNonEmpty!33553 () Bool)

(declare-fun mapRes!33553 () Bool)

(declare-fun tp!64141 () Bool)

(declare-fun e!539072 () Bool)

(assert (=> mapNonEmpty!33553 (= mapRes!33553 (and tp!64141 e!539072))))

(declare-fun mapKey!33553 () (_ BitVec 32))

(declare-fun mapRest!33553 () (Array (_ BitVec 32) ValueCell!10047))

(declare-fun mapValue!33553 () ValueCell!10047)

(assert (=> mapNonEmpty!33553 (= mapRest!33547 (store mapRest!33553 mapKey!33553 mapValue!33553))))

(declare-fun b!956553 () Bool)

(assert (=> b!956553 (= e!539072 tp_is_empty!21057)))

(declare-fun mapIsEmpty!33553 () Bool)

(assert (=> mapIsEmpty!33553 mapRes!33553))

(declare-fun condMapEmpty!33553 () Bool)

(declare-fun mapDefault!33553 () ValueCell!10047)

(assert (=> mapNonEmpty!33547 (= condMapEmpty!33553 (= mapRest!33547 ((as const (Array (_ BitVec 32) ValueCell!10047)) mapDefault!33553)))))

(assert (=> mapNonEmpty!33547 (= tp!64131 (and e!539073 mapRes!33553))))

(assert (= (and mapNonEmpty!33547 condMapEmpty!33553) mapIsEmpty!33553))

(assert (= (and mapNonEmpty!33547 (not condMapEmpty!33553)) mapNonEmpty!33553))

(assert (= (and mapNonEmpty!33553 ((_ is ValueCellFull!10047) mapValue!33553)) b!956553))

(assert (= (and mapNonEmpty!33547 ((_ is ValueCellFull!10047) mapDefault!33553)) b!956554))

(declare-fun m!887871 () Bool)

(assert (=> mapNonEmpty!33553 m!887871))

(declare-fun b_lambda!14459 () Bool)

(assert (= b_lambda!14457 (or (and start!82046 b_free!18441) b_lambda!14459)))

(check-sat (not b!956504) (not bm!41699) (not b!956452) tp_is_empty!21057 (not bm!41690) (not b!956454) (not bm!41693) (not b!956501) (not b!956545) (not b!956533) (not b!956509) (not b!956544) (not b!956508) (not b!956500) (not mapNonEmpty!33553) (not b!956517) b_and!29949 (not bm!41695) (not d!115761) (not bm!41702) (not b!956530) (not b!956497) (not b_next!18441) (not bm!41691) (not d!115763) (not b!956532) (not b_lambda!14459) (not b!956507))
(check-sat b_and!29949 (not b_next!18441))
