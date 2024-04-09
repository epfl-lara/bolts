; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41540 () Bool)

(assert start!41540)

(declare-fun b_free!11199 () Bool)

(declare-fun b_next!11199 () Bool)

(assert (=> start!41540 (= b_free!11199 (not b_next!11199))))

(declare-fun tp!39594 () Bool)

(declare-fun b_and!19557 () Bool)

(assert (=> start!41540 (= tp!39594 b_and!19557)))

(declare-fun b!463741 () Bool)

(declare-fun res!277342 () Bool)

(declare-fun e!270835 () Bool)

(assert (=> b!463741 (=> (not res!277342) (not e!270835))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29011 0))(
  ( (array!29012 (arr!13934 (Array (_ BitVec 32) (_ BitVec 64))) (size!14286 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29011)

(declare-datatypes ((V!17941 0))(
  ( (V!17942 (val!6358 Int)) )
))
(declare-datatypes ((ValueCell!5970 0))(
  ( (ValueCellFull!5970 (v!8641 V!17941)) (EmptyCell!5970) )
))
(declare-datatypes ((array!29013 0))(
  ( (array!29014 (arr!13935 (Array (_ BitVec 32) ValueCell!5970)) (size!14287 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29013)

(assert (=> b!463741 (= res!277342 (and (= (size!14287 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14286 _keys!1025) (size!14287 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463742 () Bool)

(declare-fun res!277341 () Bool)

(assert (=> b!463742 (=> (not res!277341) (not e!270835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29011 (_ BitVec 32)) Bool)

(assert (=> b!463742 (= res!277341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20617 () Bool)

(declare-fun mapRes!20617 () Bool)

(declare-fun tp!39595 () Bool)

(declare-fun e!270833 () Bool)

(assert (=> mapNonEmpty!20617 (= mapRes!20617 (and tp!39595 e!270833))))

(declare-fun mapRest!20617 () (Array (_ BitVec 32) ValueCell!5970))

(declare-fun mapKey!20617 () (_ BitVec 32))

(declare-fun mapValue!20617 () ValueCell!5970)

(assert (=> mapNonEmpty!20617 (= (arr!13935 _values!833) (store mapRest!20617 mapKey!20617 mapValue!20617))))

(declare-fun mapIsEmpty!20617 () Bool)

(assert (=> mapIsEmpty!20617 mapRes!20617))

(declare-fun b!463743 () Bool)

(declare-fun e!270834 () Bool)

(declare-fun tp_is_empty!12627 () Bool)

(assert (=> b!463743 (= e!270834 tp_is_empty!12627)))

(declare-fun b!463744 () Bool)

(declare-fun res!277343 () Bool)

(assert (=> b!463744 (=> (not res!277343) (not e!270835))))

(declare-datatypes ((List!8435 0))(
  ( (Nil!8432) (Cons!8431 (h!9287 (_ BitVec 64)) (t!14389 List!8435)) )
))
(declare-fun arrayNoDuplicates!0 (array!29011 (_ BitVec 32) List!8435) Bool)

(assert (=> b!463744 (= res!277343 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8432))))

(declare-fun b!463745 () Bool)

(assert (=> b!463745 (= e!270833 tp_is_empty!12627)))

(declare-fun res!277340 () Bool)

(assert (=> start!41540 (=> (not res!277340) (not e!270835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41540 (= res!277340 (validMask!0 mask!1365))))

(assert (=> start!41540 e!270835))

(assert (=> start!41540 tp_is_empty!12627))

(assert (=> start!41540 tp!39594))

(assert (=> start!41540 true))

(declare-fun array_inv!10050 (array!29011) Bool)

(assert (=> start!41540 (array_inv!10050 _keys!1025)))

(declare-fun e!270832 () Bool)

(declare-fun array_inv!10051 (array!29013) Bool)

(assert (=> start!41540 (and (array_inv!10051 _values!833) e!270832)))

(declare-fun b!463746 () Bool)

(assert (=> b!463746 (= e!270832 (and e!270834 mapRes!20617))))

(declare-fun condMapEmpty!20617 () Bool)

(declare-fun mapDefault!20617 () ValueCell!5970)

(assert (=> b!463746 (= condMapEmpty!20617 (= (arr!13935 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5970)) mapDefault!20617)))))

(declare-fun b!463747 () Bool)

(assert (=> b!463747 (= e!270835 false)))

(declare-datatypes ((tuple2!8310 0))(
  ( (tuple2!8311 (_1!4165 (_ BitVec 64)) (_2!4165 V!17941)) )
))
(declare-datatypes ((List!8436 0))(
  ( (Nil!8433) (Cons!8432 (h!9288 tuple2!8310) (t!14390 List!8436)) )
))
(declare-datatypes ((ListLongMap!7237 0))(
  ( (ListLongMap!7238 (toList!3634 List!8436)) )
))
(declare-fun lt!209484 () ListLongMap!7237)

(declare-fun zeroValue!794 () V!17941)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17941)

(declare-fun getCurrentListMapNoExtraKeys!1802 (array!29011 array!29013 (_ BitVec 32) (_ BitVec 32) V!17941 V!17941 (_ BitVec 32) Int) ListLongMap!7237)

(assert (=> b!463747 (= lt!209484 (getCurrentListMapNoExtraKeys!1802 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!209483 () ListLongMap!7237)

(declare-fun minValueBefore!38 () V!17941)

(assert (=> b!463747 (= lt!209483 (getCurrentListMapNoExtraKeys!1802 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41540 res!277340) b!463741))

(assert (= (and b!463741 res!277342) b!463742))

(assert (= (and b!463742 res!277341) b!463744))

(assert (= (and b!463744 res!277343) b!463747))

(assert (= (and b!463746 condMapEmpty!20617) mapIsEmpty!20617))

(assert (= (and b!463746 (not condMapEmpty!20617)) mapNonEmpty!20617))

(get-info :version)

(assert (= (and mapNonEmpty!20617 ((_ is ValueCellFull!5970) mapValue!20617)) b!463745))

(assert (= (and b!463746 ((_ is ValueCellFull!5970) mapDefault!20617)) b!463743))

(assert (= start!41540 b!463746))

(declare-fun m!446249 () Bool)

(assert (=> b!463744 m!446249))

(declare-fun m!446251 () Bool)

(assert (=> start!41540 m!446251))

(declare-fun m!446253 () Bool)

(assert (=> start!41540 m!446253))

(declare-fun m!446255 () Bool)

(assert (=> start!41540 m!446255))

(declare-fun m!446257 () Bool)

(assert (=> b!463747 m!446257))

(declare-fun m!446259 () Bool)

(assert (=> b!463747 m!446259))

(declare-fun m!446261 () Bool)

(assert (=> mapNonEmpty!20617 m!446261))

(declare-fun m!446263 () Bool)

(assert (=> b!463742 m!446263))

(check-sat (not start!41540) b_and!19557 tp_is_empty!12627 (not b!463744) (not b!463747) (not b!463742) (not b_next!11199) (not mapNonEmpty!20617))
(check-sat b_and!19557 (not b_next!11199))
