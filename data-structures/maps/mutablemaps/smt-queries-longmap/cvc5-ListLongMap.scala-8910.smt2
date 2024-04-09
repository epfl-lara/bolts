; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108146 () Bool)

(assert start!108146)

(declare-fun b_free!27823 () Bool)

(declare-fun b_next!27823 () Bool)

(assert (=> start!108146 (= b_free!27823 (not b_next!27823))))

(declare-fun tp!98424 () Bool)

(declare-fun b_and!45889 () Bool)

(assert (=> start!108146 (= tp!98424 b_and!45889)))

(declare-fun res!848462 () Bool)

(declare-fun e!729052 () Bool)

(assert (=> start!108146 (=> (not res!848462) (not e!729052))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108146 (= res!848462 (validMask!0 mask!1805))))

(assert (=> start!108146 e!729052))

(assert (=> start!108146 true))

(assert (=> start!108146 tp!98424))

(declare-fun tp_is_empty!33373 () Bool)

(assert (=> start!108146 tp_is_empty!33373))

(declare-datatypes ((V!49601 0))(
  ( (V!49602 (val!16761 Int)) )
))
(declare-datatypes ((ValueCell!15788 0))(
  ( (ValueCellFull!15788 (v!19356 V!49601)) (EmptyCell!15788) )
))
(declare-datatypes ((array!83791 0))(
  ( (array!83792 (arr!40402 (Array (_ BitVec 32) ValueCell!15788)) (size!40953 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83791)

(declare-fun e!729054 () Bool)

(declare-fun array_inv!30663 (array!83791) Bool)

(assert (=> start!108146 (and (array_inv!30663 _values!1187) e!729054)))

(declare-datatypes ((array!83793 0))(
  ( (array!83794 (arr!40403 (Array (_ BitVec 32) (_ BitVec 64))) (size!40954 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83793)

(declare-fun array_inv!30664 (array!83793) Bool)

(assert (=> start!108146 (array_inv!30664 _keys!1427)))

(declare-fun b!1276614 () Bool)

(declare-fun e!729056 () Bool)

(declare-fun mapRes!51590 () Bool)

(assert (=> b!1276614 (= e!729054 (and e!729056 mapRes!51590))))

(declare-fun condMapEmpty!51590 () Bool)

(declare-fun mapDefault!51590 () ValueCell!15788)

