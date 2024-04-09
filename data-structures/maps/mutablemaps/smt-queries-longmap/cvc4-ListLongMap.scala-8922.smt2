; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108240 () Bool)

(assert start!108240)

(declare-fun b_free!27899 () Bool)

(declare-fun b_next!27899 () Bool)

(assert (=> start!108240 (= b_free!27899 (not b_next!27899))))

(declare-fun tp!98655 () Bool)

(declare-fun b_and!45967 () Bool)

(assert (=> start!108240 (= tp!98655 b_and!45967)))

(declare-fun mapIsEmpty!51707 () Bool)

(declare-fun mapRes!51707 () Bool)

(assert (=> mapIsEmpty!51707 mapRes!51707))

(declare-fun b!1277641 () Bool)

(declare-fun e!729734 () Bool)

(assert (=> b!1277641 (= e!729734 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575676 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49701 0))(
  ( (V!49702 (val!16799 Int)) )
))
(declare-fun minValue!1129 () V!49701)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15826 0))(
  ( (ValueCellFull!15826 (v!19395 V!49701)) (EmptyCell!15826) )
))
(declare-datatypes ((array!83935 0))(
  ( (array!83936 (arr!40473 (Array (_ BitVec 32) ValueCell!15826)) (size!41024 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83935)

(declare-fun zeroValue!1129 () V!49701)

(declare-datatypes ((array!83937 0))(
  ( (array!83938 (arr!40474 (Array (_ BitVec 32) (_ BitVec 64))) (size!41025 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83937)

(declare-datatypes ((tuple2!21698 0))(
  ( (tuple2!21699 (_1!10859 (_ BitVec 64)) (_2!10859 V!49701)) )
))
(declare-datatypes ((List!28885 0))(
  ( (Nil!28882) (Cons!28881 (h!30090 tuple2!21698) (t!42430 List!28885)) )
))
(declare-datatypes ((ListLongMap!19367 0))(
  ( (ListLongMap!19368 (toList!9699 List!28885)) )
))
(declare-fun contains!7747 (ListLongMap!19367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4719 (array!83937 array!83935 (_ BitVec 32) (_ BitVec 32) V!49701 V!49701 (_ BitVec 32) Int) ListLongMap!19367)

(assert (=> b!1277641 (= lt!575676 (contains!7747 (getCurrentListMap!4719 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277642 () Bool)

(declare-fun e!729731 () Bool)

(declare-fun tp_is_empty!33449 () Bool)

(assert (=> b!1277642 (= e!729731 tp_is_empty!33449)))

(declare-fun b!1277643 () Bool)

(declare-fun res!849021 () Bool)

(assert (=> b!1277643 (=> (not res!849021) (not e!729734))))

(declare-datatypes ((List!28886 0))(
  ( (Nil!28883) (Cons!28882 (h!30091 (_ BitVec 64)) (t!42431 List!28886)) )
))
(declare-fun arrayNoDuplicates!0 (array!83937 (_ BitVec 32) List!28886) Bool)

(assert (=> b!1277643 (= res!849021 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28883))))

(declare-fun b!1277644 () Bool)

(declare-fun e!729730 () Bool)

(assert (=> b!1277644 (= e!729730 tp_is_empty!33449)))

(declare-fun b!1277645 () Bool)

(declare-fun e!729733 () Bool)

(assert (=> b!1277645 (= e!729733 (and e!729730 mapRes!51707))))

(declare-fun condMapEmpty!51707 () Bool)

(declare-fun mapDefault!51707 () ValueCell!15826)

