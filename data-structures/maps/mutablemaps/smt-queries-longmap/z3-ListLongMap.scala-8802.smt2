; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107074 () Bool)

(assert start!107074)

(declare-fun b_free!27543 () Bool)

(declare-fun b_next!27543 () Bool)

(assert (=> start!107074 (= b_free!27543 (not b_next!27543))))

(declare-fun tp!96857 () Bool)

(declare-fun b_and!45585 () Bool)

(assert (=> start!107074 (= tp!96857 b_and!45585)))

(declare-fun b!1268953 () Bool)

(declare-fun e!723259 () Bool)

(declare-fun tp_is_empty!32727 () Bool)

(assert (=> b!1268953 (= e!723259 tp_is_empty!32727)))

(declare-fun b!1268954 () Bool)

(declare-fun res!844586 () Bool)

(declare-fun e!723261 () Bool)

(assert (=> b!1268954 (=> (not res!844586) (not e!723261))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82697 0))(
  ( (array!82698 (arr!39881 (Array (_ BitVec 32) (_ BitVec 64))) (size!40418 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82697)

(assert (=> b!1268954 (= res!844586 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40418 _keys!1364)) (bvslt from!1698 (size!40418 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50671 () Bool)

(declare-fun mapRes!50671 () Bool)

(assert (=> mapIsEmpty!50671 mapRes!50671))

(declare-fun b!1268955 () Bool)

(assert (=> b!1268955 (= e!723261 (not true))))

(declare-datatypes ((V!48829 0))(
  ( (V!48830 (val!16438 Int)) )
))
(declare-datatypes ((ValueCell!15510 0))(
  ( (ValueCellFull!15510 (v!19073 V!48829)) (EmptyCell!15510) )
))
(declare-datatypes ((array!82699 0))(
  ( (array!82700 (arr!39882 (Array (_ BitVec 32) ValueCell!15510)) (size!40419 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82699)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48829)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48829)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48829)

(declare-fun zeroValueBefore!52 () V!48829)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21442 0))(
  ( (tuple2!21443 (_1!10731 (_ BitVec 64)) (_2!10731 V!48829)) )
))
(declare-datatypes ((List!28580 0))(
  ( (Nil!28577) (Cons!28576 (h!29785 tuple2!21442) (t!42116 List!28580)) )
))
(declare-datatypes ((ListLongMap!19183 0))(
  ( (ListLongMap!19184 (toList!9607 List!28580)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5915 (array!82697 array!82699 (_ BitVec 32) (_ BitVec 32) V!48829 V!48829 (_ BitVec 32) Int) ListLongMap!19183)

(assert (=> b!1268955 (= (getCurrentListMapNoExtraKeys!5915 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5915 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42186 0))(
  ( (Unit!42187) )
))
(declare-fun lt!574463 () Unit!42186)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1211 (array!82697 array!82699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48829 V!48829 V!48829 V!48829 (_ BitVec 32) Int) Unit!42186)

(assert (=> b!1268955 (= lt!574463 (lemmaNoChangeToArrayThenSameMapNoExtras!1211 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1268956 () Bool)

(declare-fun res!844584 () Bool)

(assert (=> b!1268956 (=> (not res!844584) (not e!723261))))

(assert (=> b!1268956 (= res!844584 (and (= (size!40419 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40418 _keys!1364) (size!40419 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268957 () Bool)

(declare-fun e!723262 () Bool)

(declare-fun e!723263 () Bool)

(assert (=> b!1268957 (= e!723262 (and e!723263 mapRes!50671))))

(declare-fun condMapEmpty!50671 () Bool)

(declare-fun mapDefault!50671 () ValueCell!15510)

(assert (=> b!1268957 (= condMapEmpty!50671 (= (arr!39882 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15510)) mapDefault!50671)))))

(declare-fun b!1268958 () Bool)

(declare-fun res!844583 () Bool)

(assert (=> b!1268958 (=> (not res!844583) (not e!723261))))

(declare-datatypes ((List!28581 0))(
  ( (Nil!28578) (Cons!28577 (h!29786 (_ BitVec 64)) (t!42117 List!28581)) )
))
(declare-fun arrayNoDuplicates!0 (array!82697 (_ BitVec 32) List!28581) Bool)

(assert (=> b!1268958 (= res!844583 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28578))))

(declare-fun res!844582 () Bool)

(assert (=> start!107074 (=> (not res!844582) (not e!723261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107074 (= res!844582 (validMask!0 mask!1730))))

(assert (=> start!107074 e!723261))

(declare-fun array_inv!30305 (array!82699) Bool)

(assert (=> start!107074 (and (array_inv!30305 _values!1134) e!723262)))

(assert (=> start!107074 true))

(declare-fun array_inv!30306 (array!82697) Bool)

(assert (=> start!107074 (array_inv!30306 _keys!1364)))

(assert (=> start!107074 tp_is_empty!32727))

(assert (=> start!107074 tp!96857))

(declare-fun b!1268959 () Bool)

(declare-fun res!844585 () Bool)

(assert (=> b!1268959 (=> (not res!844585) (not e!723261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82697 (_ BitVec 32)) Bool)

(assert (=> b!1268959 (= res!844585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268960 () Bool)

(assert (=> b!1268960 (= e!723263 tp_is_empty!32727)))

(declare-fun mapNonEmpty!50671 () Bool)

(declare-fun tp!96856 () Bool)

(assert (=> mapNonEmpty!50671 (= mapRes!50671 (and tp!96856 e!723259))))

(declare-fun mapRest!50671 () (Array (_ BitVec 32) ValueCell!15510))

(declare-fun mapKey!50671 () (_ BitVec 32))

(declare-fun mapValue!50671 () ValueCell!15510)

(assert (=> mapNonEmpty!50671 (= (arr!39882 _values!1134) (store mapRest!50671 mapKey!50671 mapValue!50671))))

(assert (= (and start!107074 res!844582) b!1268956))

(assert (= (and b!1268956 res!844584) b!1268959))

(assert (= (and b!1268959 res!844585) b!1268958))

(assert (= (and b!1268958 res!844583) b!1268954))

(assert (= (and b!1268954 res!844586) b!1268955))

(assert (= (and b!1268957 condMapEmpty!50671) mapIsEmpty!50671))

(assert (= (and b!1268957 (not condMapEmpty!50671)) mapNonEmpty!50671))

(get-info :version)

(assert (= (and mapNonEmpty!50671 ((_ is ValueCellFull!15510) mapValue!50671)) b!1268953))

(assert (= (and b!1268957 ((_ is ValueCellFull!15510) mapDefault!50671)) b!1268960))

(assert (= start!107074 b!1268957))

(declare-fun m!1167635 () Bool)

(assert (=> b!1268958 m!1167635))

(declare-fun m!1167637 () Bool)

(assert (=> b!1268959 m!1167637))

(declare-fun m!1167639 () Bool)

(assert (=> mapNonEmpty!50671 m!1167639))

(declare-fun m!1167641 () Bool)

(assert (=> b!1268955 m!1167641))

(declare-fun m!1167643 () Bool)

(assert (=> b!1268955 m!1167643))

(declare-fun m!1167645 () Bool)

(assert (=> b!1268955 m!1167645))

(declare-fun m!1167647 () Bool)

(assert (=> start!107074 m!1167647))

(declare-fun m!1167649 () Bool)

(assert (=> start!107074 m!1167649))

(declare-fun m!1167651 () Bool)

(assert (=> start!107074 m!1167651))

(check-sat b_and!45585 (not mapNonEmpty!50671) (not b_next!27543) (not start!107074) (not b!1268955) tp_is_empty!32727 (not b!1268958) (not b!1268959))
(check-sat b_and!45585 (not b_next!27543))
