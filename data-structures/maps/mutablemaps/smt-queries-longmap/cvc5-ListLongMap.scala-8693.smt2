; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105614 () Bool)

(assert start!105614)

(declare-fun b_free!27193 () Bool)

(declare-fun b_next!27193 () Bool)

(assert (=> start!105614 (= b_free!27193 (not b_next!27193))))

(declare-fun tp!95100 () Bool)

(declare-fun b_and!45069 () Bool)

(assert (=> start!105614 (= tp!95100 b_and!45069)))

(declare-fun b!1257644 () Bool)

(declare-fun e!715203 () Bool)

(declare-fun tp_is_empty!32095 () Bool)

(assert (=> b!1257644 (= e!715203 tp_is_empty!32095)))

(declare-fun b!1257645 () Bool)

(declare-fun e!715206 () Bool)

(declare-fun mapRes!49933 () Bool)

(assert (=> b!1257645 (= e!715206 (and e!715203 mapRes!49933))))

(declare-fun condMapEmpty!49933 () Bool)

(declare-datatypes ((V!48159 0))(
  ( (V!48160 (val!16110 Int)) )
))
(declare-datatypes ((ValueCell!15284 0))(
  ( (ValueCellFull!15284 (v!18812 V!48159)) (EmptyCell!15284) )
))
(declare-datatypes ((array!81819 0))(
  ( (array!81820 (arr!39462 (Array (_ BitVec 32) ValueCell!15284)) (size!39999 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81819)

(declare-fun mapDefault!49933 () ValueCell!15284)

