; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83330 () Bool)

(assert start!83330)

(declare-fun b_free!19295 () Bool)

(declare-fun b_next!19295 () Bool)

(assert (=> start!83330 (= b_free!19295 (not b_next!19295))))

(declare-fun tp!67164 () Bool)

(declare-fun b_and!30829 () Bool)

(assert (=> start!83330 (= tp!67164 b_and!30829)))

(declare-fun b!972151 () Bool)

(declare-fun res!650830 () Bool)

(declare-fun e!548003 () Bool)

(assert (=> b!972151 (=> (not res!650830) (not e!548003))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34573 0))(
  ( (V!34574 (val!11147 Int)) )
))
(declare-datatypes ((ValueCell!10615 0))(
  ( (ValueCellFull!10615 (v!13706 V!34573)) (EmptyCell!10615) )
))
(declare-datatypes ((array!60415 0))(
  ( (array!60416 (arr!29067 (Array (_ BitVec 32) ValueCell!10615)) (size!29547 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60415)

(declare-fun zeroValue!1367 () V!34573)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34573)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60417 0))(
  ( (array!60418 (arr!29068 (Array (_ BitVec 32) (_ BitVec 64))) (size!29548 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60417)

(declare-datatypes ((tuple2!14396 0))(
  ( (tuple2!14397 (_1!7208 (_ BitVec 64)) (_2!7208 V!34573)) )
))
(declare-datatypes ((List!20287 0))(
  ( (Nil!20284) (Cons!20283 (h!21445 tuple2!14396) (t!28688 List!20287)) )
))
(declare-datatypes ((ListLongMap!13107 0))(
  ( (ListLongMap!13108 (toList!6569 List!20287)) )
))
(declare-fun contains!5617 (ListLongMap!13107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3754 (array!60417 array!60415 (_ BitVec 32) (_ BitVec 32) V!34573 V!34573 (_ BitVec 32) Int) ListLongMap!13107)

(assert (=> b!972151 (= res!650830 (contains!5617 (getCurrentListMap!3754 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29068 _keys!1717) i!822)))))

(declare-fun b!972152 () Bool)

(declare-fun res!650832 () Bool)

(assert (=> b!972152 (=> (not res!650832) (not e!548003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972152 (= res!650832 (validKeyInArray!0 (select (arr!29068 _keys!1717) i!822)))))

(declare-fun b!972153 () Bool)

(declare-fun res!650827 () Bool)

(assert (=> b!972153 (=> (not res!650827) (not e!548003))))

(assert (=> b!972153 (= res!650827 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29548 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29548 _keys!1717))))))

(declare-fun res!650826 () Bool)

(assert (=> start!83330 (=> (not res!650826) (not e!548003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83330 (= res!650826 (validMask!0 mask!2147))))

(assert (=> start!83330 e!548003))

(assert (=> start!83330 true))

(declare-fun e!548006 () Bool)

(declare-fun array_inv!22387 (array!60415) Bool)

(assert (=> start!83330 (and (array_inv!22387 _values!1425) e!548006)))

(declare-fun tp_is_empty!22193 () Bool)

(assert (=> start!83330 tp_is_empty!22193))

(assert (=> start!83330 tp!67164))

(declare-fun array_inv!22388 (array!60417) Bool)

(assert (=> start!83330 (array_inv!22388 _keys!1717)))

(declare-fun mapIsEmpty!35299 () Bool)

(declare-fun mapRes!35299 () Bool)

(assert (=> mapIsEmpty!35299 mapRes!35299))

(declare-fun b!972154 () Bool)

(declare-fun e!548002 () Bool)

(assert (=> b!972154 (= e!548002 tp_is_empty!22193)))

(declare-fun mapNonEmpty!35299 () Bool)

(declare-fun tp!67165 () Bool)

(declare-fun e!548005 () Bool)

(assert (=> mapNonEmpty!35299 (= mapRes!35299 (and tp!67165 e!548005))))

(declare-fun mapKey!35299 () (_ BitVec 32))

(declare-fun mapRest!35299 () (Array (_ BitVec 32) ValueCell!10615))

(declare-fun mapValue!35299 () ValueCell!10615)

(assert (=> mapNonEmpty!35299 (= (arr!29067 _values!1425) (store mapRest!35299 mapKey!35299 mapValue!35299))))

(declare-fun b!972155 () Bool)

(assert (=> b!972155 (= e!548006 (and e!548002 mapRes!35299))))

(declare-fun condMapEmpty!35299 () Bool)

(declare-fun mapDefault!35299 () ValueCell!10615)

