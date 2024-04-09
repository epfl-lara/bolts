; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105608 () Bool)

(assert start!105608)

(declare-fun b_free!27187 () Bool)

(declare-fun b_next!27187 () Bool)

(assert (=> start!105608 (= b_free!27187 (not b_next!27187))))

(declare-fun tp!95082 () Bool)

(declare-fun b_and!45063 () Bool)

(assert (=> start!105608 (= tp!95082 b_and!45063)))

(declare-fun b!1257581 () Bool)

(declare-fun e!715159 () Bool)

(declare-fun e!715161 () Bool)

(declare-fun mapRes!49924 () Bool)

(assert (=> b!1257581 (= e!715159 (and e!715161 mapRes!49924))))

(declare-fun condMapEmpty!49924 () Bool)

(declare-datatypes ((V!48151 0))(
  ( (V!48152 (val!16107 Int)) )
))
(declare-datatypes ((ValueCell!15281 0))(
  ( (ValueCellFull!15281 (v!18809 V!48151)) (EmptyCell!15281) )
))
(declare-datatypes ((array!81809 0))(
  ( (array!81810 (arr!39457 (Array (_ BitVec 32) ValueCell!15281)) (size!39994 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81809)

(declare-fun mapDefault!49924 () ValueCell!15281)

