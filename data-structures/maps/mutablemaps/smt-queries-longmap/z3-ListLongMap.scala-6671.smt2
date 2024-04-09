; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84028 () Bool)

(assert start!84028)

(declare-fun b_free!19755 () Bool)

(declare-fun b_next!19755 () Bool)

(assert (=> start!84028 (= b_free!19755 (not b_next!19755))))

(declare-fun tp!68788 () Bool)

(declare-fun b_and!31611 () Bool)

(assert (=> start!84028 (= tp!68788 b_and!31611)))

(declare-fun b!981604 () Bool)

(declare-fun res!656987 () Bool)

(declare-fun e!553391 () Bool)

(assert (=> b!981604 (=> (not res!656987) (not e!553391))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61599 0))(
  ( (array!61600 (arr!29653 (Array (_ BitVec 32) (_ BitVec 64))) (size!30133 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61599)

(assert (=> b!981604 (= res!656987 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30133 _keys!1544))))))

(declare-fun b!981605 () Bool)

(declare-fun res!656986 () Bool)

(assert (=> b!981605 (=> (not res!656986) (not e!553391))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35387 0))(
  ( (V!35388 (val!11452 Int)) )
))
(declare-datatypes ((ValueCell!10920 0))(
  ( (ValueCellFull!10920 (v!14014 V!35387)) (EmptyCell!10920) )
))
(declare-datatypes ((array!61601 0))(
  ( (array!61602 (arr!29654 (Array (_ BitVec 32) ValueCell!10920)) (size!30134 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61601)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981605 (= res!656986 (and (= (size!30134 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30133 _keys!1544) (size!30134 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36233 () Bool)

(declare-fun mapRes!36233 () Bool)

(assert (=> mapIsEmpty!36233 mapRes!36233))

(declare-fun b!981606 () Bool)

(declare-fun res!656985 () Bool)

(assert (=> b!981606 (=> (not res!656985) (not e!553391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981606 (= res!656985 (validKeyInArray!0 (select (arr!29653 _keys!1544) from!1932)))))

(declare-fun b!981607 () Bool)

(declare-fun e!553393 () Bool)

(assert (=> b!981607 (= e!553391 e!553393)))

(declare-fun res!656990 () Bool)

(assert (=> b!981607 (=> (not res!656990) (not e!553393))))

(assert (=> b!981607 (= res!656990 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29653 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!435786 () V!35387)

(declare-fun get!15391 (ValueCell!10920 V!35387) V!35387)

(declare-fun dynLambda!1790 (Int (_ BitVec 64)) V!35387)

(assert (=> b!981607 (= lt!435786 (get!15391 (select (arr!29654 _values!1278) from!1932) (dynLambda!1790 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35387)

(declare-fun zeroValue!1220 () V!35387)

(declare-datatypes ((tuple2!14772 0))(
  ( (tuple2!14773 (_1!7396 (_ BitVec 64)) (_2!7396 V!35387)) )
))
(declare-datatypes ((List!20678 0))(
  ( (Nil!20675) (Cons!20674 (h!21836 tuple2!14772) (t!29391 List!20678)) )
))
(declare-datatypes ((ListLongMap!13483 0))(
  ( (ListLongMap!13484 (toList!6757 List!20678)) )
))
(declare-fun lt!435790 () ListLongMap!13483)

(declare-fun getCurrentListMapNoExtraKeys!3417 (array!61599 array!61601 (_ BitVec 32) (_ BitVec 32) V!35387 V!35387 (_ BitVec 32) Int) ListLongMap!13483)

(assert (=> b!981607 (= lt!435790 (getCurrentListMapNoExtraKeys!3417 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!656988 () Bool)

(assert (=> start!84028 (=> (not res!656988) (not e!553391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84028 (= res!656988 (validMask!0 mask!1948))))

(assert (=> start!84028 e!553391))

(assert (=> start!84028 true))

(declare-fun tp_is_empty!22803 () Bool)

(assert (=> start!84028 tp_is_empty!22803))

(declare-fun e!553390 () Bool)

(declare-fun array_inv!22805 (array!61601) Bool)

(assert (=> start!84028 (and (array_inv!22805 _values!1278) e!553390)))

(assert (=> start!84028 tp!68788))

(declare-fun array_inv!22806 (array!61599) Bool)

(assert (=> start!84028 (array_inv!22806 _keys!1544)))

(declare-fun b!981608 () Bool)

(assert (=> b!981608 (= e!553393 (not true))))

(declare-fun lt!435788 () tuple2!14772)

(declare-fun lt!435789 () tuple2!14772)

(declare-fun +!2961 (ListLongMap!13483 tuple2!14772) ListLongMap!13483)

(assert (=> b!981608 (= (+!2961 (+!2961 lt!435790 lt!435788) lt!435789) (+!2961 (+!2961 lt!435790 lt!435789) lt!435788))))

(assert (=> b!981608 (= lt!435789 (tuple2!14773 (select (arr!29653 _keys!1544) from!1932) lt!435786))))

(assert (=> b!981608 (= lt!435788 (tuple2!14773 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32597 0))(
  ( (Unit!32598) )
))
(declare-fun lt!435787 () Unit!32597)

(declare-fun addCommutativeForDiffKeys!623 (ListLongMap!13483 (_ BitVec 64) V!35387 (_ BitVec 64) V!35387) Unit!32597)

(assert (=> b!981608 (= lt!435787 (addCommutativeForDiffKeys!623 lt!435790 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29653 _keys!1544) from!1932) lt!435786))))

(declare-fun b!981609 () Bool)

(declare-fun e!553394 () Bool)

(assert (=> b!981609 (= e!553394 tp_is_empty!22803)))

(declare-fun b!981610 () Bool)

(declare-fun res!656989 () Bool)

(assert (=> b!981610 (=> (not res!656989) (not e!553391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61599 (_ BitVec 32)) Bool)

(assert (=> b!981610 (= res!656989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981611 () Bool)

(declare-fun res!656991 () Bool)

(assert (=> b!981611 (=> (not res!656991) (not e!553391))))

(assert (=> b!981611 (= res!656991 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981612 () Bool)

(declare-fun e!553392 () Bool)

(assert (=> b!981612 (= e!553390 (and e!553392 mapRes!36233))))

(declare-fun condMapEmpty!36233 () Bool)

(declare-fun mapDefault!36233 () ValueCell!10920)

(assert (=> b!981612 (= condMapEmpty!36233 (= (arr!29654 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10920)) mapDefault!36233)))))

(declare-fun b!981613 () Bool)

(declare-fun res!656984 () Bool)

(assert (=> b!981613 (=> (not res!656984) (not e!553391))))

(declare-datatypes ((List!20679 0))(
  ( (Nil!20676) (Cons!20675 (h!21837 (_ BitVec 64)) (t!29392 List!20679)) )
))
(declare-fun arrayNoDuplicates!0 (array!61599 (_ BitVec 32) List!20679) Bool)

(assert (=> b!981613 (= res!656984 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20676))))

(declare-fun b!981614 () Bool)

(assert (=> b!981614 (= e!553392 tp_is_empty!22803)))

(declare-fun mapNonEmpty!36233 () Bool)

(declare-fun tp!68789 () Bool)

(assert (=> mapNonEmpty!36233 (= mapRes!36233 (and tp!68789 e!553394))))

(declare-fun mapKey!36233 () (_ BitVec 32))

(declare-fun mapValue!36233 () ValueCell!10920)

(declare-fun mapRest!36233 () (Array (_ BitVec 32) ValueCell!10920))

(assert (=> mapNonEmpty!36233 (= (arr!29654 _values!1278) (store mapRest!36233 mapKey!36233 mapValue!36233))))

(assert (= (and start!84028 res!656988) b!981605))

(assert (= (and b!981605 res!656986) b!981610))

(assert (= (and b!981610 res!656989) b!981613))

(assert (= (and b!981613 res!656984) b!981604))

(assert (= (and b!981604 res!656987) b!981606))

(assert (= (and b!981606 res!656985) b!981611))

(assert (= (and b!981611 res!656991) b!981607))

(assert (= (and b!981607 res!656990) b!981608))

(assert (= (and b!981612 condMapEmpty!36233) mapIsEmpty!36233))

(assert (= (and b!981612 (not condMapEmpty!36233)) mapNonEmpty!36233))

(get-info :version)

(assert (= (and mapNonEmpty!36233 ((_ is ValueCellFull!10920) mapValue!36233)) b!981609))

(assert (= (and b!981612 ((_ is ValueCellFull!10920) mapDefault!36233)) b!981614))

(assert (= start!84028 b!981612))

(declare-fun b_lambda!14823 () Bool)

(assert (=> (not b_lambda!14823) (not b!981607)))

(declare-fun t!29390 () Bool)

(declare-fun tb!6563 () Bool)

(assert (=> (and start!84028 (= defaultEntry!1281 defaultEntry!1281) t!29390) tb!6563))

(declare-fun result!13107 () Bool)

(assert (=> tb!6563 (= result!13107 tp_is_empty!22803)))

(assert (=> b!981607 t!29390))

(declare-fun b_and!31613 () Bool)

(assert (= b_and!31611 (and (=> t!29390 result!13107) b_and!31613)))

(declare-fun m!909069 () Bool)

(assert (=> b!981608 m!909069))

(declare-fun m!909071 () Bool)

(assert (=> b!981608 m!909071))

(declare-fun m!909073 () Bool)

(assert (=> b!981608 m!909073))

(declare-fun m!909075 () Bool)

(assert (=> b!981608 m!909075))

(assert (=> b!981608 m!909069))

(declare-fun m!909077 () Bool)

(assert (=> b!981608 m!909077))

(assert (=> b!981608 m!909071))

(declare-fun m!909079 () Bool)

(assert (=> b!981608 m!909079))

(assert (=> b!981608 m!909073))

(declare-fun m!909081 () Bool)

(assert (=> b!981610 m!909081))

(assert (=> b!981607 m!909071))

(declare-fun m!909083 () Bool)

(assert (=> b!981607 m!909083))

(declare-fun m!909085 () Bool)

(assert (=> b!981607 m!909085))

(declare-fun m!909087 () Bool)

(assert (=> b!981607 m!909087))

(assert (=> b!981607 m!909083))

(assert (=> b!981607 m!909087))

(declare-fun m!909089 () Bool)

(assert (=> b!981607 m!909089))

(declare-fun m!909091 () Bool)

(assert (=> mapNonEmpty!36233 m!909091))

(declare-fun m!909093 () Bool)

(assert (=> b!981613 m!909093))

(assert (=> b!981606 m!909071))

(assert (=> b!981606 m!909071))

(declare-fun m!909095 () Bool)

(assert (=> b!981606 m!909095))

(declare-fun m!909097 () Bool)

(assert (=> start!84028 m!909097))

(declare-fun m!909099 () Bool)

(assert (=> start!84028 m!909099))

(declare-fun m!909101 () Bool)

(assert (=> start!84028 m!909101))

(check-sat (not start!84028) (not b!981610) (not b!981606) tp_is_empty!22803 b_and!31613 (not b!981608) (not b!981607) (not mapNonEmpty!36233) (not b!981613) (not b_next!19755) (not b_lambda!14823))
(check-sat b_and!31613 (not b_next!19755))
