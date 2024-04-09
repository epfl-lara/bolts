; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41392 () Bool)

(assert start!41392)

(declare-fun b!462332 () Bool)

(declare-fun e!269812 () Bool)

(assert (=> b!462332 (= e!269812 false)))

(declare-fun lt!209187 () Bool)

(declare-datatypes ((array!28769 0))(
  ( (array!28770 (arr!13815 (Array (_ BitVec 32) (_ BitVec 64))) (size!14167 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28769)

(declare-datatypes ((List!8351 0))(
  ( (Nil!8348) (Cons!8347 (h!9203 (_ BitVec 64)) (t!14303 List!8351)) )
))
(declare-fun arrayNoDuplicates!0 (array!28769 (_ BitVec 32) List!8351) Bool)

(assert (=> b!462332 (= lt!209187 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8348))))

(declare-fun b!462333 () Bool)

(declare-fun res!276564 () Bool)

(assert (=> b!462333 (=> (not res!276564) (not e!269812))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((V!17773 0))(
  ( (V!17774 (val!6295 Int)) )
))
(declare-datatypes ((ValueCell!5907 0))(
  ( (ValueCellFull!5907 (v!8578 V!17773)) (EmptyCell!5907) )
))
(declare-datatypes ((array!28771 0))(
  ( (array!28772 (arr!13816 (Array (_ BitVec 32) ValueCell!5907)) (size!14168 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28771)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462333 (= res!276564 (and (= (size!14168 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14167 _keys!1025) (size!14168 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20422 () Bool)

(declare-fun mapRes!20422 () Bool)

(assert (=> mapIsEmpty!20422 mapRes!20422))

(declare-fun res!276566 () Bool)

(assert (=> start!41392 (=> (not res!276566) (not e!269812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41392 (= res!276566 (validMask!0 mask!1365))))

(assert (=> start!41392 e!269812))

(assert (=> start!41392 true))

(declare-fun array_inv!9970 (array!28769) Bool)

(assert (=> start!41392 (array_inv!9970 _keys!1025)))

(declare-fun e!269813 () Bool)

(declare-fun array_inv!9971 (array!28771) Bool)

(assert (=> start!41392 (and (array_inv!9971 _values!833) e!269813)))

(declare-fun b!462334 () Bool)

(declare-fun e!269814 () Bool)

(assert (=> b!462334 (= e!269813 (and e!269814 mapRes!20422))))

(declare-fun condMapEmpty!20422 () Bool)

(declare-fun mapDefault!20422 () ValueCell!5907)

(assert (=> b!462334 (= condMapEmpty!20422 (= (arr!13816 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5907)) mapDefault!20422)))))

(declare-fun b!462335 () Bool)

(declare-fun res!276565 () Bool)

(assert (=> b!462335 (=> (not res!276565) (not e!269812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28769 (_ BitVec 32)) Bool)

(assert (=> b!462335 (= res!276565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20422 () Bool)

(declare-fun tp!39241 () Bool)

(declare-fun e!269815 () Bool)

(assert (=> mapNonEmpty!20422 (= mapRes!20422 (and tp!39241 e!269815))))

(declare-fun mapRest!20422 () (Array (_ BitVec 32) ValueCell!5907))

(declare-fun mapValue!20422 () ValueCell!5907)

(declare-fun mapKey!20422 () (_ BitVec 32))

(assert (=> mapNonEmpty!20422 (= (arr!13816 _values!833) (store mapRest!20422 mapKey!20422 mapValue!20422))))

(declare-fun b!462336 () Bool)

(declare-fun tp_is_empty!12501 () Bool)

(assert (=> b!462336 (= e!269815 tp_is_empty!12501)))

(declare-fun b!462337 () Bool)

(assert (=> b!462337 (= e!269814 tp_is_empty!12501)))

(assert (= (and start!41392 res!276566) b!462333))

(assert (= (and b!462333 res!276564) b!462335))

(assert (= (and b!462335 res!276565) b!462332))

(assert (= (and b!462334 condMapEmpty!20422) mapIsEmpty!20422))

(assert (= (and b!462334 (not condMapEmpty!20422)) mapNonEmpty!20422))

(get-info :version)

(assert (= (and mapNonEmpty!20422 ((_ is ValueCellFull!5907) mapValue!20422)) b!462336))

(assert (= (and b!462334 ((_ is ValueCellFull!5907) mapDefault!20422)) b!462337))

(assert (= start!41392 b!462334))

(declare-fun m!445277 () Bool)

(assert (=> b!462332 m!445277))

(declare-fun m!445279 () Bool)

(assert (=> start!41392 m!445279))

(declare-fun m!445281 () Bool)

(assert (=> start!41392 m!445281))

(declare-fun m!445283 () Bool)

(assert (=> start!41392 m!445283))

(declare-fun m!445285 () Bool)

(assert (=> b!462335 m!445285))

(declare-fun m!445287 () Bool)

(assert (=> mapNonEmpty!20422 m!445287))

(check-sat tp_is_empty!12501 (not b!462335) (not b!462332) (not start!41392) (not mapNonEmpty!20422))
(check-sat)
