; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83506 () Bool)

(assert start!83506)

(declare-fun b_free!19465 () Bool)

(declare-fun b_next!19465 () Bool)

(assert (=> start!83506 (= b_free!19465 (not b_next!19465))))

(declare-fun tp!67683 () Bool)

(declare-fun b_and!31085 () Bool)

(assert (=> start!83506 (= tp!67683 b_and!31085)))

(declare-fun b!974977 () Bool)

(declare-fun e!549542 () Bool)

(assert (=> b!974977 (= e!549542 false)))

(declare-datatypes ((V!34809 0))(
  ( (V!34810 (val!11235 Int)) )
))
(declare-datatypes ((ValueCell!10703 0))(
  ( (ValueCellFull!10703 (v!13794 V!34809)) (EmptyCell!10703) )
))
(declare-datatypes ((array!60753 0))(
  ( (array!60754 (arr!29236 (Array (_ BitVec 32) ValueCell!10703)) (size!29716 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60753)

(declare-fun zeroValue!1367 () V!34809)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34809)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((tuple2!14540 0))(
  ( (tuple2!14541 (_1!7280 (_ BitVec 64)) (_2!7280 V!34809)) )
))
(declare-datatypes ((List!20415 0))(
  ( (Nil!20412) (Cons!20411 (h!21573 tuple2!14540) (t!28900 List!20415)) )
))
(declare-datatypes ((ListLongMap!13251 0))(
  ( (ListLongMap!13252 (toList!6641 List!20415)) )
))
(declare-fun lt!432778 () ListLongMap!13251)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60755 0))(
  ( (array!60756 (arr!29237 (Array (_ BitVec 32) (_ BitVec 64))) (size!29717 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60755)

(declare-fun getCurrentListMap!3826 (array!60755 array!60753 (_ BitVec 32) (_ BitVec 32) V!34809 V!34809 (_ BitVec 32) Int) ListLongMap!13251)

(assert (=> b!974977 (= lt!432778 (getCurrentListMap!3826 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974978 () Bool)

(declare-fun e!549540 () Bool)

(declare-fun tp_is_empty!22369 () Bool)

(assert (=> b!974978 (= e!549540 tp_is_empty!22369)))

(declare-fun b!974979 () Bool)

(declare-fun res!652779 () Bool)

(assert (=> b!974979 (=> (not res!652779) (not e!549542))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5676 (ListLongMap!13251 (_ BitVec 64)) Bool)

(assert (=> b!974979 (= res!652779 (contains!5676 (getCurrentListMap!3826 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29237 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35563 () Bool)

(declare-fun mapRes!35563 () Bool)

(declare-fun tp!67684 () Bool)

(assert (=> mapNonEmpty!35563 (= mapRes!35563 (and tp!67684 e!549540))))

(declare-fun mapRest!35563 () (Array (_ BitVec 32) ValueCell!10703))

(declare-fun mapKey!35563 () (_ BitVec 32))

(declare-fun mapValue!35563 () ValueCell!10703)

(assert (=> mapNonEmpty!35563 (= (arr!29236 _values!1425) (store mapRest!35563 mapKey!35563 mapValue!35563))))

(declare-fun b!974980 () Bool)

(declare-fun res!652777 () Bool)

(assert (=> b!974980 (=> (not res!652777) (not e!549542))))

(assert (=> b!974980 (= res!652777 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29717 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29717 _keys!1717))))))

(declare-fun b!974981 () Bool)

(declare-fun e!549541 () Bool)

(declare-fun e!549539 () Bool)

(assert (=> b!974981 (= e!549541 (and e!549539 mapRes!35563))))

(declare-fun condMapEmpty!35563 () Bool)

(declare-fun mapDefault!35563 () ValueCell!10703)

