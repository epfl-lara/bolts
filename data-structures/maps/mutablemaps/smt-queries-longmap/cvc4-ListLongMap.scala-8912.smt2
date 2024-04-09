; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108162 () Bool)

(assert start!108162)

(declare-fun b_free!27839 () Bool)

(declare-fun b_next!27839 () Bool)

(assert (=> start!108162 (= b_free!27839 (not b_next!27839))))

(declare-fun tp!98471 () Bool)

(declare-fun b_and!45905 () Bool)

(assert (=> start!108162 (= tp!98471 b_and!45905)))

(declare-fun res!848576 () Bool)

(declare-fun e!729184 () Bool)

(assert (=> start!108162 (=> (not res!848576) (not e!729184))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108162 (= res!848576 (validMask!0 mask!1805))))

(assert (=> start!108162 e!729184))

(assert (=> start!108162 true))

(assert (=> start!108162 tp!98471))

(declare-fun tp_is_empty!33389 () Bool)

(assert (=> start!108162 tp_is_empty!33389))

(declare-datatypes ((V!49621 0))(
  ( (V!49622 (val!16769 Int)) )
))
(declare-datatypes ((ValueCell!15796 0))(
  ( (ValueCellFull!15796 (v!19364 V!49621)) (EmptyCell!15796) )
))
(declare-datatypes ((array!83821 0))(
  ( (array!83822 (arr!40417 (Array (_ BitVec 32) ValueCell!15796)) (size!40968 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83821)

(declare-fun e!729183 () Bool)

(declare-fun array_inv!30673 (array!83821) Bool)

(assert (=> start!108162 (and (array_inv!30673 _values!1187) e!729183)))

(declare-datatypes ((array!83823 0))(
  ( (array!83824 (arr!40418 (Array (_ BitVec 32) (_ BitVec 64))) (size!40969 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83823)

(declare-fun array_inv!30674 (array!83823) Bool)

(assert (=> start!108162 (array_inv!30674 _keys!1427)))

(declare-fun b!1276814 () Bool)

(declare-fun res!848574 () Bool)

(assert (=> b!1276814 (=> (not res!848574) (not e!729184))))

(assert (=> b!1276814 (= res!848574 (bvslt #b00000000000000000000000000000000 (size!40969 _keys!1427)))))

(declare-fun b!1276815 () Bool)

(declare-fun res!848577 () Bool)

(assert (=> b!1276815 (=> (not res!848577) (not e!729184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83823 (_ BitVec 32)) Bool)

(assert (=> b!1276815 (= res!848577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276816 () Bool)

(declare-fun e!729181 () Bool)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276816 (= e!729181 (ite (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1276817 () Bool)

(declare-fun arrayContainsKey!0 (array!83823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1276817 (= e!729181 (arrayContainsKey!0 _keys!1427 k!1053 #b00000000000000000000000000000000))))

(declare-fun b!1276818 () Bool)

(declare-fun res!848575 () Bool)

(assert (=> b!1276818 (=> (not res!848575) (not e!729184))))

(assert (=> b!1276818 (= res!848575 (and (= (size!40968 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40969 _keys!1427) (size!40968 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276819 () Bool)

(declare-fun res!848573 () Bool)

(assert (=> b!1276819 (=> (not res!848573) (not e!729184))))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49621)

(declare-fun zeroValue!1129 () V!49621)

(declare-datatypes ((tuple2!21656 0))(
  ( (tuple2!21657 (_1!10838 (_ BitVec 64)) (_2!10838 V!49621)) )
))
(declare-datatypes ((List!28841 0))(
  ( (Nil!28838) (Cons!28837 (h!30046 tuple2!21656) (t!42384 List!28841)) )
))
(declare-datatypes ((ListLongMap!19325 0))(
  ( (ListLongMap!19326 (toList!9678 List!28841)) )
))
(declare-fun contains!7725 (ListLongMap!19325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4698 (array!83823 array!83821 (_ BitVec 32) (_ BitVec 32) V!49621 V!49621 (_ BitVec 32) Int) ListLongMap!19325)

(assert (=> b!1276819 (= res!848573 (contains!7725 (getCurrentListMap!4698 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276820 () Bool)

(declare-fun e!729182 () Bool)

(assert (=> b!1276820 (= e!729182 tp_is_empty!33389)))

(declare-fun b!1276821 () Bool)

(assert (=> b!1276821 (= e!729184 (not true))))

(assert (=> b!1276821 e!729181))

(declare-fun c!123885 () Bool)

(assert (=> b!1276821 (= c!123885 (and (not (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!42309 0))(
  ( (Unit!42310) )
))
(declare-fun lt!575487 () Unit!42309)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!627 (array!83823 array!83821 (_ BitVec 32) (_ BitVec 32) V!49621 V!49621 (_ BitVec 64) (_ BitVec 32) Int) Unit!42309)

(assert (=> b!1276821 (= lt!575487 (lemmaListMapContainsThenArrayContainsFrom!627 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun mapIsEmpty!51614 () Bool)

(declare-fun mapRes!51614 () Bool)

(assert (=> mapIsEmpty!51614 mapRes!51614))

(declare-fun b!1276822 () Bool)

(declare-fun res!848572 () Bool)

(assert (=> b!1276822 (=> (not res!848572) (not e!729184))))

(declare-datatypes ((List!28842 0))(
  ( (Nil!28839) (Cons!28838 (h!30047 (_ BitVec 64)) (t!42385 List!28842)) )
))
(declare-fun arrayNoDuplicates!0 (array!83823 (_ BitVec 32) List!28842) Bool)

(assert (=> b!1276822 (= res!848572 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28839))))

(declare-fun b!1276823 () Bool)

(declare-fun e!729185 () Bool)

(assert (=> b!1276823 (= e!729183 (and e!729185 mapRes!51614))))

(declare-fun condMapEmpty!51614 () Bool)

(declare-fun mapDefault!51614 () ValueCell!15796)

