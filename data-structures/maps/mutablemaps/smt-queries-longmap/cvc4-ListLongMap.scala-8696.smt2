; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105636 () Bool)

(assert start!105636)

(declare-fun b_free!27215 () Bool)

(declare-fun b_next!27215 () Bool)

(assert (=> start!105636 (= b_free!27215 (not b_next!27215))))

(declare-fun tp!95166 () Bool)

(declare-fun b_and!45091 () Bool)

(assert (=> start!105636 (= tp!95166 b_and!45091)))

(declare-fun mapNonEmpty!49966 () Bool)

(declare-fun mapRes!49966 () Bool)

(declare-fun tp!95165 () Bool)

(declare-fun e!715369 () Bool)

(assert (=> mapNonEmpty!49966 (= mapRes!49966 (and tp!95165 e!715369))))

(declare-fun mapKey!49966 () (_ BitVec 32))

(declare-datatypes ((V!48187 0))(
  ( (V!48188 (val!16121 Int)) )
))
(declare-datatypes ((ValueCell!15295 0))(
  ( (ValueCellFull!15295 (v!18823 V!48187)) (EmptyCell!15295) )
))
(declare-fun mapValue!49966 () ValueCell!15295)

(declare-datatypes ((array!81859 0))(
  ( (array!81860 (arr!39482 (Array (_ BitVec 32) ValueCell!15295)) (size!40019 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81859)

(declare-fun mapRest!49966 () (Array (_ BitVec 32) ValueCell!15295))

(assert (=> mapNonEmpty!49966 (= (arr!39482 _values!914) (store mapRest!49966 mapKey!49966 mapValue!49966))))

(declare-fun b!1257875 () Bool)

(declare-fun e!715371 () Bool)

(declare-fun e!715367 () Bool)

(assert (=> b!1257875 (= e!715371 (and e!715367 mapRes!49966))))

(declare-fun condMapEmpty!49966 () Bool)

(declare-fun mapDefault!49966 () ValueCell!15295)

