; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108230 () Bool)

(assert start!108230)

(declare-fun b_free!27889 () Bool)

(declare-fun b_next!27889 () Bool)

(assert (=> start!108230 (= b_free!27889 (not b_next!27889))))

(declare-fun tp!98624 () Bool)

(declare-fun b_and!45957 () Bool)

(assert (=> start!108230 (= tp!98624 b_and!45957)))

(declare-fun b!1277536 () Bool)

(declare-fun e!729657 () Bool)

(declare-fun tp_is_empty!33439 () Bool)

(assert (=> b!1277536 (= e!729657 tp_is_empty!33439)))

(declare-fun b!1277537 () Bool)

(declare-fun res!848964 () Bool)

(declare-fun e!729655 () Bool)

(assert (=> b!1277537 (=> (not res!848964) (not e!729655))))

(declare-datatypes ((array!83917 0))(
  ( (array!83918 (arr!40464 (Array (_ BitVec 32) (_ BitVec 64))) (size!41015 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83917)

(declare-datatypes ((List!28879 0))(
  ( (Nil!28876) (Cons!28875 (h!30084 (_ BitVec 64)) (t!42424 List!28879)) )
))
(declare-fun arrayNoDuplicates!0 (array!83917 (_ BitVec 32) List!28879) Bool)

(assert (=> b!1277537 (= res!848964 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28876))))

(declare-fun b!1277538 () Bool)

(declare-fun e!729658 () Bool)

(declare-fun e!729656 () Bool)

(declare-fun mapRes!51692 () Bool)

(assert (=> b!1277538 (= e!729658 (and e!729656 mapRes!51692))))

(declare-fun condMapEmpty!51692 () Bool)

(declare-datatypes ((V!49689 0))(
  ( (V!49690 (val!16794 Int)) )
))
(declare-datatypes ((ValueCell!15821 0))(
  ( (ValueCellFull!15821 (v!19390 V!49689)) (EmptyCell!15821) )
))
(declare-datatypes ((array!83919 0))(
  ( (array!83920 (arr!40465 (Array (_ BitVec 32) ValueCell!15821)) (size!41016 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83919)

(declare-fun mapDefault!51692 () ValueCell!15821)

