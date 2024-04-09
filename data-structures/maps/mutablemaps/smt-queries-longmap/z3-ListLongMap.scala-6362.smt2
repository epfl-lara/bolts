; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81938 () Bool)

(assert start!81938)

(declare-fun b_free!18405 () Bool)

(declare-fun b_next!18405 () Bool)

(assert (=> start!81938 (= b_free!18405 (not b_next!18405))))

(declare-fun tp!63915 () Bool)

(declare-fun b_and!29909 () Bool)

(assert (=> start!81938 (= tp!63915 b_and!29909)))

(declare-fun res!639790 () Bool)

(declare-fun e!538176 () Bool)

(assert (=> start!81938 (=> (not res!639790) (not e!538176))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81938 (= res!639790 (validMask!0 mask!1823))))

(assert (=> start!81938 e!538176))

(assert (=> start!81938 true))

(declare-fun tp_is_empty!20949 () Bool)

(assert (=> start!81938 tp_is_empty!20949))

(declare-datatypes ((array!58023 0))(
  ( (array!58024 (arr!27887 (Array (_ BitVec 32) (_ BitVec 64))) (size!28367 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58023)

(declare-fun array_inv!21591 (array!58023) Bool)

(assert (=> start!81938 (array_inv!21591 _keys!1441)))

(declare-datatypes ((V!32915 0))(
  ( (V!32916 (val!10525 Int)) )
))
(declare-datatypes ((ValueCell!9993 0))(
  ( (ValueCellFull!9993 (v!13080 V!32915)) (EmptyCell!9993) )
))
(declare-datatypes ((array!58025 0))(
  ( (array!58026 (arr!27888 (Array (_ BitVec 32) ValueCell!9993)) (size!28368 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58025)

(declare-fun e!538172 () Bool)

(declare-fun array_inv!21592 (array!58025) Bool)

(assert (=> start!81938 (and (array_inv!21592 _values!1197) e!538172)))

(assert (=> start!81938 tp!63915))

(declare-fun b!955227 () Bool)

(declare-fun res!639788 () Bool)

(assert (=> b!955227 (=> (not res!639788) (not e!538176))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955227 (= res!639788 (and (= (size!28368 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28367 _keys!1441) (size!28368 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33385 () Bool)

(declare-fun mapRes!33385 () Bool)

(assert (=> mapIsEmpty!33385 mapRes!33385))

(declare-fun b!955228 () Bool)

(declare-fun e!538173 () Bool)

(assert (=> b!955228 (= e!538173 tp_is_empty!20949)))

(declare-fun b!955229 () Bool)

(declare-fun res!639787 () Bool)

(assert (=> b!955229 (=> (not res!639787) (not e!538176))))

(declare-fun zeroValue!1139 () V!32915)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32915)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13760 0))(
  ( (tuple2!13761 (_1!6890 (_ BitVec 64)) (_2!6890 V!32915)) )
))
(declare-datatypes ((List!19578 0))(
  ( (Nil!19575) (Cons!19574 (h!20736 tuple2!13760) (t!27947 List!19578)) )
))
(declare-datatypes ((ListLongMap!12471 0))(
  ( (ListLongMap!12472 (toList!6251 List!19578)) )
))
(declare-fun contains!5301 (ListLongMap!12471 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3436 (array!58023 array!58025 (_ BitVec 32) (_ BitVec 32) V!32915 V!32915 (_ BitVec 32) Int) ListLongMap!12471)

(assert (=> b!955229 (= res!639787 (contains!5301 (getCurrentListMap!3436 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27887 _keys!1441) i!735)))))

(declare-fun b!955230 () Bool)

(declare-fun e!538174 () Bool)

(assert (=> b!955230 (= e!538174 tp_is_empty!20949)))

(declare-fun b!955231 () Bool)

(assert (=> b!955231 (= e!538172 (and e!538173 mapRes!33385))))

(declare-fun condMapEmpty!33385 () Bool)

(declare-fun mapDefault!33385 () ValueCell!9993)

(assert (=> b!955231 (= condMapEmpty!33385 (= (arr!27888 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9993)) mapDefault!33385)))))

(declare-fun b!955232 () Bool)

(declare-fun res!639784 () Bool)

(assert (=> b!955232 (=> (not res!639784) (not e!538176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58023 (_ BitVec 32)) Bool)

(assert (=> b!955232 (= res!639784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955233 () Bool)

(declare-fun res!639785 () Bool)

(assert (=> b!955233 (=> (not res!639785) (not e!538176))))

(declare-datatypes ((List!19579 0))(
  ( (Nil!19576) (Cons!19575 (h!20737 (_ BitVec 64)) (t!27948 List!19579)) )
))
(declare-fun arrayNoDuplicates!0 (array!58023 (_ BitVec 32) List!19579) Bool)

(assert (=> b!955233 (= res!639785 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19576))))

(declare-fun mapNonEmpty!33385 () Bool)

(declare-fun tp!63916 () Bool)

(assert (=> mapNonEmpty!33385 (= mapRes!33385 (and tp!63916 e!538174))))

(declare-fun mapRest!33385 () (Array (_ BitVec 32) ValueCell!9993))

(declare-fun mapValue!33385 () ValueCell!9993)

(declare-fun mapKey!33385 () (_ BitVec 32))

(assert (=> mapNonEmpty!33385 (= (arr!27888 _values!1197) (store mapRest!33385 mapKey!33385 mapValue!33385))))

(declare-fun b!955234 () Bool)

(assert (=> b!955234 (= e!538176 (not true))))

(assert (=> b!955234 (contains!5301 (getCurrentListMap!3436 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27887 _keys!1441) i!735))))

(declare-datatypes ((Unit!32103 0))(
  ( (Unit!32104) )
))
(declare-fun lt!429946 () Unit!32103)

(declare-fun lemmaInListMapFromThenFromZero!8 (array!58023 array!58025 (_ BitVec 32) (_ BitVec 32) V!32915 V!32915 (_ BitVec 32) (_ BitVec 32) Int) Unit!32103)

(assert (=> b!955234 (= lt!429946 (lemmaInListMapFromThenFromZero!8 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955235 () Bool)

(declare-fun res!639786 () Bool)

(assert (=> b!955235 (=> (not res!639786) (not e!538176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955235 (= res!639786 (validKeyInArray!0 (select (arr!27887 _keys!1441) i!735)))))

(declare-fun b!955236 () Bool)

(declare-fun res!639789 () Bool)

(assert (=> b!955236 (=> (not res!639789) (not e!538176))))

(assert (=> b!955236 (= res!639789 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28367 _keys!1441))))))

(assert (= (and start!81938 res!639790) b!955227))

(assert (= (and b!955227 res!639788) b!955232))

(assert (= (and b!955232 res!639784) b!955233))

(assert (= (and b!955233 res!639785) b!955236))

(assert (= (and b!955236 res!639789) b!955235))

(assert (= (and b!955235 res!639786) b!955229))

(assert (= (and b!955229 res!639787) b!955234))

(assert (= (and b!955231 condMapEmpty!33385) mapIsEmpty!33385))

(assert (= (and b!955231 (not condMapEmpty!33385)) mapNonEmpty!33385))

(get-info :version)

(assert (= (and mapNonEmpty!33385 ((_ is ValueCellFull!9993) mapValue!33385)) b!955230))

(assert (= (and b!955231 ((_ is ValueCellFull!9993) mapDefault!33385)) b!955228))

(assert (= start!81938 b!955231))

(declare-fun m!886859 () Bool)

(assert (=> start!81938 m!886859))

(declare-fun m!886861 () Bool)

(assert (=> start!81938 m!886861))

(declare-fun m!886863 () Bool)

(assert (=> start!81938 m!886863))

(declare-fun m!886865 () Bool)

(assert (=> b!955233 m!886865))

(declare-fun m!886867 () Bool)

(assert (=> b!955234 m!886867))

(declare-fun m!886869 () Bool)

(assert (=> b!955234 m!886869))

(assert (=> b!955234 m!886867))

(assert (=> b!955234 m!886869))

(declare-fun m!886871 () Bool)

(assert (=> b!955234 m!886871))

(declare-fun m!886873 () Bool)

(assert (=> b!955234 m!886873))

(assert (=> b!955235 m!886869))

(assert (=> b!955235 m!886869))

(declare-fun m!886875 () Bool)

(assert (=> b!955235 m!886875))

(declare-fun m!886877 () Bool)

(assert (=> b!955229 m!886877))

(assert (=> b!955229 m!886869))

(assert (=> b!955229 m!886877))

(assert (=> b!955229 m!886869))

(declare-fun m!886879 () Bool)

(assert (=> b!955229 m!886879))

(declare-fun m!886881 () Bool)

(assert (=> mapNonEmpty!33385 m!886881))

(declare-fun m!886883 () Bool)

(assert (=> b!955232 m!886883))

(check-sat (not b_next!18405) tp_is_empty!20949 (not b!955235) (not b!955233) (not start!81938) (not b!955234) (not b!955232) b_and!29909 (not mapNonEmpty!33385) (not b!955229))
(check-sat b_and!29909 (not b_next!18405))
