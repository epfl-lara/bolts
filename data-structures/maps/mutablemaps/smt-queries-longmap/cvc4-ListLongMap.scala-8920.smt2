; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108228 () Bool)

(assert start!108228)

(declare-fun b_free!27887 () Bool)

(declare-fun b_next!27887 () Bool)

(assert (=> start!108228 (= b_free!27887 (not b_next!27887))))

(declare-fun tp!98618 () Bool)

(declare-fun b_and!45955 () Bool)

(assert (=> start!108228 (= tp!98618 b_and!45955)))

(declare-fun b!1277516 () Bool)

(declare-fun e!729640 () Bool)

(declare-fun tp_is_empty!33437 () Bool)

(assert (=> b!1277516 (= e!729640 tp_is_empty!33437)))

(declare-fun b!1277517 () Bool)

(declare-fun e!729644 () Bool)

(assert (=> b!1277517 (= e!729644 tp_is_empty!33437)))

(declare-fun b!1277518 () Bool)

(declare-fun res!848950 () Bool)

(declare-fun e!729641 () Bool)

(assert (=> b!1277518 (=> (not res!848950) (not e!729641))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83913 0))(
  ( (array!83914 (arr!40462 (Array (_ BitVec 32) (_ BitVec 64))) (size!41013 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83913)

(declare-datatypes ((V!49685 0))(
  ( (V!49686 (val!16793 Int)) )
))
(declare-datatypes ((ValueCell!15820 0))(
  ( (ValueCellFull!15820 (v!19389 V!49685)) (EmptyCell!15820) )
))
(declare-datatypes ((array!83915 0))(
  ( (array!83916 (arr!40463 (Array (_ BitVec 32) ValueCell!15820)) (size!41014 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83915)

(assert (=> b!1277518 (= res!848950 (and (= (size!41014 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41013 _keys!1427) (size!41014 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51689 () Bool)

(declare-fun mapRes!51689 () Bool)

(declare-fun tp!98619 () Bool)

(assert (=> mapNonEmpty!51689 (= mapRes!51689 (and tp!98619 e!729644))))

(declare-fun mapValue!51689 () ValueCell!15820)

(declare-fun mapKey!51689 () (_ BitVec 32))

(declare-fun mapRest!51689 () (Array (_ BitVec 32) ValueCell!15820))

(assert (=> mapNonEmpty!51689 (= (arr!40463 _values!1187) (store mapRest!51689 mapKey!51689 mapValue!51689))))

(declare-fun b!1277519 () Bool)

(assert (=> b!1277519 (= e!729641 false)))

(declare-fun lt!575658 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49685)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49685)

(declare-datatypes ((tuple2!21692 0))(
  ( (tuple2!21693 (_1!10856 (_ BitVec 64)) (_2!10856 V!49685)) )
))
(declare-datatypes ((List!28877 0))(
  ( (Nil!28874) (Cons!28873 (h!30082 tuple2!21692) (t!42422 List!28877)) )
))
(declare-datatypes ((ListLongMap!19361 0))(
  ( (ListLongMap!19362 (toList!9696 List!28877)) )
))
(declare-fun contains!7744 (ListLongMap!19361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4716 (array!83913 array!83915 (_ BitVec 32) (_ BitVec 32) V!49685 V!49685 (_ BitVec 32) Int) ListLongMap!19361)

(assert (=> b!1277519 (= lt!575658 (contains!7744 (getCurrentListMap!4716 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun mapIsEmpty!51689 () Bool)

(assert (=> mapIsEmpty!51689 mapRes!51689))

(declare-fun res!848949 () Bool)

(assert (=> start!108228 (=> (not res!848949) (not e!729641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108228 (= res!848949 (validMask!0 mask!1805))))

(assert (=> start!108228 e!729641))

(assert (=> start!108228 true))

(assert (=> start!108228 tp!98618))

(assert (=> start!108228 tp_is_empty!33437))

(declare-fun e!729643 () Bool)

(declare-fun array_inv!30711 (array!83915) Bool)

(assert (=> start!108228 (and (array_inv!30711 _values!1187) e!729643)))

(declare-fun array_inv!30712 (array!83913) Bool)

(assert (=> start!108228 (array_inv!30712 _keys!1427)))

(declare-fun b!1277515 () Bool)

(declare-fun res!848952 () Bool)

(assert (=> b!1277515 (=> (not res!848952) (not e!729641))))

(declare-datatypes ((List!28878 0))(
  ( (Nil!28875) (Cons!28874 (h!30083 (_ BitVec 64)) (t!42423 List!28878)) )
))
(declare-fun arrayNoDuplicates!0 (array!83913 (_ BitVec 32) List!28878) Bool)

(assert (=> b!1277515 (= res!848952 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28875))))

(declare-fun b!1277520 () Bool)

(assert (=> b!1277520 (= e!729643 (and e!729640 mapRes!51689))))

(declare-fun condMapEmpty!51689 () Bool)

(declare-fun mapDefault!51689 () ValueCell!15820)

