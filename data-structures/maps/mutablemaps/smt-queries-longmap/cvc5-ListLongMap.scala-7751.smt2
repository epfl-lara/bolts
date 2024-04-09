; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97286 () Bool)

(assert start!97286)

(declare-fun b_free!23221 () Bool)

(declare-fun b_next!23221 () Bool)

(assert (=> start!97286 (= b_free!23221 (not b_next!23221))))

(declare-fun tp!81962 () Bool)

(declare-fun b_and!37291 () Bool)

(assert (=> start!97286 (= tp!81962 b_and!37291)))

(declare-fun b!1106845 () Bool)

(declare-fun res!738772 () Bool)

(declare-fun e!631604 () Bool)

(assert (=> b!1106845 (=> (not res!738772) (not e!631604))))

(declare-datatypes ((array!71832 0))(
  ( (array!71833 (arr!34565 (Array (_ BitVec 32) (_ BitVec 64))) (size!35102 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71832)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41769 0))(
  ( (V!41770 (val!13797 Int)) )
))
(declare-datatypes ((ValueCell!13031 0))(
  ( (ValueCellFull!13031 (v!16431 V!41769)) (EmptyCell!13031) )
))
(declare-datatypes ((array!71834 0))(
  ( (array!71835 (arr!34566 (Array (_ BitVec 32) ValueCell!13031)) (size!35103 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71834)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106845 (= res!738772 (and (= (size!35103 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35102 _keys!1208) (size!35103 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106846 () Bool)

(declare-fun res!738770 () Bool)

(assert (=> b!1106846 (=> (not res!738770) (not e!631604))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106846 (= res!738770 (validKeyInArray!0 k!934))))

(declare-fun zeroValue!944 () V!41769)

(declare-fun lt!495508 () array!71832)

(declare-datatypes ((tuple2!17486 0))(
  ( (tuple2!17487 (_1!8753 (_ BitVec 64)) (_2!8753 V!41769)) )
))
(declare-datatypes ((List!24225 0))(
  ( (Nil!24222) (Cons!24221 (h!25430 tuple2!17486) (t!34499 List!24225)) )
))
(declare-datatypes ((ListLongMap!15467 0))(
  ( (ListLongMap!15468 (toList!7749 List!24225)) )
))
(declare-fun call!46361 () ListLongMap!15467)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!41769)

(declare-fun bm!46357 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4218 (array!71832 array!71834 (_ BitVec 32) (_ BitVec 32) V!41769 V!41769 (_ BitVec 32) Int) ListLongMap!15467)

(declare-fun dynLambda!2349 (Int (_ BitVec 64)) V!41769)

(assert (=> bm!46357 (= call!46361 (getCurrentListMapNoExtraKeys!4218 lt!495508 (array!71835 (store (arr!34566 _values!996) i!673 (ValueCellFull!13031 (dynLambda!2349 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35103 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1106847 () Bool)

(declare-fun e!631601 () Bool)

(declare-fun e!631606 () Bool)

(declare-fun mapRes!43039 () Bool)

(assert (=> b!1106847 (= e!631601 (and e!631606 mapRes!43039))))

(declare-fun condMapEmpty!43039 () Bool)

(declare-fun mapDefault!43039 () ValueCell!13031)

