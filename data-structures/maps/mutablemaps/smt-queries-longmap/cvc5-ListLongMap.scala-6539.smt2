; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83146 () Bool)

(assert start!83146)

(declare-fun b_free!19111 () Bool)

(declare-fun b_next!19111 () Bool)

(assert (=> start!83146 (= b_free!19111 (not b_next!19111))))

(declare-fun tp!66613 () Bool)

(declare-fun b_and!30617 () Bool)

(assert (=> start!83146 (= tp!66613 b_and!30617)))

(declare-fun b!969443 () Bool)

(declare-fun e!546578 () Bool)

(declare-fun tp_is_empty!22009 () Bool)

(assert (=> b!969443 (= e!546578 tp_is_empty!22009)))

(declare-fun b!969444 () Bool)

(declare-fun e!546579 () Bool)

(assert (=> b!969444 (= e!546579 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun lt!431599 () Bool)

(declare-datatypes ((V!34329 0))(
  ( (V!34330 (val!11055 Int)) )
))
(declare-datatypes ((ValueCell!10523 0))(
  ( (ValueCellFull!10523 (v!13614 V!34329)) (EmptyCell!10523) )
))
(declare-datatypes ((array!60065 0))(
  ( (array!60066 (arr!28892 (Array (_ BitVec 32) ValueCell!10523)) (size!29372 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60065)

(declare-fun zeroValue!1367 () V!34329)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34329)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60067 0))(
  ( (array!60068 (arr!28893 (Array (_ BitVec 32) (_ BitVec 64))) (size!29373 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60067)

(declare-datatypes ((tuple2!14260 0))(
  ( (tuple2!14261 (_1!7140 (_ BitVec 64)) (_2!7140 V!34329)) )
))
(declare-datatypes ((List!20153 0))(
  ( (Nil!20150) (Cons!20149 (h!21311 tuple2!14260) (t!28524 List!20153)) )
))
(declare-datatypes ((ListLongMap!12971 0))(
  ( (ListLongMap!12972 (toList!6501 List!20153)) )
))
(declare-fun contains!5556 (ListLongMap!12971 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3686 (array!60067 array!60065 (_ BitVec 32) (_ BitVec 32) V!34329 V!34329 (_ BitVec 32) Int) ListLongMap!12971)

(assert (=> b!969444 (= lt!431599 (contains!5556 (getCurrentListMap!3686 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28893 _keys!1717) i!822)))))

(declare-fun b!969445 () Bool)

(declare-fun e!546580 () Bool)

(declare-fun mapRes!35023 () Bool)

(assert (=> b!969445 (= e!546580 (and e!546578 mapRes!35023))))

(declare-fun condMapEmpty!35023 () Bool)

(declare-fun mapDefault!35023 () ValueCell!10523)

