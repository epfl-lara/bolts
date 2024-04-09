; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42300 () Bool)

(assert start!42300)

(declare-fun b_free!11797 () Bool)

(declare-fun b_next!11797 () Bool)

(assert (=> start!42300 (= b_free!11797 (not b_next!11797))))

(declare-fun tp!41419 () Bool)

(declare-fun b_and!20253 () Bool)

(assert (=> start!42300 (= tp!41419 b_and!20253)))

(declare-fun b!471724 () Bool)

(declare-fun e!276537 () Bool)

(assert (=> b!471724 (= e!276537 (not true))))

(declare-datatypes ((V!18739 0))(
  ( (V!18740 (val!6657 Int)) )
))
(declare-datatypes ((tuple2!8748 0))(
  ( (tuple2!8749 (_1!4384 (_ BitVec 64)) (_2!4384 V!18739)) )
))
(declare-datatypes ((List!8864 0))(
  ( (Nil!8861) (Cons!8860 (h!9716 tuple2!8748) (t!14838 List!8864)) )
))
(declare-datatypes ((ListLongMap!7675 0))(
  ( (ListLongMap!7676 (toList!3853 List!8864)) )
))
(declare-fun lt!214059 () ListLongMap!7675)

(declare-fun lt!214058 () ListLongMap!7675)

(assert (=> b!471724 (= lt!214059 lt!214058)))

(declare-fun minValueBefore!38 () V!18739)

(declare-fun zeroValue!794 () V!18739)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13832 0))(
  ( (Unit!13833) )
))
(declare-fun lt!214057 () Unit!13832)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30173 0))(
  ( (array!30174 (arr!14505 (Array (_ BitVec 32) (_ BitVec 64))) (size!14857 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30173)

(declare-datatypes ((ValueCell!6269 0))(
  ( (ValueCellFull!6269 (v!8944 V!18739)) (EmptyCell!6269) )
))
(declare-datatypes ((array!30175 0))(
  ( (array!30176 (arr!14506 (Array (_ BitVec 32) ValueCell!6269)) (size!14858 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30175)

(declare-fun minValueAfter!38 () V!18739)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!210 (array!30173 array!30175 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18739 V!18739 V!18739 V!18739 (_ BitVec 32) Int) Unit!13832)

(assert (=> b!471724 (= lt!214057 (lemmaNoChangeToArrayThenSameMapNoExtras!210 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2015 (array!30173 array!30175 (_ BitVec 32) (_ BitVec 32) V!18739 V!18739 (_ BitVec 32) Int) ListLongMap!7675)

(assert (=> b!471724 (= lt!214058 (getCurrentListMapNoExtraKeys!2015 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471724 (= lt!214059 (getCurrentListMapNoExtraKeys!2015 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21544 () Bool)

(declare-fun mapRes!21544 () Bool)

(assert (=> mapIsEmpty!21544 mapRes!21544))

(declare-fun b!471725 () Bool)

(declare-fun e!276538 () Bool)

(declare-fun tp_is_empty!13225 () Bool)

(assert (=> b!471725 (= e!276538 tp_is_empty!13225)))

(declare-fun b!471726 () Bool)

(declare-fun res!281866 () Bool)

(assert (=> b!471726 (=> (not res!281866) (not e!276537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30173 (_ BitVec 32)) Bool)

(assert (=> b!471726 (= res!281866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471727 () Bool)

(declare-fun e!276535 () Bool)

(assert (=> b!471727 (= e!276535 tp_is_empty!13225)))

(declare-fun b!471728 () Bool)

(declare-fun res!281867 () Bool)

(assert (=> b!471728 (=> (not res!281867) (not e!276537))))

(declare-datatypes ((List!8865 0))(
  ( (Nil!8862) (Cons!8861 (h!9717 (_ BitVec 64)) (t!14839 List!8865)) )
))
(declare-fun arrayNoDuplicates!0 (array!30173 (_ BitVec 32) List!8865) Bool)

(assert (=> b!471728 (= res!281867 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8862))))

(declare-fun b!471729 () Bool)

(declare-fun res!281864 () Bool)

(assert (=> b!471729 (=> (not res!281864) (not e!276537))))

(assert (=> b!471729 (= res!281864 (and (= (size!14858 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14857 _keys!1025) (size!14858 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281865 () Bool)

(assert (=> start!42300 (=> (not res!281865) (not e!276537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42300 (= res!281865 (validMask!0 mask!1365))))

(assert (=> start!42300 e!276537))

(assert (=> start!42300 tp_is_empty!13225))

(assert (=> start!42300 tp!41419))

(assert (=> start!42300 true))

(declare-fun array_inv!10466 (array!30173) Bool)

(assert (=> start!42300 (array_inv!10466 _keys!1025)))

(declare-fun e!276534 () Bool)

(declare-fun array_inv!10467 (array!30175) Bool)

(assert (=> start!42300 (and (array_inv!10467 _values!833) e!276534)))

(declare-fun mapNonEmpty!21544 () Bool)

(declare-fun tp!41418 () Bool)

(assert (=> mapNonEmpty!21544 (= mapRes!21544 (and tp!41418 e!276538))))

(declare-fun mapRest!21544 () (Array (_ BitVec 32) ValueCell!6269))

(declare-fun mapKey!21544 () (_ BitVec 32))

(declare-fun mapValue!21544 () ValueCell!6269)

(assert (=> mapNonEmpty!21544 (= (arr!14506 _values!833) (store mapRest!21544 mapKey!21544 mapValue!21544))))

(declare-fun b!471730 () Bool)

(assert (=> b!471730 (= e!276534 (and e!276535 mapRes!21544))))

(declare-fun condMapEmpty!21544 () Bool)

(declare-fun mapDefault!21544 () ValueCell!6269)

