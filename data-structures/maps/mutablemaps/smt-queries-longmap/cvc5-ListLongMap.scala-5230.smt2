; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70468 () Bool)

(assert start!70468)

(declare-fun b_free!12787 () Bool)

(declare-fun b_next!12787 () Bool)

(assert (=> start!70468 (= b_free!12787 (not b_next!12787))))

(declare-fun tp!45091 () Bool)

(declare-fun b_and!21625 () Bool)

(assert (=> start!70468 (= tp!45091 b_and!21625)))

(declare-fun mapNonEmpty!23341 () Bool)

(declare-fun mapRes!23341 () Bool)

(declare-fun tp!45090 () Bool)

(declare-fun e!454134 () Bool)

(assert (=> mapNonEmpty!23341 (= mapRes!23341 (and tp!45090 e!454134))))

(declare-fun mapKey!23341 () (_ BitVec 32))

(declare-datatypes ((V!24331 0))(
  ( (V!24332 (val!7296 Int)) )
))
(declare-datatypes ((ValueCell!6833 0))(
  ( (ValueCellFull!6833 (v!9721 V!24331)) (EmptyCell!6833) )
))
(declare-datatypes ((array!45168 0))(
  ( (array!45169 (arr!21635 (Array (_ BitVec 32) ValueCell!6833)) (size!22056 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45168)

(declare-fun mapRest!23341 () (Array (_ BitVec 32) ValueCell!6833))

(declare-fun mapValue!23341 () ValueCell!6833)

(assert (=> mapNonEmpty!23341 (= (arr!21635 _values!788) (store mapRest!23341 mapKey!23341 mapValue!23341))))

(declare-fun b!818100 () Bool)

(declare-fun res!558466 () Bool)

(declare-fun e!454129 () Bool)

(assert (=> b!818100 (=> (not res!558466) (not e!454129))))

(declare-datatypes ((array!45170 0))(
  ( (array!45171 (arr!21636 (Array (_ BitVec 32) (_ BitVec 64))) (size!22057 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45170)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818100 (= res!558466 (and (= (size!22056 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22057 _keys!976) (size!22056 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558465 () Bool)

(assert (=> start!70468 (=> (not res!558465) (not e!454129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70468 (= res!558465 (validMask!0 mask!1312))))

(assert (=> start!70468 e!454129))

(declare-fun tp_is_empty!14497 () Bool)

(assert (=> start!70468 tp_is_empty!14497))

(declare-fun array_inv!17273 (array!45170) Bool)

(assert (=> start!70468 (array_inv!17273 _keys!976)))

(assert (=> start!70468 true))

(declare-fun e!454130 () Bool)

(declare-fun array_inv!17274 (array!45168) Bool)

(assert (=> start!70468 (and (array_inv!17274 _values!788) e!454130)))

(assert (=> start!70468 tp!45091))

(declare-fun b!818101 () Bool)

(declare-fun e!454131 () Bool)

(assert (=> b!818101 (= e!454131 true)))

(declare-fun zeroValueBefore!34 () V!24331)

(declare-fun minValue!754 () V!24331)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9604 0))(
  ( (tuple2!9605 (_1!4812 (_ BitVec 64)) (_2!4812 V!24331)) )
))
(declare-datatypes ((List!15469 0))(
  ( (Nil!15466) (Cons!15465 (h!16594 tuple2!9604) (t!21804 List!15469)) )
))
(declare-datatypes ((ListLongMap!8441 0))(
  ( (ListLongMap!8442 (toList!4236 List!15469)) )
))
(declare-fun lt!366584 () ListLongMap!8441)

(declare-fun getCurrentListMap!2396 (array!45170 array!45168 (_ BitVec 32) (_ BitVec 32) V!24331 V!24331 (_ BitVec 32) Int) ListLongMap!8441)

(assert (=> b!818101 (= lt!366584 (getCurrentListMap!2396 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818102 () Bool)

(assert (=> b!818102 (= e!454134 tp_is_empty!14497)))

(declare-fun b!818103 () Bool)

(declare-fun e!454132 () Bool)

(assert (=> b!818103 (= e!454132 tp_is_empty!14497)))

(declare-fun b!818104 () Bool)

(assert (=> b!818104 (= e!454130 (and e!454132 mapRes!23341))))

(declare-fun condMapEmpty!23341 () Bool)

(declare-fun mapDefault!23341 () ValueCell!6833)

