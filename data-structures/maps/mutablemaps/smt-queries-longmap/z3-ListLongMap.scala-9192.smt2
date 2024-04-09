; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110538 () Bool)

(assert start!110538)

(declare-fun b_free!29337 () Bool)

(declare-fun b_next!29337 () Bool)

(assert (=> start!110538 (= b_free!29337 (not b_next!29337))))

(declare-fun tp!103333 () Bool)

(declare-fun b_and!47555 () Bool)

(assert (=> start!110538 (= tp!103333 b_and!47555)))

(declare-fun b!1307082 () Bool)

(declare-fun res!867731 () Bool)

(declare-fun e!745863 () Bool)

(assert (=> b!1307082 (=> (not res!867731) (not e!745863))))

(declare-datatypes ((array!87111 0))(
  ( (array!87112 (arr!42031 (Array (_ BitVec 32) (_ BitVec 64))) (size!42582 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87111)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307082 (= res!867731 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42582 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54229 () Bool)

(declare-fun mapRes!54229 () Bool)

(assert (=> mapIsEmpty!54229 mapRes!54229))

(declare-fun mapNonEmpty!54229 () Bool)

(declare-fun tp!103334 () Bool)

(declare-fun e!745861 () Bool)

(assert (=> mapNonEmpty!54229 (= mapRes!54229 (and tp!103334 e!745861))))

(declare-datatypes ((V!51859 0))(
  ( (V!51860 (val!17608 Int)) )
))
(declare-datatypes ((ValueCell!16635 0))(
  ( (ValueCellFull!16635 (v!20233 V!51859)) (EmptyCell!16635) )
))
(declare-fun mapValue!54229 () ValueCell!16635)

(declare-fun mapKey!54229 () (_ BitVec 32))

(declare-datatypes ((array!87113 0))(
  ( (array!87114 (arr!42032 (Array (_ BitVec 32) ValueCell!16635)) (size!42583 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87113)

(declare-fun mapRest!54229 () (Array (_ BitVec 32) ValueCell!16635))

(assert (=> mapNonEmpty!54229 (= (arr!42032 _values!1354) (store mapRest!54229 mapKey!54229 mapValue!54229))))

(declare-fun b!1307083 () Bool)

(declare-fun tp_is_empty!35067 () Bool)

(assert (=> b!1307083 (= e!745861 tp_is_empty!35067)))

(declare-fun b!1307084 () Bool)

(assert (=> b!1307084 (= e!745863 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!584956 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun minValue!1296 () V!51859)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!51859)

(declare-datatypes ((tuple2!22830 0))(
  ( (tuple2!22831 (_1!11425 (_ BitVec 64)) (_2!11425 V!51859)) )
))
(declare-datatypes ((List!30001 0))(
  ( (Nil!29998) (Cons!29997 (h!31206 tuple2!22830) (t!43614 List!30001)) )
))
(declare-datatypes ((ListLongMap!20499 0))(
  ( (ListLongMap!20500 (toList!10265 List!30001)) )
))
(declare-fun contains!8351 (ListLongMap!20499 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5221 (array!87111 array!87113 (_ BitVec 32) (_ BitVec 32) V!51859 V!51859 (_ BitVec 32) Int) ListLongMap!20499)

(assert (=> b!1307084 (= lt!584956 (contains!8351 (getCurrentListMap!5221 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307085 () Bool)

(declare-fun res!867732 () Bool)

(assert (=> b!1307085 (=> (not res!867732) (not e!745863))))

(declare-datatypes ((List!30002 0))(
  ( (Nil!29999) (Cons!29998 (h!31207 (_ BitVec 64)) (t!43615 List!30002)) )
))
(declare-fun arrayNoDuplicates!0 (array!87111 (_ BitVec 32) List!30002) Bool)

(assert (=> b!1307085 (= res!867732 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29999))))

(declare-fun b!1307086 () Bool)

(declare-fun res!867733 () Bool)

(assert (=> b!1307086 (=> (not res!867733) (not e!745863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87111 (_ BitVec 32)) Bool)

(assert (=> b!1307086 (= res!867733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307087 () Bool)

(declare-fun e!745862 () Bool)

(declare-fun e!745865 () Bool)

(assert (=> b!1307087 (= e!745862 (and e!745865 mapRes!54229))))

(declare-fun condMapEmpty!54229 () Bool)

(declare-fun mapDefault!54229 () ValueCell!16635)

(assert (=> b!1307087 (= condMapEmpty!54229 (= (arr!42032 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16635)) mapDefault!54229)))))

(declare-fun b!1307088 () Bool)

(assert (=> b!1307088 (= e!745865 tp_is_empty!35067)))

(declare-fun res!867734 () Bool)

(assert (=> start!110538 (=> (not res!867734) (not e!745863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110538 (= res!867734 (validMask!0 mask!2040))))

(assert (=> start!110538 e!745863))

(assert (=> start!110538 tp!103333))

(declare-fun array_inv!31773 (array!87111) Bool)

(assert (=> start!110538 (array_inv!31773 _keys!1628)))

(assert (=> start!110538 true))

(assert (=> start!110538 tp_is_empty!35067))

(declare-fun array_inv!31774 (array!87113) Bool)

(assert (=> start!110538 (and (array_inv!31774 _values!1354) e!745862)))

(declare-fun b!1307089 () Bool)

(declare-fun res!867730 () Bool)

(assert (=> b!1307089 (=> (not res!867730) (not e!745863))))

(assert (=> b!1307089 (= res!867730 (and (= (size!42583 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42582 _keys!1628) (size!42583 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110538 res!867734) b!1307089))

(assert (= (and b!1307089 res!867730) b!1307086))

(assert (= (and b!1307086 res!867733) b!1307085))

(assert (= (and b!1307085 res!867732) b!1307082))

(assert (= (and b!1307082 res!867731) b!1307084))

(assert (= (and b!1307087 condMapEmpty!54229) mapIsEmpty!54229))

(assert (= (and b!1307087 (not condMapEmpty!54229)) mapNonEmpty!54229))

(get-info :version)

(assert (= (and mapNonEmpty!54229 ((_ is ValueCellFull!16635) mapValue!54229)) b!1307083))

(assert (= (and b!1307087 ((_ is ValueCellFull!16635) mapDefault!54229)) b!1307088))

(assert (= start!110538 b!1307087))

(declare-fun m!1197901 () Bool)

(assert (=> b!1307085 m!1197901))

(declare-fun m!1197903 () Bool)

(assert (=> mapNonEmpty!54229 m!1197903))

(declare-fun m!1197905 () Bool)

(assert (=> start!110538 m!1197905))

(declare-fun m!1197907 () Bool)

(assert (=> start!110538 m!1197907))

(declare-fun m!1197909 () Bool)

(assert (=> start!110538 m!1197909))

(declare-fun m!1197911 () Bool)

(assert (=> b!1307086 m!1197911))

(declare-fun m!1197913 () Bool)

(assert (=> b!1307084 m!1197913))

(assert (=> b!1307084 m!1197913))

(declare-fun m!1197915 () Bool)

(assert (=> b!1307084 m!1197915))

(check-sat b_and!47555 tp_is_empty!35067 (not b!1307086) (not mapNonEmpty!54229) (not b!1307084) (not b!1307085) (not start!110538) (not b_next!29337))
(check-sat b_and!47555 (not b_next!29337))
