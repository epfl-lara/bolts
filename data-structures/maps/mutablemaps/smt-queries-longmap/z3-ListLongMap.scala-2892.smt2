; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41504 () Bool)

(assert start!41504)

(declare-fun b_free!11163 () Bool)

(declare-fun b_next!11163 () Bool)

(assert (=> start!41504 (= b_free!11163 (not b_next!11163))))

(declare-fun tp!39487 () Bool)

(declare-fun b_and!19521 () Bool)

(assert (=> start!41504 (= tp!39487 b_and!19521)))

(declare-fun b!463363 () Bool)

(declare-fun e!270562 () Bool)

(declare-fun tp_is_empty!12591 () Bool)

(assert (=> b!463363 (= e!270562 tp_is_empty!12591)))

(declare-fun b!463364 () Bool)

(declare-fun e!270564 () Bool)

(assert (=> b!463364 (= e!270564 false)))

(declare-datatypes ((V!17893 0))(
  ( (V!17894 (val!6340 Int)) )
))
(declare-fun zeroValue!794 () V!17893)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8280 0))(
  ( (tuple2!8281 (_1!4150 (_ BitVec 64)) (_2!4150 V!17893)) )
))
(declare-datatypes ((List!8406 0))(
  ( (Nil!8403) (Cons!8402 (h!9258 tuple2!8280) (t!14360 List!8406)) )
))
(declare-datatypes ((ListLongMap!7207 0))(
  ( (ListLongMap!7208 (toList!3619 List!8406)) )
))
(declare-fun lt!209376 () ListLongMap!7207)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28941 0))(
  ( (array!28942 (arr!13899 (Array (_ BitVec 32) (_ BitVec 64))) (size!14251 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28941)

(declare-datatypes ((ValueCell!5952 0))(
  ( (ValueCellFull!5952 (v!8623 V!17893)) (EmptyCell!5952) )
))
(declare-datatypes ((array!28943 0))(
  ( (array!28944 (arr!13900 (Array (_ BitVec 32) ValueCell!5952)) (size!14252 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28943)

(declare-fun minValueAfter!38 () V!17893)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1787 (array!28941 array!28943 (_ BitVec 32) (_ BitVec 32) V!17893 V!17893 (_ BitVec 32) Int) ListLongMap!7207)

(assert (=> b!463364 (= lt!209376 (getCurrentListMapNoExtraKeys!1787 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17893)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!209375 () ListLongMap!7207)

(assert (=> b!463364 (= lt!209375 (getCurrentListMapNoExtraKeys!1787 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20563 () Bool)

(declare-fun mapRes!20563 () Bool)

(declare-fun tp!39486 () Bool)

(assert (=> mapNonEmpty!20563 (= mapRes!20563 (and tp!39486 e!270562))))

(declare-fun mapRest!20563 () (Array (_ BitVec 32) ValueCell!5952))

(declare-fun mapKey!20563 () (_ BitVec 32))

(declare-fun mapValue!20563 () ValueCell!5952)

(assert (=> mapNonEmpty!20563 (= (arr!13900 _values!833) (store mapRest!20563 mapKey!20563 mapValue!20563))))

(declare-fun b!463365 () Bool)

(declare-fun res!277124 () Bool)

(assert (=> b!463365 (=> (not res!277124) (not e!270564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28941 (_ BitVec 32)) Bool)

(assert (=> b!463365 (= res!277124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463366 () Bool)

(declare-fun res!277125 () Bool)

(assert (=> b!463366 (=> (not res!277125) (not e!270564))))

(declare-datatypes ((List!8407 0))(
  ( (Nil!8404) (Cons!8403 (h!9259 (_ BitVec 64)) (t!14361 List!8407)) )
))
(declare-fun arrayNoDuplicates!0 (array!28941 (_ BitVec 32) List!8407) Bool)

(assert (=> b!463366 (= res!277125 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8404))))

(declare-fun res!277126 () Bool)

(assert (=> start!41504 (=> (not res!277126) (not e!270564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41504 (= res!277126 (validMask!0 mask!1365))))

(assert (=> start!41504 e!270564))

(assert (=> start!41504 tp_is_empty!12591))

(assert (=> start!41504 tp!39487))

(assert (=> start!41504 true))

(declare-fun array_inv!10028 (array!28941) Bool)

(assert (=> start!41504 (array_inv!10028 _keys!1025)))

(declare-fun e!270563 () Bool)

(declare-fun array_inv!10029 (array!28943) Bool)

(assert (=> start!41504 (and (array_inv!10029 _values!833) e!270563)))

(declare-fun b!463367 () Bool)

(declare-fun e!270565 () Bool)

(assert (=> b!463367 (= e!270565 tp_is_empty!12591)))

(declare-fun mapIsEmpty!20563 () Bool)

(assert (=> mapIsEmpty!20563 mapRes!20563))

(declare-fun b!463368 () Bool)

(declare-fun res!277127 () Bool)

(assert (=> b!463368 (=> (not res!277127) (not e!270564))))

(assert (=> b!463368 (= res!277127 (and (= (size!14252 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14251 _keys!1025) (size!14252 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463369 () Bool)

(assert (=> b!463369 (= e!270563 (and e!270565 mapRes!20563))))

(declare-fun condMapEmpty!20563 () Bool)

(declare-fun mapDefault!20563 () ValueCell!5952)

(assert (=> b!463369 (= condMapEmpty!20563 (= (arr!13900 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5952)) mapDefault!20563)))))

(assert (= (and start!41504 res!277126) b!463368))

(assert (= (and b!463368 res!277127) b!463365))

(assert (= (and b!463365 res!277124) b!463366))

(assert (= (and b!463366 res!277125) b!463364))

(assert (= (and b!463369 condMapEmpty!20563) mapIsEmpty!20563))

(assert (= (and b!463369 (not condMapEmpty!20563)) mapNonEmpty!20563))

(get-info :version)

(assert (= (and mapNonEmpty!20563 ((_ is ValueCellFull!5952) mapValue!20563)) b!463363))

(assert (= (and b!463369 ((_ is ValueCellFull!5952) mapDefault!20563)) b!463367))

(assert (= start!41504 b!463369))

(declare-fun m!445961 () Bool)

(assert (=> b!463364 m!445961))

(declare-fun m!445963 () Bool)

(assert (=> b!463364 m!445963))

(declare-fun m!445965 () Bool)

(assert (=> b!463366 m!445965))

(declare-fun m!445967 () Bool)

(assert (=> start!41504 m!445967))

(declare-fun m!445969 () Bool)

(assert (=> start!41504 m!445969))

(declare-fun m!445971 () Bool)

(assert (=> start!41504 m!445971))

(declare-fun m!445973 () Bool)

(assert (=> mapNonEmpty!20563 m!445973))

(declare-fun m!445975 () Bool)

(assert (=> b!463365 m!445975))

(check-sat (not b!463366) (not b!463365) (not b!463364) tp_is_empty!12591 (not start!41504) b_and!19521 (not mapNonEmpty!20563) (not b_next!11163))
(check-sat b_and!19521 (not b_next!11163))
