; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83492 () Bool)

(assert start!83492)

(declare-fun b_free!19451 () Bool)

(declare-fun b_next!19451 () Bool)

(assert (=> start!83492 (= b_free!19451 (not b_next!19451))))

(declare-fun tp!67641 () Bool)

(declare-fun b_and!31071 () Bool)

(assert (=> start!83492 (= tp!67641 b_and!31071)))

(declare-fun res!652631 () Bool)

(declare-fun e!549437 () Bool)

(assert (=> start!83492 (=> (not res!652631) (not e!549437))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83492 (= res!652631 (validMask!0 mask!2147))))

(assert (=> start!83492 e!549437))

(assert (=> start!83492 true))

(declare-datatypes ((V!34789 0))(
  ( (V!34790 (val!11228 Int)) )
))
(declare-datatypes ((ValueCell!10696 0))(
  ( (ValueCellFull!10696 (v!13787 V!34789)) (EmptyCell!10696) )
))
(declare-datatypes ((array!60727 0))(
  ( (array!60728 (arr!29223 (Array (_ BitVec 32) ValueCell!10696)) (size!29703 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60727)

(declare-fun e!549435 () Bool)

(declare-fun array_inv!22497 (array!60727) Bool)

(assert (=> start!83492 (and (array_inv!22497 _values!1425) e!549435)))

(declare-fun tp_is_empty!22355 () Bool)

(assert (=> start!83492 tp_is_empty!22355))

(assert (=> start!83492 tp!67641))

(declare-datatypes ((array!60729 0))(
  ( (array!60730 (arr!29224 (Array (_ BitVec 32) (_ BitVec 64))) (size!29704 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60729)

(declare-fun array_inv!22498 (array!60729) Bool)

(assert (=> start!83492 (array_inv!22498 _keys!1717)))

(declare-fun b!974767 () Bool)

(declare-fun res!652632 () Bool)

(assert (=> b!974767 (=> (not res!652632) (not e!549437))))

(declare-datatypes ((List!20404 0))(
  ( (Nil!20401) (Cons!20400 (h!21562 (_ BitVec 64)) (t!28889 List!20404)) )
))
(declare-fun arrayNoDuplicates!0 (array!60729 (_ BitVec 32) List!20404) Bool)

(assert (=> b!974767 (= res!652632 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20401))))

(declare-fun mapNonEmpty!35542 () Bool)

(declare-fun mapRes!35542 () Bool)

(declare-fun tp!67642 () Bool)

(declare-fun e!549434 () Bool)

(assert (=> mapNonEmpty!35542 (= mapRes!35542 (and tp!67642 e!549434))))

(declare-fun mapKey!35542 () (_ BitVec 32))

(declare-fun mapValue!35542 () ValueCell!10696)

(declare-fun mapRest!35542 () (Array (_ BitVec 32) ValueCell!10696))

(assert (=> mapNonEmpty!35542 (= (arr!29223 _values!1425) (store mapRest!35542 mapKey!35542 mapValue!35542))))

(declare-fun b!974768 () Bool)

(declare-fun res!652633 () Bool)

(assert (=> b!974768 (=> (not res!652633) (not e!549437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60729 (_ BitVec 32)) Bool)

(assert (=> b!974768 (= res!652633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974769 () Bool)

(declare-fun res!652630 () Bool)

(assert (=> b!974769 (=> (not res!652630) (not e!549437))))

(declare-fun zeroValue!1367 () V!34789)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34789)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14528 0))(
  ( (tuple2!14529 (_1!7274 (_ BitVec 64)) (_2!7274 V!34789)) )
))
(declare-datatypes ((List!20405 0))(
  ( (Nil!20402) (Cons!20401 (h!21563 tuple2!14528) (t!28890 List!20405)) )
))
(declare-datatypes ((ListLongMap!13239 0))(
  ( (ListLongMap!13240 (toList!6635 List!20405)) )
))
(declare-fun contains!5670 (ListLongMap!13239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3820 (array!60729 array!60727 (_ BitVec 32) (_ BitVec 32) V!34789 V!34789 (_ BitVec 32) Int) ListLongMap!13239)

(assert (=> b!974769 (= res!652630 (contains!5670 (getCurrentListMap!3820 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29224 _keys!1717) i!822)))))

(declare-fun b!974770 () Bool)

(declare-fun e!549436 () Bool)

(assert (=> b!974770 (= e!549436 tp_is_empty!22355)))

(declare-fun b!974771 () Bool)

(declare-fun res!652627 () Bool)

(assert (=> b!974771 (=> (not res!652627) (not e!549437))))

(assert (=> b!974771 (= res!652627 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29704 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29704 _keys!1717))))))

(declare-fun b!974772 () Bool)

(declare-fun res!652628 () Bool)

(assert (=> b!974772 (=> (not res!652628) (not e!549437))))

(assert (=> b!974772 (= res!652628 (and (= (size!29703 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29704 _keys!1717) (size!29703 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35542 () Bool)

(assert (=> mapIsEmpty!35542 mapRes!35542))

(declare-fun b!974773 () Bool)

(declare-fun res!652629 () Bool)

(assert (=> b!974773 (=> (not res!652629) (not e!549437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974773 (= res!652629 (validKeyInArray!0 (select (arr!29224 _keys!1717) i!822)))))

(declare-fun b!974774 () Bool)

(assert (=> b!974774 (= e!549435 (and e!549436 mapRes!35542))))

(declare-fun condMapEmpty!35542 () Bool)

(declare-fun mapDefault!35542 () ValueCell!10696)

