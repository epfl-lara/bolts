; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84584 () Bool)

(assert start!84584)

(declare-fun b_free!20037 () Bool)

(declare-fun b_next!20037 () Bool)

(assert (=> start!84584 (= b_free!20037 (not b_next!20037))))

(declare-fun tp!69899 () Bool)

(declare-fun b_and!32161 () Bool)

(assert (=> start!84584 (= tp!69899 b_and!32161)))

(declare-fun b!988827 () Bool)

(declare-fun res!661466 () Bool)

(declare-fun e!557608 () Bool)

(assert (=> b!988827 (=> (not res!661466) (not e!557608))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!988827 (= res!661466 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!988828 () Bool)

(declare-fun e!557610 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((V!35987 0))(
  ( (V!35988 (val!11677 Int)) )
))
(declare-datatypes ((ValueCell!11145 0))(
  ( (ValueCellFull!11145 (v!14244 V!35987)) (EmptyCell!11145) )
))
(declare-datatypes ((array!62455 0))(
  ( (array!62456 (arr!30077 (Array (_ BitVec 32) ValueCell!11145)) (size!30557 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62455)

(assert (=> b!988828 (= e!557610 (not (bvslt from!1932 (size!30557 _values!1278))))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35987)

(declare-fun zeroValue!1220 () V!35987)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14980 0))(
  ( (tuple2!14981 (_1!7500 (_ BitVec 64)) (_2!7500 V!35987)) )
))
(declare-datatypes ((List!20930 0))(
  ( (Nil!20927) (Cons!20926 (h!22088 tuple2!14980) (t!29887 List!20930)) )
))
(declare-datatypes ((ListLongMap!13691 0))(
  ( (ListLongMap!13692 (toList!6861 List!20930)) )
))
(declare-fun lt!438610 () ListLongMap!13691)

(declare-datatypes ((array!62457 0))(
  ( (array!62458 (arr!30078 (Array (_ BitVec 32) (_ BitVec 64))) (size!30558 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62457)

(declare-fun getCurrentListMap!3875 (array!62457 array!62455 (_ BitVec 32) (_ BitVec 32) V!35987 V!35987 (_ BitVec 32) Int) ListLongMap!13691)

(assert (=> b!988828 (= lt!438610 (getCurrentListMap!3875 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438612 () ListLongMap!13691)

(declare-fun lt!438611 () tuple2!14980)

(declare-fun lt!438609 () tuple2!14980)

(declare-fun +!3043 (ListLongMap!13691 tuple2!14980) ListLongMap!13691)

(assert (=> b!988828 (= (+!3043 (+!3043 lt!438612 lt!438611) lt!438609) (+!3043 (+!3043 lt!438612 lt!438609) lt!438611))))

(declare-fun lt!438608 () V!35987)

(assert (=> b!988828 (= lt!438609 (tuple2!14981 (select (arr!30078 _keys!1544) from!1932) lt!438608))))

(assert (=> b!988828 (= lt!438611 (tuple2!14981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32773 0))(
  ( (Unit!32774) )
))
(declare-fun lt!438607 () Unit!32773)

(declare-fun addCommutativeForDiffKeys!698 (ListLongMap!13691 (_ BitVec 64) V!35987 (_ BitVec 64) V!35987) Unit!32773)

(assert (=> b!988828 (= lt!438607 (addCommutativeForDiffKeys!698 lt!438612 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30078 _keys!1544) from!1932) lt!438608))))

(declare-fun b!988829 () Bool)

(declare-fun e!557609 () Bool)

(declare-fun tp_is_empty!23253 () Bool)

(assert (=> b!988829 (= e!557609 tp_is_empty!23253)))

(declare-fun b!988830 () Bool)

(assert (=> b!988830 (= e!557608 e!557610)))

(declare-fun res!661463 () Bool)

(assert (=> b!988830 (=> (not res!661463) (not e!557610))))

(assert (=> b!988830 (= res!661463 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30078 _keys!1544) from!1932))))))

(declare-fun get!15627 (ValueCell!11145 V!35987) V!35987)

(declare-fun dynLambda!1871 (Int (_ BitVec 64)) V!35987)

(assert (=> b!988830 (= lt!438608 (get!15627 (select (arr!30077 _values!1278) from!1932) (dynLambda!1871 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!3511 (array!62457 array!62455 (_ BitVec 32) (_ BitVec 32) V!35987 V!35987 (_ BitVec 32) Int) ListLongMap!13691)

(assert (=> b!988830 (= lt!438612 (getCurrentListMapNoExtraKeys!3511 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988831 () Bool)

(declare-fun res!661467 () Bool)

(assert (=> b!988831 (=> (not res!661467) (not e!557608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62457 (_ BitVec 32)) Bool)

(assert (=> b!988831 (= res!661467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36921 () Bool)

(declare-fun mapRes!36921 () Bool)

(assert (=> mapIsEmpty!36921 mapRes!36921))

(declare-fun b!988832 () Bool)

(declare-fun e!557607 () Bool)

(assert (=> b!988832 (= e!557607 tp_is_empty!23253)))

(declare-fun res!661464 () Bool)

(assert (=> start!84584 (=> (not res!661464) (not e!557608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84584 (= res!661464 (validMask!0 mask!1948))))

(assert (=> start!84584 e!557608))

(assert (=> start!84584 true))

(assert (=> start!84584 tp_is_empty!23253))

(declare-fun e!557606 () Bool)

(declare-fun array_inv!23095 (array!62455) Bool)

(assert (=> start!84584 (and (array_inv!23095 _values!1278) e!557606)))

(assert (=> start!84584 tp!69899))

(declare-fun array_inv!23096 (array!62457) Bool)

(assert (=> start!84584 (array_inv!23096 _keys!1544)))

(declare-fun b!988833 () Bool)

(assert (=> b!988833 (= e!557606 (and e!557607 mapRes!36921))))

(declare-fun condMapEmpty!36921 () Bool)

(declare-fun mapDefault!36921 () ValueCell!11145)

(assert (=> b!988833 (= condMapEmpty!36921 (= (arr!30077 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11145)) mapDefault!36921)))))

(declare-fun b!988834 () Bool)

(declare-fun res!661465 () Bool)

(assert (=> b!988834 (=> (not res!661465) (not e!557608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988834 (= res!661465 (validKeyInArray!0 (select (arr!30078 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36921 () Bool)

(declare-fun tp!69900 () Bool)

(assert (=> mapNonEmpty!36921 (= mapRes!36921 (and tp!69900 e!557609))))

(declare-fun mapValue!36921 () ValueCell!11145)

(declare-fun mapRest!36921 () (Array (_ BitVec 32) ValueCell!11145))

(declare-fun mapKey!36921 () (_ BitVec 32))

(assert (=> mapNonEmpty!36921 (= (arr!30077 _values!1278) (store mapRest!36921 mapKey!36921 mapValue!36921))))

(declare-fun b!988835 () Bool)

(declare-fun res!661462 () Bool)

(assert (=> b!988835 (=> (not res!661462) (not e!557608))))

(assert (=> b!988835 (= res!661462 (and (= (size!30557 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30558 _keys!1544) (size!30557 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988836 () Bool)

(declare-fun res!661461 () Bool)

(assert (=> b!988836 (=> (not res!661461) (not e!557608))))

(assert (=> b!988836 (= res!661461 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30558 _keys!1544))))))

(declare-fun b!988837 () Bool)

(declare-fun res!661468 () Bool)

(assert (=> b!988837 (=> (not res!661468) (not e!557608))))

(declare-datatypes ((List!20931 0))(
  ( (Nil!20928) (Cons!20927 (h!22089 (_ BitVec 64)) (t!29888 List!20931)) )
))
(declare-fun arrayNoDuplicates!0 (array!62457 (_ BitVec 32) List!20931) Bool)

(assert (=> b!988837 (= res!661468 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20928))))

(assert (= (and start!84584 res!661464) b!988835))

(assert (= (and b!988835 res!661462) b!988831))

(assert (= (and b!988831 res!661467) b!988837))

(assert (= (and b!988837 res!661468) b!988836))

(assert (= (and b!988836 res!661461) b!988834))

(assert (= (and b!988834 res!661465) b!988827))

(assert (= (and b!988827 res!661466) b!988830))

(assert (= (and b!988830 res!661463) b!988828))

(assert (= (and b!988833 condMapEmpty!36921) mapIsEmpty!36921))

(assert (= (and b!988833 (not condMapEmpty!36921)) mapNonEmpty!36921))

(get-info :version)

(assert (= (and mapNonEmpty!36921 ((_ is ValueCellFull!11145) mapValue!36921)) b!988829))

(assert (= (and b!988833 ((_ is ValueCellFull!11145) mapDefault!36921)) b!988832))

(assert (= start!84584 b!988833))

(declare-fun b_lambda!15123 () Bool)

(assert (=> (not b_lambda!15123) (not b!988830)))

(declare-fun t!29886 () Bool)

(declare-fun tb!6807 () Bool)

(assert (=> (and start!84584 (= defaultEntry!1281 defaultEntry!1281) t!29886) tb!6807))

(declare-fun result!13603 () Bool)

(assert (=> tb!6807 (= result!13603 tp_is_empty!23253)))

(assert (=> b!988830 t!29886))

(declare-fun b_and!32163 () Bool)

(assert (= b_and!32161 (and (=> t!29886 result!13603) b_and!32163)))

(declare-fun m!916043 () Bool)

(assert (=> mapNonEmpty!36921 m!916043))

(declare-fun m!916045 () Bool)

(assert (=> b!988828 m!916045))

(declare-fun m!916047 () Bool)

(assert (=> b!988828 m!916047))

(declare-fun m!916049 () Bool)

(assert (=> b!988828 m!916049))

(declare-fun m!916051 () Bool)

(assert (=> b!988828 m!916051))

(declare-fun m!916053 () Bool)

(assert (=> b!988828 m!916053))

(assert (=> b!988828 m!916047))

(declare-fun m!916055 () Bool)

(assert (=> b!988828 m!916055))

(assert (=> b!988828 m!916045))

(declare-fun m!916057 () Bool)

(assert (=> b!988828 m!916057))

(assert (=> b!988828 m!916051))

(declare-fun m!916059 () Bool)

(assert (=> start!84584 m!916059))

(declare-fun m!916061 () Bool)

(assert (=> start!84584 m!916061))

(declare-fun m!916063 () Bool)

(assert (=> start!84584 m!916063))

(assert (=> b!988834 m!916045))

(assert (=> b!988834 m!916045))

(declare-fun m!916065 () Bool)

(assert (=> b!988834 m!916065))

(declare-fun m!916067 () Bool)

(assert (=> b!988831 m!916067))

(assert (=> b!988830 m!916045))

(declare-fun m!916069 () Bool)

(assert (=> b!988830 m!916069))

(declare-fun m!916071 () Bool)

(assert (=> b!988830 m!916071))

(declare-fun m!916073 () Bool)

(assert (=> b!988830 m!916073))

(assert (=> b!988830 m!916069))

(assert (=> b!988830 m!916073))

(declare-fun m!916075 () Bool)

(assert (=> b!988830 m!916075))

(declare-fun m!916077 () Bool)

(assert (=> b!988837 m!916077))

(check-sat tp_is_empty!23253 (not mapNonEmpty!36921) (not b!988834) (not b_next!20037) (not b!988837) (not b!988831) (not b!988830) (not start!84584) (not b_lambda!15123) b_and!32163 (not b!988828))
(check-sat b_and!32163 (not b_next!20037))
