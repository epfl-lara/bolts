; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113120 () Bool)

(assert start!113120)

(declare-fun b_free!31135 () Bool)

(declare-fun b_next!31135 () Bool)

(assert (=> start!113120 (= b_free!31135 (not b_next!31135))))

(declare-fun tp!109210 () Bool)

(declare-fun b_and!50187 () Bool)

(assert (=> start!113120 (= tp!109210 b_and!50187)))

(declare-fun b!1340358 () Bool)

(declare-fun res!889246 () Bool)

(declare-fun e!763466 () Bool)

(assert (=> b!1340358 (=> (not res!889246) (not e!763466))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91081 0))(
  ( (array!91082 (arr!43992 (Array (_ BitVec 32) (_ BitVec 64))) (size!44543 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91081)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54617 0))(
  ( (V!54618 (val!18642 Int)) )
))
(declare-datatypes ((ValueCell!17669 0))(
  ( (ValueCellFull!17669 (v!21288 V!54617)) (EmptyCell!17669) )
))
(declare-datatypes ((array!91083 0))(
  ( (array!91084 (arr!43993 (Array (_ BitVec 32) ValueCell!17669)) (size!44544 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91083)

(assert (=> b!1340358 (= res!889246 (and (= (size!44544 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44543 _keys!1571) (size!44544 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57409 () Bool)

(declare-fun mapRes!57409 () Bool)

(declare-fun tp!109211 () Bool)

(declare-fun e!763465 () Bool)

(assert (=> mapNonEmpty!57409 (= mapRes!57409 (and tp!109211 e!763465))))

(declare-fun mapKey!57409 () (_ BitVec 32))

(declare-fun mapValue!57409 () ValueCell!17669)

(declare-fun mapRest!57409 () (Array (_ BitVec 32) ValueCell!17669))

(assert (=> mapNonEmpty!57409 (= (arr!43993 _values!1303) (store mapRest!57409 mapKey!57409 mapValue!57409))))

(declare-fun b!1340359 () Bool)

(declare-fun res!889244 () Bool)

(assert (=> b!1340359 (=> (not res!889244) (not e!763466))))

(declare-fun minValue!1245 () V!54617)

(declare-fun zeroValue!1245 () V!54617)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24140 0))(
  ( (tuple2!24141 (_1!12080 (_ BitVec 64)) (_2!12080 V!54617)) )
))
(declare-datatypes ((List!31325 0))(
  ( (Nil!31322) (Cons!31321 (h!32530 tuple2!24140) (t!45678 List!31325)) )
))
(declare-datatypes ((ListLongMap!21809 0))(
  ( (ListLongMap!21810 (toList!10920 List!31325)) )
))
(declare-fun contains!9032 (ListLongMap!21809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5824 (array!91081 array!91083 (_ BitVec 32) (_ BitVec 32) V!54617 V!54617 (_ BitVec 32) Int) ListLongMap!21809)

(assert (=> b!1340359 (= res!889244 (contains!9032 (getCurrentListMap!5824 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1340360 () Bool)

(declare-fun res!889240 () Bool)

(assert (=> b!1340360 (=> (not res!889240) (not e!763466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340360 (= res!889240 (validKeyInArray!0 (select (arr!43992 _keys!1571) from!1960)))))

(declare-fun b!1340361 () Bool)

(assert (=> b!1340361 (= e!763466 (not true))))

(declare-fun lt!593922 () ListLongMap!21809)

(assert (=> b!1340361 (contains!9032 lt!593922 k!1142)))

(declare-datatypes ((Unit!43921 0))(
  ( (Unit!43922) )
))
(declare-fun lt!593923 () Unit!43921)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!320 ((_ BitVec 64) (_ BitVec 64) V!54617 ListLongMap!21809) Unit!43921)

(assert (=> b!1340361 (= lt!593923 (lemmaInListMapAfterAddingDiffThenInBefore!320 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593922))))

(declare-fun +!4728 (ListLongMap!21809 tuple2!24140) ListLongMap!21809)

(declare-fun getCurrentListMapNoExtraKeys!6451 (array!91081 array!91083 (_ BitVec 32) (_ BitVec 32) V!54617 V!54617 (_ BitVec 32) Int) ListLongMap!21809)

(declare-fun get!22235 (ValueCell!17669 V!54617) V!54617)

(declare-fun dynLambda!3765 (Int (_ BitVec 64)) V!54617)

(assert (=> b!1340361 (= lt!593922 (+!4728 (getCurrentListMapNoExtraKeys!6451 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24141 (select (arr!43992 _keys!1571) from!1960) (get!22235 (select (arr!43993 _values!1303) from!1960) (dynLambda!3765 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340362 () Bool)

(declare-fun res!889243 () Bool)

(assert (=> b!1340362 (=> (not res!889243) (not e!763466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91081 (_ BitVec 32)) Bool)

(assert (=> b!1340362 (= res!889243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340363 () Bool)

(declare-fun res!889241 () Bool)

(assert (=> b!1340363 (=> (not res!889241) (not e!763466))))

(assert (=> b!1340363 (= res!889241 (not (= (select (arr!43992 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1340364 () Bool)

(declare-fun tp_is_empty!37135 () Bool)

(assert (=> b!1340364 (= e!763465 tp_is_empty!37135)))

(declare-fun mapIsEmpty!57409 () Bool)

(assert (=> mapIsEmpty!57409 mapRes!57409))

(declare-fun b!1340365 () Bool)

(declare-fun res!889245 () Bool)

(assert (=> b!1340365 (=> (not res!889245) (not e!763466))))

(assert (=> b!1340365 (= res!889245 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44543 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!889239 () Bool)

(assert (=> start!113120 (=> (not res!889239) (not e!763466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113120 (= res!889239 (validMask!0 mask!1977))))

(assert (=> start!113120 e!763466))

(assert (=> start!113120 tp_is_empty!37135))

(assert (=> start!113120 true))

(declare-fun array_inv!33087 (array!91081) Bool)

(assert (=> start!113120 (array_inv!33087 _keys!1571)))

(declare-fun e!763464 () Bool)

(declare-fun array_inv!33088 (array!91083) Bool)

(assert (=> start!113120 (and (array_inv!33088 _values!1303) e!763464)))

(assert (=> start!113120 tp!109210))

(declare-fun b!1340366 () Bool)

(declare-fun e!763462 () Bool)

(assert (=> b!1340366 (= e!763462 tp_is_empty!37135)))

(declare-fun b!1340367 () Bool)

(declare-fun res!889247 () Bool)

(assert (=> b!1340367 (=> (not res!889247) (not e!763466))))

(declare-datatypes ((List!31326 0))(
  ( (Nil!31323) (Cons!31322 (h!32531 (_ BitVec 64)) (t!45679 List!31326)) )
))
(declare-fun arrayNoDuplicates!0 (array!91081 (_ BitVec 32) List!31326) Bool)

(assert (=> b!1340367 (= res!889247 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31323))))

(declare-fun b!1340368 () Bool)

(declare-fun res!889242 () Bool)

(assert (=> b!1340368 (=> (not res!889242) (not e!763466))))

(assert (=> b!1340368 (= res!889242 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340369 () Bool)

(assert (=> b!1340369 (= e!763464 (and e!763462 mapRes!57409))))

(declare-fun condMapEmpty!57409 () Bool)

(declare-fun mapDefault!57409 () ValueCell!17669)

