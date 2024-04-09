; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81854 () Bool)

(assert start!81854)

(declare-fun b_free!18321 () Bool)

(declare-fun b_next!18321 () Bool)

(assert (=> start!81854 (= b_free!18321 (not b_next!18321))))

(declare-fun tp!63664 () Bool)

(declare-fun b_and!29825 () Bool)

(assert (=> start!81854 (= tp!63664 b_and!29825)))

(declare-fun b!954061 () Bool)

(declare-fun e!537545 () Bool)

(declare-fun tp_is_empty!20865 () Bool)

(assert (=> b!954061 (= e!537545 tp_is_empty!20865)))

(declare-fun b!954062 () Bool)

(declare-fun res!638997 () Bool)

(declare-fun e!537546 () Bool)

(assert (=> b!954062 (=> (not res!638997) (not e!537546))))

(declare-datatypes ((array!57859 0))(
  ( (array!57860 (arr!27805 (Array (_ BitVec 32) (_ BitVec 64))) (size!28285 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57859)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954062 (= res!638997 (validKeyInArray!0 (select (arr!27805 _keys!1441) i!735)))))

(declare-fun b!954063 () Bool)

(declare-fun res!639000 () Bool)

(assert (=> b!954063 (=> (not res!639000) (not e!537546))))

(assert (=> b!954063 (= res!639000 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28285 _keys!1441))))))

(declare-fun mapNonEmpty!33259 () Bool)

(declare-fun mapRes!33259 () Bool)

(declare-fun tp!63663 () Bool)

(declare-fun e!537544 () Bool)

(assert (=> mapNonEmpty!33259 (= mapRes!33259 (and tp!63663 e!537544))))

(declare-datatypes ((V!32803 0))(
  ( (V!32804 (val!10483 Int)) )
))
(declare-datatypes ((ValueCell!9951 0))(
  ( (ValueCellFull!9951 (v!13038 V!32803)) (EmptyCell!9951) )
))
(declare-fun mapValue!33259 () ValueCell!9951)

(declare-fun mapRest!33259 () (Array (_ BitVec 32) ValueCell!9951))

