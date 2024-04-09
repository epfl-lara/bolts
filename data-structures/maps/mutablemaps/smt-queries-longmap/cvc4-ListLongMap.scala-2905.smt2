; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41584 () Bool)

(assert start!41584)

(declare-fun b_free!11243 () Bool)

(declare-fun b_next!11243 () Bool)

(assert (=> start!41584 (= b_free!11243 (not b_next!11243))))

(declare-fun tp!39727 () Bool)

(declare-fun b_and!19601 () Bool)

(assert (=> start!41584 (= tp!39727 b_and!19601)))

(declare-fun res!277606 () Bool)

(declare-fun e!271164 () Bool)

(assert (=> start!41584 (=> (not res!277606) (not e!271164))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41584 (= res!277606 (validMask!0 mask!1365))))

(assert (=> start!41584 e!271164))

(declare-fun tp_is_empty!12671 () Bool)

(assert (=> start!41584 tp_is_empty!12671))

(assert (=> start!41584 tp!39727))

(assert (=> start!41584 true))

(declare-datatypes ((array!29091 0))(
  ( (array!29092 (arr!13974 (Array (_ BitVec 32) (_ BitVec 64))) (size!14326 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29091)

(declare-fun array_inv!10076 (array!29091) Bool)

(assert (=> start!41584 (array_inv!10076 _keys!1025)))

(declare-datatypes ((V!17999 0))(
  ( (V!18000 (val!6380 Int)) )
))
(declare-datatypes ((ValueCell!5992 0))(
  ( (ValueCellFull!5992 (v!8663 V!17999)) (EmptyCell!5992) )
))
(declare-datatypes ((array!29093 0))(
  ( (array!29094 (arr!13975 (Array (_ BitVec 32) ValueCell!5992)) (size!14327 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29093)

(declare-fun e!271161 () Bool)

(declare-fun array_inv!10077 (array!29093) Bool)

(assert (=> start!41584 (and (array_inv!10077 _values!833) e!271161)))

(declare-fun b!464203 () Bool)

(declare-fun res!277605 () Bool)

(assert (=> b!464203 (=> (not res!277605) (not e!271164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29091 (_ BitVec 32)) Bool)

(assert (=> b!464203 (= res!277605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464204 () Bool)

(declare-fun e!271163 () Bool)

(assert (=> b!464204 (= e!271163 tp_is_empty!12671)))

(declare-fun mapIsEmpty!20683 () Bool)

(declare-fun mapRes!20683 () Bool)

(assert (=> mapIsEmpty!20683 mapRes!20683))

(declare-fun b!464205 () Bool)

(declare-fun res!277604 () Bool)

(assert (=> b!464205 (=> (not res!277604) (not e!271164))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464205 (= res!277604 (and (= (size!14327 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14326 _keys!1025) (size!14327 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464206 () Bool)

(declare-fun e!271165 () Bool)

(assert (=> b!464206 (= e!271165 tp_is_empty!12671)))

(declare-fun b!464207 () Bool)

(declare-fun res!277607 () Bool)

(assert (=> b!464207 (=> (not res!277607) (not e!271164))))

(declare-datatypes ((List!8464 0))(
  ( (Nil!8461) (Cons!8460 (h!9316 (_ BitVec 64)) (t!14418 List!8464)) )
))
(declare-fun arrayNoDuplicates!0 (array!29091 (_ BitVec 32) List!8464) Bool)

(assert (=> b!464207 (= res!277607 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8461))))

(declare-fun b!464208 () Bool)

(assert (=> b!464208 (= e!271164 (not true))))

(declare-datatypes ((tuple2!8336 0))(
  ( (tuple2!8337 (_1!4178 (_ BitVec 64)) (_2!4178 V!17999)) )
))
(declare-datatypes ((List!8465 0))(
  ( (Nil!8462) (Cons!8461 (h!9317 tuple2!8336) (t!14419 List!8465)) )
))
(declare-datatypes ((ListLongMap!7263 0))(
  ( (ListLongMap!7264 (toList!3647 List!8465)) )
))
(declare-fun lt!209660 () ListLongMap!7263)

(declare-fun lt!209659 () ListLongMap!7263)

(assert (=> b!464208 (= lt!209660 lt!209659)))

(declare-fun minValueBefore!38 () V!17999)

(declare-fun zeroValue!794 () V!17999)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13415 0))(
  ( (Unit!13416) )
))
(declare-fun lt!209661 () Unit!13415)

(declare-fun minValueAfter!38 () V!17999)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!10 (array!29091 array!29093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17999 V!17999 V!17999 V!17999 (_ BitVec 32) Int) Unit!13415)

(assert (=> b!464208 (= lt!209661 (lemmaNoChangeToArrayThenSameMapNoExtras!10 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1815 (array!29091 array!29093 (_ BitVec 32) (_ BitVec 32) V!17999 V!17999 (_ BitVec 32) Int) ListLongMap!7263)

(assert (=> b!464208 (= lt!209659 (getCurrentListMapNoExtraKeys!1815 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464208 (= lt!209660 (getCurrentListMapNoExtraKeys!1815 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20683 () Bool)

(declare-fun tp!39726 () Bool)

(assert (=> mapNonEmpty!20683 (= mapRes!20683 (and tp!39726 e!271163))))

(declare-fun mapValue!20683 () ValueCell!5992)

(declare-fun mapKey!20683 () (_ BitVec 32))

(declare-fun mapRest!20683 () (Array (_ BitVec 32) ValueCell!5992))

(assert (=> mapNonEmpty!20683 (= (arr!13975 _values!833) (store mapRest!20683 mapKey!20683 mapValue!20683))))

(declare-fun b!464209 () Bool)

(assert (=> b!464209 (= e!271161 (and e!271165 mapRes!20683))))

(declare-fun condMapEmpty!20683 () Bool)

(declare-fun mapDefault!20683 () ValueCell!5992)

