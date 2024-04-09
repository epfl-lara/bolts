; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82114 () Bool)

(assert start!82114)

(declare-fun mapNonEmpty!33613 () Bool)

(declare-fun mapRes!33613 () Bool)

(declare-fun tp!64219 () Bool)

(declare-fun e!539360 () Bool)

(assert (=> mapNonEmpty!33613 (= mapRes!33613 (and tp!64219 e!539360))))

(declare-datatypes ((V!33109 0))(
  ( (V!33110 (val!10598 Int)) )
))
(declare-datatypes ((ValueCell!10066 0))(
  ( (ValueCellFull!10066 (v!13154 V!33109)) (EmptyCell!10066) )
))
(declare-fun mapValue!33613 () ValueCell!10066)

(declare-fun mapRest!33613 () (Array (_ BitVec 32) ValueCell!10066))

(declare-datatypes ((array!58311 0))(
  ( (array!58312 (arr!28028 (Array (_ BitVec 32) ValueCell!10066)) (size!28508 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58311)

(declare-fun mapKey!33613 () (_ BitVec 32))

(assert (=> mapNonEmpty!33613 (= (arr!28028 _values!1386) (store mapRest!33613 mapKey!33613 mapValue!33613))))

(declare-fun b!956937 () Bool)

(declare-fun tp_is_empty!21095 () Bool)

(assert (=> b!956937 (= e!539360 tp_is_empty!21095)))

(declare-fun mapIsEmpty!33613 () Bool)

(assert (=> mapIsEmpty!33613 mapRes!33613))

(declare-fun res!640752 () Bool)

(declare-fun e!539364 () Bool)

(assert (=> start!82114 (=> (not res!640752) (not e!539364))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82114 (= res!640752 (validMask!0 mask!2088))))

(assert (=> start!82114 e!539364))

(assert (=> start!82114 true))

(declare-fun e!539361 () Bool)

(declare-fun array_inv!21691 (array!58311) Bool)

(assert (=> start!82114 (and (array_inv!21691 _values!1386) e!539361)))

(declare-datatypes ((array!58313 0))(
  ( (array!58314 (arr!28029 (Array (_ BitVec 32) (_ BitVec 64))) (size!28509 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58313)

(declare-fun array_inv!21692 (array!58313) Bool)

(assert (=> start!82114 (array_inv!21692 _keys!1668)))

(declare-fun b!956938 () Bool)

(declare-fun e!539362 () Bool)

(assert (=> b!956938 (= e!539361 (and e!539362 mapRes!33613))))

(declare-fun condMapEmpty!33613 () Bool)

(declare-fun mapDefault!33613 () ValueCell!10066)

