; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133742 () Bool)

(assert start!133742)

(declare-fun b_free!32073 () Bool)

(declare-fun b_next!32073 () Bool)

(assert (=> start!133742 (= b_free!32073 (not b_next!32073))))

(declare-fun tp!113424 () Bool)

(declare-fun b_and!51653 () Bool)

(assert (=> start!133742 (= tp!113424 b_and!51653)))

(declare-fun b!1563238 () Bool)

(declare-fun res!1068806 () Bool)

(declare-fun e!871261 () Bool)

(assert (=> b!1563238 (=> (not res!1068806) (not e!871261))))

(declare-datatypes ((array!104247 0))(
  ( (array!104248 (arr!50311 (Array (_ BitVec 32) (_ BitVec 64))) (size!50862 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104247)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104247 (_ BitVec 32)) Bool)

(assert (=> b!1563238 (= res!1068806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563239 () Bool)

(declare-fun e!871264 () Bool)

(declare-fun e!871262 () Bool)

(declare-fun mapRes!59565 () Bool)

(assert (=> b!1563239 (= e!871264 (and e!871262 mapRes!59565))))

(declare-fun condMapEmpty!59565 () Bool)

(declare-datatypes ((V!59931 0))(
  ( (V!59932 (val!19480 Int)) )
))
(declare-datatypes ((ValueCell!18366 0))(
  ( (ValueCellFull!18366 (v!22229 V!59931)) (EmptyCell!18366) )
))
(declare-datatypes ((array!104249 0))(
  ( (array!104250 (arr!50312 (Array (_ BitVec 32) ValueCell!18366)) (size!50863 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104249)

(declare-fun mapDefault!59565 () ValueCell!18366)

(assert (=> b!1563239 (= condMapEmpty!59565 (= (arr!50312 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18366)) mapDefault!59565)))))

(declare-fun b!1563240 () Bool)

(declare-fun res!1068805 () Bool)

(assert (=> b!1563240 (=> (not res!1068805) (not e!871261))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563240 (= res!1068805 (and (= (size!50863 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50862 _keys!637) (size!50863 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59565 () Bool)

(assert (=> mapIsEmpty!59565 mapRes!59565))

(declare-fun b!1563241 () Bool)

(declare-fun res!1068807 () Bool)

(assert (=> b!1563241 (=> (not res!1068807) (not e!871261))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563241 (= res!1068807 (not (validKeyInArray!0 (select (arr!50311 _keys!637) from!782))))))

(declare-fun b!1563242 () Bool)

(declare-fun e!871263 () Bool)

(assert (=> b!1563242 (= e!871263 false)))

(declare-fun lt!671795 () Bool)

(declare-datatypes ((tuple2!25288 0))(
  ( (tuple2!25289 (_1!12654 (_ BitVec 64)) (_2!12654 V!59931)) )
))
(declare-datatypes ((List!36677 0))(
  ( (Nil!36674) (Cons!36673 (h!38120 tuple2!25288) (t!51531 List!36677)) )
))
(declare-datatypes ((ListLongMap!22735 0))(
  ( (ListLongMap!22736 (toList!11383 List!36677)) )
))
(declare-fun lt!671796 () ListLongMap!22735)

(declare-fun contains!10303 (ListLongMap!22735 (_ BitVec 64)) Bool)

(assert (=> b!1563242 (= lt!671795 (contains!10303 lt!671796 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563243 () Bool)

(assert (=> b!1563243 (= e!871261 e!871263)))

(declare-fun res!1068803 () Bool)

(assert (=> b!1563243 (=> (not res!1068803) (not e!871263))))

(assert (=> b!1563243 (= res!1068803 (not (contains!10303 lt!671796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59931)

(declare-fun minValue!453 () V!59931)

(declare-fun getCurrentListMapNoExtraKeys!6742 (array!104247 array!104249 (_ BitVec 32) (_ BitVec 32) V!59931 V!59931 (_ BitVec 32) Int) ListLongMap!22735)

(assert (=> b!1563243 (= lt!671796 (getCurrentListMapNoExtraKeys!6742 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563244 () Bool)

(declare-fun res!1068808 () Bool)

(assert (=> b!1563244 (=> (not res!1068808) (not e!871261))))

(declare-datatypes ((List!36678 0))(
  ( (Nil!36675) (Cons!36674 (h!38121 (_ BitVec 64)) (t!51532 List!36678)) )
))
(declare-fun arrayNoDuplicates!0 (array!104247 (_ BitVec 32) List!36678) Bool)

(assert (=> b!1563244 (= res!1068808 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36675))))

(declare-fun b!1563245 () Bool)

(declare-fun e!871260 () Bool)

(declare-fun tp_is_empty!38793 () Bool)

(assert (=> b!1563245 (= e!871260 tp_is_empty!38793)))

(declare-fun b!1563246 () Bool)

(declare-fun res!1068809 () Bool)

(assert (=> b!1563246 (=> (not res!1068809) (not e!871261))))

(assert (=> b!1563246 (= res!1068809 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50862 _keys!637)) (bvslt from!782 (size!50862 _keys!637))))))

(declare-fun res!1068804 () Bool)

(assert (=> start!133742 (=> (not res!1068804) (not e!871261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133742 (= res!1068804 (validMask!0 mask!947))))

(assert (=> start!133742 e!871261))

(assert (=> start!133742 tp!113424))

(assert (=> start!133742 tp_is_empty!38793))

(assert (=> start!133742 true))

(declare-fun array_inv!39029 (array!104247) Bool)

(assert (=> start!133742 (array_inv!39029 _keys!637)))

(declare-fun array_inv!39030 (array!104249) Bool)

(assert (=> start!133742 (and (array_inv!39030 _values!487) e!871264)))

(declare-fun mapNonEmpty!59565 () Bool)

(declare-fun tp!113425 () Bool)

(assert (=> mapNonEmpty!59565 (= mapRes!59565 (and tp!113425 e!871260))))

(declare-fun mapKey!59565 () (_ BitVec 32))

(declare-fun mapRest!59565 () (Array (_ BitVec 32) ValueCell!18366))

(declare-fun mapValue!59565 () ValueCell!18366)

(assert (=> mapNonEmpty!59565 (= (arr!50312 _values!487) (store mapRest!59565 mapKey!59565 mapValue!59565))))

(declare-fun b!1563247 () Bool)

(assert (=> b!1563247 (= e!871262 tp_is_empty!38793)))

(assert (= (and start!133742 res!1068804) b!1563240))

(assert (= (and b!1563240 res!1068805) b!1563238))

(assert (= (and b!1563238 res!1068806) b!1563244))

(assert (= (and b!1563244 res!1068808) b!1563246))

(assert (= (and b!1563246 res!1068809) b!1563241))

(assert (= (and b!1563241 res!1068807) b!1563243))

(assert (= (and b!1563243 res!1068803) b!1563242))

(assert (= (and b!1563239 condMapEmpty!59565) mapIsEmpty!59565))

(assert (= (and b!1563239 (not condMapEmpty!59565)) mapNonEmpty!59565))

(get-info :version)

(assert (= (and mapNonEmpty!59565 ((_ is ValueCellFull!18366) mapValue!59565)) b!1563245))

(assert (= (and b!1563239 ((_ is ValueCellFull!18366) mapDefault!59565)) b!1563247))

(assert (= start!133742 b!1563239))

(declare-fun m!1438829 () Bool)

(assert (=> b!1563243 m!1438829))

(declare-fun m!1438831 () Bool)

(assert (=> b!1563243 m!1438831))

(declare-fun m!1438833 () Bool)

(assert (=> b!1563238 m!1438833))

(declare-fun m!1438835 () Bool)

(assert (=> start!133742 m!1438835))

(declare-fun m!1438837 () Bool)

(assert (=> start!133742 m!1438837))

(declare-fun m!1438839 () Bool)

(assert (=> start!133742 m!1438839))

(declare-fun m!1438841 () Bool)

(assert (=> mapNonEmpty!59565 m!1438841))

(declare-fun m!1438843 () Bool)

(assert (=> b!1563242 m!1438843))

(declare-fun m!1438845 () Bool)

(assert (=> b!1563244 m!1438845))

(declare-fun m!1438847 () Bool)

(assert (=> b!1563241 m!1438847))

(assert (=> b!1563241 m!1438847))

(declare-fun m!1438849 () Bool)

(assert (=> b!1563241 m!1438849))

(check-sat (not b!1563243) (not b!1563238) b_and!51653 (not b!1563241) (not b!1563244) (not mapNonEmpty!59565) (not start!133742) tp_is_empty!38793 (not b!1563242) (not b_next!32073))
(check-sat b_and!51653 (not b_next!32073))
