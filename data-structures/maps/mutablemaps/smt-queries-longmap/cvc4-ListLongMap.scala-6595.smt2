; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83486 () Bool)

(assert start!83486)

(declare-fun b_free!19445 () Bool)

(declare-fun b_next!19445 () Bool)

(assert (=> start!83486 (= b_free!19445 (not b_next!19445))))

(declare-fun tp!67623 () Bool)

(declare-fun b_and!31065 () Bool)

(assert (=> start!83486 (= tp!67623 b_and!31065)))

(declare-fun b!974677 () Bool)

(declare-fun res!652566 () Bool)

(declare-fun e!549393 () Bool)

(assert (=> b!974677 (=> (not res!652566) (not e!549393))))

(declare-datatypes ((array!60715 0))(
  ( (array!60716 (arr!29217 (Array (_ BitVec 32) (_ BitVec 64))) (size!29697 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60715)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974677 (= res!652566 (validKeyInArray!0 (select (arr!29217 _keys!1717) i!822)))))

(declare-fun b!974678 () Bool)

(declare-fun e!549392 () Bool)

(declare-fun tp_is_empty!22349 () Bool)

(assert (=> b!974678 (= e!549392 tp_is_empty!22349)))

(declare-fun b!974679 () Bool)

(declare-fun res!652569 () Bool)

(assert (=> b!974679 (=> (not res!652569) (not e!549393))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34781 0))(
  ( (V!34782 (val!11225 Int)) )
))
(declare-datatypes ((ValueCell!10693 0))(
  ( (ValueCellFull!10693 (v!13784 V!34781)) (EmptyCell!10693) )
))
(declare-datatypes ((array!60717 0))(
  ( (array!60718 (arr!29218 (Array (_ BitVec 32) ValueCell!10693)) (size!29698 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60717)

(declare-fun zeroValue!1367 () V!34781)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34781)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14522 0))(
  ( (tuple2!14523 (_1!7271 (_ BitVec 64)) (_2!7271 V!34781)) )
))
(declare-datatypes ((List!20398 0))(
  ( (Nil!20395) (Cons!20394 (h!21556 tuple2!14522) (t!28883 List!20398)) )
))
(declare-datatypes ((ListLongMap!13233 0))(
  ( (ListLongMap!13234 (toList!6632 List!20398)) )
))
(declare-fun contains!5668 (ListLongMap!13233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3817 (array!60715 array!60717 (_ BitVec 32) (_ BitVec 32) V!34781 V!34781 (_ BitVec 32) Int) ListLongMap!13233)

(assert (=> b!974679 (= res!652569 (contains!5668 (getCurrentListMap!3817 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29217 _keys!1717) i!822)))))

(declare-fun b!974680 () Bool)

(declare-fun res!652567 () Bool)

(assert (=> b!974680 (=> (not res!652567) (not e!549393))))

(declare-datatypes ((List!20399 0))(
  ( (Nil!20396) (Cons!20395 (h!21557 (_ BitVec 64)) (t!28884 List!20399)) )
))
(declare-fun arrayNoDuplicates!0 (array!60715 (_ BitVec 32) List!20399) Bool)

(assert (=> b!974680 (= res!652567 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20396))))

(declare-fun mapIsEmpty!35533 () Bool)

(declare-fun mapRes!35533 () Bool)

(assert (=> mapIsEmpty!35533 mapRes!35533))

(declare-fun mapNonEmpty!35533 () Bool)

(declare-fun tp!67624 () Bool)

(declare-fun e!549390 () Bool)

(assert (=> mapNonEmpty!35533 (= mapRes!35533 (and tp!67624 e!549390))))

(declare-fun mapRest!35533 () (Array (_ BitVec 32) ValueCell!10693))

(declare-fun mapValue!35533 () ValueCell!10693)

(declare-fun mapKey!35533 () (_ BitVec 32))

(assert (=> mapNonEmpty!35533 (= (arr!29218 _values!1425) (store mapRest!35533 mapKey!35533 mapValue!35533))))

(declare-fun b!974681 () Bool)

(declare-fun e!549391 () Bool)

(assert (=> b!974681 (= e!549391 (and e!549392 mapRes!35533))))

(declare-fun condMapEmpty!35533 () Bool)

(declare-fun mapDefault!35533 () ValueCell!10693)

