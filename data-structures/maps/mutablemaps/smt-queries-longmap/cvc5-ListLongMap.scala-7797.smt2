; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97562 () Bool)

(assert start!97562)

(declare-fun mapNonEmpty!43453 () Bool)

(declare-fun mapRes!43453 () Bool)

(declare-fun tp!82698 () Bool)

(declare-fun e!634761 () Bool)

(assert (=> mapNonEmpty!43453 (= mapRes!43453 (and tp!82698 e!634761))))

(declare-datatypes ((V!42137 0))(
  ( (V!42138 (val!13935 Int)) )
))
(declare-datatypes ((ValueCell!13169 0))(
  ( (ValueCellFull!13169 (v!16569 V!42137)) (EmptyCell!13169) )
))
(declare-fun mapRest!43453 () (Array (_ BitVec 32) ValueCell!13169))

(declare-fun mapKey!43453 () (_ BitVec 32))

(declare-fun mapValue!43453 () ValueCell!13169)

(declare-datatypes ((array!72366 0))(
  ( (array!72367 (arr!34832 (Array (_ BitVec 32) ValueCell!13169)) (size!35369 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72366)

(assert (=> mapNonEmpty!43453 (= (arr!34832 _values!996) (store mapRest!43453 mapKey!43453 mapValue!43453))))

(declare-fun b!1113469 () Bool)

(declare-fun tp_is_empty!27757 () Bool)

(assert (=> b!1113469 (= e!634761 tp_is_empty!27757)))

(declare-fun b!1113470 () Bool)

(declare-fun res!743240 () Bool)

(declare-fun e!634759 () Bool)

(assert (=> b!1113470 (=> (not res!743240) (not e!634759))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113470 (= res!743240 (validMask!0 mask!1564))))

(declare-fun b!1113471 () Bool)

(declare-fun res!743236 () Bool)

(assert (=> b!1113471 (=> (not res!743236) (not e!634759))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113471 (= res!743236 (validKeyInArray!0 k!934))))

(declare-fun b!1113472 () Bool)

(declare-fun e!634762 () Bool)

(assert (=> b!1113472 (= e!634759 e!634762)))

(declare-fun res!743234 () Bool)

(assert (=> b!1113472 (=> (not res!743234) (not e!634762))))

(declare-datatypes ((array!72368 0))(
  ( (array!72369 (arr!34833 (Array (_ BitVec 32) (_ BitVec 64))) (size!35370 (_ BitVec 32))) )
))
(declare-fun lt!496658 () array!72368)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72368 (_ BitVec 32)) Bool)

(assert (=> b!1113472 (= res!743234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496658 mask!1564))))

(declare-fun _keys!1208 () array!72368)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113472 (= lt!496658 (array!72369 (store (arr!34833 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35370 _keys!1208)))))

(declare-fun b!1113473 () Bool)

(declare-fun res!743232 () Bool)

(assert (=> b!1113473 (=> (not res!743232) (not e!634759))))

(assert (=> b!1113473 (= res!743232 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35370 _keys!1208))))))

(declare-fun b!1113474 () Bool)

(declare-fun e!634760 () Bool)

(declare-fun e!634763 () Bool)

(assert (=> b!1113474 (= e!634760 (and e!634763 mapRes!43453))))

(declare-fun condMapEmpty!43453 () Bool)

(declare-fun mapDefault!43453 () ValueCell!13169)

