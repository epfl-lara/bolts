; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82990 () Bool)

(assert start!82990)

(declare-fun b_free!19089 () Bool)

(declare-fun b_next!19089 () Bool)

(assert (=> start!82990 (= b_free!19089 (not b_next!19089))))

(declare-fun tp!66397 () Bool)

(declare-fun b_and!30595 () Bool)

(assert (=> start!82990 (= tp!66397 b_and!30595)))

(declare-fun b!968175 () Bool)

(declare-fun res!648281 () Bool)

(declare-fun e!545644 () Bool)

(assert (=> b!968175 (=> (not res!648281) (not e!545644))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34179 0))(
  ( (V!34180 (val!10999 Int)) )
))
(declare-datatypes ((ValueCell!10467 0))(
  ( (ValueCellFull!10467 (v!13557 V!34179)) (EmptyCell!10467) )
))
(declare-datatypes ((array!59845 0))(
  ( (array!59846 (arr!28787 (Array (_ BitVec 32) ValueCell!10467)) (size!29267 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59845)

(declare-datatypes ((array!59847 0))(
  ( (array!59848 (arr!28788 (Array (_ BitVec 32) (_ BitVec 64))) (size!29268 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59847)

(declare-fun minValue!1342 () V!34179)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34179)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14240 0))(
  ( (tuple2!14241 (_1!7130 (_ BitVec 64)) (_2!7130 V!34179)) )
))
(declare-datatypes ((List!20111 0))(
  ( (Nil!20108) (Cons!20107 (h!21269 tuple2!14240) (t!28482 List!20111)) )
))
(declare-datatypes ((ListLongMap!12951 0))(
  ( (ListLongMap!12952 (toList!6491 List!20111)) )
))
(declare-fun contains!5542 (ListLongMap!12951 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3676 (array!59847 array!59845 (_ BitVec 32) (_ BitVec 32) V!34179 V!34179 (_ BitVec 32) Int) ListLongMap!12951)

(assert (=> b!968175 (= res!648281 (contains!5542 (getCurrentListMap!3676 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28788 _keys!1686) i!803)))))

(declare-fun b!968176 () Bool)

(declare-fun res!648277 () Bool)

(assert (=> b!968176 (=> (not res!648277) (not e!545644))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!968176 (= res!648277 (bvsle from!2084 newFrom!159))))

(declare-fun b!968177 () Bool)

(declare-fun res!648280 () Bool)

(assert (=> b!968177 (=> (not res!648280) (not e!545644))))

(assert (=> b!968177 (= res!648280 (and (= (size!29267 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29268 _keys!1686) (size!29267 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!968178 () Bool)

(declare-fun res!648279 () Bool)

(assert (=> b!968178 (=> (not res!648279) (not e!545644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59847 (_ BitVec 32)) Bool)

(assert (=> b!968178 (= res!648279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!968179 () Bool)

(declare-fun e!545645 () Bool)

(declare-fun tp_is_empty!21897 () Bool)

(assert (=> b!968179 (= e!545645 tp_is_empty!21897)))

(declare-fun res!648275 () Bool)

(assert (=> start!82990 (=> (not res!648275) (not e!545644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82990 (= res!648275 (validMask!0 mask!2110))))

(assert (=> start!82990 e!545644))

(assert (=> start!82990 true))

(declare-fun e!545646 () Bool)

(declare-fun array_inv!22181 (array!59845) Bool)

(assert (=> start!82990 (and (array_inv!22181 _values!1400) e!545646)))

(declare-fun array_inv!22182 (array!59847) Bool)

(assert (=> start!82990 (array_inv!22182 _keys!1686)))

(assert (=> start!82990 tp!66397))

(assert (=> start!82990 tp_is_empty!21897))

(declare-fun b!968180 () Bool)

(declare-fun res!648276 () Bool)

(assert (=> b!968180 (=> (not res!648276) (not e!545644))))

(declare-datatypes ((List!20112 0))(
  ( (Nil!20109) (Cons!20108 (h!21270 (_ BitVec 64)) (t!28483 List!20112)) )
))
(declare-fun arrayNoDuplicates!0 (array!59847 (_ BitVec 32) List!20112) Bool)

(assert (=> b!968180 (= res!648276 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20109))))

(declare-fun b!968181 () Bool)

(declare-fun res!648274 () Bool)

(assert (=> b!968181 (=> (not res!648274) (not e!545644))))

(assert (=> b!968181 (= res!648274 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29268 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29268 _keys!1686))))))

(declare-fun mapNonEmpty!34840 () Bool)

(declare-fun mapRes!34840 () Bool)

(declare-fun tp!66396 () Bool)

(declare-fun e!545643 () Bool)

(assert (=> mapNonEmpty!34840 (= mapRes!34840 (and tp!66396 e!545643))))

(declare-fun mapRest!34840 () (Array (_ BitVec 32) ValueCell!10467))

(declare-fun mapValue!34840 () ValueCell!10467)

(declare-fun mapKey!34840 () (_ BitVec 32))

(assert (=> mapNonEmpty!34840 (= (arr!28787 _values!1400) (store mapRest!34840 mapKey!34840 mapValue!34840))))

(declare-fun b!968182 () Bool)

(assert (=> b!968182 (= e!545644 (bvslt i!803 #b00000000000000000000000000000000))))

(declare-fun lt!431463 () ListLongMap!12951)

(assert (=> b!968182 (= lt!431463 (getCurrentListMap!3676 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403))))

(declare-fun b!968183 () Bool)

(assert (=> b!968183 (= e!545646 (and e!545645 mapRes!34840))))

(declare-fun condMapEmpty!34840 () Bool)

(declare-fun mapDefault!34840 () ValueCell!10467)

(assert (=> b!968183 (= condMapEmpty!34840 (= (arr!28787 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10467)) mapDefault!34840)))))

(declare-fun mapIsEmpty!34840 () Bool)

(assert (=> mapIsEmpty!34840 mapRes!34840))

(declare-fun b!968184 () Bool)

(assert (=> b!968184 (= e!545643 tp_is_empty!21897)))

(declare-fun b!968185 () Bool)

(declare-fun res!648278 () Bool)

(assert (=> b!968185 (=> (not res!648278) (not e!545644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968185 (= res!648278 (validKeyInArray!0 (select (arr!28788 _keys!1686) i!803)))))

(assert (= (and start!82990 res!648275) b!968177))

(assert (= (and b!968177 res!648280) b!968178))

(assert (= (and b!968178 res!648279) b!968180))

(assert (= (and b!968180 res!648276) b!968181))

(assert (= (and b!968181 res!648274) b!968185))

(assert (= (and b!968185 res!648278) b!968175))

(assert (= (and b!968175 res!648281) b!968176))

(assert (= (and b!968176 res!648277) b!968182))

(assert (= (and b!968183 condMapEmpty!34840) mapIsEmpty!34840))

(assert (= (and b!968183 (not condMapEmpty!34840)) mapNonEmpty!34840))

(get-info :version)

(assert (= (and mapNonEmpty!34840 ((_ is ValueCellFull!10467) mapValue!34840)) b!968184))

(assert (= (and b!968183 ((_ is ValueCellFull!10467) mapDefault!34840)) b!968179))

(assert (= start!82990 b!968183))

(declare-fun m!896663 () Bool)

(assert (=> b!968180 m!896663))

(declare-fun m!896665 () Bool)

(assert (=> start!82990 m!896665))

(declare-fun m!896667 () Bool)

(assert (=> start!82990 m!896667))

(declare-fun m!896669 () Bool)

(assert (=> start!82990 m!896669))

(declare-fun m!896671 () Bool)

(assert (=> b!968182 m!896671))

(declare-fun m!896673 () Bool)

(assert (=> b!968185 m!896673))

(assert (=> b!968185 m!896673))

(declare-fun m!896675 () Bool)

(assert (=> b!968185 m!896675))

(declare-fun m!896677 () Bool)

(assert (=> b!968178 m!896677))

(declare-fun m!896679 () Bool)

(assert (=> b!968175 m!896679))

(assert (=> b!968175 m!896673))

(assert (=> b!968175 m!896679))

(assert (=> b!968175 m!896673))

(declare-fun m!896681 () Bool)

(assert (=> b!968175 m!896681))

(declare-fun m!896683 () Bool)

(assert (=> mapNonEmpty!34840 m!896683))

(check-sat (not mapNonEmpty!34840) tp_is_empty!21897 (not b!968180) (not b!968182) b_and!30595 (not start!82990) (not b!968175) (not b!968185) (not b!968178) (not b_next!19089))
(check-sat b_and!30595 (not b_next!19089))
