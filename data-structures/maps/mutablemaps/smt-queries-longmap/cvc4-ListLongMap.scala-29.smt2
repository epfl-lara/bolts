; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!610 () Bool)

(assert start!610)

(declare-fun b_free!83 () Bool)

(declare-fun b_next!83 () Bool)

(assert (=> start!610 (= b_free!83 (not b_next!83))))

(declare-fun tp!467 () Bool)

(declare-fun b_and!221 () Bool)

(assert (=> start!610 (= tp!467 b_and!221)))

(declare-fun b!3805 () Bool)

(declare-fun res!5380 () Bool)

(declare-fun e!1922 () Bool)

(assert (=> b!3805 (=> (not res!5380) (not e!1922))))

(declare-datatypes ((array!255 0))(
  ( (array!256 (arr!120 (Array (_ BitVec 32) (_ BitVec 64))) (size!182 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!255)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!255 (_ BitVec 32)) Bool)

(assert (=> b!3805 (= res!5380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!200 () Bool)

(declare-fun mapRes!200 () Bool)

(assert (=> mapIsEmpty!200 mapRes!200))

(declare-fun b!3806 () Bool)

(declare-fun res!5378 () Bool)

(assert (=> b!3806 (=> (not res!5378) (not e!1922))))

(declare-datatypes ((V!391 0))(
  ( (V!392 (val!86 Int)) )
))
(declare-datatypes ((ValueCell!64 0))(
  ( (ValueCellFull!64 (v!1173 V!391)) (EmptyCell!64) )
))
(declare-datatypes ((array!257 0))(
  ( (array!258 (arr!121 (Array (_ BitVec 32) ValueCell!64)) (size!183 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!257)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3806 (= res!5378 (and (= (size!183 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!182 _keys!1806) (size!183 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3807 () Bool)

(assert (=> b!3807 (= e!1922 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!391)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!391)

(declare-fun lt!525 () Bool)

(declare-datatypes ((tuple2!66 0))(
  ( (tuple2!67 (_1!33 (_ BitVec 64)) (_2!33 V!391)) )
))
(declare-datatypes ((List!73 0))(
  ( (Nil!70) (Cons!69 (h!635 tuple2!66) (t!2200 List!73)) )
))
(declare-datatypes ((ListLongMap!71 0))(
  ( (ListLongMap!72 (toList!51 List!73)) )
))
(declare-fun contains!21 (ListLongMap!71 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!10 (array!255 array!257 (_ BitVec 32) (_ BitVec 32) V!391 V!391 (_ BitVec 32) Int) ListLongMap!71)

(assert (=> b!3807 (= lt!525 (contains!21 (getCurrentListMap!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!3808 () Bool)

(declare-fun e!1924 () Bool)

(declare-fun tp_is_empty!161 () Bool)

(assert (=> b!3808 (= e!1924 tp_is_empty!161)))

(declare-fun b!3809 () Bool)

(declare-fun e!1921 () Bool)

(assert (=> b!3809 (= e!1921 tp_is_empty!161)))

(declare-fun mapNonEmpty!200 () Bool)

(declare-fun tp!466 () Bool)

(assert (=> mapNonEmpty!200 (= mapRes!200 (and tp!466 e!1921))))

(declare-fun mapRest!200 () (Array (_ BitVec 32) ValueCell!64))

(declare-fun mapKey!200 () (_ BitVec 32))

(declare-fun mapValue!200 () ValueCell!64)

(assert (=> mapNonEmpty!200 (= (arr!121 _values!1492) (store mapRest!200 mapKey!200 mapValue!200))))

(declare-fun res!5377 () Bool)

(assert (=> start!610 (=> (not res!5377) (not e!1922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!610 (= res!5377 (validMask!0 mask!2250))))

(assert (=> start!610 e!1922))

(assert (=> start!610 tp!467))

(assert (=> start!610 true))

(declare-fun e!1923 () Bool)

(declare-fun array_inv!85 (array!257) Bool)

(assert (=> start!610 (and (array_inv!85 _values!1492) e!1923)))

(assert (=> start!610 tp_is_empty!161))

(declare-fun array_inv!86 (array!255) Bool)

(assert (=> start!610 (array_inv!86 _keys!1806)))

(declare-fun b!3810 () Bool)

(assert (=> b!3810 (= e!1923 (and e!1924 mapRes!200))))

(declare-fun condMapEmpty!200 () Bool)

(declare-fun mapDefault!200 () ValueCell!64)

