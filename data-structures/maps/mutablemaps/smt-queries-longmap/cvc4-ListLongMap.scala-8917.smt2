; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108210 () Bool)

(assert start!108210)

(declare-fun b_free!27869 () Bool)

(declare-fun b_next!27869 () Bool)

(assert (=> start!108210 (= b_free!27869 (not b_next!27869))))

(declare-fun tp!98565 () Bool)

(declare-fun b_and!45937 () Bool)

(assert (=> start!108210 (= tp!98565 b_and!45937)))

(declare-fun mapIsEmpty!51662 () Bool)

(declare-fun mapRes!51662 () Bool)

(assert (=> mapIsEmpty!51662 mapRes!51662))

(declare-fun b!1277326 () Bool)

(declare-fun res!848844 () Bool)

(declare-fun e!729507 () Bool)

(assert (=> b!1277326 (=> (not res!848844) (not e!729507))))

(declare-datatypes ((array!83877 0))(
  ( (array!83878 (arr!40444 (Array (_ BitVec 32) (_ BitVec 64))) (size!40995 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83877)

(declare-datatypes ((List!28862 0))(
  ( (Nil!28859) (Cons!28858 (h!30067 (_ BitVec 64)) (t!42407 List!28862)) )
))
(declare-fun arrayNoDuplicates!0 (array!83877 (_ BitVec 32) List!28862) Bool)

(assert (=> b!1277326 (= res!848844 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28859))))

(declare-fun mapNonEmpty!51662 () Bool)

(declare-fun tp!98564 () Bool)

(declare-fun e!729508 () Bool)

(assert (=> mapNonEmpty!51662 (= mapRes!51662 (and tp!98564 e!729508))))

(declare-datatypes ((V!49661 0))(
  ( (V!49662 (val!16784 Int)) )
))
(declare-datatypes ((ValueCell!15811 0))(
  ( (ValueCellFull!15811 (v!19380 V!49661)) (EmptyCell!15811) )
))
(declare-fun mapRest!51662 () (Array (_ BitVec 32) ValueCell!15811))

(declare-fun mapKey!51662 () (_ BitVec 32))

(declare-fun mapValue!51662 () ValueCell!15811)

(declare-datatypes ((array!83879 0))(
  ( (array!83880 (arr!40445 (Array (_ BitVec 32) ValueCell!15811)) (size!40996 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83879)

(assert (=> mapNonEmpty!51662 (= (arr!40445 _values!1187) (store mapRest!51662 mapKey!51662 mapValue!51662))))

(declare-fun b!1277327 () Bool)

(declare-fun tp_is_empty!33419 () Bool)

(assert (=> b!1277327 (= e!729508 tp_is_empty!33419)))

(declare-fun res!848841 () Bool)

(assert (=> start!108210 (=> (not res!848841) (not e!729507))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108210 (= res!848841 (validMask!0 mask!1805))))

(assert (=> start!108210 e!729507))

(assert (=> start!108210 true))

(assert (=> start!108210 tp!98565))

(assert (=> start!108210 tp_is_empty!33419))

(declare-fun e!729509 () Bool)

(declare-fun array_inv!30695 (array!83879) Bool)

(assert (=> start!108210 (and (array_inv!30695 _values!1187) e!729509)))

(declare-fun array_inv!30696 (array!83877) Bool)

(assert (=> start!108210 (array_inv!30696 _keys!1427)))

(declare-fun b!1277328 () Bool)

(declare-fun e!729506 () Bool)

(assert (=> b!1277328 (= e!729506 tp_is_empty!33419)))

(declare-fun b!1277329 () Bool)

(declare-fun res!848843 () Bool)

(assert (=> b!1277329 (=> (not res!848843) (not e!729507))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1277329 (= res!848843 (and (= (size!40996 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40995 _keys!1427) (size!40996 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277330 () Bool)

(assert (=> b!1277330 (= e!729509 (and e!729506 mapRes!51662))))

(declare-fun condMapEmpty!51662 () Bool)

(declare-fun mapDefault!51662 () ValueCell!15811)

