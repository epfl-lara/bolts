; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112602 () Bool)

(assert start!112602)

(declare-fun b_free!30961 () Bool)

(declare-fun b_next!30961 () Bool)

(assert (=> start!112602 (= b_free!30961 (not b_next!30961))))

(declare-fun tp!108520 () Bool)

(declare-fun b_and!49879 () Bool)

(assert (=> start!112602 (= tp!108520 b_and!49879)))

(declare-fun b!1335172 () Bool)

(declare-fun res!886211 () Bool)

(declare-fun e!760461 () Bool)

(assert (=> b!1335172 (=> (not res!886211) (not e!760461))))

(declare-datatypes ((array!90579 0))(
  ( (array!90580 (arr!43751 (Array (_ BitVec 32) (_ BitVec 64))) (size!44302 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90579)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90579 (_ BitVec 32)) Bool)

(assert (=> b!1335172 (= res!886211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56980 () Bool)

(declare-fun mapRes!56980 () Bool)

(assert (=> mapIsEmpty!56980 mapRes!56980))

(declare-fun mapNonEmpty!56980 () Bool)

(declare-fun tp!108521 () Bool)

(declare-fun e!760462 () Bool)

(assert (=> mapNonEmpty!56980 (= mapRes!56980 (and tp!108521 e!760462))))

(declare-datatypes ((V!54265 0))(
  ( (V!54266 (val!18510 Int)) )
))
(declare-datatypes ((ValueCell!17537 0))(
  ( (ValueCellFull!17537 (v!21145 V!54265)) (EmptyCell!17537) )
))
(declare-fun mapValue!56980 () ValueCell!17537)

(declare-fun mapKey!56980 () (_ BitVec 32))

(declare-datatypes ((array!90581 0))(
  ( (array!90582 (arr!43752 (Array (_ BitVec 32) ValueCell!17537)) (size!44303 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90581)

(declare-fun mapRest!56980 () (Array (_ BitVec 32) ValueCell!17537))

(assert (=> mapNonEmpty!56980 (= (arr!43752 _values!1320) (store mapRest!56980 mapKey!56980 mapValue!56980))))

(declare-fun b!1335173 () Bool)

(declare-fun res!886213 () Bool)

(assert (=> b!1335173 (=> (not res!886213) (not e!760461))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1335173 (= res!886213 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44302 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335175 () Bool)

(declare-fun res!886212 () Bool)

(assert (=> b!1335175 (=> (not res!886212) (not e!760461))))

(declare-datatypes ((List!31192 0))(
  ( (Nil!31189) (Cons!31188 (h!32397 (_ BitVec 64)) (t!45463 List!31192)) )
))
(declare-fun arrayNoDuplicates!0 (array!90579 (_ BitVec 32) List!31192) Bool)

(assert (=> b!1335175 (= res!886212 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31189))))

(declare-fun b!1335176 () Bool)

(declare-fun tp_is_empty!36871 () Bool)

(assert (=> b!1335176 (= e!760462 tp_is_empty!36871)))

(declare-fun b!1335177 () Bool)

(assert (=> b!1335177 (= e!760461 false)))

(declare-fun minValue!1262 () V!54265)

(declare-fun zeroValue!1262 () V!54265)

(declare-fun lt!592370 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!24022 0))(
  ( (tuple2!24023 (_1!12021 (_ BitVec 64)) (_2!12021 V!54265)) )
))
(declare-datatypes ((List!31193 0))(
  ( (Nil!31190) (Cons!31189 (h!32398 tuple2!24022) (t!45464 List!31193)) )
))
(declare-datatypes ((ListLongMap!21691 0))(
  ( (ListLongMap!21692 (toList!10861 List!31193)) )
))
(declare-fun contains!8961 (ListLongMap!21691 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5772 (array!90579 array!90581 (_ BitVec 32) (_ BitVec 32) V!54265 V!54265 (_ BitVec 32) Int) ListLongMap!21691)

(assert (=> b!1335177 (= lt!592370 (contains!8961 (getCurrentListMap!5772 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1335178 () Bool)

(declare-fun res!886210 () Bool)

(assert (=> b!1335178 (=> (not res!886210) (not e!760461))))

(assert (=> b!1335178 (= res!886210 (and (= (size!44303 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44302 _keys!1590) (size!44303 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335179 () Bool)

(declare-fun e!760464 () Bool)

(declare-fun e!760463 () Bool)

(assert (=> b!1335179 (= e!760464 (and e!760463 mapRes!56980))))

(declare-fun condMapEmpty!56980 () Bool)

(declare-fun mapDefault!56980 () ValueCell!17537)

