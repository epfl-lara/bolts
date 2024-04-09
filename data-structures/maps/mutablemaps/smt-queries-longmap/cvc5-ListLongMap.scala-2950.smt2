; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41928 () Bool)

(assert start!41928)

(declare-fun b_free!11509 () Bool)

(declare-fun b_next!11509 () Bool)

(assert (=> start!41928 (= b_free!11509 (not b_next!11509))))

(declare-fun tp!40540 () Bool)

(declare-fun b_and!19915 () Bool)

(assert (=> start!41928 (= tp!40540 b_and!19915)))

(declare-fun b!467819 () Bool)

(declare-fun res!279657 () Bool)

(declare-fun e!273746 () Bool)

(assert (=> b!467819 (=> (not res!279657) (not e!273746))))

(declare-datatypes ((array!29607 0))(
  ( (array!29608 (arr!14227 (Array (_ BitVec 32) (_ BitVec 64))) (size!14579 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29607)

(declare-datatypes ((List!8655 0))(
  ( (Nil!8652) (Cons!8651 (h!9507 (_ BitVec 64)) (t!14619 List!8655)) )
))
(declare-fun arrayNoDuplicates!0 (array!29607 (_ BitVec 32) List!8655) Bool)

(assert (=> b!467819 (= res!279657 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8652))))

(declare-fun b!467820 () Bool)

(declare-fun e!273742 () Bool)

(assert (=> b!467820 (= e!273746 (not e!273742))))

(declare-fun res!279661 () Bool)

(assert (=> b!467820 (=> res!279661 e!273742)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467820 (= res!279661 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18355 0))(
  ( (V!18356 (val!6513 Int)) )
))
(declare-datatypes ((tuple2!8536 0))(
  ( (tuple2!8537 (_1!4278 (_ BitVec 64)) (_2!4278 V!18355)) )
))
(declare-datatypes ((List!8656 0))(
  ( (Nil!8653) (Cons!8652 (h!9508 tuple2!8536) (t!14620 List!8656)) )
))
(declare-datatypes ((ListLongMap!7463 0))(
  ( (ListLongMap!7464 (toList!3747 List!8656)) )
))
(declare-fun lt!211585 () ListLongMap!7463)

(declare-fun lt!211582 () ListLongMap!7463)

(assert (=> b!467820 (= lt!211585 lt!211582)))

(declare-fun minValueBefore!38 () V!18355)

(declare-fun zeroValue!794 () V!18355)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6125 0))(
  ( (ValueCellFull!6125 (v!8798 V!18355)) (EmptyCell!6125) )
))
(declare-datatypes ((array!29609 0))(
  ( (array!29610 (arr!14228 (Array (_ BitVec 32) ValueCell!6125)) (size!14580 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29609)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13615 0))(
  ( (Unit!13616) )
))
(declare-fun lt!211583 () Unit!13615)

(declare-fun minValueAfter!38 () V!18355)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!108 (array!29607 array!29609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18355 V!18355 V!18355 V!18355 (_ BitVec 32) Int) Unit!13615)

(assert (=> b!467820 (= lt!211583 (lemmaNoChangeToArrayThenSameMapNoExtras!108 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1913 (array!29607 array!29609 (_ BitVec 32) (_ BitVec 32) V!18355 V!18355 (_ BitVec 32) Int) ListLongMap!7463)

(assert (=> b!467820 (= lt!211582 (getCurrentListMapNoExtraKeys!1913 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467820 (= lt!211585 (getCurrentListMapNoExtraKeys!1913 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467821 () Bool)

(assert (=> b!467821 (= e!273742 true)))

(declare-fun lt!211584 () ListLongMap!7463)

(declare-fun getCurrentListMap!2165 (array!29607 array!29609 (_ BitVec 32) (_ BitVec 32) V!18355 V!18355 (_ BitVec 32) Int) ListLongMap!7463)

(assert (=> b!467821 (= lt!211584 (getCurrentListMap!2165 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467822 () Bool)

(declare-fun res!279659 () Bool)

(assert (=> b!467822 (=> (not res!279659) (not e!273746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29607 (_ BitVec 32)) Bool)

(assert (=> b!467822 (= res!279659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467823 () Bool)

(declare-fun e!273745 () Bool)

(declare-fun tp_is_empty!12937 () Bool)

(assert (=> b!467823 (= e!273745 tp_is_empty!12937)))

(declare-fun mapNonEmpty!21097 () Bool)

(declare-fun mapRes!21097 () Bool)

(declare-fun tp!40539 () Bool)

(assert (=> mapNonEmpty!21097 (= mapRes!21097 (and tp!40539 e!273745))))

(declare-fun mapKey!21097 () (_ BitVec 32))

(declare-fun mapValue!21097 () ValueCell!6125)

(declare-fun mapRest!21097 () (Array (_ BitVec 32) ValueCell!6125))

(assert (=> mapNonEmpty!21097 (= (arr!14228 _values!833) (store mapRest!21097 mapKey!21097 mapValue!21097))))

(declare-fun b!467824 () Bool)

(declare-fun e!273741 () Bool)

(declare-fun e!273744 () Bool)

(assert (=> b!467824 (= e!273741 (and e!273744 mapRes!21097))))

(declare-fun condMapEmpty!21097 () Bool)

(declare-fun mapDefault!21097 () ValueCell!6125)

