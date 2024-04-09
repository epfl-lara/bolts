; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41432 () Bool)

(assert start!41432)

(declare-fun b_free!11103 () Bool)

(declare-fun b_next!11103 () Bool)

(assert (=> start!41432 (= b_free!11103 (not b_next!11103))))

(declare-fun tp!39304 () Bool)

(declare-fun b_and!19457 () Bool)

(assert (=> start!41432 (= tp!39304 b_and!19457)))

(declare-fun b!462660 () Bool)

(declare-fun e!270065 () Bool)

(declare-fun e!270067 () Bool)

(declare-fun mapRes!20470 () Bool)

(assert (=> b!462660 (= e!270065 (and e!270067 mapRes!20470))))

(declare-fun condMapEmpty!20470 () Bool)

(declare-datatypes ((V!17813 0))(
  ( (V!17814 (val!6310 Int)) )
))
(declare-datatypes ((ValueCell!5922 0))(
  ( (ValueCellFull!5922 (v!8593 V!17813)) (EmptyCell!5922) )
))
(declare-datatypes ((array!28823 0))(
  ( (array!28824 (arr!13841 (Array (_ BitVec 32) ValueCell!5922)) (size!14193 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28823)

(declare-fun mapDefault!20470 () ValueCell!5922)

(assert (=> b!462660 (= condMapEmpty!20470 (= (arr!13841 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5922)) mapDefault!20470)))))

(declare-fun mapIsEmpty!20470 () Bool)

(assert (=> mapIsEmpty!20470 mapRes!20470))

(declare-fun res!276737 () Bool)

(declare-fun e!270064 () Bool)

(assert (=> start!41432 (=> (not res!276737) (not e!270064))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41432 (= res!276737 (validMask!0 mask!1365))))

(assert (=> start!41432 e!270064))

(declare-fun tp_is_empty!12531 () Bool)

(assert (=> start!41432 tp_is_empty!12531))

(assert (=> start!41432 tp!39304))

(assert (=> start!41432 true))

(declare-datatypes ((array!28825 0))(
  ( (array!28826 (arr!13842 (Array (_ BitVec 32) (_ BitVec 64))) (size!14194 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28825)

(declare-fun array_inv!9990 (array!28825) Bool)

(assert (=> start!41432 (array_inv!9990 _keys!1025)))

(declare-fun array_inv!9991 (array!28823) Bool)

(assert (=> start!41432 (and (array_inv!9991 _values!833) e!270065)))

(declare-fun b!462661 () Bool)

(assert (=> b!462661 (= e!270067 tp_is_empty!12531)))

(declare-fun b!462662 () Bool)

(declare-fun res!276738 () Bool)

(assert (=> b!462662 (=> (not res!276738) (not e!270064))))

(declare-datatypes ((List!8360 0))(
  ( (Nil!8357) (Cons!8356 (h!9212 (_ BitVec 64)) (t!14312 List!8360)) )
))
(declare-fun arrayNoDuplicates!0 (array!28825 (_ BitVec 32) List!8360) Bool)

(assert (=> b!462662 (= res!276738 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8357))))

(declare-fun b!462663 () Bool)

(declare-fun res!276740 () Bool)

(assert (=> b!462663 (=> (not res!276740) (not e!270064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28825 (_ BitVec 32)) Bool)

(assert (=> b!462663 (= res!276740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462664 () Bool)

(declare-fun e!270063 () Bool)

(assert (=> b!462664 (= e!270063 tp_is_empty!12531)))

(declare-fun mapNonEmpty!20470 () Bool)

(declare-fun tp!39303 () Bool)

(assert (=> mapNonEmpty!20470 (= mapRes!20470 (and tp!39303 e!270063))))

(declare-fun mapValue!20470 () ValueCell!5922)

(declare-fun mapRest!20470 () (Array (_ BitVec 32) ValueCell!5922))

(declare-fun mapKey!20470 () (_ BitVec 32))

(assert (=> mapNonEmpty!20470 (= (arr!13841 _values!833) (store mapRest!20470 mapKey!20470 mapValue!20470))))

(declare-fun b!462665 () Bool)

(declare-fun res!276739 () Bool)

(assert (=> b!462665 (=> (not res!276739) (not e!270064))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462665 (= res!276739 (and (= (size!14193 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14194 _keys!1025) (size!14193 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462666 () Bool)

(assert (=> b!462666 (= e!270064 false)))

(declare-datatypes ((tuple2!8234 0))(
  ( (tuple2!8235 (_1!4127 (_ BitVec 64)) (_2!4127 V!17813)) )
))
(declare-datatypes ((List!8361 0))(
  ( (Nil!8358) (Cons!8357 (h!9213 tuple2!8234) (t!14313 List!8361)) )
))
(declare-datatypes ((ListLongMap!7161 0))(
  ( (ListLongMap!7162 (toList!3596 List!8361)) )
))
(declare-fun lt!209232 () ListLongMap!7161)

(declare-fun minValueBefore!38 () V!17813)

(declare-fun zeroValue!794 () V!17813)

(declare-fun defaultEntry!841 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1764 (array!28825 array!28823 (_ BitVec 32) (_ BitVec 32) V!17813 V!17813 (_ BitVec 32) Int) ListLongMap!7161)

(assert (=> b!462666 (= lt!209232 (getCurrentListMapNoExtraKeys!1764 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41432 res!276737) b!462665))

(assert (= (and b!462665 res!276739) b!462663))

(assert (= (and b!462663 res!276740) b!462662))

(assert (= (and b!462662 res!276738) b!462666))

(assert (= (and b!462660 condMapEmpty!20470) mapIsEmpty!20470))

(assert (= (and b!462660 (not condMapEmpty!20470)) mapNonEmpty!20470))

(get-info :version)

(assert (= (and mapNonEmpty!20470 ((_ is ValueCellFull!5922) mapValue!20470)) b!462664))

(assert (= (and b!462660 ((_ is ValueCellFull!5922) mapDefault!20470)) b!462661))

(assert (= start!41432 b!462660))

(declare-fun m!445483 () Bool)

(assert (=> b!462666 m!445483))

(declare-fun m!445485 () Bool)

(assert (=> b!462663 m!445485))

(declare-fun m!445487 () Bool)

(assert (=> start!41432 m!445487))

(declare-fun m!445489 () Bool)

(assert (=> start!41432 m!445489))

(declare-fun m!445491 () Bool)

(assert (=> start!41432 m!445491))

(declare-fun m!445493 () Bool)

(assert (=> b!462662 m!445493))

(declare-fun m!445495 () Bool)

(assert (=> mapNonEmpty!20470 m!445495))

(check-sat (not b!462666) b_and!19457 (not b!462663) (not b_next!11103) tp_is_empty!12531 (not mapNonEmpty!20470) (not b!462662) (not start!41432))
(check-sat b_and!19457 (not b_next!11103))
