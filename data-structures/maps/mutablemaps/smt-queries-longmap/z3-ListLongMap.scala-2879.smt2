; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41404 () Bool)

(assert start!41404)

(declare-fun b!462440 () Bool)

(declare-fun e!269904 () Bool)

(declare-fun e!269901 () Bool)

(declare-fun mapRes!20440 () Bool)

(assert (=> b!462440 (= e!269904 (and e!269901 mapRes!20440))))

(declare-fun condMapEmpty!20440 () Bool)

(declare-datatypes ((V!17789 0))(
  ( (V!17790 (val!6301 Int)) )
))
(declare-datatypes ((ValueCell!5913 0))(
  ( (ValueCellFull!5913 (v!8584 V!17789)) (EmptyCell!5913) )
))
(declare-datatypes ((array!28793 0))(
  ( (array!28794 (arr!13827 (Array (_ BitVec 32) ValueCell!5913)) (size!14179 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28793)

(declare-fun mapDefault!20440 () ValueCell!5913)

(assert (=> b!462440 (= condMapEmpty!20440 (= (arr!13827 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5913)) mapDefault!20440)))))

(declare-fun res!276619 () Bool)

(declare-fun e!269903 () Bool)

(assert (=> start!41404 (=> (not res!276619) (not e!269903))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41404 (= res!276619 (validMask!0 mask!1365))))

(assert (=> start!41404 e!269903))

(assert (=> start!41404 true))

(declare-datatypes ((array!28795 0))(
  ( (array!28796 (arr!13828 (Array (_ BitVec 32) (_ BitVec 64))) (size!14180 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28795)

(declare-fun array_inv!9980 (array!28795) Bool)

(assert (=> start!41404 (array_inv!9980 _keys!1025)))

(declare-fun array_inv!9981 (array!28793) Bool)

(assert (=> start!41404 (and (array_inv!9981 _values!833) e!269904)))

(declare-fun b!462441 () Bool)

(declare-fun res!276620 () Bool)

(assert (=> b!462441 (=> (not res!276620) (not e!269903))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462441 (= res!276620 (and (= (size!14179 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14180 _keys!1025) (size!14179 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462442 () Bool)

(declare-fun res!276618 () Bool)

(assert (=> b!462442 (=> (not res!276618) (not e!269903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28795 (_ BitVec 32)) Bool)

(assert (=> b!462442 (= res!276618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462443 () Bool)

(declare-fun tp_is_empty!12513 () Bool)

(assert (=> b!462443 (= e!269901 tp_is_empty!12513)))

(declare-fun mapNonEmpty!20440 () Bool)

(declare-fun tp!39259 () Bool)

(declare-fun e!269902 () Bool)

(assert (=> mapNonEmpty!20440 (= mapRes!20440 (and tp!39259 e!269902))))

(declare-fun mapValue!20440 () ValueCell!5913)

(declare-fun mapKey!20440 () (_ BitVec 32))

(declare-fun mapRest!20440 () (Array (_ BitVec 32) ValueCell!5913))

(assert (=> mapNonEmpty!20440 (= (arr!13827 _values!833) (store mapRest!20440 mapKey!20440 mapValue!20440))))

(declare-fun mapIsEmpty!20440 () Bool)

(assert (=> mapIsEmpty!20440 mapRes!20440))

(declare-fun b!462444 () Bool)

(assert (=> b!462444 (= e!269903 false)))

(declare-fun lt!209205 () Bool)

(declare-datatypes ((List!8355 0))(
  ( (Nil!8352) (Cons!8351 (h!9207 (_ BitVec 64)) (t!14307 List!8355)) )
))
(declare-fun arrayNoDuplicates!0 (array!28795 (_ BitVec 32) List!8355) Bool)

(assert (=> b!462444 (= lt!209205 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8352))))

(declare-fun b!462445 () Bool)

(assert (=> b!462445 (= e!269902 tp_is_empty!12513)))

(assert (= (and start!41404 res!276619) b!462441))

(assert (= (and b!462441 res!276620) b!462442))

(assert (= (and b!462442 res!276618) b!462444))

(assert (= (and b!462440 condMapEmpty!20440) mapIsEmpty!20440))

(assert (= (and b!462440 (not condMapEmpty!20440)) mapNonEmpty!20440))

(get-info :version)

(assert (= (and mapNonEmpty!20440 ((_ is ValueCellFull!5913) mapValue!20440)) b!462445))

(assert (= (and b!462440 ((_ is ValueCellFull!5913) mapDefault!20440)) b!462443))

(assert (= start!41404 b!462440))

(declare-fun m!445349 () Bool)

(assert (=> start!41404 m!445349))

(declare-fun m!445351 () Bool)

(assert (=> start!41404 m!445351))

(declare-fun m!445353 () Bool)

(assert (=> start!41404 m!445353))

(declare-fun m!445355 () Bool)

(assert (=> b!462442 m!445355))

(declare-fun m!445357 () Bool)

(assert (=> mapNonEmpty!20440 m!445357))

(declare-fun m!445359 () Bool)

(assert (=> b!462444 m!445359))

(check-sat (not b!462444) tp_is_empty!12513 (not b!462442) (not mapNonEmpty!20440) (not start!41404))
(check-sat)
