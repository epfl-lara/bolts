; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97730 () Bool)

(assert start!97730)

(declare-fun b!1116745 () Bool)

(declare-fun res!745757 () Bool)

(declare-fun e!636272 () Bool)

(assert (=> b!1116745 (=> (not res!745757) (not e!636272))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116745 (= res!745757 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43705 () Bool)

(declare-fun mapRes!43705 () Bool)

(declare-fun tp!82950 () Bool)

(declare-fun e!636274 () Bool)

(assert (=> mapNonEmpty!43705 (= mapRes!43705 (and tp!82950 e!636274))))

(declare-datatypes ((V!42361 0))(
  ( (V!42362 (val!14019 Int)) )
))
(declare-datatypes ((ValueCell!13253 0))(
  ( (ValueCellFull!13253 (v!16653 V!42361)) (EmptyCell!13253) )
))
(declare-fun mapRest!43705 () (Array (_ BitVec 32) ValueCell!13253))

(declare-datatypes ((array!72688 0))(
  ( (array!72689 (arr!34993 (Array (_ BitVec 32) ValueCell!13253)) (size!35530 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72688)

(declare-fun mapValue!43705 () ValueCell!13253)

(declare-fun mapKey!43705 () (_ BitVec 32))

(assert (=> mapNonEmpty!43705 (= (arr!34993 _values!996) (store mapRest!43705 mapKey!43705 mapValue!43705))))

(declare-fun b!1116746 () Bool)

(declare-fun res!745761 () Bool)

(assert (=> b!1116746 (=> (not res!745761) (not e!636272))))

(declare-datatypes ((array!72690 0))(
  ( (array!72691 (arr!34994 (Array (_ BitVec 32) (_ BitVec 64))) (size!35531 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72690)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116746 (= res!745761 (= (select (arr!34994 _keys!1208) i!673) k!934))))

(declare-fun b!1116747 () Bool)

(declare-fun res!745752 () Bool)

(assert (=> b!1116747 (=> (not res!745752) (not e!636272))))

(declare-datatypes ((List!24481 0))(
  ( (Nil!24478) (Cons!24477 (h!25686 (_ BitVec 64)) (t!34969 List!24481)) )
))
(declare-fun arrayNoDuplicates!0 (array!72690 (_ BitVec 32) List!24481) Bool)

(assert (=> b!1116747 (= res!745752 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24478))))

(declare-fun mapIsEmpty!43705 () Bool)

(assert (=> mapIsEmpty!43705 mapRes!43705))

(declare-fun b!1116748 () Bool)

(declare-fun e!636270 () Bool)

(declare-fun e!636271 () Bool)

(assert (=> b!1116748 (= e!636270 (and e!636271 mapRes!43705))))

(declare-fun condMapEmpty!43705 () Bool)

(declare-fun mapDefault!43705 () ValueCell!13253)

