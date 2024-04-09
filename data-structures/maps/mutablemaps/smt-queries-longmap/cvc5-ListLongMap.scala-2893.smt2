; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41508 () Bool)

(assert start!41508)

(declare-fun b_free!11167 () Bool)

(declare-fun b_next!11167 () Bool)

(assert (=> start!41508 (= b_free!11167 (not b_next!11167))))

(declare-fun tp!39498 () Bool)

(declare-fun b_and!19525 () Bool)

(assert (=> start!41508 (= tp!39498 b_and!19525)))

(declare-fun b!463405 () Bool)

(declare-fun res!277150 () Bool)

(declare-fun e!270592 () Bool)

(assert (=> b!463405 (=> (not res!277150) (not e!270592))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28949 0))(
  ( (array!28950 (arr!13903 (Array (_ BitVec 32) (_ BitVec 64))) (size!14255 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28949)

(declare-datatypes ((V!17899 0))(
  ( (V!17900 (val!6342 Int)) )
))
(declare-datatypes ((ValueCell!5954 0))(
  ( (ValueCellFull!5954 (v!8625 V!17899)) (EmptyCell!5954) )
))
(declare-datatypes ((array!28951 0))(
  ( (array!28952 (arr!13904 (Array (_ BitVec 32) ValueCell!5954)) (size!14256 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28951)

(assert (=> b!463405 (= res!277150 (and (= (size!14256 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14255 _keys!1025) (size!14256 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463406 () Bool)

(assert (=> b!463406 (= e!270592 false)))

(declare-datatypes ((tuple2!8282 0))(
  ( (tuple2!8283 (_1!4151 (_ BitVec 64)) (_2!4151 V!17899)) )
))
(declare-datatypes ((List!8409 0))(
  ( (Nil!8406) (Cons!8405 (h!9261 tuple2!8282) (t!14363 List!8409)) )
))
(declare-datatypes ((ListLongMap!7209 0))(
  ( (ListLongMap!7210 (toList!3620 List!8409)) )
))
(declare-fun lt!209388 () ListLongMap!7209)

(declare-fun zeroValue!794 () V!17899)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17899)

(declare-fun getCurrentListMapNoExtraKeys!1788 (array!28949 array!28951 (_ BitVec 32) (_ BitVec 32) V!17899 V!17899 (_ BitVec 32) Int) ListLongMap!7209)

(assert (=> b!463406 (= lt!209388 (getCurrentListMapNoExtraKeys!1788 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!209387 () ListLongMap!7209)

(declare-fun minValueBefore!38 () V!17899)

(assert (=> b!463406 (= lt!209387 (getCurrentListMapNoExtraKeys!1788 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463407 () Bool)

(declare-fun e!270591 () Bool)

(declare-fun e!270593 () Bool)

(declare-fun mapRes!20569 () Bool)

(assert (=> b!463407 (= e!270591 (and e!270593 mapRes!20569))))

(declare-fun condMapEmpty!20569 () Bool)

(declare-fun mapDefault!20569 () ValueCell!5954)

