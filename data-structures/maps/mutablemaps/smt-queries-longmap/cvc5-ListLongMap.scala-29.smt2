; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!606 () Bool)

(assert start!606)

(declare-fun b_free!79 () Bool)

(declare-fun b_next!79 () Bool)

(assert (=> start!606 (= b_free!79 (not b_next!79))))

(declare-fun tp!455 () Bool)

(declare-fun b_and!217 () Bool)

(assert (=> start!606 (= tp!455 b_and!217)))

(declare-fun b!3763 () Bool)

(declare-fun e!1895 () Bool)

(declare-fun tp_is_empty!157 () Bool)

(assert (=> b!3763 (= e!1895 tp_is_empty!157)))

(declare-fun b!3765 () Bool)

(declare-fun e!1892 () Bool)

(assert (=> b!3765 (= e!1892 tp_is_empty!157)))

(declare-fun mapNonEmpty!194 () Bool)

(declare-fun mapRes!194 () Bool)

(declare-fun tp!454 () Bool)

(assert (=> mapNonEmpty!194 (= mapRes!194 (and tp!454 e!1895))))

(declare-datatypes ((V!387 0))(
  ( (V!388 (val!84 Int)) )
))
(declare-datatypes ((ValueCell!62 0))(
  ( (ValueCellFull!62 (v!1171 V!387)) (EmptyCell!62) )
))
(declare-fun mapRest!194 () (Array (_ BitVec 32) ValueCell!62))

(declare-fun mapValue!194 () ValueCell!62)

(declare-fun mapKey!194 () (_ BitVec 32))

(declare-datatypes ((array!247 0))(
  ( (array!248 (arr!116 (Array (_ BitVec 32) ValueCell!62)) (size!178 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!247)

(assert (=> mapNonEmpty!194 (= (arr!116 _values!1492) (store mapRest!194 mapKey!194 mapValue!194))))

(declare-fun b!3766 () Bool)

(declare-fun res!5354 () Bool)

(declare-fun e!1893 () Bool)

(assert (=> b!3766 (=> (not res!5354) (not e!1893))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!249 0))(
  ( (array!250 (arr!117 (Array (_ BitVec 32) (_ BitVec 64))) (size!179 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!249)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3766 (= res!5354 (and (= (size!178 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!179 _keys!1806) (size!178 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3767 () Bool)

(assert (=> b!3767 (= e!1893 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!387)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!387)

(declare-fun lt!519 () Bool)

(declare-datatypes ((tuple2!62 0))(
  ( (tuple2!63 (_1!31 (_ BitVec 64)) (_2!31 V!387)) )
))
(declare-datatypes ((List!70 0))(
  ( (Nil!67) (Cons!66 (h!632 tuple2!62) (t!2197 List!70)) )
))
(declare-datatypes ((ListLongMap!67 0))(
  ( (ListLongMap!68 (toList!49 List!70)) )
))
(declare-fun contains!19 (ListLongMap!67 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!8 (array!249 array!247 (_ BitVec 32) (_ BitVec 32) V!387 V!387 (_ BitVec 32) Int) ListLongMap!67)

(assert (=> b!3767 (= lt!519 (contains!19 (getCurrentListMap!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapIsEmpty!194 () Bool)

(assert (=> mapIsEmpty!194 mapRes!194))

(declare-fun b!3768 () Bool)

(declare-fun e!1891 () Bool)

(assert (=> b!3768 (= e!1891 (and e!1892 mapRes!194))))

(declare-fun condMapEmpty!194 () Bool)

(declare-fun mapDefault!194 () ValueCell!62)

