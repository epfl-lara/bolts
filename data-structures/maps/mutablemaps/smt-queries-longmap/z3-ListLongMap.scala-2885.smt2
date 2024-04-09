; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41450 () Bool)

(assert start!41450)

(declare-fun b_free!11121 () Bool)

(declare-fun b_next!11121 () Bool)

(assert (=> start!41450 (= b_free!11121 (not b_next!11121))))

(declare-fun tp!39357 () Bool)

(declare-fun b_and!19475 () Bool)

(assert (=> start!41450 (= tp!39357 b_and!19475)))

(declare-fun b!462849 () Bool)

(declare-fun res!276845 () Bool)

(declare-fun e!270198 () Bool)

(assert (=> b!462849 (=> (not res!276845) (not e!270198))))

(declare-datatypes ((array!28859 0))(
  ( (array!28860 (arr!13859 (Array (_ BitVec 32) (_ BitVec 64))) (size!14211 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28859)

(declare-datatypes ((List!8374 0))(
  ( (Nil!8371) (Cons!8370 (h!9226 (_ BitVec 64)) (t!14326 List!8374)) )
))
(declare-fun arrayNoDuplicates!0 (array!28859 (_ BitVec 32) List!8374) Bool)

(assert (=> b!462849 (= res!276845 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8371))))

(declare-fun res!276846 () Bool)

(assert (=> start!41450 (=> (not res!276846) (not e!270198))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41450 (= res!276846 (validMask!0 mask!1365))))

(assert (=> start!41450 e!270198))

(declare-fun tp_is_empty!12549 () Bool)

(assert (=> start!41450 tp_is_empty!12549))

(assert (=> start!41450 tp!39357))

(assert (=> start!41450 true))

(declare-fun array_inv!10000 (array!28859) Bool)

(assert (=> start!41450 (array_inv!10000 _keys!1025)))

(declare-datatypes ((V!17837 0))(
  ( (V!17838 (val!6319 Int)) )
))
(declare-datatypes ((ValueCell!5931 0))(
  ( (ValueCellFull!5931 (v!8602 V!17837)) (EmptyCell!5931) )
))
(declare-datatypes ((array!28861 0))(
  ( (array!28862 (arr!13860 (Array (_ BitVec 32) ValueCell!5931)) (size!14212 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28861)

(declare-fun e!270201 () Bool)

(declare-fun array_inv!10001 (array!28861) Bool)

(assert (=> start!41450 (and (array_inv!10001 _values!833) e!270201)))

(declare-fun b!462850 () Bool)

(declare-fun e!270199 () Bool)

(declare-fun mapRes!20497 () Bool)

(assert (=> b!462850 (= e!270201 (and e!270199 mapRes!20497))))

(declare-fun condMapEmpty!20497 () Bool)

(declare-fun mapDefault!20497 () ValueCell!5931)

(assert (=> b!462850 (= condMapEmpty!20497 (= (arr!13860 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5931)) mapDefault!20497)))))

(declare-fun b!462851 () Bool)

(declare-fun res!276848 () Bool)

(assert (=> b!462851 (=> (not res!276848) (not e!270198))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462851 (= res!276848 (and (= (size!14212 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14211 _keys!1025) (size!14212 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20497 () Bool)

(declare-fun tp!39358 () Bool)

(declare-fun e!270200 () Bool)

(assert (=> mapNonEmpty!20497 (= mapRes!20497 (and tp!39358 e!270200))))

(declare-fun mapKey!20497 () (_ BitVec 32))

(declare-fun mapValue!20497 () ValueCell!5931)

(declare-fun mapRest!20497 () (Array (_ BitVec 32) ValueCell!5931))

(assert (=> mapNonEmpty!20497 (= (arr!13860 _values!833) (store mapRest!20497 mapKey!20497 mapValue!20497))))

(declare-fun b!462852 () Bool)

(assert (=> b!462852 (= e!270198 false)))

(declare-datatypes ((tuple2!8246 0))(
  ( (tuple2!8247 (_1!4133 (_ BitVec 64)) (_2!4133 V!17837)) )
))
(declare-datatypes ((List!8375 0))(
  ( (Nil!8372) (Cons!8371 (h!9227 tuple2!8246) (t!14327 List!8375)) )
))
(declare-datatypes ((ListLongMap!7173 0))(
  ( (ListLongMap!7174 (toList!3602 List!8375)) )
))
(declare-fun lt!209259 () ListLongMap!7173)

(declare-fun minValueBefore!38 () V!17837)

(declare-fun zeroValue!794 () V!17837)

(declare-fun defaultEntry!841 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1770 (array!28859 array!28861 (_ BitVec 32) (_ BitVec 32) V!17837 V!17837 (_ BitVec 32) Int) ListLongMap!7173)

(assert (=> b!462852 (= lt!209259 (getCurrentListMapNoExtraKeys!1770 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462853 () Bool)

(assert (=> b!462853 (= e!270199 tp_is_empty!12549)))

(declare-fun b!462854 () Bool)

(assert (=> b!462854 (= e!270200 tp_is_empty!12549)))

(declare-fun b!462855 () Bool)

(declare-fun res!276847 () Bool)

(assert (=> b!462855 (=> (not res!276847) (not e!270198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28859 (_ BitVec 32)) Bool)

(assert (=> b!462855 (= res!276847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20497 () Bool)

(assert (=> mapIsEmpty!20497 mapRes!20497))

(assert (= (and start!41450 res!276846) b!462851))

(assert (= (and b!462851 res!276848) b!462855))

(assert (= (and b!462855 res!276847) b!462849))

(assert (= (and b!462849 res!276845) b!462852))

(assert (= (and b!462850 condMapEmpty!20497) mapIsEmpty!20497))

(assert (= (and b!462850 (not condMapEmpty!20497)) mapNonEmpty!20497))

(get-info :version)

(assert (= (and mapNonEmpty!20497 ((_ is ValueCellFull!5931) mapValue!20497)) b!462854))

(assert (= (and b!462850 ((_ is ValueCellFull!5931) mapDefault!20497)) b!462853))

(assert (= start!41450 b!462850))

(declare-fun m!445609 () Bool)

(assert (=> start!41450 m!445609))

(declare-fun m!445611 () Bool)

(assert (=> start!41450 m!445611))

(declare-fun m!445613 () Bool)

(assert (=> start!41450 m!445613))

(declare-fun m!445615 () Bool)

(assert (=> mapNonEmpty!20497 m!445615))

(declare-fun m!445617 () Bool)

(assert (=> b!462855 m!445617))

(declare-fun m!445619 () Bool)

(assert (=> b!462849 m!445619))

(declare-fun m!445621 () Bool)

(assert (=> b!462852 m!445621))

(check-sat b_and!19475 tp_is_empty!12549 (not b!462849) (not b!462852) (not b!462855) (not start!41450) (not mapNonEmpty!20497) (not b_next!11121))
(check-sat b_and!19475 (not b_next!11121))
