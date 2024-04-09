; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97548 () Bool)

(assert start!97548)

(declare-fun b!1113196 () Bool)

(declare-fun res!743024 () Bool)

(declare-fun e!634633 () Bool)

(assert (=> b!1113196 (=> (not res!743024) (not e!634633))))

(declare-datatypes ((array!72342 0))(
  ( (array!72343 (arr!34820 (Array (_ BitVec 32) (_ BitVec 64))) (size!35357 (_ BitVec 32))) )
))
(declare-fun lt!496617 () array!72342)

(declare-datatypes ((List!24415 0))(
  ( (Nil!24412) (Cons!24411 (h!25620 (_ BitVec 64)) (t!34903 List!24415)) )
))
(declare-fun arrayNoDuplicates!0 (array!72342 (_ BitVec 32) List!24415) Bool)

(assert (=> b!1113196 (= res!743024 (arrayNoDuplicates!0 lt!496617 #b00000000000000000000000000000000 Nil!24412))))

(declare-fun b!1113197 () Bool)

(declare-fun res!743030 () Bool)

(declare-fun e!634636 () Bool)

(assert (=> b!1113197 (=> (not res!743030) (not e!634636))))

(declare-fun _keys!1208 () array!72342)

(assert (=> b!1113197 (= res!743030 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24412))))

(declare-fun b!1113198 () Bool)

(assert (=> b!1113198 (= e!634633 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113198 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36441 0))(
  ( (Unit!36442) )
))
(declare-fun lt!496616 () Unit!36441)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72342 (_ BitVec 64) (_ BitVec 32)) Unit!36441)

(assert (=> b!1113198 (= lt!496616 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113199 () Bool)

(declare-fun res!743023 () Bool)

(assert (=> b!1113199 (=> (not res!743023) (not e!634636))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113199 (= res!743023 (validMask!0 mask!1564))))

(declare-fun b!1113200 () Bool)

(assert (=> b!1113200 (= e!634636 e!634633)))

(declare-fun res!743026 () Bool)

(assert (=> b!1113200 (=> (not res!743026) (not e!634633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72342 (_ BitVec 32)) Bool)

(assert (=> b!1113200 (= res!743026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496617 mask!1564))))

(assert (=> b!1113200 (= lt!496617 (array!72343 (store (arr!34820 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35357 _keys!1208)))))

(declare-fun mapNonEmpty!43432 () Bool)

(declare-fun mapRes!43432 () Bool)

(declare-fun tp!82677 () Bool)

(declare-fun e!634634 () Bool)

(assert (=> mapNonEmpty!43432 (= mapRes!43432 (and tp!82677 e!634634))))

(declare-datatypes ((V!42117 0))(
  ( (V!42118 (val!13928 Int)) )
))
(declare-datatypes ((ValueCell!13162 0))(
  ( (ValueCellFull!13162 (v!16562 V!42117)) (EmptyCell!13162) )
))
(declare-fun mapRest!43432 () (Array (_ BitVec 32) ValueCell!13162))

(declare-fun mapValue!43432 () ValueCell!13162)

(declare-datatypes ((array!72344 0))(
  ( (array!72345 (arr!34821 (Array (_ BitVec 32) ValueCell!13162)) (size!35358 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72344)

(declare-fun mapKey!43432 () (_ BitVec 32))

(assert (=> mapNonEmpty!43432 (= (arr!34821 _values!996) (store mapRest!43432 mapKey!43432 mapValue!43432))))

(declare-fun b!1113201 () Bool)

(declare-fun res!743031 () Bool)

(assert (=> b!1113201 (=> (not res!743031) (not e!634636))))

(assert (=> b!1113201 (= res!743031 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35357 _keys!1208))))))

(declare-fun b!1113202 () Bool)

(declare-fun tp_is_empty!27743 () Bool)

(assert (=> b!1113202 (= e!634634 tp_is_empty!27743)))

(declare-fun b!1113203 () Bool)

(declare-fun res!743029 () Bool)

(assert (=> b!1113203 (=> (not res!743029) (not e!634636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113203 (= res!743029 (validKeyInArray!0 k!934))))

(declare-fun b!1113204 () Bool)

(declare-fun e!634632 () Bool)

(declare-fun e!634635 () Bool)

(assert (=> b!1113204 (= e!634632 (and e!634635 mapRes!43432))))

(declare-fun condMapEmpty!43432 () Bool)

(declare-fun mapDefault!43432 () ValueCell!13162)

