; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41518 () Bool)

(assert start!41518)

(declare-fun b_free!11177 () Bool)

(declare-fun b_next!11177 () Bool)

(assert (=> start!41518 (= b_free!11177 (not b_next!11177))))

(declare-fun tp!39528 () Bool)

(declare-fun b_and!19535 () Bool)

(assert (=> start!41518 (= tp!39528 b_and!19535)))

(declare-fun b!463510 () Bool)

(declare-fun res!277211 () Bool)

(declare-fun e!270669 () Bool)

(assert (=> b!463510 (=> (not res!277211) (not e!270669))))

(declare-datatypes ((array!28969 0))(
  ( (array!28970 (arr!13913 (Array (_ BitVec 32) (_ BitVec 64))) (size!14265 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28969)

(declare-datatypes ((List!8417 0))(
  ( (Nil!8414) (Cons!8413 (h!9269 (_ BitVec 64)) (t!14371 List!8417)) )
))
(declare-fun arrayNoDuplicates!0 (array!28969 (_ BitVec 32) List!8417) Bool)

(assert (=> b!463510 (= res!277211 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8414))))

(declare-fun mapIsEmpty!20584 () Bool)

(declare-fun mapRes!20584 () Bool)

(assert (=> mapIsEmpty!20584 mapRes!20584))

(declare-fun b!463512 () Bool)

(declare-fun res!277209 () Bool)

(assert (=> b!463512 (=> (not res!277209) (not e!270669))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28969 (_ BitVec 32)) Bool)

(assert (=> b!463512 (= res!277209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20584 () Bool)

(declare-fun tp!39529 () Bool)

(declare-fun e!270666 () Bool)

(assert (=> mapNonEmpty!20584 (= mapRes!20584 (and tp!39529 e!270666))))

(declare-datatypes ((V!17911 0))(
  ( (V!17912 (val!6347 Int)) )
))
(declare-datatypes ((ValueCell!5959 0))(
  ( (ValueCellFull!5959 (v!8630 V!17911)) (EmptyCell!5959) )
))
(declare-datatypes ((array!28971 0))(
  ( (array!28972 (arr!13914 (Array (_ BitVec 32) ValueCell!5959)) (size!14266 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28971)

(declare-fun mapKey!20584 () (_ BitVec 32))

(declare-fun mapRest!20584 () (Array (_ BitVec 32) ValueCell!5959))

(declare-fun mapValue!20584 () ValueCell!5959)

(assert (=> mapNonEmpty!20584 (= (arr!13914 _values!833) (store mapRest!20584 mapKey!20584 mapValue!20584))))

(declare-fun b!463513 () Bool)

(assert (=> b!463513 (= e!270669 false)))

(declare-datatypes ((tuple2!8292 0))(
  ( (tuple2!8293 (_1!4156 (_ BitVec 64)) (_2!4156 V!17911)) )
))
(declare-datatypes ((List!8418 0))(
  ( (Nil!8415) (Cons!8414 (h!9270 tuple2!8292) (t!14372 List!8418)) )
))
(declare-datatypes ((ListLongMap!7219 0))(
  ( (ListLongMap!7220 (toList!3625 List!8418)) )
))
(declare-fun lt!209417 () ListLongMap!7219)

(declare-fun zeroValue!794 () V!17911)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!17911)

(declare-fun getCurrentListMapNoExtraKeys!1793 (array!28969 array!28971 (_ BitVec 32) (_ BitVec 32) V!17911 V!17911 (_ BitVec 32) Int) ListLongMap!7219)

(assert (=> b!463513 (= lt!209417 (getCurrentListMapNoExtraKeys!1793 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17911)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!209418 () ListLongMap!7219)

(assert (=> b!463513 (= lt!209418 (getCurrentListMapNoExtraKeys!1793 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463514 () Bool)

(declare-fun res!277208 () Bool)

(assert (=> b!463514 (=> (not res!277208) (not e!270669))))

(assert (=> b!463514 (= res!277208 (and (= (size!14266 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14265 _keys!1025) (size!14266 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463515 () Bool)

(declare-fun e!270667 () Bool)

(declare-fun tp_is_empty!12605 () Bool)

(assert (=> b!463515 (= e!270667 tp_is_empty!12605)))

(declare-fun b!463516 () Bool)

(declare-fun e!270668 () Bool)

(assert (=> b!463516 (= e!270668 (and e!270667 mapRes!20584))))

(declare-fun condMapEmpty!20584 () Bool)

(declare-fun mapDefault!20584 () ValueCell!5959)

