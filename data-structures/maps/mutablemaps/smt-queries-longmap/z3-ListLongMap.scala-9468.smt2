; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112454 () Bool)

(assert start!112454)

(declare-fun b_free!30813 () Bool)

(declare-fun b_next!30813 () Bool)

(assert (=> start!112454 (= b_free!30813 (not b_next!30813))))

(declare-fun tp!108077 () Bool)

(declare-fun b_and!49665 () Bool)

(assert (=> start!112454 (= tp!108077 b_and!49665)))

(declare-fun b!1332718 () Bool)

(declare-fun e!759271 () Bool)

(declare-fun tp_is_empty!36723 () Bool)

(assert (=> b!1332718 (= e!759271 tp_is_empty!36723)))

(declare-fun b!1332719 () Bool)

(declare-fun res!884492 () Bool)

(declare-fun e!759270 () Bool)

(assert (=> b!1332719 (=> (not res!884492) (not e!759270))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90293 0))(
  ( (array!90294 (arr!43608 (Array (_ BitVec 32) (_ BitVec 64))) (size!44159 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90293)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1332719 (= res!884492 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44159 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56758 () Bool)

(declare-fun mapRes!56758 () Bool)

(assert (=> mapIsEmpty!56758 mapRes!56758))

(declare-fun b!1332720 () Bool)

(declare-fun e!759272 () Bool)

(assert (=> b!1332720 (= e!759272 tp_is_empty!36723)))

(declare-fun b!1332721 () Bool)

(declare-fun res!884488 () Bool)

(assert (=> b!1332721 (=> (not res!884488) (not e!759270))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90293 (_ BitVec 32)) Bool)

(assert (=> b!1332721 (= res!884488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332722 () Bool)

(declare-fun res!884490 () Bool)

(assert (=> b!1332722 (=> (not res!884490) (not e!759270))))

(declare-datatypes ((List!31091 0))(
  ( (Nil!31088) (Cons!31087 (h!32296 (_ BitVec 64)) (t!45296 List!31091)) )
))
(declare-fun arrayNoDuplicates!0 (array!90293 (_ BitVec 32) List!31091) Bool)

(assert (=> b!1332722 (= res!884490 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31088))))

(declare-fun b!1332723 () Bool)

(declare-fun e!759273 () Bool)

(assert (=> b!1332723 (= e!759273 (and e!759272 mapRes!56758))))

(declare-fun condMapEmpty!56758 () Bool)

(declare-datatypes ((V!54067 0))(
  ( (V!54068 (val!18436 Int)) )
))
(declare-datatypes ((ValueCell!17463 0))(
  ( (ValueCellFull!17463 (v!21071 V!54067)) (EmptyCell!17463) )
))
(declare-datatypes ((array!90295 0))(
  ( (array!90296 (arr!43609 (Array (_ BitVec 32) ValueCell!17463)) (size!44160 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90295)

(declare-fun mapDefault!56758 () ValueCell!17463)

(assert (=> b!1332723 (= condMapEmpty!56758 (= (arr!43609 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17463)) mapDefault!56758)))))

(declare-fun b!1332724 () Bool)

(assert (=> b!1332724 (= e!759270 false)))

(declare-fun lt!592004 () Bool)

(declare-fun minValue!1262 () V!54067)

(declare-fun zeroValue!1262 () V!54067)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!23914 0))(
  ( (tuple2!23915 (_1!11967 (_ BitVec 64)) (_2!11967 V!54067)) )
))
(declare-datatypes ((List!31092 0))(
  ( (Nil!31089) (Cons!31088 (h!32297 tuple2!23914) (t!45297 List!31092)) )
))
(declare-datatypes ((ListLongMap!21583 0))(
  ( (ListLongMap!21584 (toList!10807 List!31092)) )
))
(declare-fun contains!8907 (ListLongMap!21583 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5728 (array!90293 array!90295 (_ BitVec 32) (_ BitVec 32) V!54067 V!54067 (_ BitVec 32) Int) ListLongMap!21583)

(assert (=> b!1332724 (= lt!592004 (contains!8907 (getCurrentListMap!5728 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56758 () Bool)

(declare-fun tp!108076 () Bool)

(assert (=> mapNonEmpty!56758 (= mapRes!56758 (and tp!108076 e!759271))))

(declare-fun mapValue!56758 () ValueCell!17463)

(declare-fun mapRest!56758 () (Array (_ BitVec 32) ValueCell!17463))

(declare-fun mapKey!56758 () (_ BitVec 32))

(assert (=> mapNonEmpty!56758 (= (arr!43609 _values!1320) (store mapRest!56758 mapKey!56758 mapValue!56758))))

(declare-fun b!1332725 () Bool)

(declare-fun res!884489 () Bool)

(assert (=> b!1332725 (=> (not res!884489) (not e!759270))))

(assert (=> b!1332725 (= res!884489 (and (= (size!44160 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44159 _keys!1590) (size!44160 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!884491 () Bool)

(assert (=> start!112454 (=> (not res!884491) (not e!759270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112454 (= res!884491 (validMask!0 mask!1998))))

(assert (=> start!112454 e!759270))

(declare-fun array_inv!32835 (array!90295) Bool)

(assert (=> start!112454 (and (array_inv!32835 _values!1320) e!759273)))

(assert (=> start!112454 true))

(declare-fun array_inv!32836 (array!90293) Bool)

(assert (=> start!112454 (array_inv!32836 _keys!1590)))

(assert (=> start!112454 tp!108077))

(assert (=> start!112454 tp_is_empty!36723))

(assert (= (and start!112454 res!884491) b!1332725))

(assert (= (and b!1332725 res!884489) b!1332721))

(assert (= (and b!1332721 res!884488) b!1332722))

(assert (= (and b!1332722 res!884490) b!1332719))

(assert (= (and b!1332719 res!884492) b!1332724))

(assert (= (and b!1332723 condMapEmpty!56758) mapIsEmpty!56758))

(assert (= (and b!1332723 (not condMapEmpty!56758)) mapNonEmpty!56758))

(get-info :version)

(assert (= (and mapNonEmpty!56758 ((_ is ValueCellFull!17463) mapValue!56758)) b!1332718))

(assert (= (and b!1332723 ((_ is ValueCellFull!17463) mapDefault!56758)) b!1332720))

(assert (= start!112454 b!1332723))

(declare-fun m!1221487 () Bool)

(assert (=> b!1332722 m!1221487))

(declare-fun m!1221489 () Bool)

(assert (=> b!1332721 m!1221489))

(declare-fun m!1221491 () Bool)

(assert (=> b!1332724 m!1221491))

(assert (=> b!1332724 m!1221491))

(declare-fun m!1221493 () Bool)

(assert (=> b!1332724 m!1221493))

(declare-fun m!1221495 () Bool)

(assert (=> start!112454 m!1221495))

(declare-fun m!1221497 () Bool)

(assert (=> start!112454 m!1221497))

(declare-fun m!1221499 () Bool)

(assert (=> start!112454 m!1221499))

(declare-fun m!1221501 () Bool)

(assert (=> mapNonEmpty!56758 m!1221501))

(check-sat (not b_next!30813) (not b!1332722) (not b!1332724) tp_is_empty!36723 (not start!112454) (not b!1332721) b_and!49665 (not mapNonEmpty!56758))
(check-sat b_and!49665 (not b_next!30813))
