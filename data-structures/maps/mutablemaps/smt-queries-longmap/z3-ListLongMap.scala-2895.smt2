; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41522 () Bool)

(assert start!41522)

(declare-fun b_free!11181 () Bool)

(declare-fun b_next!11181 () Bool)

(assert (=> start!41522 (= b_free!11181 (not b_next!11181))))

(declare-fun tp!39541 () Bool)

(declare-fun b_and!19539 () Bool)

(assert (=> start!41522 (= tp!39541 b_and!19539)))

(declare-fun mapNonEmpty!20590 () Bool)

(declare-fun mapRes!20590 () Bool)

(declare-fun tp!39540 () Bool)

(declare-fun e!270696 () Bool)

(assert (=> mapNonEmpty!20590 (= mapRes!20590 (and tp!39540 e!270696))))

(declare-datatypes ((V!17917 0))(
  ( (V!17918 (val!6349 Int)) )
))
(declare-datatypes ((ValueCell!5961 0))(
  ( (ValueCellFull!5961 (v!8632 V!17917)) (EmptyCell!5961) )
))
(declare-datatypes ((array!28975 0))(
  ( (array!28976 (arr!13916 (Array (_ BitVec 32) ValueCell!5961)) (size!14268 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28975)

(declare-fun mapValue!20590 () ValueCell!5961)

(declare-fun mapRest!20590 () (Array (_ BitVec 32) ValueCell!5961))

(declare-fun mapKey!20590 () (_ BitVec 32))

(assert (=> mapNonEmpty!20590 (= (arr!13916 _values!833) (store mapRest!20590 mapKey!20590 mapValue!20590))))

(declare-fun b!463552 () Bool)

(declare-fun e!270697 () Bool)

(declare-fun e!270700 () Bool)

(assert (=> b!463552 (= e!270697 (and e!270700 mapRes!20590))))

(declare-fun condMapEmpty!20590 () Bool)

(declare-fun mapDefault!20590 () ValueCell!5961)

(assert (=> b!463552 (= condMapEmpty!20590 (= (arr!13916 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5961)) mapDefault!20590)))))

(declare-fun b!463553 () Bool)

(declare-fun tp_is_empty!12609 () Bool)

(assert (=> b!463553 (= e!270700 tp_is_empty!12609)))

(declare-fun b!463554 () Bool)

(declare-fun res!277235 () Bool)

(declare-fun e!270699 () Bool)

(assert (=> b!463554 (=> (not res!277235) (not e!270699))))

(declare-datatypes ((array!28977 0))(
  ( (array!28978 (arr!13917 (Array (_ BitVec 32) (_ BitVec 64))) (size!14269 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28977)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28977 (_ BitVec 32)) Bool)

(assert (=> b!463554 (= res!277235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463555 () Bool)

(declare-fun res!277234 () Bool)

(assert (=> b!463555 (=> (not res!277234) (not e!270699))))

(declare-datatypes ((List!8419 0))(
  ( (Nil!8416) (Cons!8415 (h!9271 (_ BitVec 64)) (t!14373 List!8419)) )
))
(declare-fun arrayNoDuplicates!0 (array!28977 (_ BitVec 32) List!8419) Bool)

(assert (=> b!463555 (= res!277234 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8416))))

(declare-fun b!463556 () Bool)

(assert (=> b!463556 (= e!270699 false)))

(declare-datatypes ((tuple2!8294 0))(
  ( (tuple2!8295 (_1!4157 (_ BitVec 64)) (_2!4157 V!17917)) )
))
(declare-datatypes ((List!8420 0))(
  ( (Nil!8417) (Cons!8416 (h!9272 tuple2!8294) (t!14374 List!8420)) )
))
(declare-datatypes ((ListLongMap!7221 0))(
  ( (ListLongMap!7222 (toList!3626 List!8420)) )
))
(declare-fun lt!209429 () ListLongMap!7221)

(declare-fun zeroValue!794 () V!17917)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!17917)

(declare-fun getCurrentListMapNoExtraKeys!1794 (array!28977 array!28975 (_ BitVec 32) (_ BitVec 32) V!17917 V!17917 (_ BitVec 32) Int) ListLongMap!7221)

(assert (=> b!463556 (= lt!209429 (getCurrentListMapNoExtraKeys!1794 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17917)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!209430 () ListLongMap!7221)

(assert (=> b!463556 (= lt!209430 (getCurrentListMapNoExtraKeys!1794 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463557 () Bool)

(assert (=> b!463557 (= e!270696 tp_is_empty!12609)))

(declare-fun mapIsEmpty!20590 () Bool)

(assert (=> mapIsEmpty!20590 mapRes!20590))

(declare-fun b!463558 () Bool)

(declare-fun res!277232 () Bool)

(assert (=> b!463558 (=> (not res!277232) (not e!270699))))

(assert (=> b!463558 (= res!277232 (and (= (size!14268 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14269 _keys!1025) (size!14268 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!277233 () Bool)

(assert (=> start!41522 (=> (not res!277233) (not e!270699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41522 (= res!277233 (validMask!0 mask!1365))))

(assert (=> start!41522 e!270699))

(assert (=> start!41522 tp_is_empty!12609))

(assert (=> start!41522 tp!39541))

(assert (=> start!41522 true))

(declare-fun array_inv!10036 (array!28977) Bool)

(assert (=> start!41522 (array_inv!10036 _keys!1025)))

(declare-fun array_inv!10037 (array!28975) Bool)

(assert (=> start!41522 (and (array_inv!10037 _values!833) e!270697)))

(assert (= (and start!41522 res!277233) b!463558))

(assert (= (and b!463558 res!277232) b!463554))

(assert (= (and b!463554 res!277235) b!463555))

(assert (= (and b!463555 res!277234) b!463556))

(assert (= (and b!463552 condMapEmpty!20590) mapIsEmpty!20590))

(assert (= (and b!463552 (not condMapEmpty!20590)) mapNonEmpty!20590))

(get-info :version)

(assert (= (and mapNonEmpty!20590 ((_ is ValueCellFull!5961) mapValue!20590)) b!463557))

(assert (= (and b!463552 ((_ is ValueCellFull!5961) mapDefault!20590)) b!463553))

(assert (= start!41522 b!463552))

(declare-fun m!446105 () Bool)

(assert (=> b!463554 m!446105))

(declare-fun m!446107 () Bool)

(assert (=> mapNonEmpty!20590 m!446107))

(declare-fun m!446109 () Bool)

(assert (=> start!41522 m!446109))

(declare-fun m!446111 () Bool)

(assert (=> start!41522 m!446111))

(declare-fun m!446113 () Bool)

(assert (=> start!41522 m!446113))

(declare-fun m!446115 () Bool)

(assert (=> b!463555 m!446115))

(declare-fun m!446117 () Bool)

(assert (=> b!463556 m!446117))

(declare-fun m!446119 () Bool)

(assert (=> b!463556 m!446119))

(check-sat tp_is_empty!12609 (not b!463555) (not start!41522) (not mapNonEmpty!20590) (not b_next!11181) b_and!19539 (not b!463556) (not b!463554))
(check-sat b_and!19539 (not b_next!11181))
