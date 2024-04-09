; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112498 () Bool)

(assert start!112498)

(declare-fun b_free!30857 () Bool)

(declare-fun b_next!30857 () Bool)

(assert (=> start!112498 (= b_free!30857 (not b_next!30857))))

(declare-fun tp!108208 () Bool)

(declare-fun b_and!49725 () Bool)

(assert (=> start!112498 (= tp!108208 b_and!49725)))

(declare-fun b!1333410 () Bool)

(declare-fun res!884971 () Bool)

(declare-fun e!759610 () Bool)

(assert (=> b!1333410 (=> (not res!884971) (not e!759610))))

(declare-datatypes ((array!90381 0))(
  ( (array!90382 (arr!43652 (Array (_ BitVec 32) (_ BitVec 64))) (size!44203 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90381)

(declare-datatypes ((List!31123 0))(
  ( (Nil!31120) (Cons!31119 (h!32328 (_ BitVec 64)) (t!45346 List!31123)) )
))
(declare-fun arrayNoDuplicates!0 (array!90381 (_ BitVec 32) List!31123) Bool)

(assert (=> b!1333410 (= res!884971 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31120))))

(declare-fun mapNonEmpty!56824 () Bool)

(declare-fun mapRes!56824 () Bool)

(declare-fun tp!108209 () Bool)

(declare-fun e!759608 () Bool)

(assert (=> mapNonEmpty!56824 (= mapRes!56824 (and tp!108209 e!759608))))

(declare-datatypes ((V!54125 0))(
  ( (V!54126 (val!18458 Int)) )
))
(declare-datatypes ((ValueCell!17485 0))(
  ( (ValueCellFull!17485 (v!21093 V!54125)) (EmptyCell!17485) )
))
(declare-fun mapRest!56824 () (Array (_ BitVec 32) ValueCell!17485))

(declare-fun mapValue!56824 () ValueCell!17485)

(declare-fun mapKey!56824 () (_ BitVec 32))

(declare-datatypes ((array!90383 0))(
  ( (array!90384 (arr!43653 (Array (_ BitVec 32) ValueCell!17485)) (size!44204 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90383)

(assert (=> mapNonEmpty!56824 (= (arr!43653 _values!1320) (store mapRest!56824 mapKey!56824 mapValue!56824))))

(declare-fun b!1333411 () Bool)

(declare-fun e!759612 () Bool)

(assert (=> b!1333411 (= e!759612 (not true))))

(declare-datatypes ((tuple2!23946 0))(
  ( (tuple2!23947 (_1!11983 (_ BitVec 64)) (_2!11983 V!54125)) )
))
(declare-datatypes ((List!31124 0))(
  ( (Nil!31121) (Cons!31120 (h!32329 tuple2!23946) (t!45347 List!31124)) )
))
(declare-datatypes ((ListLongMap!21615 0))(
  ( (ListLongMap!21616 (toList!10823 List!31124)) )
))
(declare-fun lt!592077 () ListLongMap!21615)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8923 (ListLongMap!21615 (_ BitVec 64)) Bool)

(assert (=> b!1333411 (contains!8923 lt!592077 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((Unit!43795 0))(
  ( (Unit!43796) )
))
(declare-fun lt!592079 () Unit!43795)

(declare-fun lt!592078 () V!54125)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!289 ((_ BitVec 64) (_ BitVec 64) V!54125 ListLongMap!21615) Unit!43795)

(assert (=> b!1333411 (= lt!592079 (lemmaInListMapAfterAddingDiffThenInBefore!289 k!1153 (select (arr!43652 _keys!1590) from!1980) lt!592078 lt!592077))))

(declare-fun b!1333412 () Bool)

(declare-fun res!884967 () Bool)

(assert (=> b!1333412 (=> (not res!884967) (not e!759610))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90381 (_ BitVec 32)) Bool)

(assert (=> b!1333412 (= res!884967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333413 () Bool)

(declare-fun res!884970 () Bool)

(assert (=> b!1333413 (=> (not res!884970) (not e!759610))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54125)

(declare-fun zeroValue!1262 () V!54125)

(declare-fun getCurrentListMap!5743 (array!90381 array!90383 (_ BitVec 32) (_ BitVec 32) V!54125 V!54125 (_ BitVec 32) Int) ListLongMap!21615)

(assert (=> b!1333413 (= res!884970 (contains!8923 (getCurrentListMap!5743 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1333414 () Bool)

(declare-fun res!884969 () Bool)

(assert (=> b!1333414 (=> (not res!884969) (not e!759610))))

(assert (=> b!1333414 (= res!884969 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333415 () Bool)

(declare-fun res!884975 () Bool)

(assert (=> b!1333415 (=> (not res!884975) (not e!759610))))

(assert (=> b!1333415 (= res!884975 (and (= (size!44204 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44203 _keys!1590) (size!44204 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333416 () Bool)

(declare-fun res!884966 () Bool)

(assert (=> b!1333416 (=> (not res!884966) (not e!759610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333416 (= res!884966 (validKeyInArray!0 (select (arr!43652 _keys!1590) from!1980)))))

(declare-fun b!1333417 () Bool)

(declare-fun tp_is_empty!36767 () Bool)

(assert (=> b!1333417 (= e!759608 tp_is_empty!36767)))

(declare-fun b!1333409 () Bool)

(declare-fun res!884965 () Bool)

(assert (=> b!1333409 (=> (not res!884965) (not e!759610))))

(assert (=> b!1333409 (= res!884965 (not (= (select (arr!43652 _keys!1590) from!1980) k!1153)))))

(declare-fun res!884968 () Bool)

(assert (=> start!112498 (=> (not res!884968) (not e!759610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112498 (= res!884968 (validMask!0 mask!1998))))

(assert (=> start!112498 e!759610))

(declare-fun e!759613 () Bool)

(declare-fun array_inv!32867 (array!90383) Bool)

(assert (=> start!112498 (and (array_inv!32867 _values!1320) e!759613)))

(assert (=> start!112498 true))

(declare-fun array_inv!32868 (array!90381) Bool)

(assert (=> start!112498 (array_inv!32868 _keys!1590)))

(assert (=> start!112498 tp!108208))

(assert (=> start!112498 tp_is_empty!36767))

(declare-fun b!1333418 () Bool)

(declare-fun e!759609 () Bool)

(assert (=> b!1333418 (= e!759613 (and e!759609 mapRes!56824))))

(declare-fun condMapEmpty!56824 () Bool)

(declare-fun mapDefault!56824 () ValueCell!17485)

