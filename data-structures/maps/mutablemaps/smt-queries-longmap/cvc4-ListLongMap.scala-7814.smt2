; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97668 () Bool)

(assert start!97668)

(declare-fun mapNonEmpty!43612 () Bool)

(declare-fun mapRes!43612 () Bool)

(declare-fun tp!82857 () Bool)

(declare-fun e!635713 () Bool)

(assert (=> mapNonEmpty!43612 (= mapRes!43612 (and tp!82857 e!635713))))

(declare-datatypes ((V!42277 0))(
  ( (V!42278 (val!13988 Int)) )
))
(declare-datatypes ((ValueCell!13222 0))(
  ( (ValueCellFull!13222 (v!16622 V!42277)) (EmptyCell!13222) )
))
(declare-fun mapRest!43612 () (Array (_ BitVec 32) ValueCell!13222))

(declare-fun mapKey!43612 () (_ BitVec 32))

(declare-datatypes ((array!72566 0))(
  ( (array!72567 (arr!34932 (Array (_ BitVec 32) ValueCell!13222)) (size!35469 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72566)

(declare-fun mapValue!43612 () ValueCell!13222)

(assert (=> mapNonEmpty!43612 (= (arr!34932 _values!996) (store mapRest!43612 mapKey!43612 mapValue!43612))))

(declare-fun b!1115536 () Bool)

(declare-fun e!635714 () Bool)

(declare-fun e!635712 () Bool)

(assert (=> b!1115536 (= e!635714 e!635712)))

(declare-fun res!744831 () Bool)

(assert (=> b!1115536 (=> (not res!744831) (not e!635712))))

(declare-datatypes ((array!72568 0))(
  ( (array!72569 (arr!34933 (Array (_ BitVec 32) (_ BitVec 64))) (size!35470 (_ BitVec 32))) )
))
(declare-fun lt!496977 () array!72568)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72568 (_ BitVec 32)) Bool)

(assert (=> b!1115536 (= res!744831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496977 mask!1564))))

(declare-fun _keys!1208 () array!72568)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115536 (= lt!496977 (array!72569 (store (arr!34933 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35470 _keys!1208)))))

(declare-fun b!1115538 () Bool)

(declare-fun e!635716 () Bool)

(declare-fun e!635715 () Bool)

(assert (=> b!1115538 (= e!635716 (and e!635715 mapRes!43612))))

(declare-fun condMapEmpty!43612 () Bool)

(declare-fun mapDefault!43612 () ValueCell!13222)

