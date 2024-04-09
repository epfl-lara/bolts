; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112442 () Bool)

(assert start!112442)

(declare-fun b_free!30801 () Bool)

(declare-fun b_next!30801 () Bool)

(assert (=> start!112442 (= b_free!30801 (not b_next!30801))))

(declare-fun tp!108040 () Bool)

(declare-fun b_and!49653 () Bool)

(assert (=> start!112442 (= tp!108040 b_and!49653)))

(declare-fun b!1332575 () Bool)

(declare-fun e!759183 () Bool)

(declare-fun tp_is_empty!36711 () Bool)

(assert (=> b!1332575 (= e!759183 tp_is_empty!36711)))

(declare-fun b!1332576 () Bool)

(declare-fun res!884400 () Bool)

(declare-fun e!759180 () Bool)

(assert (=> b!1332576 (=> (not res!884400) (not e!759180))))

(declare-datatypes ((array!90271 0))(
  ( (array!90272 (arr!43597 (Array (_ BitVec 32) (_ BitVec 64))) (size!44148 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90271)

(declare-datatypes ((List!31082 0))(
  ( (Nil!31079) (Cons!31078 (h!32287 (_ BitVec 64)) (t!45287 List!31082)) )
))
(declare-fun arrayNoDuplicates!0 (array!90271 (_ BitVec 32) List!31082) Bool)

(assert (=> b!1332576 (= res!884400 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31079))))

(declare-fun b!1332577 () Bool)

(declare-fun e!759181 () Bool)

(assert (=> b!1332577 (= e!759181 tp_is_empty!36711)))

(declare-fun b!1332578 () Bool)

(declare-fun res!884398 () Bool)

(assert (=> b!1332578 (=> (not res!884398) (not e!759180))))

(declare-datatypes ((V!54051 0))(
  ( (V!54052 (val!18430 Int)) )
))
(declare-datatypes ((ValueCell!17457 0))(
  ( (ValueCellFull!17457 (v!21065 V!54051)) (EmptyCell!17457) )
))
(declare-datatypes ((array!90273 0))(
  ( (array!90274 (arr!43598 (Array (_ BitVec 32) ValueCell!17457)) (size!44149 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90273)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332578 (= res!884398 (and (= (size!44149 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44148 _keys!1590) (size!44149 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332579 () Bool)

(declare-fun res!884402 () Bool)

(assert (=> b!1332579 (=> (not res!884402) (not e!759180))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1332579 (= res!884402 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44148 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332580 () Bool)

(declare-fun e!759182 () Bool)

(declare-fun mapRes!56740 () Bool)

(assert (=> b!1332580 (= e!759182 (and e!759183 mapRes!56740))))

(declare-fun condMapEmpty!56740 () Bool)

(declare-fun mapDefault!56740 () ValueCell!17457)

(assert (=> b!1332580 (= condMapEmpty!56740 (= (arr!43598 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17457)) mapDefault!56740)))))

(declare-fun res!884399 () Bool)

(assert (=> start!112442 (=> (not res!884399) (not e!759180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112442 (= res!884399 (validMask!0 mask!1998))))

(assert (=> start!112442 e!759180))

(declare-fun array_inv!32829 (array!90273) Bool)

(assert (=> start!112442 (and (array_inv!32829 _values!1320) e!759182)))

(assert (=> start!112442 true))

(declare-fun array_inv!32830 (array!90271) Bool)

(assert (=> start!112442 (array_inv!32830 _keys!1590)))

(assert (=> start!112442 tp!108040))

(assert (=> start!112442 tp_is_empty!36711))

(declare-fun b!1332574 () Bool)

(assert (=> b!1332574 (= e!759180 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!591986 () Bool)

(declare-fun minValue!1262 () V!54051)

(declare-fun zeroValue!1262 () V!54051)

(declare-datatypes ((tuple2!23904 0))(
  ( (tuple2!23905 (_1!11962 (_ BitVec 64)) (_2!11962 V!54051)) )
))
(declare-datatypes ((List!31083 0))(
  ( (Nil!31080) (Cons!31079 (h!32288 tuple2!23904) (t!45288 List!31083)) )
))
(declare-datatypes ((ListLongMap!21573 0))(
  ( (ListLongMap!21574 (toList!10802 List!31083)) )
))
(declare-fun contains!8902 (ListLongMap!21573 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5723 (array!90271 array!90273 (_ BitVec 32) (_ BitVec 32) V!54051 V!54051 (_ BitVec 32) Int) ListLongMap!21573)

(assert (=> b!1332574 (= lt!591986 (contains!8902 (getCurrentListMap!5723 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapIsEmpty!56740 () Bool)

(assert (=> mapIsEmpty!56740 mapRes!56740))

(declare-fun mapNonEmpty!56740 () Bool)

(declare-fun tp!108041 () Bool)

(assert (=> mapNonEmpty!56740 (= mapRes!56740 (and tp!108041 e!759181))))

(declare-fun mapValue!56740 () ValueCell!17457)

(declare-fun mapKey!56740 () (_ BitVec 32))

(declare-fun mapRest!56740 () (Array (_ BitVec 32) ValueCell!17457))

(assert (=> mapNonEmpty!56740 (= (arr!43598 _values!1320) (store mapRest!56740 mapKey!56740 mapValue!56740))))

(declare-fun b!1332581 () Bool)

(declare-fun res!884401 () Bool)

(assert (=> b!1332581 (=> (not res!884401) (not e!759180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90271 (_ BitVec 32)) Bool)

(assert (=> b!1332581 (= res!884401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112442 res!884399) b!1332578))

(assert (= (and b!1332578 res!884398) b!1332581))

(assert (= (and b!1332581 res!884401) b!1332576))

(assert (= (and b!1332576 res!884400) b!1332579))

(assert (= (and b!1332579 res!884402) b!1332574))

(assert (= (and b!1332580 condMapEmpty!56740) mapIsEmpty!56740))

(assert (= (and b!1332580 (not condMapEmpty!56740)) mapNonEmpty!56740))

(get-info :version)

(assert (= (and mapNonEmpty!56740 ((_ is ValueCellFull!17457) mapValue!56740)) b!1332577))

(assert (= (and b!1332580 ((_ is ValueCellFull!17457) mapDefault!56740)) b!1332575))

(assert (= start!112442 b!1332580))

(declare-fun m!1221391 () Bool)

(assert (=> start!112442 m!1221391))

(declare-fun m!1221393 () Bool)

(assert (=> start!112442 m!1221393))

(declare-fun m!1221395 () Bool)

(assert (=> start!112442 m!1221395))

(declare-fun m!1221397 () Bool)

(assert (=> b!1332576 m!1221397))

(declare-fun m!1221399 () Bool)

(assert (=> mapNonEmpty!56740 m!1221399))

(declare-fun m!1221401 () Bool)

(assert (=> b!1332574 m!1221401))

(assert (=> b!1332574 m!1221401))

(declare-fun m!1221403 () Bool)

(assert (=> b!1332574 m!1221403))

(declare-fun m!1221405 () Bool)

(assert (=> b!1332581 m!1221405))

(check-sat b_and!49653 (not b!1332574) (not b_next!30801) tp_is_empty!36711 (not mapNonEmpty!56740) (not b!1332581) (not b!1332576) (not start!112442))
(check-sat b_and!49653 (not b_next!30801))
