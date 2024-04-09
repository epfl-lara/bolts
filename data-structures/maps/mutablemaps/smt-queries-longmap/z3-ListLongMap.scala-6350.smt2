; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81866 () Bool)

(assert start!81866)

(declare-fun b_free!18333 () Bool)

(declare-fun b_next!18333 () Bool)

(assert (=> start!81866 (= b_free!18333 (not b_next!18333))))

(declare-fun tp!63700 () Bool)

(declare-fun b_and!29837 () Bool)

(assert (=> start!81866 (= tp!63700 b_and!29837)))

(declare-fun mapNonEmpty!33277 () Bool)

(declare-fun mapRes!33277 () Bool)

(declare-fun tp!63699 () Bool)

(declare-fun e!537636 () Bool)

(assert (=> mapNonEmpty!33277 (= mapRes!33277 (and tp!63699 e!537636))))

(declare-datatypes ((V!32819 0))(
  ( (V!32820 (val!10489 Int)) )
))
(declare-datatypes ((ValueCell!9957 0))(
  ( (ValueCellFull!9957 (v!13044 V!32819)) (EmptyCell!9957) )
))
(declare-fun mapRest!33277 () (Array (_ BitVec 32) ValueCell!9957))

(declare-datatypes ((array!57879 0))(
  ( (array!57880 (arr!27815 (Array (_ BitVec 32) ValueCell!9957)) (size!28295 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57879)

(declare-fun mapKey!33277 () (_ BitVec 32))

(declare-fun mapValue!33277 () ValueCell!9957)

(assert (=> mapNonEmpty!33277 (= (arr!27815 _values!1197) (store mapRest!33277 mapKey!33277 mapValue!33277))))

(declare-fun b!954224 () Bool)

(declare-fun res!639105 () Bool)

(declare-fun e!537632 () Bool)

(assert (=> b!954224 (=> (not res!639105) (not e!537632))))

(declare-datatypes ((array!57881 0))(
  ( (array!57882 (arr!27816 (Array (_ BitVec 32) (_ BitVec 64))) (size!28296 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57881)

(declare-datatypes ((List!19525 0))(
  ( (Nil!19522) (Cons!19521 (h!20683 (_ BitVec 64)) (t!27894 List!19525)) )
))
(declare-fun arrayNoDuplicates!0 (array!57881 (_ BitVec 32) List!19525) Bool)

(assert (=> b!954224 (= res!639105 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19522))))

(declare-fun mapIsEmpty!33277 () Bool)

(assert (=> mapIsEmpty!33277 mapRes!33277))

(declare-fun b!954225 () Bool)

(declare-fun res!639108 () Bool)

(assert (=> b!954225 (=> (not res!639108) (not e!537632))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954225 (= res!639108 (validKeyInArray!0 (select (arr!27816 _keys!1441) i!735)))))

(declare-fun b!954226 () Bool)

(declare-fun res!639106 () Bool)

(assert (=> b!954226 (=> (not res!639106) (not e!537632))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954226 (= res!639106 (and (= (size!28295 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28296 _keys!1441) (size!28295 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954227 () Bool)

(declare-fun e!537635 () Bool)

(declare-fun e!537633 () Bool)

(assert (=> b!954227 (= e!537635 (and e!537633 mapRes!33277))))

(declare-fun condMapEmpty!33277 () Bool)

(declare-fun mapDefault!33277 () ValueCell!9957)

(assert (=> b!954227 (= condMapEmpty!33277 (= (arr!27815 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9957)) mapDefault!33277)))))

(declare-fun b!954228 () Bool)

(declare-fun res!639107 () Bool)

(assert (=> b!954228 (=> (not res!639107) (not e!537632))))

(assert (=> b!954228 (= res!639107 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28296 _keys!1441))))))

(declare-fun b!954223 () Bool)

(assert (=> b!954223 (= e!537632 false)))

(declare-fun zeroValue!1139 () V!32819)

(declare-fun lt!429838 () Bool)

(declare-fun minValue!1139 () V!32819)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13708 0))(
  ( (tuple2!13709 (_1!6864 (_ BitVec 64)) (_2!6864 V!32819)) )
))
(declare-datatypes ((List!19526 0))(
  ( (Nil!19523) (Cons!19522 (h!20684 tuple2!13708) (t!27895 List!19526)) )
))
(declare-datatypes ((ListLongMap!12419 0))(
  ( (ListLongMap!12420 (toList!6225 List!19526)) )
))
(declare-fun contains!5275 (ListLongMap!12419 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3410 (array!57881 array!57879 (_ BitVec 32) (_ BitVec 32) V!32819 V!32819 (_ BitVec 32) Int) ListLongMap!12419)

(assert (=> b!954223 (= lt!429838 (contains!5275 (getCurrentListMap!3410 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27816 _keys!1441) i!735)))))

(declare-fun res!639109 () Bool)

(assert (=> start!81866 (=> (not res!639109) (not e!537632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81866 (= res!639109 (validMask!0 mask!1823))))

(assert (=> start!81866 e!537632))

(assert (=> start!81866 true))

(declare-fun tp_is_empty!20877 () Bool)

(assert (=> start!81866 tp_is_empty!20877))

(declare-fun array_inv!21535 (array!57881) Bool)

(assert (=> start!81866 (array_inv!21535 _keys!1441)))

(declare-fun array_inv!21536 (array!57879) Bool)

(assert (=> start!81866 (and (array_inv!21536 _values!1197) e!537635)))

(assert (=> start!81866 tp!63700))

(declare-fun b!954229 () Bool)

(assert (=> b!954229 (= e!537636 tp_is_empty!20877)))

(declare-fun b!954230 () Bool)

(declare-fun res!639104 () Bool)

(assert (=> b!954230 (=> (not res!639104) (not e!537632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57881 (_ BitVec 32)) Bool)

(assert (=> b!954230 (= res!639104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954231 () Bool)

(assert (=> b!954231 (= e!537633 tp_is_empty!20877)))

(assert (= (and start!81866 res!639109) b!954226))

(assert (= (and b!954226 res!639106) b!954230))

(assert (= (and b!954230 res!639104) b!954224))

(assert (= (and b!954224 res!639105) b!954228))

(assert (= (and b!954228 res!639107) b!954225))

(assert (= (and b!954225 res!639108) b!954223))

(assert (= (and b!954227 condMapEmpty!33277) mapIsEmpty!33277))

(assert (= (and b!954227 (not condMapEmpty!33277)) mapNonEmpty!33277))

(get-info :version)

(assert (= (and mapNonEmpty!33277 ((_ is ValueCellFull!9957) mapValue!33277)) b!954229))

(assert (= (and b!954227 ((_ is ValueCellFull!9957) mapDefault!33277)) b!954231))

(assert (= start!81866 b!954227))

(declare-fun m!886079 () Bool)

(assert (=> b!954223 m!886079))

(declare-fun m!886081 () Bool)

(assert (=> b!954223 m!886081))

(assert (=> b!954223 m!886079))

(assert (=> b!954223 m!886081))

(declare-fun m!886083 () Bool)

(assert (=> b!954223 m!886083))

(declare-fun m!886085 () Bool)

(assert (=> start!81866 m!886085))

(declare-fun m!886087 () Bool)

(assert (=> start!81866 m!886087))

(declare-fun m!886089 () Bool)

(assert (=> start!81866 m!886089))

(declare-fun m!886091 () Bool)

(assert (=> b!954230 m!886091))

(declare-fun m!886093 () Bool)

(assert (=> b!954224 m!886093))

(declare-fun m!886095 () Bool)

(assert (=> mapNonEmpty!33277 m!886095))

(assert (=> b!954225 m!886081))

(assert (=> b!954225 m!886081))

(declare-fun m!886097 () Bool)

(assert (=> b!954225 m!886097))

(check-sat b_and!29837 tp_is_empty!20877 (not b!954230) (not b!954224) (not b_next!18333) (not b!954225) (not b!954223) (not start!81866) (not mapNonEmpty!33277))
(check-sat b_and!29837 (not b_next!18333))
