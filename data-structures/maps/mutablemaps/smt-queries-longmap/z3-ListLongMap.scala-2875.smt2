; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41380 () Bool)

(assert start!41380)

(declare-fun b!462224 () Bool)

(declare-fun res!276512 () Bool)

(declare-fun e!269722 () Bool)

(assert (=> b!462224 (=> (not res!276512) (not e!269722))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28745 0))(
  ( (array!28746 (arr!13803 (Array (_ BitVec 32) (_ BitVec 64))) (size!14155 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28745)

(declare-datatypes ((V!17757 0))(
  ( (V!17758 (val!6289 Int)) )
))
(declare-datatypes ((ValueCell!5901 0))(
  ( (ValueCellFull!5901 (v!8572 V!17757)) (EmptyCell!5901) )
))
(declare-datatypes ((array!28747 0))(
  ( (array!28748 (arr!13804 (Array (_ BitVec 32) ValueCell!5901)) (size!14156 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28747)

(assert (=> b!462224 (= res!276512 (and (= (size!14156 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14155 _keys!1025) (size!14156 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462225 () Bool)

(declare-fun res!276510 () Bool)

(assert (=> b!462225 (=> (not res!276510) (not e!269722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28745 (_ BitVec 32)) Bool)

(assert (=> b!462225 (= res!276510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462226 () Bool)

(declare-fun e!269721 () Bool)

(declare-fun tp_is_empty!12489 () Bool)

(assert (=> b!462226 (= e!269721 tp_is_empty!12489)))

(declare-fun b!462227 () Bool)

(declare-fun e!269723 () Bool)

(assert (=> b!462227 (= e!269723 tp_is_empty!12489)))

(declare-fun b!462228 () Bool)

(declare-fun e!269725 () Bool)

(declare-fun mapRes!20404 () Bool)

(assert (=> b!462228 (= e!269725 (and e!269723 mapRes!20404))))

(declare-fun condMapEmpty!20404 () Bool)

(declare-fun mapDefault!20404 () ValueCell!5901)

(assert (=> b!462228 (= condMapEmpty!20404 (= (arr!13804 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5901)) mapDefault!20404)))))

(declare-fun mapNonEmpty!20404 () Bool)

(declare-fun tp!39223 () Bool)

(assert (=> mapNonEmpty!20404 (= mapRes!20404 (and tp!39223 e!269721))))

(declare-fun mapValue!20404 () ValueCell!5901)

(declare-fun mapKey!20404 () (_ BitVec 32))

(declare-fun mapRest!20404 () (Array (_ BitVec 32) ValueCell!5901))

(assert (=> mapNonEmpty!20404 (= (arr!13804 _values!833) (store mapRest!20404 mapKey!20404 mapValue!20404))))

(declare-fun b!462229 () Bool)

(assert (=> b!462229 (= e!269722 false)))

(declare-fun lt!209169 () Bool)

(declare-datatypes ((List!8346 0))(
  ( (Nil!8343) (Cons!8342 (h!9198 (_ BitVec 64)) (t!14298 List!8346)) )
))
(declare-fun arrayNoDuplicates!0 (array!28745 (_ BitVec 32) List!8346) Bool)

(assert (=> b!462229 (= lt!209169 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8343))))

(declare-fun mapIsEmpty!20404 () Bool)

(assert (=> mapIsEmpty!20404 mapRes!20404))

(declare-fun res!276511 () Bool)

(assert (=> start!41380 (=> (not res!276511) (not e!269722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41380 (= res!276511 (validMask!0 mask!1365))))

(assert (=> start!41380 e!269722))

(assert (=> start!41380 true))

(declare-fun array_inv!9962 (array!28745) Bool)

(assert (=> start!41380 (array_inv!9962 _keys!1025)))

(declare-fun array_inv!9963 (array!28747) Bool)

(assert (=> start!41380 (and (array_inv!9963 _values!833) e!269725)))

(assert (= (and start!41380 res!276511) b!462224))

(assert (= (and b!462224 res!276512) b!462225))

(assert (= (and b!462225 res!276510) b!462229))

(assert (= (and b!462228 condMapEmpty!20404) mapIsEmpty!20404))

(assert (= (and b!462228 (not condMapEmpty!20404)) mapNonEmpty!20404))

(get-info :version)

(assert (= (and mapNonEmpty!20404 ((_ is ValueCellFull!5901) mapValue!20404)) b!462226))

(assert (= (and b!462228 ((_ is ValueCellFull!5901) mapDefault!20404)) b!462227))

(assert (= start!41380 b!462228))

(declare-fun m!445205 () Bool)

(assert (=> b!462225 m!445205))

(declare-fun m!445207 () Bool)

(assert (=> mapNonEmpty!20404 m!445207))

(declare-fun m!445209 () Bool)

(assert (=> b!462229 m!445209))

(declare-fun m!445211 () Bool)

(assert (=> start!41380 m!445211))

(declare-fun m!445213 () Bool)

(assert (=> start!41380 m!445213))

(declare-fun m!445215 () Bool)

(assert (=> start!41380 m!445215))

(check-sat (not b!462229) tp_is_empty!12489 (not mapNonEmpty!20404) (not start!41380) (not b!462225))
(check-sat)
