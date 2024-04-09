; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97346 () Bool)

(assert start!97346)

(declare-fun b_free!23281 () Bool)

(declare-fun b_next!23281 () Bool)

(assert (=> start!97346 (= b_free!23281 (not b_next!23281))))

(declare-fun tp!82143 () Bool)

(declare-fun b_and!37415 () Bool)

(assert (=> start!97346 (= tp!82143 b_and!37415)))

(declare-datatypes ((V!41849 0))(
  ( (V!41850 (val!13827 Int)) )
))
(declare-fun zeroValue!944 () V!41849)

(declare-datatypes ((array!71950 0))(
  ( (array!71951 (arr!34624 (Array (_ BitVec 32) (_ BitVec 64))) (size!35161 (_ BitVec 32))) )
))
(declare-fun lt!495780 () array!71950)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46537 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17540 0))(
  ( (tuple2!17541 (_1!8780 (_ BitVec 64)) (_2!8780 V!41849)) )
))
(declare-datatypes ((List!24276 0))(
  ( (Nil!24273) (Cons!24272 (h!25481 tuple2!17540) (t!34610 List!24276)) )
))
(declare-datatypes ((ListLongMap!15521 0))(
  ( (ListLongMap!15522 (toList!7776 List!24276)) )
))
(declare-fun call!46541 () ListLongMap!15521)

(declare-datatypes ((ValueCell!13061 0))(
  ( (ValueCellFull!13061 (v!16461 V!41849)) (EmptyCell!13061) )
))
(declare-datatypes ((array!71952 0))(
  ( (array!71953 (arr!34625 (Array (_ BitVec 32) ValueCell!13061)) (size!35162 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71952)

(declare-fun minValue!944 () V!41849)

(declare-fun getCurrentListMapNoExtraKeys!4243 (array!71950 array!71952 (_ BitVec 32) (_ BitVec 32) V!41849 V!41849 (_ BitVec 32) Int) ListLongMap!15521)

(declare-fun dynLambda!2368 (Int (_ BitVec 64)) V!41849)

(assert (=> bm!46537 (= call!46541 (getCurrentListMapNoExtraKeys!4243 lt!495780 (array!71953 (store (arr!34625 _values!996) i!673 (ValueCellFull!13061 (dynLambda!2368 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35162 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108369 () Bool)

(declare-fun res!739761 () Bool)

(declare-fun e!632332 () Bool)

(assert (=> b!1108369 (=> (not res!739761) (not e!632332))))

(declare-fun _keys!1208 () array!71950)

(declare-datatypes ((List!24277 0))(
  ( (Nil!24274) (Cons!24273 (h!25482 (_ BitVec 64)) (t!34611 List!24277)) )
))
(declare-fun arrayNoDuplicates!0 (array!71950 (_ BitVec 32) List!24277) Bool)

(assert (=> b!1108369 (= res!739761 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24274))))

(declare-fun b!1108370 () Bool)

(declare-fun e!632335 () Bool)

(declare-fun e!632333 () Bool)

(declare-fun mapRes!43129 () Bool)

(assert (=> b!1108370 (= e!632335 (and e!632333 mapRes!43129))))

(declare-fun condMapEmpty!43129 () Bool)

(declare-fun mapDefault!43129 () ValueCell!13061)

