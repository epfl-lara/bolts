; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108246 () Bool)

(assert start!108246)

(declare-fun b_free!27905 () Bool)

(declare-fun b_next!27905 () Bool)

(assert (=> start!108246 (= b_free!27905 (not b_next!27905))))

(declare-fun tp!98672 () Bool)

(declare-fun b_and!45973 () Bool)

(assert (=> start!108246 (= tp!98672 b_and!45973)))

(declare-fun res!849069 () Bool)

(declare-fun e!729779 () Bool)

(assert (=> start!108246 (=> (not res!849069) (not e!729779))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108246 (= res!849069 (validMask!0 mask!1805))))

(assert (=> start!108246 e!729779))

(assert (=> start!108246 true))

(assert (=> start!108246 tp!98672))

(declare-fun tp_is_empty!33455 () Bool)

(assert (=> start!108246 tp_is_empty!33455))

(declare-datatypes ((V!49709 0))(
  ( (V!49710 (val!16802 Int)) )
))
(declare-datatypes ((ValueCell!15829 0))(
  ( (ValueCellFull!15829 (v!19398 V!49709)) (EmptyCell!15829) )
))
(declare-datatypes ((array!83945 0))(
  ( (array!83946 (arr!40478 (Array (_ BitVec 32) ValueCell!15829)) (size!41029 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83945)

(declare-fun e!729775 () Bool)

(declare-fun array_inv!30721 (array!83945) Bool)

(assert (=> start!108246 (and (array_inv!30721 _values!1187) e!729775)))

(declare-datatypes ((array!83947 0))(
  ( (array!83948 (arr!40479 (Array (_ BitVec 32) (_ BitVec 64))) (size!41030 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83947)

(declare-fun array_inv!30722 (array!83947) Bool)

(assert (=> start!108246 (array_inv!30722 _keys!1427)))

(declare-fun b!1277712 () Bool)

(declare-fun res!849065 () Bool)

(assert (=> b!1277712 (=> (not res!849065) (not e!729779))))

(declare-datatypes ((List!28889 0))(
  ( (Nil!28886) (Cons!28885 (h!30094 (_ BitVec 64)) (t!42434 List!28889)) )
))
(declare-fun arrayNoDuplicates!0 (array!83947 (_ BitVec 32) List!28889) Bool)

(assert (=> b!1277712 (= res!849065 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28886))))

(declare-fun mapNonEmpty!51716 () Bool)

(declare-fun mapRes!51716 () Bool)

(declare-fun tp!98673 () Bool)

(declare-fun e!729776 () Bool)

(assert (=> mapNonEmpty!51716 (= mapRes!51716 (and tp!98673 e!729776))))

(declare-fun mapRest!51716 () (Array (_ BitVec 32) ValueCell!15829))

(declare-fun mapValue!51716 () ValueCell!15829)

(declare-fun mapKey!51716 () (_ BitVec 32))

(assert (=> mapNonEmpty!51716 (= (arr!40478 _values!1187) (store mapRest!51716 mapKey!51716 mapValue!51716))))

(declare-fun b!1277713 () Bool)

(declare-fun e!729778 () Bool)

(assert (=> b!1277713 (= e!729775 (and e!729778 mapRes!51716))))

(declare-fun condMapEmpty!51716 () Bool)

(declare-fun mapDefault!51716 () ValueCell!15829)

