; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71108 () Bool)

(assert start!71108)

(declare-fun b_free!13271 () Bool)

(declare-fun b_next!13271 () Bool)

(assert (=> start!71108 (= b_free!13271 (not b_next!13271))))

(declare-fun tp!46570 () Bool)

(declare-fun b_and!22203 () Bool)

(assert (=> start!71108 (= tp!46570 b_and!22203)))

(declare-fun res!562772 () Bool)

(declare-fun e!459450 () Bool)

(assert (=> start!71108 (=> (not res!562772) (not e!459450))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71108 (= res!562772 (validMask!0 mask!1312))))

(assert (=> start!71108 e!459450))

(declare-fun tp_is_empty!14981 () Bool)

(assert (=> start!71108 tp_is_empty!14981))

(declare-datatypes ((array!46104 0))(
  ( (array!46105 (arr!22094 (Array (_ BitVec 32) (_ BitVec 64))) (size!22515 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46104)

(declare-fun array_inv!17603 (array!46104) Bool)

(assert (=> start!71108 (array_inv!17603 _keys!976)))

(assert (=> start!71108 true))

(declare-datatypes ((V!24975 0))(
  ( (V!24976 (val!7538 Int)) )
))
(declare-datatypes ((ValueCell!7075 0))(
  ( (ValueCellFull!7075 (v!9967 V!24975)) (EmptyCell!7075) )
))
(declare-datatypes ((array!46106 0))(
  ( (array!46107 (arr!22095 (Array (_ BitVec 32) ValueCell!7075)) (size!22516 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46106)

(declare-fun e!459449 () Bool)

(declare-fun array_inv!17604 (array!46106) Bool)

(assert (=> start!71108 (and (array_inv!17604 _values!788) e!459449)))

(assert (=> start!71108 tp!46570))

(declare-fun b!825369 () Bool)

(declare-fun res!562770 () Bool)

(assert (=> b!825369 (=> (not res!562770) (not e!459450))))

(declare-datatypes ((List!15823 0))(
  ( (Nil!15820) (Cons!15819 (h!16948 (_ BitVec 64)) (t!22176 List!15823)) )
))
(declare-fun arrayNoDuplicates!0 (array!46104 (_ BitVec 32) List!15823) Bool)

(assert (=> b!825369 (= res!562770 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15820))))

(declare-fun b!825370 () Bool)

(declare-fun e!459452 () Bool)

(assert (=> b!825370 (= e!459452 true)))

(declare-datatypes ((tuple2!9978 0))(
  ( (tuple2!9979 (_1!4999 (_ BitVec 64)) (_2!4999 V!24975)) )
))
(declare-fun lt!372745 () tuple2!9978)

(declare-datatypes ((List!15824 0))(
  ( (Nil!15821) (Cons!15820 (h!16949 tuple2!9978) (t!22177 List!15824)) )
))
(declare-datatypes ((ListLongMap!8815 0))(
  ( (ListLongMap!8816 (toList!4423 List!15824)) )
))
(declare-fun lt!372747 () ListLongMap!8815)

(declare-fun lt!372752 () tuple2!9978)

(declare-fun lt!372744 () ListLongMap!8815)

(declare-fun +!1885 (ListLongMap!8815 tuple2!9978) ListLongMap!8815)

(assert (=> b!825370 (= lt!372747 (+!1885 (+!1885 lt!372744 lt!372752) lt!372745))))

(declare-fun lt!372753 () ListLongMap!8815)

(declare-fun lt!372755 () ListLongMap!8815)

(declare-fun lt!372750 () ListLongMap!8815)

(assert (=> b!825370 (and (= lt!372753 lt!372755) (= lt!372750 lt!372755) (= lt!372750 lt!372753))))

(declare-fun lt!372742 () ListLongMap!8815)

(assert (=> b!825370 (= lt!372755 (+!1885 lt!372742 lt!372752))))

(declare-fun lt!372743 () ListLongMap!8815)

(assert (=> b!825370 (= lt!372753 (+!1885 lt!372743 lt!372752))))

(declare-fun zeroValueBefore!34 () V!24975)

(declare-fun zeroValueAfter!34 () V!24975)

(declare-datatypes ((Unit!28287 0))(
  ( (Unit!28288) )
))
(declare-fun lt!372746 () Unit!28287)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!213 (ListLongMap!8815 (_ BitVec 64) V!24975 V!24975) Unit!28287)

(assert (=> b!825370 (= lt!372746 (addSameAsAddTwiceSameKeyDiffValues!213 lt!372743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459453 () Bool)

(assert (=> b!825370 e!459453))

(declare-fun res!562771 () Bool)

(assert (=> b!825370 (=> (not res!562771) (not e!459453))))

(declare-fun lt!372749 () ListLongMap!8815)

(assert (=> b!825370 (= res!562771 (= lt!372749 lt!372742))))

(declare-fun lt!372751 () tuple2!9978)

(assert (=> b!825370 (= lt!372742 (+!1885 lt!372743 lt!372751))))

(assert (=> b!825370 (= lt!372743 (+!1885 lt!372744 lt!372745))))

(assert (=> b!825370 (= lt!372752 (tuple2!9979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459454 () Bool)

(assert (=> b!825370 e!459454))

(declare-fun res!562776 () Bool)

(assert (=> b!825370 (=> (not res!562776) (not e!459454))))

(assert (=> b!825370 (= res!562776 (= lt!372749 (+!1885 (+!1885 lt!372744 lt!372751) lt!372745)))))

(declare-fun minValue!754 () V!24975)

(assert (=> b!825370 (= lt!372745 (tuple2!9979 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825370 (= lt!372751 (tuple2!9979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2535 (array!46104 array!46106 (_ BitVec 32) (_ BitVec 32) V!24975 V!24975 (_ BitVec 32) Int) ListLongMap!8815)

(assert (=> b!825370 (= lt!372750 (getCurrentListMap!2535 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825370 (= lt!372749 (getCurrentListMap!2535 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825371 () Bool)

(declare-fun e!459451 () Bool)

(assert (=> b!825371 (= e!459451 tp_is_empty!14981)))

(declare-fun b!825372 () Bool)

(assert (=> b!825372 (= e!459450 (not e!459452))))

(declare-fun res!562775 () Bool)

(assert (=> b!825372 (=> res!562775 e!459452)))

(assert (=> b!825372 (= res!562775 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!372754 () ListLongMap!8815)

(assert (=> b!825372 (= lt!372744 lt!372754)))

(declare-fun lt!372748 () Unit!28287)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!555 (array!46104 array!46106 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24975 V!24975 V!24975 V!24975 (_ BitVec 32) Int) Unit!28287)

(assert (=> b!825372 (= lt!372748 (lemmaNoChangeToArrayThenSameMapNoExtras!555 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2439 (array!46104 array!46106 (_ BitVec 32) (_ BitVec 32) V!24975 V!24975 (_ BitVec 32) Int) ListLongMap!8815)

(assert (=> b!825372 (= lt!372754 (getCurrentListMapNoExtraKeys!2439 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825372 (= lt!372744 (getCurrentListMapNoExtraKeys!2439 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825373 () Bool)

(declare-fun res!562774 () Bool)

(assert (=> b!825373 (=> (not res!562774) (not e!459450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46104 (_ BitVec 32)) Bool)

(assert (=> b!825373 (= res!562774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825374 () Bool)

(assert (=> b!825374 (= e!459453 (= lt!372750 (+!1885 (+!1885 lt!372754 lt!372745) lt!372752)))))

(declare-fun b!825375 () Bool)

(declare-fun e!459448 () Bool)

(assert (=> b!825375 (= e!459448 tp_is_empty!14981)))

(declare-fun b!825376 () Bool)

(assert (=> b!825376 (= e!459454 (= lt!372750 (+!1885 (+!1885 lt!372754 (tuple2!9979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372745)))))

(declare-fun mapNonEmpty!24094 () Bool)

(declare-fun mapRes!24094 () Bool)

(declare-fun tp!46569 () Bool)

(assert (=> mapNonEmpty!24094 (= mapRes!24094 (and tp!46569 e!459451))))

(declare-fun mapValue!24094 () ValueCell!7075)

(declare-fun mapRest!24094 () (Array (_ BitVec 32) ValueCell!7075))

(declare-fun mapKey!24094 () (_ BitVec 32))

(assert (=> mapNonEmpty!24094 (= (arr!22095 _values!788) (store mapRest!24094 mapKey!24094 mapValue!24094))))

(declare-fun b!825377 () Bool)

(declare-fun res!562773 () Bool)

(assert (=> b!825377 (=> (not res!562773) (not e!459450))))

(assert (=> b!825377 (= res!562773 (and (= (size!22516 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22515 _keys!976) (size!22516 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825378 () Bool)

(assert (=> b!825378 (= e!459449 (and e!459448 mapRes!24094))))

(declare-fun condMapEmpty!24094 () Bool)

(declare-fun mapDefault!24094 () ValueCell!7075)

