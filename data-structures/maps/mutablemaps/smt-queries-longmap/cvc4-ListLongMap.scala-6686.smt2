; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84120 () Bool)

(assert start!84120)

(declare-fun mapIsEmpty!36371 () Bool)

(declare-fun mapRes!36371 () Bool)

(assert (=> mapIsEmpty!36371 mapRes!36371))

(declare-fun res!658048 () Bool)

(declare-fun e!554209 () Bool)

(assert (=> start!84120 (=> (not res!658048) (not e!554209))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84120 (= res!658048 (validMask!0 mask!1948))))

(assert (=> start!84120 e!554209))

(assert (=> start!84120 true))

(declare-datatypes ((V!35509 0))(
  ( (V!35510 (val!11498 Int)) )
))
(declare-datatypes ((ValueCell!10966 0))(
  ( (ValueCellFull!10966 (v!14060 V!35509)) (EmptyCell!10966) )
))
(declare-datatypes ((array!61773 0))(
  ( (array!61774 (arr!29740 (Array (_ BitVec 32) ValueCell!10966)) (size!30220 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61773)

(declare-fun e!554212 () Bool)

(declare-fun array_inv!22869 (array!61773) Bool)

(assert (=> start!84120 (and (array_inv!22869 _values!1278) e!554212)))

(declare-datatypes ((array!61775 0))(
  ( (array!61776 (arr!29741 (Array (_ BitVec 32) (_ BitVec 64))) (size!30221 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61775)

(declare-fun array_inv!22870 (array!61775) Bool)

(assert (=> start!84120 (array_inv!22870 _keys!1544)))

(declare-fun b!983170 () Bool)

(declare-fun e!554210 () Bool)

(declare-fun tp_is_empty!22895 () Bool)

(assert (=> b!983170 (= e!554210 tp_is_empty!22895)))

(declare-fun mapNonEmpty!36371 () Bool)

(declare-fun tp!69056 () Bool)

(assert (=> mapNonEmpty!36371 (= mapRes!36371 (and tp!69056 e!554210))))

(declare-fun mapKey!36371 () (_ BitVec 32))

(declare-fun mapValue!36371 () ValueCell!10966)

(declare-fun mapRest!36371 () (Array (_ BitVec 32) ValueCell!10966))

(assert (=> mapNonEmpty!36371 (= (arr!29740 _values!1278) (store mapRest!36371 mapKey!36371 mapValue!36371))))

(declare-fun b!983171 () Bool)

(declare-fun e!554213 () Bool)

(assert (=> b!983171 (= e!554212 (and e!554213 mapRes!36371))))

(declare-fun condMapEmpty!36371 () Bool)

(declare-fun mapDefault!36371 () ValueCell!10966)

