; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41386 () Bool)

(assert start!41386)

(declare-fun b!462278 () Bool)

(declare-fun e!269769 () Bool)

(declare-fun tp_is_empty!12495 () Bool)

(assert (=> b!462278 (= e!269769 tp_is_empty!12495)))

(declare-fun mapNonEmpty!20413 () Bool)

(declare-fun mapRes!20413 () Bool)

(declare-fun tp!39232 () Bool)

(declare-fun e!269766 () Bool)

(assert (=> mapNonEmpty!20413 (= mapRes!20413 (and tp!39232 e!269766))))

(declare-fun mapKey!20413 () (_ BitVec 32))

(declare-datatypes ((V!17765 0))(
  ( (V!17766 (val!6292 Int)) )
))
(declare-datatypes ((ValueCell!5904 0))(
  ( (ValueCellFull!5904 (v!8575 V!17765)) (EmptyCell!5904) )
))
(declare-datatypes ((array!28757 0))(
  ( (array!28758 (arr!13809 (Array (_ BitVec 32) ValueCell!5904)) (size!14161 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28757)

(declare-fun mapValue!20413 () ValueCell!5904)

(declare-fun mapRest!20413 () (Array (_ BitVec 32) ValueCell!5904))

(assert (=> mapNonEmpty!20413 (= (arr!13809 _values!833) (store mapRest!20413 mapKey!20413 mapValue!20413))))

(declare-fun b!462279 () Bool)

(assert (=> b!462279 (= e!269766 tp_is_empty!12495)))

(declare-fun b!462281 () Bool)

(declare-fun e!269767 () Bool)

(assert (=> b!462281 (= e!269767 (and e!269769 mapRes!20413))))

(declare-fun condMapEmpty!20413 () Bool)

(declare-fun mapDefault!20413 () ValueCell!5904)

(assert (=> b!462281 (= condMapEmpty!20413 (= (arr!13809 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5904)) mapDefault!20413)))))

(declare-fun mapIsEmpty!20413 () Bool)

(assert (=> mapIsEmpty!20413 mapRes!20413))

(declare-fun res!276538 () Bool)

(declare-fun e!269768 () Bool)

(assert (=> start!41386 (=> (not res!276538) (not e!269768))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41386 (= res!276538 (validMask!0 mask!1365))))

(assert (=> start!41386 e!269768))

(assert (=> start!41386 true))

(declare-datatypes ((array!28759 0))(
  ( (array!28760 (arr!13810 (Array (_ BitVec 32) (_ BitVec 64))) (size!14162 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28759)

(declare-fun array_inv!9966 (array!28759) Bool)

(assert (=> start!41386 (array_inv!9966 _keys!1025)))

(declare-fun array_inv!9967 (array!28757) Bool)

(assert (=> start!41386 (and (array_inv!9967 _values!833) e!269767)))

(declare-fun b!462280 () Bool)

(declare-fun res!276537 () Bool)

(assert (=> b!462280 (=> (not res!276537) (not e!269768))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!462280 (= res!276537 (and (= (size!14161 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14162 _keys!1025) (size!14161 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462282 () Bool)

(declare-fun res!276539 () Bool)

(assert (=> b!462282 (=> (not res!276539) (not e!269768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28759 (_ BitVec 32)) Bool)

(assert (=> b!462282 (= res!276539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462283 () Bool)

(assert (=> b!462283 (= e!269768 false)))

(declare-fun lt!209178 () Bool)

(declare-datatypes ((List!8348 0))(
  ( (Nil!8345) (Cons!8344 (h!9200 (_ BitVec 64)) (t!14300 List!8348)) )
))
(declare-fun arrayNoDuplicates!0 (array!28759 (_ BitVec 32) List!8348) Bool)

(assert (=> b!462283 (= lt!209178 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8345))))

(assert (= (and start!41386 res!276538) b!462280))

(assert (= (and b!462280 res!276537) b!462282))

(assert (= (and b!462282 res!276539) b!462283))

(assert (= (and b!462281 condMapEmpty!20413) mapIsEmpty!20413))

(assert (= (and b!462281 (not condMapEmpty!20413)) mapNonEmpty!20413))

(get-info :version)

(assert (= (and mapNonEmpty!20413 ((_ is ValueCellFull!5904) mapValue!20413)) b!462279))

(assert (= (and b!462281 ((_ is ValueCellFull!5904) mapDefault!20413)) b!462278))

(assert (= start!41386 b!462281))

(declare-fun m!445241 () Bool)

(assert (=> mapNonEmpty!20413 m!445241))

(declare-fun m!445243 () Bool)

(assert (=> start!41386 m!445243))

(declare-fun m!445245 () Bool)

(assert (=> start!41386 m!445245))

(declare-fun m!445247 () Bool)

(assert (=> start!41386 m!445247))

(declare-fun m!445249 () Bool)

(assert (=> b!462282 m!445249))

(declare-fun m!445251 () Bool)

(assert (=> b!462283 m!445251))

(check-sat (not mapNonEmpty!20413) tp_is_empty!12495 (not b!462282) (not b!462283) (not start!41386))
(check-sat)