(declare-datatypes ((array!57861 0))(
  ( (array!57862 (arr!27806 (Array (_ BitVec 32) ValueCell!9951)) (size!28286 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57861)

(declare-fun mapKey!33259 () (_ BitVec 32))

(assert (=> mapNonEmpty!33259 (= (arr!27806 _values!1197) (store mapRest!33259 mapKey!33259 mapValue!33259))))

(declare-fun b!954064 () Bool)

(assert (=> b!954064 (= e!537544 tp_is_empty!20865)))

(declare-fun b!954065 () Bool)

(declare-fun e!537543 () Bool)

(assert (=> b!954065 (= e!537543 (and e!537545 mapRes!33259))))

(declare-fun condMapEmpty!33259 () Bool)

(declare-fun mapDefault!33259 () ValueCell!9951)

(assert (=> b!954065 (= condMapEmpty!33259 (= (arr!27806 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9951)) mapDefault!33259)))))

(declare-fun b!954066 () Bool)

(declare-fun res!638998 () Bool)

(assert (=> b!954066 (=> (not res!638998) (not e!537546))))

(declare-datatypes ((List!19519 0))(
  ( (Nil!19516) (Cons!19515 (h!20677 (_ BitVec 64)) (t!27888 List!19519)) )
))
(declare-fun arrayNoDuplicates!0 (array!57859 (_ BitVec 32) List!19519) Bool)

(assert (=> b!954066 (= res!638998 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19516))))

(declare-fun b!954067 () Bool)

(declare-fun res!639001 () Bool)

(assert (=> b!954067 (=> (not res!639001) (not e!537546))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954067 (= res!639001 (and (= (size!28286 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28285 _keys!1441) (size!28286 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954068 () Bool)

(declare-fun res!638999 () Bool)

(assert (=> b!954068 (=> (not res!638999) (not e!537546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57859 (_ BitVec 32)) Bool)

(assert (=> b!954068 (= res!638999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954069 () Bool)

(assert (=> b!954069 (= e!537546 false)))

(declare-fun zeroValue!1139 () V!32803)

(declare-fun lt!429820 () Bool)

(declare-fun minValue!1139 () V!32803)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13702 0))(
  ( (tuple2!13703 (_1!6861 (_ BitVec 64)) (_2!6861 V!32803)) )
))
(declare-datatypes ((List!19520 0))(
  ( (Nil!19517) (Cons!19516 (h!20678 tuple2!13702) (t!27889 List!19520)) )
))
(declare-datatypes ((ListLongMap!12413 0))(
  ( (ListLongMap!12414 (toList!6222 List!19520)) )
))
(declare-fun contains!5272 (ListLongMap!12413 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3407 (array!57859 array!57861 (_ BitVec 32) (_ BitVec 32) V!32803 V!32803 (_ BitVec 32) Int) ListLongMap!12413)

(assert (=> b!954069 (= lt!429820 (contains!5272 (getCurrentListMap!3407 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27805 _keys!1441) i!735)))))

(declare-fun res!638996 () Bool)

(assert (=> start!81854 (=> (not res!638996) (not e!537546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81854 (= res!638996 (validMask!0 mask!1823))))

(assert (=> start!81854 e!537546))

(assert (=> start!81854 true))

(assert (=> start!81854 tp_is_empty!20865))

(declare-fun array_inv!21529 (array!57859) Bool)

(assert (=> start!81854 (array_inv!21529 _keys!1441)))

(declare-fun array_inv!21530 (array!57861) Bool)

(assert (=> start!81854 (and (array_inv!21530 _values!1197) e!537543)))

(assert (=> start!81854 tp!63664))

(declare-fun mapIsEmpty!33259 () Bool)

(assert (=> mapIsEmpty!33259 mapRes!33259))

(assert (= (and start!81854 res!638996) b!954067))

(assert (= (and b!954067 res!639001) b!954068))

(assert (= (and b!954068 res!638999) b!954066))

(assert (= (and b!954066 res!638998) b!954063))

(assert (= (and b!954063 res!639000) b!954062))

(assert (= (and b!954062 res!638997) b!954069))

(assert (= (and b!954065 condMapEmpty!33259) mapIsEmpty!33259))

(assert (= (and b!954065 (not condMapEmpty!33259)) mapNonEmpty!33259))

(get-info :version)

(assert (= (and mapNonEmpty!33259 ((_ is ValueCellFull!9951) mapValue!33259)) b!954064))

(assert (= (and b!954065 ((_ is ValueCellFull!9951) mapDefault!33259)) b!954061))

(assert (= start!81854 b!954065))

(declare-fun m!885959 () Bool)

(assert (=> start!81854 m!885959))

(declare-fun m!885961 () Bool)

(assert (=> start!81854 m!885961))

(declare-fun m!885963 () Bool)

(assert (=> start!81854 m!885963))

(declare-fun m!885965 () Bool)

(assert (=> b!954066 m!885965))

(declare-fun m!885967 () Bool)

(assert (=> b!954069 m!885967))

(declare-fun m!885969 () Bool)

(assert (=> b!954069 m!885969))

(assert (=> b!954069 m!885967))

(assert (=> b!954069 m!885969))

(declare-fun m!885971 () Bool)

(assert (=> b!954069 m!885971))

(declare-fun m!885973 () Bool)

(assert (=> mapNonEmpty!33259 m!885973))

(assert (=> b!954062 m!885969))

(assert (=> b!954062 m!885969))

(declare-fun m!885975 () Bool)

(assert (=> b!954062 m!885975))

(declare-fun m!885977 () Bool)

(assert (=> b!954068 m!885977))

(check-sat (not mapNonEmpty!33259) (not b!954066) (not b!954068) (not b!954062) (not start!81854) (not b!954069) tp_is_empty!20865 (not b_next!18321) b_and!29825)
(check-sat b_and!29825 (not b_next!18321))
