; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41472 () Bool)

(assert start!41472)

(declare-fun b_free!11143 () Bool)

(declare-fun b_next!11143 () Bool)

(assert (=> start!41472 (= b_free!11143 (not b_next!11143))))

(declare-fun tp!39424 () Bool)

(declare-fun b_and!19497 () Bool)

(assert (=> start!41472 (= tp!39424 b_and!19497)))

(declare-fun b!463080 () Bool)

(declare-fun res!276980 () Bool)

(declare-fun e!270363 () Bool)

(assert (=> b!463080 (=> (not res!276980) (not e!270363))))

(declare-datatypes ((array!28901 0))(
  ( (array!28902 (arr!13880 (Array (_ BitVec 32) (_ BitVec 64))) (size!14232 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28901)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28901 (_ BitVec 32)) Bool)

(assert (=> b!463080 (= res!276980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!276978 () Bool)

(assert (=> start!41472 (=> (not res!276978) (not e!270363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41472 (= res!276978 (validMask!0 mask!1365))))

(assert (=> start!41472 e!270363))

(declare-fun tp_is_empty!12571 () Bool)

(assert (=> start!41472 tp_is_empty!12571))

(assert (=> start!41472 tp!39424))

(assert (=> start!41472 true))

(declare-fun array_inv!10012 (array!28901) Bool)

(assert (=> start!41472 (array_inv!10012 _keys!1025)))

(declare-datatypes ((V!17867 0))(
  ( (V!17868 (val!6330 Int)) )
))
(declare-datatypes ((ValueCell!5942 0))(
  ( (ValueCellFull!5942 (v!8613 V!17867)) (EmptyCell!5942) )
))
(declare-datatypes ((array!28903 0))(
  ( (array!28904 (arr!13881 (Array (_ BitVec 32) ValueCell!5942)) (size!14233 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28903)

(declare-fun e!270364 () Bool)

(declare-fun array_inv!10013 (array!28903) Bool)

(assert (=> start!41472 (and (array_inv!10013 _values!833) e!270364)))

(declare-fun mapIsEmpty!20530 () Bool)

(declare-fun mapRes!20530 () Bool)

(assert (=> mapIsEmpty!20530 mapRes!20530))

(declare-fun b!463081 () Bool)

(declare-fun e!270367 () Bool)

(assert (=> b!463081 (= e!270367 tp_is_empty!12571)))

(declare-fun b!463082 () Bool)

(assert (=> b!463082 (= e!270363 (bvsgt #b00000000000000000000000000000000 (size!14232 _keys!1025)))))

(declare-fun minValueBefore!38 () V!17867)

(declare-fun zeroValue!794 () V!17867)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8266 0))(
  ( (tuple2!8267 (_1!4143 (_ BitVec 64)) (_2!4143 V!17867)) )
))
(declare-datatypes ((List!8393 0))(
  ( (Nil!8390) (Cons!8389 (h!9245 tuple2!8266) (t!14345 List!8393)) )
))
(declare-datatypes ((ListLongMap!7193 0))(
  ( (ListLongMap!7194 (toList!3612 List!8393)) )
))
(declare-fun lt!209292 () ListLongMap!7193)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1780 (array!28901 array!28903 (_ BitVec 32) (_ BitVec 32) V!17867 V!17867 (_ BitVec 32) Int) ListLongMap!7193)

(assert (=> b!463082 (= lt!209292 (getCurrentListMapNoExtraKeys!1780 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20530 () Bool)

(declare-fun tp!39423 () Bool)

(assert (=> mapNonEmpty!20530 (= mapRes!20530 (and tp!39423 e!270367))))

(declare-fun mapKey!20530 () (_ BitVec 32))

(declare-fun mapRest!20530 () (Array (_ BitVec 32) ValueCell!5942))

(declare-fun mapValue!20530 () ValueCell!5942)

(assert (=> mapNonEmpty!20530 (= (arr!13881 _values!833) (store mapRest!20530 mapKey!20530 mapValue!20530))))

(declare-fun b!463083 () Bool)

(declare-fun res!276979 () Bool)

(assert (=> b!463083 (=> (not res!276979) (not e!270363))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!463083 (= res!276979 (and (= (size!14233 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14232 _keys!1025) (size!14233 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463084 () Bool)

(declare-fun e!270366 () Bool)

(assert (=> b!463084 (= e!270364 (and e!270366 mapRes!20530))))

(declare-fun condMapEmpty!20530 () Bool)

(declare-fun mapDefault!20530 () ValueCell!5942)

