; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83122 () Bool)

(assert start!83122)

(declare-fun mapNonEmpty!34987 () Bool)

(declare-fun mapRes!34987 () Bool)

(declare-fun tp!66556 () Bool)

(declare-fun e!546398 () Bool)

(assert (=> mapNonEmpty!34987 (= mapRes!34987 (and tp!66556 e!546398))))

(declare-datatypes ((V!34297 0))(
  ( (V!34298 (val!11043 Int)) )
))
(declare-datatypes ((ValueCell!10511 0))(
  ( (ValueCellFull!10511 (v!13602 V!34297)) (EmptyCell!10511) )
))
(declare-fun mapValue!34987 () ValueCell!10511)

(declare-datatypes ((array!60017 0))(
  ( (array!60018 (arr!28868 (Array (_ BitVec 32) ValueCell!10511)) (size!29348 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60017)

(declare-fun mapRest!34987 () (Array (_ BitVec 32) ValueCell!10511))

(declare-fun mapKey!34987 () (_ BitVec 32))

(assert (=> mapNonEmpty!34987 (= (arr!28868 _values!1425) (store mapRest!34987 mapKey!34987 mapValue!34987))))

(declare-fun mapIsEmpty!34987 () Bool)

(assert (=> mapIsEmpty!34987 mapRes!34987))

(declare-fun res!648779 () Bool)

(declare-fun e!546402 () Bool)

(assert (=> start!83122 (=> (not res!648779) (not e!546402))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83122 (= res!648779 (validMask!0 mask!2147))))

(assert (=> start!83122 e!546402))

(assert (=> start!83122 true))

(declare-fun e!546399 () Bool)

(declare-fun array_inv!22241 (array!60017) Bool)

(assert (=> start!83122 (and (array_inv!22241 _values!1425) e!546399)))

(declare-datatypes ((array!60019 0))(
  ( (array!60020 (arr!28869 (Array (_ BitVec 32) (_ BitVec 64))) (size!29349 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60019)

(declare-fun array_inv!22242 (array!60019) Bool)

(assert (=> start!83122 (array_inv!22242 _keys!1717)))

(declare-fun b!969140 () Bool)

(declare-fun e!546400 () Bool)

(declare-fun tp_is_empty!21985 () Bool)

(assert (=> b!969140 (= e!546400 tp_is_empty!21985)))

(declare-fun b!969141 () Bool)

(assert (=> b!969141 (= e!546399 (and e!546400 mapRes!34987))))

(declare-fun condMapEmpty!34987 () Bool)

(declare-fun mapDefault!34987 () ValueCell!10511)

