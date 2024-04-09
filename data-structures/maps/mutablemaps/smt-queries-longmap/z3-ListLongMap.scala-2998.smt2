; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42302 () Bool)

(assert start!42302)

(declare-fun b_free!11799 () Bool)

(declare-fun b_next!11799 () Bool)

(assert (=> start!42302 (= b_free!11799 (not b_next!11799))))

(declare-fun tp!41424 () Bool)

(declare-fun b_and!20255 () Bool)

(assert (=> start!42302 (= tp!41424 b_and!20255)))

(declare-fun mapIsEmpty!21547 () Bool)

(declare-fun mapRes!21547 () Bool)

(assert (=> mapIsEmpty!21547 mapRes!21547))

(declare-fun res!281878 () Bool)

(declare-fun e!276552 () Bool)

(assert (=> start!42302 (=> (not res!281878) (not e!276552))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42302 (= res!281878 (validMask!0 mask!1365))))

(assert (=> start!42302 e!276552))

(declare-fun tp_is_empty!13227 () Bool)

(assert (=> start!42302 tp_is_empty!13227))

(assert (=> start!42302 tp!41424))

(assert (=> start!42302 true))

(declare-datatypes ((array!30177 0))(
  ( (array!30178 (arr!14507 (Array (_ BitVec 32) (_ BitVec 64))) (size!14859 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30177)

(declare-fun array_inv!10468 (array!30177) Bool)

(assert (=> start!42302 (array_inv!10468 _keys!1025)))

(declare-datatypes ((V!18741 0))(
  ( (V!18742 (val!6658 Int)) )
))
(declare-datatypes ((ValueCell!6270 0))(
  ( (ValueCellFull!6270 (v!8945 V!18741)) (EmptyCell!6270) )
))
(declare-datatypes ((array!30179 0))(
  ( (array!30180 (arr!14508 (Array (_ BitVec 32) ValueCell!6270)) (size!14860 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30179)

(declare-fun e!276551 () Bool)

(declare-fun array_inv!10469 (array!30179) Bool)

(assert (=> start!42302 (and (array_inv!10469 _values!833) e!276551)))

(declare-fun mapNonEmpty!21547 () Bool)

(declare-fun tp!41425 () Bool)

(declare-fun e!276553 () Bool)

(assert (=> mapNonEmpty!21547 (= mapRes!21547 (and tp!41425 e!276553))))

(declare-fun mapRest!21547 () (Array (_ BitVec 32) ValueCell!6270))

(declare-fun mapKey!21547 () (_ BitVec 32))

(declare-fun mapValue!21547 () ValueCell!6270)

(assert (=> mapNonEmpty!21547 (= (arr!14508 _values!833) (store mapRest!21547 mapKey!21547 mapValue!21547))))

(declare-fun b!471745 () Bool)

(declare-fun res!281876 () Bool)

(assert (=> b!471745 (=> (not res!281876) (not e!276552))))

(declare-datatypes ((List!8866 0))(
  ( (Nil!8863) (Cons!8862 (h!9718 (_ BitVec 64)) (t!14840 List!8866)) )
))
(declare-fun arrayNoDuplicates!0 (array!30177 (_ BitVec 32) List!8866) Bool)

(assert (=> b!471745 (= res!281876 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8863))))

(declare-fun b!471746 () Bool)

(assert (=> b!471746 (= e!276553 tp_is_empty!13227)))

(declare-fun b!471747 () Bool)

(declare-fun e!276550 () Bool)

(assert (=> b!471747 (= e!276550 tp_is_empty!13227)))

(declare-fun b!471748 () Bool)

(assert (=> b!471748 (= e!276551 (and e!276550 mapRes!21547))))

(declare-fun condMapEmpty!21547 () Bool)

(declare-fun mapDefault!21547 () ValueCell!6270)

(assert (=> b!471748 (= condMapEmpty!21547 (= (arr!14508 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6270)) mapDefault!21547)))))

(declare-fun b!471749 () Bool)

(declare-fun res!281877 () Bool)

(assert (=> b!471749 (=> (not res!281877) (not e!276552))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471749 (= res!281877 (and (= (size!14860 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14859 _keys!1025) (size!14860 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471750 () Bool)

(declare-fun res!281879 () Bool)

(assert (=> b!471750 (=> (not res!281879) (not e!276552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30177 (_ BitVec 32)) Bool)

(assert (=> b!471750 (= res!281879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471751 () Bool)

(assert (=> b!471751 (= e!276552 (not true))))

(declare-datatypes ((tuple2!8750 0))(
  ( (tuple2!8751 (_1!4385 (_ BitVec 64)) (_2!4385 V!18741)) )
))
(declare-datatypes ((List!8867 0))(
  ( (Nil!8864) (Cons!8863 (h!9719 tuple2!8750) (t!14841 List!8867)) )
))
(declare-datatypes ((ListLongMap!7677 0))(
  ( (ListLongMap!7678 (toList!3854 List!8867)) )
))
(declare-fun lt!214068 () ListLongMap!7677)

(declare-fun lt!214066 () ListLongMap!7677)

(assert (=> b!471751 (= lt!214068 lt!214066)))

(declare-fun minValueBefore!38 () V!18741)

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!18741)

(declare-datatypes ((Unit!13834 0))(
  ( (Unit!13835) )
))
(declare-fun lt!214067 () Unit!13834)

(declare-fun minValueAfter!38 () V!18741)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!211 (array!30177 array!30179 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18741 V!18741 V!18741 V!18741 (_ BitVec 32) Int) Unit!13834)

(assert (=> b!471751 (= lt!214067 (lemmaNoChangeToArrayThenSameMapNoExtras!211 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2016 (array!30177 array!30179 (_ BitVec 32) (_ BitVec 32) V!18741 V!18741 (_ BitVec 32) Int) ListLongMap!7677)

(assert (=> b!471751 (= lt!214066 (getCurrentListMapNoExtraKeys!2016 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471751 (= lt!214068 (getCurrentListMapNoExtraKeys!2016 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42302 res!281878) b!471749))

(assert (= (and b!471749 res!281877) b!471750))

(assert (= (and b!471750 res!281879) b!471745))

(assert (= (and b!471745 res!281876) b!471751))

(assert (= (and b!471748 condMapEmpty!21547) mapIsEmpty!21547))

(assert (= (and b!471748 (not condMapEmpty!21547)) mapNonEmpty!21547))

(get-info :version)

(assert (= (and mapNonEmpty!21547 ((_ is ValueCellFull!6270) mapValue!21547)) b!471746))

(assert (= (and b!471748 ((_ is ValueCellFull!6270) mapDefault!21547)) b!471747))

(assert (= start!42302 b!471748))

(declare-fun m!453841 () Bool)

(assert (=> mapNonEmpty!21547 m!453841))

(declare-fun m!453843 () Bool)

(assert (=> b!471751 m!453843))

(declare-fun m!453845 () Bool)

(assert (=> b!471751 m!453845))

(declare-fun m!453847 () Bool)

(assert (=> b!471751 m!453847))

(declare-fun m!453849 () Bool)

(assert (=> b!471750 m!453849))

(declare-fun m!453851 () Bool)

(assert (=> start!42302 m!453851))

(declare-fun m!453853 () Bool)

(assert (=> start!42302 m!453853))

(declare-fun m!453855 () Bool)

(assert (=> start!42302 m!453855))

(declare-fun m!453857 () Bool)

(assert (=> b!471745 m!453857))

(check-sat (not b_next!11799) (not b!471750) b_and!20255 (not start!42302) (not mapNonEmpty!21547) tp_is_empty!13227 (not b!471751) (not b!471745))
(check-sat b_and!20255 (not b_next!11799))
