; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108218 () Bool)

(assert start!108218)

(declare-fun b_free!27877 () Bool)

(declare-fun b_next!27877 () Bool)

(assert (=> start!108218 (= b_free!27877 (not b_next!27877))))

(declare-fun tp!98589 () Bool)

(declare-fun b_and!45945 () Bool)

(assert (=> start!108218 (= tp!98589 b_and!45945)))

(declare-fun b!1277410 () Bool)

(declare-fun e!729565 () Bool)

(declare-fun tp_is_empty!33427 () Bool)

(assert (=> b!1277410 (= e!729565 tp_is_empty!33427)))

(declare-fun b!1277411 () Bool)

(declare-fun res!848891 () Bool)

(declare-fun e!729568 () Bool)

(assert (=> b!1277411 (=> (not res!848891) (not e!729568))))

(declare-datatypes ((array!83893 0))(
  ( (array!83894 (arr!40452 (Array (_ BitVec 32) (_ BitVec 64))) (size!41003 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83893)

(declare-datatypes ((List!28869 0))(
  ( (Nil!28866) (Cons!28865 (h!30074 (_ BitVec 64)) (t!42414 List!28869)) )
))
(declare-fun arrayNoDuplicates!0 (array!83893 (_ BitVec 32) List!28869) Bool)

(assert (=> b!1277411 (= res!848891 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28866))))

(declare-fun mapNonEmpty!51674 () Bool)

(declare-fun mapRes!51674 () Bool)

(declare-fun tp!98588 () Bool)

(assert (=> mapNonEmpty!51674 (= mapRes!51674 (and tp!98588 e!729565))))

(declare-fun mapKey!51674 () (_ BitVec 32))

(declare-datatypes ((V!49673 0))(
  ( (V!49674 (val!16788 Int)) )
))
(declare-datatypes ((ValueCell!15815 0))(
  ( (ValueCellFull!15815 (v!19384 V!49673)) (EmptyCell!15815) )
))
(declare-fun mapRest!51674 () (Array (_ BitVec 32) ValueCell!15815))

(declare-fun mapValue!51674 () ValueCell!15815)

(declare-datatypes ((array!83895 0))(
  ( (array!83896 (arr!40453 (Array (_ BitVec 32) ValueCell!15815)) (size!41004 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83895)

(assert (=> mapNonEmpty!51674 (= (arr!40453 _values!1187) (store mapRest!51674 mapKey!51674 mapValue!51674))))

(declare-fun mapIsEmpty!51674 () Bool)

(assert (=> mapIsEmpty!51674 mapRes!51674))

(declare-fun b!1277412 () Bool)

(declare-fun e!729567 () Bool)

(declare-fun e!729566 () Bool)

(assert (=> b!1277412 (= e!729567 (and e!729566 mapRes!51674))))

(declare-fun condMapEmpty!51674 () Bool)

(declare-fun mapDefault!51674 () ValueCell!15815)

