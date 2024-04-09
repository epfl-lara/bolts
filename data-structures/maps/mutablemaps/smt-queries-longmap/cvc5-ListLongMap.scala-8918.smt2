; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108212 () Bool)

(assert start!108212)

(declare-fun b_free!27871 () Bool)

(declare-fun b_next!27871 () Bool)

(assert (=> start!108212 (= b_free!27871 (not b_next!27871))))

(declare-fun tp!98570 () Bool)

(declare-fun b_and!45939 () Bool)

(assert (=> start!108212 (= tp!98570 b_and!45939)))

(declare-fun b!1277347 () Bool)

(declare-fun e!729522 () Bool)

(declare-fun tp_is_empty!33421 () Bool)

(assert (=> b!1277347 (= e!729522 tp_is_empty!33421)))

(declare-fun b!1277348 () Bool)

(declare-fun e!729520 () Bool)

(assert (=> b!1277348 (= e!729520 tp_is_empty!33421)))

(declare-fun b!1277349 () Bool)

(declare-fun res!848853 () Bool)

(declare-fun e!729523 () Bool)

(assert (=> b!1277349 (=> (not res!848853) (not e!729523))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83881 0))(
  ( (array!83882 (arr!40446 (Array (_ BitVec 32) (_ BitVec 64))) (size!40997 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83881)

(declare-datatypes ((V!49665 0))(
  ( (V!49666 (val!16785 Int)) )
))
(declare-datatypes ((ValueCell!15812 0))(
  ( (ValueCellFull!15812 (v!19381 V!49665)) (EmptyCell!15812) )
))
(declare-datatypes ((array!83883 0))(
  ( (array!83884 (arr!40447 (Array (_ BitVec 32) ValueCell!15812)) (size!40998 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83883)

(assert (=> b!1277349 (= res!848853 (and (= (size!40998 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40997 _keys!1427) (size!40998 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!848855 () Bool)

(assert (=> start!108212 (=> (not res!848855) (not e!729523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108212 (= res!848855 (validMask!0 mask!1805))))

(assert (=> start!108212 e!729523))

(assert (=> start!108212 true))

(assert (=> start!108212 tp!98570))

(assert (=> start!108212 tp_is_empty!33421))

(declare-fun e!729521 () Bool)

(declare-fun array_inv!30697 (array!83883) Bool)

(assert (=> start!108212 (and (array_inv!30697 _values!1187) e!729521)))

(declare-fun array_inv!30698 (array!83881) Bool)

(assert (=> start!108212 (array_inv!30698 _keys!1427)))

(declare-fun b!1277350 () Bool)

(assert (=> b!1277350 (= e!729523 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49665)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun lt!575634 () Bool)

(declare-fun zeroValue!1129 () V!49665)

(declare-datatypes ((tuple2!21678 0))(
  ( (tuple2!21679 (_1!10849 (_ BitVec 64)) (_2!10849 V!49665)) )
))
(declare-datatypes ((List!28863 0))(
  ( (Nil!28860) (Cons!28859 (h!30068 tuple2!21678) (t!42408 List!28863)) )
))
(declare-datatypes ((ListLongMap!19347 0))(
  ( (ListLongMap!19348 (toList!9689 List!28863)) )
))
(declare-fun contains!7737 (ListLongMap!19347 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4709 (array!83881 array!83883 (_ BitVec 32) (_ BitVec 32) V!49665 V!49665 (_ BitVec 32) Int) ListLongMap!19347)

(assert (=> b!1277350 (= lt!575634 (contains!7737 (getCurrentListMap!4709 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun mapIsEmpty!51665 () Bool)

(declare-fun mapRes!51665 () Bool)

(assert (=> mapIsEmpty!51665 mapRes!51665))

(declare-fun b!1277351 () Bool)

(declare-fun res!848856 () Bool)

(assert (=> b!1277351 (=> (not res!848856) (not e!729523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83881 (_ BitVec 32)) Bool)

(assert (=> b!1277351 (= res!848856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277352 () Bool)

(declare-fun res!848854 () Bool)

(assert (=> b!1277352 (=> (not res!848854) (not e!729523))))

(declare-datatypes ((List!28864 0))(
  ( (Nil!28861) (Cons!28860 (h!30069 (_ BitVec 64)) (t!42409 List!28864)) )
))
(declare-fun arrayNoDuplicates!0 (array!83881 (_ BitVec 32) List!28864) Bool)

(assert (=> b!1277352 (= res!848854 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28861))))

(declare-fun mapNonEmpty!51665 () Bool)

(declare-fun tp!98571 () Bool)

(assert (=> mapNonEmpty!51665 (= mapRes!51665 (and tp!98571 e!729520))))

(declare-fun mapKey!51665 () (_ BitVec 32))

(declare-fun mapRest!51665 () (Array (_ BitVec 32) ValueCell!15812))

(declare-fun mapValue!51665 () ValueCell!15812)

(assert (=> mapNonEmpty!51665 (= (arr!40447 _values!1187) (store mapRest!51665 mapKey!51665 mapValue!51665))))

(declare-fun b!1277353 () Bool)

(assert (=> b!1277353 (= e!729521 (and e!729522 mapRes!51665))))

(declare-fun condMapEmpty!51665 () Bool)

(declare-fun mapDefault!51665 () ValueCell!15812)

