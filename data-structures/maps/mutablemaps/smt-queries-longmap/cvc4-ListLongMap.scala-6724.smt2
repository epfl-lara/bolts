; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84348 () Bool)

(assert start!84348)

(declare-fun res!659976 () Bool)

(declare-fun e!556083 () Bool)

(assert (=> start!84348 (=> (not res!659976) (not e!556083))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84348 (= res!659976 (validMask!0 mask!1948))))

(assert (=> start!84348 e!556083))

(assert (=> start!84348 true))

(declare-datatypes ((V!35813 0))(
  ( (V!35814 (val!11612 Int)) )
))
(declare-datatypes ((ValueCell!11080 0))(
  ( (ValueCellFull!11080 (v!14174 V!35813)) (EmptyCell!11080) )
))
(declare-datatypes ((array!62197 0))(
  ( (array!62198 (arr!29952 (Array (_ BitVec 32) ValueCell!11080)) (size!30432 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62197)

(declare-fun e!556084 () Bool)

(declare-fun array_inv!23013 (array!62197) Bool)

(assert (=> start!84348 (and (array_inv!23013 _values!1278) e!556084)))

(declare-datatypes ((array!62199 0))(
  ( (array!62200 (arr!29953 (Array (_ BitVec 32) (_ BitVec 64))) (size!30433 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62199)

(declare-fun array_inv!23014 (array!62199) Bool)

(assert (=> start!84348 (array_inv!23014 _keys!1544)))

(declare-fun b!986230 () Bool)

(declare-fun e!556081 () Bool)

(declare-fun tp_is_empty!23123 () Bool)

(assert (=> b!986230 (= e!556081 tp_is_empty!23123)))

(declare-fun mapNonEmpty!36713 () Bool)

(declare-fun mapRes!36713 () Bool)

(declare-fun tp!69569 () Bool)

(assert (=> mapNonEmpty!36713 (= mapRes!36713 (and tp!69569 e!556081))))

(declare-fun mapRest!36713 () (Array (_ BitVec 32) ValueCell!11080))

(declare-fun mapKey!36713 () (_ BitVec 32))

(declare-fun mapValue!36713 () ValueCell!11080)

(assert (=> mapNonEmpty!36713 (= (arr!29952 _values!1278) (store mapRest!36713 mapKey!36713 mapValue!36713))))

(declare-fun b!986231 () Bool)

(declare-fun e!556082 () Bool)

(assert (=> b!986231 (= e!556084 (and e!556082 mapRes!36713))))

(declare-fun condMapEmpty!36713 () Bool)

(declare-fun mapDefault!36713 () ValueCell!11080)

