; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81902 () Bool)

(assert start!81902)

(declare-fun b_free!18369 () Bool)

(declare-fun b_next!18369 () Bool)

(assert (=> start!81902 (= b_free!18369 (not b_next!18369))))

(declare-fun tp!63808 () Bool)

(declare-fun b_and!29873 () Bool)

(assert (=> start!81902 (= tp!63808 b_and!29873)))

(declare-fun b!954709 () Bool)

(declare-fun e!537904 () Bool)

(declare-fun e!537905 () Bool)

(declare-fun mapRes!33331 () Bool)

(assert (=> b!954709 (= e!537904 (and e!537905 mapRes!33331))))

(declare-fun condMapEmpty!33331 () Bool)

(declare-datatypes ((V!32867 0))(
  ( (V!32868 (val!10507 Int)) )
))
(declare-datatypes ((ValueCell!9975 0))(
  ( (ValueCellFull!9975 (v!13062 V!32867)) (EmptyCell!9975) )
))
(declare-datatypes ((array!57951 0))(
  ( (array!57952 (arr!27851 (Array (_ BitVec 32) ValueCell!9975)) (size!28331 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57951)

(declare-fun mapDefault!33331 () ValueCell!9975)

(assert (=> b!954709 (= condMapEmpty!33331 (= (arr!27851 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9975)) mapDefault!33331)))))

(declare-fun mapIsEmpty!33331 () Bool)

(assert (=> mapIsEmpty!33331 mapRes!33331))

(declare-fun b!954710 () Bool)

(declare-fun res!639433 () Bool)

(declare-fun e!537903 () Bool)

(assert (=> b!954710 (=> (not res!639433) (not e!537903))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57953 0))(
  ( (array!57954 (arr!27852 (Array (_ BitVec 32) (_ BitVec 64))) (size!28332 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57953)

(assert (=> b!954710 (= res!639433 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28332 _keys!1441))))))

(declare-fun b!954711 () Bool)

(declare-fun res!639430 () Bool)

(assert (=> b!954711 (=> (not res!639430) (not e!537903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954711 (= res!639430 (validKeyInArray!0 (select (arr!27852 _keys!1441) i!735)))))

(declare-fun b!954712 () Bool)

(declare-fun tp_is_empty!20913 () Bool)

(assert (=> b!954712 (= e!537905 tp_is_empty!20913)))

(declare-fun b!954713 () Bool)

(declare-fun res!639428 () Bool)

(assert (=> b!954713 (=> (not res!639428) (not e!537903))))

(declare-datatypes ((List!19553 0))(
  ( (Nil!19550) (Cons!19549 (h!20711 (_ BitVec 64)) (t!27922 List!19553)) )
))
(declare-fun arrayNoDuplicates!0 (array!57953 (_ BitVec 32) List!19553) Bool)

(assert (=> b!954713 (= res!639428 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19550))))

(declare-fun b!954714 () Bool)

(assert (=> b!954714 (= e!537903 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32867)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun lt!429892 () Bool)

(declare-fun minValue!1139 () V!32867)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13736 0))(
  ( (tuple2!13737 (_1!6878 (_ BitVec 64)) (_2!6878 V!32867)) )
))
(declare-datatypes ((List!19554 0))(
  ( (Nil!19551) (Cons!19550 (h!20712 tuple2!13736) (t!27923 List!19554)) )
))
(declare-datatypes ((ListLongMap!12447 0))(
  ( (ListLongMap!12448 (toList!6239 List!19554)) )
))
(declare-fun contains!5289 (ListLongMap!12447 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3424 (array!57953 array!57951 (_ BitVec 32) (_ BitVec 32) V!32867 V!32867 (_ BitVec 32) Int) ListLongMap!12447)

(assert (=> b!954714 (= lt!429892 (contains!5289 (getCurrentListMap!3424 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27852 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33331 () Bool)

(declare-fun tp!63807 () Bool)

(declare-fun e!537902 () Bool)

(assert (=> mapNonEmpty!33331 (= mapRes!33331 (and tp!63807 e!537902))))

(declare-fun mapKey!33331 () (_ BitVec 32))

(declare-fun mapRest!33331 () (Array (_ BitVec 32) ValueCell!9975))

(declare-fun mapValue!33331 () ValueCell!9975)

(assert (=> mapNonEmpty!33331 (= (arr!27851 _values!1197) (store mapRest!33331 mapKey!33331 mapValue!33331))))

(declare-fun res!639429 () Bool)

(assert (=> start!81902 (=> (not res!639429) (not e!537903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81902 (= res!639429 (validMask!0 mask!1823))))

(assert (=> start!81902 e!537903))

(assert (=> start!81902 true))

(assert (=> start!81902 tp_is_empty!20913))

(declare-fun array_inv!21565 (array!57953) Bool)

(assert (=> start!81902 (array_inv!21565 _keys!1441)))

(declare-fun array_inv!21566 (array!57951) Bool)

(assert (=> start!81902 (and (array_inv!21566 _values!1197) e!537904)))

(assert (=> start!81902 tp!63808))

(declare-fun b!954715 () Bool)

(declare-fun res!639432 () Bool)

(assert (=> b!954715 (=> (not res!639432) (not e!537903))))

(assert (=> b!954715 (= res!639432 (and (= (size!28331 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28332 _keys!1441) (size!28331 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954716 () Bool)

(assert (=> b!954716 (= e!537902 tp_is_empty!20913)))

(declare-fun b!954717 () Bool)

(declare-fun res!639431 () Bool)

(assert (=> b!954717 (=> (not res!639431) (not e!537903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57953 (_ BitVec 32)) Bool)

(assert (=> b!954717 (= res!639431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(assert (= (and start!81902 res!639429) b!954715))

(assert (= (and b!954715 res!639432) b!954717))

(assert (= (and b!954717 res!639431) b!954713))

(assert (= (and b!954713 res!639428) b!954710))

(assert (= (and b!954710 res!639433) b!954711))

(assert (= (and b!954711 res!639430) b!954714))

(assert (= (and b!954709 condMapEmpty!33331) mapIsEmpty!33331))

(assert (= (and b!954709 (not condMapEmpty!33331)) mapNonEmpty!33331))

(get-info :version)

(assert (= (and mapNonEmpty!33331 ((_ is ValueCellFull!9975) mapValue!33331)) b!954716))

(assert (= (and b!954709 ((_ is ValueCellFull!9975) mapDefault!33331)) b!954712))

(assert (= start!81902 b!954709))

(declare-fun m!886439 () Bool)

(assert (=> b!954714 m!886439))

(declare-fun m!886441 () Bool)

(assert (=> b!954714 m!886441))

(assert (=> b!954714 m!886439))

(assert (=> b!954714 m!886441))

(declare-fun m!886443 () Bool)

(assert (=> b!954714 m!886443))

(declare-fun m!886445 () Bool)

(assert (=> start!81902 m!886445))

(declare-fun m!886447 () Bool)

(assert (=> start!81902 m!886447))

(declare-fun m!886449 () Bool)

(assert (=> start!81902 m!886449))

(declare-fun m!886451 () Bool)

(assert (=> mapNonEmpty!33331 m!886451))

(declare-fun m!886453 () Bool)

(assert (=> b!954713 m!886453))

(declare-fun m!886455 () Bool)

(assert (=> b!954717 m!886455))

(assert (=> b!954711 m!886441))

(assert (=> b!954711 m!886441))

(declare-fun m!886457 () Bool)

(assert (=> b!954711 m!886457))

(check-sat b_and!29873 (not b!954713) (not b!954711) (not start!81902) (not mapNonEmpty!33331) (not b_next!18369) tp_is_empty!20913 (not b!954714) (not b!954717))
(check-sat b_and!29873 (not b_next!18369))
