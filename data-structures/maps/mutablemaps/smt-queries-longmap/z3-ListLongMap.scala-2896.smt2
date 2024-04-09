; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41528 () Bool)

(assert start!41528)

(declare-fun b_free!11187 () Bool)

(declare-fun b_next!11187 () Bool)

(assert (=> start!41528 (= b_free!11187 (not b_next!11187))))

(declare-fun tp!39559 () Bool)

(declare-fun b_and!19545 () Bool)

(assert (=> start!41528 (= tp!39559 b_and!19545)))

(declare-fun b!463615 () Bool)

(declare-fun res!277269 () Bool)

(declare-fun e!270741 () Bool)

(assert (=> b!463615 (=> (not res!277269) (not e!270741))))

(declare-datatypes ((array!28987 0))(
  ( (array!28988 (arr!13922 (Array (_ BitVec 32) (_ BitVec 64))) (size!14274 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28987)

(declare-datatypes ((List!8425 0))(
  ( (Nil!8422) (Cons!8421 (h!9277 (_ BitVec 64)) (t!14379 List!8425)) )
))
(declare-fun arrayNoDuplicates!0 (array!28987 (_ BitVec 32) List!8425) Bool)

(assert (=> b!463615 (= res!277269 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8422))))

(declare-fun b!463616 () Bool)

(declare-fun res!277271 () Bool)

(assert (=> b!463616 (=> (not res!277271) (not e!270741))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17925 0))(
  ( (V!17926 (val!6352 Int)) )
))
(declare-datatypes ((ValueCell!5964 0))(
  ( (ValueCellFull!5964 (v!8635 V!17925)) (EmptyCell!5964) )
))
(declare-datatypes ((array!28989 0))(
  ( (array!28990 (arr!13923 (Array (_ BitVec 32) ValueCell!5964)) (size!14275 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28989)

(assert (=> b!463616 (= res!277271 (and (= (size!14275 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14274 _keys!1025) (size!14275 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463617 () Bool)

(declare-fun e!270742 () Bool)

(declare-fun e!270743 () Bool)

(declare-fun mapRes!20599 () Bool)

(assert (=> b!463617 (= e!270742 (and e!270743 mapRes!20599))))

(declare-fun condMapEmpty!20599 () Bool)

(declare-fun mapDefault!20599 () ValueCell!5964)

(assert (=> b!463617 (= condMapEmpty!20599 (= (arr!13923 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5964)) mapDefault!20599)))))

(declare-fun mapNonEmpty!20599 () Bool)

(declare-fun tp!39558 () Bool)

(declare-fun e!270745 () Bool)

(assert (=> mapNonEmpty!20599 (= mapRes!20599 (and tp!39558 e!270745))))

(declare-fun mapRest!20599 () (Array (_ BitVec 32) ValueCell!5964))

(declare-fun mapKey!20599 () (_ BitVec 32))

(declare-fun mapValue!20599 () ValueCell!5964)

(assert (=> mapNonEmpty!20599 (= (arr!13923 _values!833) (store mapRest!20599 mapKey!20599 mapValue!20599))))

(declare-fun b!463618 () Bool)

(declare-fun tp_is_empty!12615 () Bool)

(assert (=> b!463618 (= e!270745 tp_is_empty!12615)))

(declare-fun b!463619 () Bool)

(assert (=> b!463619 (= e!270741 false)))

(declare-fun zeroValue!794 () V!17925)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8300 0))(
  ( (tuple2!8301 (_1!4160 (_ BitVec 64)) (_2!4160 V!17925)) )
))
(declare-datatypes ((List!8426 0))(
  ( (Nil!8423) (Cons!8422 (h!9278 tuple2!8300) (t!14380 List!8426)) )
))
(declare-datatypes ((ListLongMap!7227 0))(
  ( (ListLongMap!7228 (toList!3629 List!8426)) )
))
(declare-fun lt!209447 () ListLongMap!7227)

(declare-fun minValueAfter!38 () V!17925)

(declare-fun getCurrentListMapNoExtraKeys!1797 (array!28987 array!28989 (_ BitVec 32) (_ BitVec 32) V!17925 V!17925 (_ BitVec 32) Int) ListLongMap!7227)

(assert (=> b!463619 (= lt!209447 (getCurrentListMapNoExtraKeys!1797 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17925)

(declare-fun lt!209448 () ListLongMap!7227)

(assert (=> b!463619 (= lt!209448 (getCurrentListMapNoExtraKeys!1797 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463620 () Bool)

(declare-fun res!277270 () Bool)

(assert (=> b!463620 (=> (not res!277270) (not e!270741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28987 (_ BitVec 32)) Bool)

(assert (=> b!463620 (= res!277270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463621 () Bool)

(assert (=> b!463621 (= e!270743 tp_is_empty!12615)))

(declare-fun res!277268 () Bool)

(assert (=> start!41528 (=> (not res!277268) (not e!270741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41528 (= res!277268 (validMask!0 mask!1365))))

(assert (=> start!41528 e!270741))

(assert (=> start!41528 tp_is_empty!12615))

(assert (=> start!41528 tp!39559))

(assert (=> start!41528 true))

(declare-fun array_inv!10042 (array!28987) Bool)

(assert (=> start!41528 (array_inv!10042 _keys!1025)))

(declare-fun array_inv!10043 (array!28989) Bool)

(assert (=> start!41528 (and (array_inv!10043 _values!833) e!270742)))

(declare-fun mapIsEmpty!20599 () Bool)

(assert (=> mapIsEmpty!20599 mapRes!20599))

(assert (= (and start!41528 res!277268) b!463616))

(assert (= (and b!463616 res!277271) b!463620))

(assert (= (and b!463620 res!277270) b!463615))

(assert (= (and b!463615 res!277269) b!463619))

(assert (= (and b!463617 condMapEmpty!20599) mapIsEmpty!20599))

(assert (= (and b!463617 (not condMapEmpty!20599)) mapNonEmpty!20599))

(get-info :version)

(assert (= (and mapNonEmpty!20599 ((_ is ValueCellFull!5964) mapValue!20599)) b!463618))

(assert (= (and b!463617 ((_ is ValueCellFull!5964) mapDefault!20599)) b!463621))

(assert (= start!41528 b!463617))

(declare-fun m!446153 () Bool)

(assert (=> mapNonEmpty!20599 m!446153))

(declare-fun m!446155 () Bool)

(assert (=> b!463620 m!446155))

(declare-fun m!446157 () Bool)

(assert (=> b!463615 m!446157))

(declare-fun m!446159 () Bool)

(assert (=> b!463619 m!446159))

(declare-fun m!446161 () Bool)

(assert (=> b!463619 m!446161))

(declare-fun m!446163 () Bool)

(assert (=> start!41528 m!446163))

(declare-fun m!446165 () Bool)

(assert (=> start!41528 m!446165))

(declare-fun m!446167 () Bool)

(assert (=> start!41528 m!446167))

(check-sat (not b!463619) b_and!19545 (not b_next!11187) (not b!463620) (not mapNonEmpty!20599) (not b!463615) (not start!41528) tp_is_empty!12615)
(check-sat b_and!19545 (not b_next!11187))
