; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112342 () Bool)

(assert start!112342)

(declare-fun b_free!30701 () Bool)

(declare-fun b_next!30701 () Bool)

(assert (=> start!112342 (= b_free!30701 (not b_next!30701))))

(declare-fun tp!107740 () Bool)

(declare-fun b_and!49467 () Bool)

(assert (=> start!112342 (= tp!107740 b_and!49467)))

(declare-fun b!1330780 () Bool)

(declare-fun res!883145 () Bool)

(declare-fun e!758431 () Bool)

(assert (=> b!1330780 (=> (not res!883145) (not e!758431))))

(declare-datatypes ((V!53917 0))(
  ( (V!53918 (val!18380 Int)) )
))
(declare-datatypes ((ValueCell!17407 0))(
  ( (ValueCellFull!17407 (v!21015 V!53917)) (EmptyCell!17407) )
))
(declare-datatypes ((array!90075 0))(
  ( (array!90076 (arr!43499 (Array (_ BitVec 32) ValueCell!17407)) (size!44050 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90075)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90077 0))(
  ( (array!90078 (arr!43500 (Array (_ BitVec 32) (_ BitVec 64))) (size!44051 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90077)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53917)

(declare-fun zeroValue!1262 () V!53917)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23820 0))(
  ( (tuple2!23821 (_1!11920 (_ BitVec 64)) (_2!11920 V!53917)) )
))
(declare-datatypes ((List!31007 0))(
  ( (Nil!31004) (Cons!31003 (h!32212 tuple2!23820) (t!45128 List!31007)) )
))
(declare-datatypes ((ListLongMap!21489 0))(
  ( (ListLongMap!21490 (toList!10760 List!31007)) )
))
(declare-fun contains!8860 (ListLongMap!21489 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5686 (array!90077 array!90075 (_ BitVec 32) (_ BitVec 32) V!53917 V!53917 (_ BitVec 32) Int) ListLongMap!21489)

(assert (=> b!1330780 (= res!883145 (contains!8860 (getCurrentListMap!5686 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56590 () Bool)

(declare-fun mapRes!56590 () Bool)

(assert (=> mapIsEmpty!56590 mapRes!56590))

(declare-fun mapNonEmpty!56590 () Bool)

(declare-fun tp!107741 () Bool)

(declare-fun e!758432 () Bool)

(assert (=> mapNonEmpty!56590 (= mapRes!56590 (and tp!107741 e!758432))))

(declare-fun mapRest!56590 () (Array (_ BitVec 32) ValueCell!17407))

(declare-fun mapKey!56590 () (_ BitVec 32))

(declare-fun mapValue!56590 () ValueCell!17407)

(assert (=> mapNonEmpty!56590 (= (arr!43499 _values!1320) (store mapRest!56590 mapKey!56590 mapValue!56590))))

(declare-fun b!1330781 () Bool)

(declare-fun res!883147 () Bool)

(assert (=> b!1330781 (=> (not res!883147) (not e!758431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90077 (_ BitVec 32)) Bool)

(assert (=> b!1330781 (= res!883147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330782 () Bool)

(declare-fun res!883146 () Bool)

(assert (=> b!1330782 (=> (not res!883146) (not e!758431))))

(assert (=> b!1330782 (= res!883146 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44051 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330783 () Bool)

(declare-fun e!758430 () Bool)

(declare-fun tp_is_empty!36611 () Bool)

(assert (=> b!1330783 (= e!758430 tp_is_empty!36611)))

(declare-fun b!1330784 () Bool)

(declare-fun res!883143 () Bool)

(assert (=> b!1330784 (=> (not res!883143) (not e!758431))))

(assert (=> b!1330784 (= res!883143 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!883142 () Bool)

(assert (=> start!112342 (=> (not res!883142) (not e!758431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112342 (= res!883142 (validMask!0 mask!1998))))

(assert (=> start!112342 e!758431))

(declare-fun e!758433 () Bool)

(declare-fun array_inv!32765 (array!90075) Bool)

(assert (=> start!112342 (and (array_inv!32765 _values!1320) e!758433)))

(assert (=> start!112342 true))

(declare-fun array_inv!32766 (array!90077) Bool)

(assert (=> start!112342 (array_inv!32766 _keys!1590)))

(assert (=> start!112342 tp!107740))

(assert (=> start!112342 tp_is_empty!36611))

(declare-fun b!1330785 () Bool)

(declare-fun res!883140 () Bool)

(assert (=> b!1330785 (=> (not res!883140) (not e!758431))))

(declare-datatypes ((List!31008 0))(
  ( (Nil!31005) (Cons!31004 (h!32213 (_ BitVec 64)) (t!45129 List!31008)) )
))
(declare-fun arrayNoDuplicates!0 (array!90077 (_ BitVec 32) List!31008) Bool)

(assert (=> b!1330785 (= res!883140 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31005))))

(declare-fun b!1330786 () Bool)

(declare-fun res!883144 () Bool)

(assert (=> b!1330786 (=> (not res!883144) (not e!758431))))

(assert (=> b!1330786 (= res!883144 (not (= (select (arr!43500 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1330787 () Bool)

(declare-fun res!883148 () Bool)

(assert (=> b!1330787 (=> (not res!883148) (not e!758431))))

(assert (=> b!1330787 (= res!883148 (and (= (size!44050 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44051 _keys!1590) (size!44050 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330788 () Bool)

(assert (=> b!1330788 (= e!758431 (not true))))

(declare-fun lt!591247 () ListLongMap!21489)

(assert (=> b!1330788 (contains!8860 lt!591247 k!1153)))

(declare-fun lt!591249 () V!53917)

(declare-datatypes ((Unit!43729 0))(
  ( (Unit!43730) )
))
(declare-fun lt!591251 () Unit!43729)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!256 ((_ BitVec 64) (_ BitVec 64) V!53917 ListLongMap!21489) Unit!43729)

(assert (=> b!1330788 (= lt!591251 (lemmaInListMapAfterAddingDiffThenInBefore!256 k!1153 (select (arr!43500 _keys!1590) from!1980) lt!591249 lt!591247))))

(declare-fun lt!591250 () ListLongMap!21489)

(assert (=> b!1330788 (contains!8860 lt!591250 k!1153)))

(declare-fun lt!591248 () Unit!43729)

(assert (=> b!1330788 (= lt!591248 (lemmaInListMapAfterAddingDiffThenInBefore!256 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591250))))

(declare-fun +!4651 (ListLongMap!21489 tuple2!23820) ListLongMap!21489)

(assert (=> b!1330788 (= lt!591250 (+!4651 lt!591247 (tuple2!23821 (select (arr!43500 _keys!1590) from!1980) lt!591249)))))

(declare-fun get!21969 (ValueCell!17407 V!53917) V!53917)

(declare-fun dynLambda!3688 (Int (_ BitVec 64)) V!53917)

(assert (=> b!1330788 (= lt!591249 (get!21969 (select (arr!43499 _values!1320) from!1980) (dynLambda!3688 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6369 (array!90077 array!90075 (_ BitVec 32) (_ BitVec 32) V!53917 V!53917 (_ BitVec 32) Int) ListLongMap!21489)

(assert (=> b!1330788 (= lt!591247 (getCurrentListMapNoExtraKeys!6369 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330789 () Bool)

(assert (=> b!1330789 (= e!758432 tp_is_empty!36611)))

(declare-fun b!1330790 () Bool)

(assert (=> b!1330790 (= e!758433 (and e!758430 mapRes!56590))))

(declare-fun condMapEmpty!56590 () Bool)

(declare-fun mapDefault!56590 () ValueCell!17407)

