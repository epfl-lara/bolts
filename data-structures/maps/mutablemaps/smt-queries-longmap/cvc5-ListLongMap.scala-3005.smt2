; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42356 () Bool)

(assert start!42356)

(declare-fun b_free!11839 () Bool)

(declare-fun b_next!11839 () Bool)

(assert (=> start!42356 (= b_free!11839 (not b_next!11839))))

(declare-fun tp!41548 () Bool)

(declare-fun b_and!20303 () Bool)

(assert (=> start!42356 (= tp!41548 b_and!20303)))

(declare-fun b!472297 () Bool)

(declare-fun res!282197 () Bool)

(declare-fun e!276952 () Bool)

(assert (=> b!472297 (=> (not res!282197) (not e!276952))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30255 0))(
  ( (array!30256 (arr!14545 (Array (_ BitVec 32) (_ BitVec 64))) (size!14897 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30255)

(declare-datatypes ((V!18795 0))(
  ( (V!18796 (val!6678 Int)) )
))
(declare-datatypes ((ValueCell!6290 0))(
  ( (ValueCellFull!6290 (v!8965 V!18795)) (EmptyCell!6290) )
))
(declare-datatypes ((array!30257 0))(
  ( (array!30258 (arr!14546 (Array (_ BitVec 32) ValueCell!6290)) (size!14898 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30257)

(assert (=> b!472297 (= res!282197 (and (= (size!14898 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14897 _keys!1025) (size!14898 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21610 () Bool)

(declare-fun mapRes!21610 () Bool)

(assert (=> mapIsEmpty!21610 mapRes!21610))

(declare-fun b!472298 () Bool)

(declare-fun e!276953 () Bool)

(declare-fun tp_is_empty!13267 () Bool)

(assert (=> b!472298 (= e!276953 tp_is_empty!13267)))

(declare-fun res!282198 () Bool)

(assert (=> start!42356 (=> (not res!282198) (not e!276952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42356 (= res!282198 (validMask!0 mask!1365))))

(assert (=> start!42356 e!276952))

(assert (=> start!42356 tp_is_empty!13267))

(assert (=> start!42356 tp!41548))

(assert (=> start!42356 true))

(declare-fun array_inv!10490 (array!30255) Bool)

(assert (=> start!42356 (array_inv!10490 _keys!1025)))

(declare-fun e!276955 () Bool)

(declare-fun array_inv!10491 (array!30257) Bool)

(assert (=> start!42356 (and (array_inv!10491 _values!833) e!276955)))

(declare-fun mapNonEmpty!21610 () Bool)

(declare-fun tp!41547 () Bool)

(assert (=> mapNonEmpty!21610 (= mapRes!21610 (and tp!41547 e!276953))))

(declare-fun mapValue!21610 () ValueCell!6290)

(declare-fun mapKey!21610 () (_ BitVec 32))

(declare-fun mapRest!21610 () (Array (_ BitVec 32) ValueCell!6290))

(assert (=> mapNonEmpty!21610 (= (arr!14546 _values!833) (store mapRest!21610 mapKey!21610 mapValue!21610))))

(declare-fun b!472299 () Bool)

(declare-fun res!282196 () Bool)

(assert (=> b!472299 (=> (not res!282196) (not e!276952))))

(declare-datatypes ((List!8897 0))(
  ( (Nil!8894) (Cons!8893 (h!9749 (_ BitVec 64)) (t!14873 List!8897)) )
))
(declare-fun arrayNoDuplicates!0 (array!30255 (_ BitVec 32) List!8897) Bool)

(assert (=> b!472299 (= res!282196 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8894))))

(declare-fun b!472300 () Bool)

(declare-fun res!282195 () Bool)

(assert (=> b!472300 (=> (not res!282195) (not e!276952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30255 (_ BitVec 32)) Bool)

(assert (=> b!472300 (= res!282195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472301 () Bool)

(declare-fun e!276951 () Bool)

(assert (=> b!472301 (= e!276951 tp_is_empty!13267)))

(declare-fun b!472302 () Bool)

(declare-fun e!276954 () Bool)

(assert (=> b!472302 (= e!276954 true)))

(declare-fun minValueBefore!38 () V!18795)

(declare-fun zeroValue!794 () V!18795)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8782 0))(
  ( (tuple2!8783 (_1!4401 (_ BitVec 64)) (_2!4401 V!18795)) )
))
(declare-datatypes ((List!8898 0))(
  ( (Nil!8895) (Cons!8894 (h!9750 tuple2!8782) (t!14874 List!8898)) )
))
(declare-datatypes ((ListLongMap!7709 0))(
  ( (ListLongMap!7710 (toList!3870 List!8898)) )
))
(declare-fun lt!214335 () ListLongMap!7709)

(declare-fun getCurrentListMap!2218 (array!30255 array!30257 (_ BitVec 32) (_ BitVec 32) V!18795 V!18795 (_ BitVec 32) Int) ListLongMap!7709)

(assert (=> b!472302 (= lt!214335 (getCurrentListMap!2218 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472303 () Bool)

(assert (=> b!472303 (= e!276955 (and e!276951 mapRes!21610))))

(declare-fun condMapEmpty!21610 () Bool)

(declare-fun mapDefault!21610 () ValueCell!6290)

