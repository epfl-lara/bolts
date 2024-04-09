; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83476 () Bool)

(assert start!83476)

(declare-fun b_free!19435 () Bool)

(declare-fun b_next!19435 () Bool)

(assert (=> start!83476 (= b_free!19435 (not b_next!19435))))

(declare-fun tp!67594 () Bool)

(declare-fun b_and!31055 () Bool)

(assert (=> start!83476 (= tp!67594 b_and!31055)))

(declare-fun b!974534 () Bool)

(declare-fun res!652466 () Bool)

(declare-fun e!549314 () Bool)

(assert (=> b!974534 (=> (not res!652466) (not e!549314))))

(declare-datatypes ((array!60695 0))(
  ( (array!60696 (arr!29207 (Array (_ BitVec 32) (_ BitVec 64))) (size!29687 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60695)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974534 (= res!652466 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29687 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29687 _keys!1717))))))

(declare-fun b!974535 () Bool)

(assert (=> b!974535 (= e!549314 (bvslt i!822 #b00000000000000000000000000000000))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34769 0))(
  ( (V!34770 (val!11220 Int)) )
))
(declare-datatypes ((ValueCell!10688 0))(
  ( (ValueCellFull!10688 (v!13779 V!34769)) (EmptyCell!10688) )
))
(declare-datatypes ((array!60697 0))(
  ( (array!60698 (arr!29208 (Array (_ BitVec 32) ValueCell!10688)) (size!29688 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60697)

(declare-datatypes ((tuple2!14516 0))(
  ( (tuple2!14517 (_1!7268 (_ BitVec 64)) (_2!7268 V!34769)) )
))
(declare-datatypes ((List!20392 0))(
  ( (Nil!20389) (Cons!20388 (h!21550 tuple2!14516) (t!28877 List!20392)) )
))
(declare-datatypes ((ListLongMap!13227 0))(
  ( (ListLongMap!13228 (toList!6629 List!20392)) )
))
(declare-fun lt!432733 () ListLongMap!13227)

(declare-fun zeroValue!1367 () V!34769)

(declare-fun minValue!1367 () V!34769)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun getCurrentListMap!3814 (array!60695 array!60697 (_ BitVec 32) (_ BitVec 32) V!34769 V!34769 (_ BitVec 32) Int) ListLongMap!13227)

(assert (=> b!974535 (= lt!432733 (getCurrentListMap!3814 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun mapNonEmpty!35518 () Bool)

(declare-fun mapRes!35518 () Bool)

(declare-fun tp!67593 () Bool)

(declare-fun e!549318 () Bool)

(assert (=> mapNonEmpty!35518 (= mapRes!35518 (and tp!67593 e!549318))))

(declare-fun mapKey!35518 () (_ BitVec 32))

(declare-fun mapValue!35518 () ValueCell!10688)

(declare-fun mapRest!35518 () (Array (_ BitVec 32) ValueCell!10688))

(assert (=> mapNonEmpty!35518 (= (arr!29208 _values!1425) (store mapRest!35518 mapKey!35518 mapValue!35518))))

(declare-fun b!974536 () Bool)

(declare-fun res!652468 () Bool)

(assert (=> b!974536 (=> (not res!652468) (not e!549314))))

(declare-datatypes ((List!20393 0))(
  ( (Nil!20390) (Cons!20389 (h!21551 (_ BitVec 64)) (t!28878 List!20393)) )
))
(declare-fun arrayNoDuplicates!0 (array!60695 (_ BitVec 32) List!20393) Bool)

(assert (=> b!974536 (= res!652468 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20390))))

(declare-fun b!974537 () Bool)

(declare-fun res!652469 () Bool)

(assert (=> b!974537 (=> (not res!652469) (not e!549314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974537 (= res!652469 (validKeyInArray!0 (select (arr!29207 _keys!1717) i!822)))))

(declare-fun b!974538 () Bool)

(declare-fun tp_is_empty!22339 () Bool)

(assert (=> b!974538 (= e!549318 tp_is_empty!22339)))

(declare-fun res!652467 () Bool)

(assert (=> start!83476 (=> (not res!652467) (not e!549314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83476 (= res!652467 (validMask!0 mask!2147))))

(assert (=> start!83476 e!549314))

(assert (=> start!83476 true))

(declare-fun e!549316 () Bool)

(declare-fun array_inv!22487 (array!60697) Bool)

(assert (=> start!83476 (and (array_inv!22487 _values!1425) e!549316)))

(assert (=> start!83476 tp_is_empty!22339))

(assert (=> start!83476 tp!67594))

(declare-fun array_inv!22488 (array!60695) Bool)

(assert (=> start!83476 (array_inv!22488 _keys!1717)))

(declare-fun b!974539 () Bool)

(declare-fun e!549317 () Bool)

(assert (=> b!974539 (= e!549317 tp_is_empty!22339)))

(declare-fun b!974540 () Bool)

(declare-fun res!652471 () Bool)

(assert (=> b!974540 (=> (not res!652471) (not e!549314))))

(assert (=> b!974540 (= res!652471 (and (= (size!29688 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29687 _keys!1717) (size!29688 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974541 () Bool)

(assert (=> b!974541 (= e!549316 (and e!549317 mapRes!35518))))

(declare-fun condMapEmpty!35518 () Bool)

(declare-fun mapDefault!35518 () ValueCell!10688)

