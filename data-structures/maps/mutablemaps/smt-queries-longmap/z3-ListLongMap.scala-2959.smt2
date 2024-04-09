; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42000 () Bool)

(assert start!42000)

(declare-fun b_free!11565 () Bool)

(declare-fun b_next!11565 () Bool)

(assert (=> start!42000 (= b_free!11565 (not b_next!11565))))

(declare-fun tp!40711 () Bool)

(declare-fun b_and!19981 () Bool)

(assert (=> start!42000 (= tp!40711 b_and!19981)))

(declare-fun b!468639 () Bool)

(declare-fun e!274342 () Bool)

(declare-fun e!274340 () Bool)

(declare-fun mapRes!21184 () Bool)

(assert (=> b!468639 (= e!274342 (and e!274340 mapRes!21184))))

(declare-fun condMapEmpty!21184 () Bool)

(declare-datatypes ((V!18429 0))(
  ( (V!18430 (val!6541 Int)) )
))
(declare-datatypes ((ValueCell!6153 0))(
  ( (ValueCellFull!6153 (v!8826 V!18429)) (EmptyCell!6153) )
))
(declare-datatypes ((array!29719 0))(
  ( (array!29720 (arr!14282 (Array (_ BitVec 32) ValueCell!6153)) (size!14634 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29719)

(declare-fun mapDefault!21184 () ValueCell!6153)

(assert (=> b!468639 (= condMapEmpty!21184 (= (arr!14282 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6153)) mapDefault!21184)))))

(declare-fun b!468640 () Bool)

(declare-fun e!274343 () Bool)

(assert (=> b!468640 (= e!274343 true)))

(declare-datatypes ((tuple2!8578 0))(
  ( (tuple2!8579 (_1!4299 (_ BitVec 64)) (_2!4299 V!18429)) )
))
(declare-datatypes ((List!8699 0))(
  ( (Nil!8696) (Cons!8695 (h!9551 tuple2!8578) (t!14665 List!8699)) )
))
(declare-datatypes ((ListLongMap!7505 0))(
  ( (ListLongMap!7506 (toList!3768 List!8699)) )
))
(declare-fun lt!212149 () ListLongMap!7505)

(declare-fun lt!212147 () tuple2!8578)

(declare-fun minValueBefore!38 () V!18429)

(declare-fun +!1658 (ListLongMap!7505 tuple2!8578) ListLongMap!7505)

(assert (=> b!468640 (= (+!1658 lt!212149 lt!212147) (+!1658 (+!1658 lt!212149 (tuple2!8579 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212147))))

(declare-fun minValueAfter!38 () V!18429)

(assert (=> b!468640 (= lt!212147 (tuple2!8579 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13658 0))(
  ( (Unit!13659) )
))
(declare-fun lt!212148 () Unit!13658)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!99 (ListLongMap!7505 (_ BitVec 64) V!18429 V!18429) Unit!13658)

(assert (=> b!468640 (= lt!212148 (addSameAsAddTwiceSameKeyDiffValues!99 lt!212149 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18429)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212151 () ListLongMap!7505)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29721 0))(
  ( (array!29722 (arr!14283 (Array (_ BitVec 32) (_ BitVec 64))) (size!14635 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29721)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2180 (array!29721 array!29719 (_ BitVec 32) (_ BitVec 32) V!18429 V!18429 (_ BitVec 32) Int) ListLongMap!7505)

(assert (=> b!468640 (= lt!212151 (getCurrentListMap!2180 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212153 () ListLongMap!7505)

(assert (=> b!468640 (= lt!212153 (getCurrentListMap!2180 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468641 () Bool)

(declare-fun res!280136 () Bool)

(declare-fun e!274341 () Bool)

(assert (=> b!468641 (=> (not res!280136) (not e!274341))))

(assert (=> b!468641 (= res!280136 (and (= (size!14634 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14635 _keys!1025) (size!14634 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468642 () Bool)

(assert (=> b!468642 (= e!274341 (not e!274343))))

(declare-fun res!280139 () Bool)

(assert (=> b!468642 (=> res!280139 e!274343)))

(assert (=> b!468642 (= res!280139 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212150 () ListLongMap!7505)

(assert (=> b!468642 (= lt!212149 lt!212150)))

(declare-fun lt!212152 () Unit!13658)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!127 (array!29721 array!29719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18429 V!18429 V!18429 V!18429 (_ BitVec 32) Int) Unit!13658)

(assert (=> b!468642 (= lt!212152 (lemmaNoChangeToArrayThenSameMapNoExtras!127 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1932 (array!29721 array!29719 (_ BitVec 32) (_ BitVec 32) V!18429 V!18429 (_ BitVec 32) Int) ListLongMap!7505)

(assert (=> b!468642 (= lt!212150 (getCurrentListMapNoExtraKeys!1932 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468642 (= lt!212149 (getCurrentListMapNoExtraKeys!1932 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468643 () Bool)

(declare-fun res!280137 () Bool)

(assert (=> b!468643 (=> (not res!280137) (not e!274341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29721 (_ BitVec 32)) Bool)

(assert (=> b!468643 (= res!280137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468644 () Bool)

(declare-fun tp_is_empty!12993 () Bool)

(assert (=> b!468644 (= e!274340 tp_is_empty!12993)))

(declare-fun b!468645 () Bool)

(declare-fun res!280135 () Bool)

(assert (=> b!468645 (=> (not res!280135) (not e!274341))))

(declare-datatypes ((List!8700 0))(
  ( (Nil!8697) (Cons!8696 (h!9552 (_ BitVec 64)) (t!14666 List!8700)) )
))
(declare-fun arrayNoDuplicates!0 (array!29721 (_ BitVec 32) List!8700) Bool)

(assert (=> b!468645 (= res!280135 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8697))))

(declare-fun b!468646 () Bool)

(declare-fun e!274339 () Bool)

(assert (=> b!468646 (= e!274339 tp_is_empty!12993)))

(declare-fun mapIsEmpty!21184 () Bool)

(assert (=> mapIsEmpty!21184 mapRes!21184))

(declare-fun mapNonEmpty!21184 () Bool)

(declare-fun tp!40710 () Bool)

(assert (=> mapNonEmpty!21184 (= mapRes!21184 (and tp!40710 e!274339))))

(declare-fun mapKey!21184 () (_ BitVec 32))

(declare-fun mapRest!21184 () (Array (_ BitVec 32) ValueCell!6153))

(declare-fun mapValue!21184 () ValueCell!6153)

(assert (=> mapNonEmpty!21184 (= (arr!14282 _values!833) (store mapRest!21184 mapKey!21184 mapValue!21184))))

(declare-fun res!280138 () Bool)

(assert (=> start!42000 (=> (not res!280138) (not e!274341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42000 (= res!280138 (validMask!0 mask!1365))))

(assert (=> start!42000 e!274341))

(assert (=> start!42000 tp_is_empty!12993))

(assert (=> start!42000 tp!40711))

(assert (=> start!42000 true))

(declare-fun array_inv!10302 (array!29721) Bool)

(assert (=> start!42000 (array_inv!10302 _keys!1025)))

(declare-fun array_inv!10303 (array!29719) Bool)

(assert (=> start!42000 (and (array_inv!10303 _values!833) e!274342)))

(assert (= (and start!42000 res!280138) b!468641))

(assert (= (and b!468641 res!280136) b!468643))

(assert (= (and b!468643 res!280137) b!468645))

(assert (= (and b!468645 res!280135) b!468642))

(assert (= (and b!468642 (not res!280139)) b!468640))

(assert (= (and b!468639 condMapEmpty!21184) mapIsEmpty!21184))

(assert (= (and b!468639 (not condMapEmpty!21184)) mapNonEmpty!21184))

(get-info :version)

(assert (= (and mapNonEmpty!21184 ((_ is ValueCellFull!6153) mapValue!21184)) b!468646))

(assert (= (and b!468639 ((_ is ValueCellFull!6153) mapDefault!21184)) b!468644))

(assert (= start!42000 b!468639))

(declare-fun m!450711 () Bool)

(assert (=> b!468640 m!450711))

(declare-fun m!450713 () Bool)

(assert (=> b!468640 m!450713))

(assert (=> b!468640 m!450711))

(declare-fun m!450715 () Bool)

(assert (=> b!468640 m!450715))

(declare-fun m!450717 () Bool)

(assert (=> b!468640 m!450717))

(declare-fun m!450719 () Bool)

(assert (=> b!468640 m!450719))

(declare-fun m!450721 () Bool)

(assert (=> b!468640 m!450721))

(declare-fun m!450723 () Bool)

(assert (=> b!468643 m!450723))

(declare-fun m!450725 () Bool)

(assert (=> b!468642 m!450725))

(declare-fun m!450727 () Bool)

(assert (=> b!468642 m!450727))

(declare-fun m!450729 () Bool)

(assert (=> b!468642 m!450729))

(declare-fun m!450731 () Bool)

(assert (=> mapNonEmpty!21184 m!450731))

(declare-fun m!450733 () Bool)

(assert (=> b!468645 m!450733))

(declare-fun m!450735 () Bool)

(assert (=> start!42000 m!450735))

(declare-fun m!450737 () Bool)

(assert (=> start!42000 m!450737))

(declare-fun m!450739 () Bool)

(assert (=> start!42000 m!450739))

(check-sat (not start!42000) (not mapNonEmpty!21184) (not b!468640) (not b!468645) (not b_next!11565) (not b!468642) (not b!468643) b_and!19981 tp_is_empty!12993)
(check-sat b_and!19981 (not b_next!11565))
