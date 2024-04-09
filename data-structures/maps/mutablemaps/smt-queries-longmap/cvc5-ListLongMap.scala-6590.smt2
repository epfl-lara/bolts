; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83452 () Bool)

(assert start!83452)

(declare-fun b_free!19417 () Bool)

(declare-fun b_next!19417 () Bool)

(assert (=> start!83452 (= b_free!19417 (not b_next!19417))))

(declare-fun tp!67531 () Bool)

(declare-fun b_and!31037 () Bool)

(assert (=> start!83452 (= tp!67531 b_and!31037)))

(declare-fun b!974194 () Bool)

(declare-fun res!652237 () Bool)

(declare-fun e!549125 () Bool)

(assert (=> b!974194 (=> (not res!652237) (not e!549125))))

(declare-datatypes ((array!60651 0))(
  ( (array!60652 (arr!29185 (Array (_ BitVec 32) (_ BitVec 64))) (size!29665 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60651)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974194 (= res!652237 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29665 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29665 _keys!1717))))))

(declare-fun res!652239 () Bool)

(assert (=> start!83452 (=> (not res!652239) (not e!549125))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83452 (= res!652239 (validMask!0 mask!2147))))

(assert (=> start!83452 e!549125))

(assert (=> start!83452 true))

(declare-datatypes ((V!34737 0))(
  ( (V!34738 (val!11208 Int)) )
))
(declare-datatypes ((ValueCell!10676 0))(
  ( (ValueCellFull!10676 (v!13767 V!34737)) (EmptyCell!10676) )
))
(declare-datatypes ((array!60653 0))(
  ( (array!60654 (arr!29186 (Array (_ BitVec 32) ValueCell!10676)) (size!29666 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60653)

(declare-fun e!549127 () Bool)

(declare-fun array_inv!22471 (array!60653) Bool)

(assert (=> start!83452 (and (array_inv!22471 _values!1425) e!549127)))

(declare-fun tp_is_empty!22315 () Bool)

(assert (=> start!83452 tp_is_empty!22315))

(assert (=> start!83452 tp!67531))

(declare-fun array_inv!22472 (array!60651) Bool)

(assert (=> start!83452 (array_inv!22472 _keys!1717)))

(declare-fun b!974195 () Bool)

(declare-fun res!652235 () Bool)

(assert (=> b!974195 (=> (not res!652235) (not e!549125))))

(declare-fun zeroValue!1367 () V!34737)

(declare-fun defaultEntry!1428 () Int)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34737)

(declare-datatypes ((tuple2!14500 0))(
  ( (tuple2!14501 (_1!7260 (_ BitVec 64)) (_2!7260 V!34737)) )
))
(declare-datatypes ((List!20377 0))(
  ( (Nil!20374) (Cons!20373 (h!21535 tuple2!14500) (t!28862 List!20377)) )
))
(declare-datatypes ((ListLongMap!13211 0))(
  ( (ListLongMap!13212 (toList!6621 List!20377)) )
))
(declare-fun contains!5661 (ListLongMap!13211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3806 (array!60651 array!60653 (_ BitVec 32) (_ BitVec 32) V!34737 V!34737 (_ BitVec 32) Int) ListLongMap!13211)

(assert (=> b!974195 (= res!652235 (contains!5661 (getCurrentListMap!3806 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29185 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35482 () Bool)

(declare-fun mapRes!35482 () Bool)

(assert (=> mapIsEmpty!35482 mapRes!35482))

(declare-fun b!974196 () Bool)

(declare-fun e!549126 () Bool)

(assert (=> b!974196 (= e!549126 tp_is_empty!22315)))

(declare-fun b!974197 () Bool)

(declare-fun res!652240 () Bool)

(assert (=> b!974197 (=> (not res!652240) (not e!549125))))

(assert (=> b!974197 (= res!652240 (and (= (size!29666 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29665 _keys!1717) (size!29666 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974198 () Bool)

(assert (=> b!974198 (= e!549127 (and e!549126 mapRes!35482))))

(declare-fun condMapEmpty!35482 () Bool)

(declare-fun mapDefault!35482 () ValueCell!10676)

