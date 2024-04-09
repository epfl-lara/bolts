; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!598 () Bool)

(assert start!598)

(declare-fun b_free!71 () Bool)

(declare-fun b_next!71 () Bool)

(assert (=> start!598 (= b_free!71 (not b_next!71))))

(declare-fun tp!431 () Bool)

(declare-fun b_and!209 () Bool)

(assert (=> start!598 (= tp!431 b_and!209)))

(declare-fun b!3679 () Bool)

(declare-fun e!1832 () Bool)

(assert (=> b!3679 (= e!1832 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!375 0))(
  ( (V!376 (val!80 Int)) )
))
(declare-datatypes ((ValueCell!58 0))(
  ( (ValueCellFull!58 (v!1167 V!375)) (EmptyCell!58) )
))
(declare-datatypes ((array!231 0))(
  ( (array!232 (arr!108 (Array (_ BitVec 32) ValueCell!58)) (size!170 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!231)

(declare-fun minValue!1434 () V!375)

(declare-datatypes ((array!233 0))(
  ( (array!234 (arr!109 (Array (_ BitVec 32) (_ BitVec 64))) (size!171 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!233)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!375)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!507 () Bool)

(declare-datatypes ((tuple2!56 0))(
  ( (tuple2!57 (_1!28 (_ BitVec 64)) (_2!28 V!375)) )
))
(declare-datatypes ((List!64 0))(
  ( (Nil!61) (Cons!60 (h!626 tuple2!56) (t!2191 List!64)) )
))
(declare-datatypes ((ListLongMap!61 0))(
  ( (ListLongMap!62 (toList!46 List!64)) )
))
(declare-fun contains!16 (ListLongMap!61 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5 (array!233 array!231 (_ BitVec 32) (_ BitVec 32) V!375 V!375 (_ BitVec 32) Int) ListLongMap!61)

(assert (=> b!3679 (= lt!507 (contains!16 (getCurrentListMap!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!3680 () Bool)

(declare-fun res!5306 () Bool)

(assert (=> b!3680 (=> (not res!5306) (not e!1832))))

(declare-datatypes ((List!65 0))(
  ( (Nil!62) (Cons!61 (h!627 (_ BitVec 64)) (t!2192 List!65)) )
))
(declare-fun arrayNoDuplicates!0 (array!233 (_ BitVec 32) List!65) Bool)

(assert (=> b!3680 (= res!5306 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!62))))

(declare-fun b!3681 () Bool)

(declare-fun e!1831 () Bool)

(declare-fun tp_is_empty!149 () Bool)

(assert (=> b!3681 (= e!1831 tp_is_empty!149)))

(declare-fun mapNonEmpty!182 () Bool)

(declare-fun mapRes!182 () Bool)

(declare-fun tp!430 () Bool)

(declare-fun e!1833 () Bool)

(assert (=> mapNonEmpty!182 (= mapRes!182 (and tp!430 e!1833))))

(declare-fun mapRest!182 () (Array (_ BitVec 32) ValueCell!58))

(declare-fun mapValue!182 () ValueCell!58)

(declare-fun mapKey!182 () (_ BitVec 32))

(assert (=> mapNonEmpty!182 (= (arr!108 _values!1492) (store mapRest!182 mapKey!182 mapValue!182))))

(declare-fun b!3682 () Bool)

(declare-fun res!5308 () Bool)

(assert (=> b!3682 (=> (not res!5308) (not e!1832))))

(assert (=> b!3682 (= res!5308 (and (= (size!170 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!171 _keys!1806) (size!170 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3683 () Bool)

(assert (=> b!3683 (= e!1833 tp_is_empty!149)))

(declare-fun b!3684 () Bool)

(declare-fun res!5305 () Bool)

(assert (=> b!3684 (=> (not res!5305) (not e!1832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!233 (_ BitVec 32)) Bool)

(assert (=> b!3684 (= res!5305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3685 () Bool)

(declare-fun e!1835 () Bool)

(assert (=> b!3685 (= e!1835 (and e!1831 mapRes!182))))

(declare-fun condMapEmpty!182 () Bool)

(declare-fun mapDefault!182 () ValueCell!58)

