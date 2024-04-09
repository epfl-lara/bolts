; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105652 () Bool)

(assert start!105652)

(declare-fun b_free!27217 () Bool)

(declare-fun b_next!27217 () Bool)

(assert (=> start!105652 (= b_free!27217 (not b_next!27217))))

(declare-fun tp!95174 () Bool)

(declare-fun b_and!45101 () Bool)

(assert (=> start!105652 (= tp!95174 b_and!45101)))

(declare-fun b!1257983 () Bool)

(declare-fun e!715443 () Bool)

(declare-fun e!715442 () Bool)

(declare-fun mapRes!49972 () Bool)

(assert (=> b!1257983 (= e!715443 (and e!715442 mapRes!49972))))

(declare-fun condMapEmpty!49972 () Bool)

(declare-datatypes ((V!48191 0))(
  ( (V!48192 (val!16122 Int)) )
))
(declare-datatypes ((ValueCell!15296 0))(
  ( (ValueCellFull!15296 (v!18824 V!48191)) (EmptyCell!15296) )
))
(declare-datatypes ((array!81863 0))(
  ( (array!81864 (arr!39483 (Array (_ BitVec 32) ValueCell!15296)) (size!40020 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81863)

(declare-fun mapDefault!49972 () ValueCell!15296)

