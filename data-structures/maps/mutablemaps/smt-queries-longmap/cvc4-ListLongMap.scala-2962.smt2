; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42020 () Bool)

(assert start!42020)

(declare-fun b_free!11585 () Bool)

(declare-fun b_next!11585 () Bool)

(assert (=> start!42020 (= b_free!11585 (not b_next!11585))))

(declare-fun tp!40771 () Bool)

(declare-fun b_and!20001 () Bool)

(assert (=> start!42020 (= tp!40771 b_and!20001)))

(declare-fun b!468879 () Bool)

(declare-fun e!274524 () Bool)

(declare-fun tp_is_empty!13013 () Bool)

(assert (=> b!468879 (= e!274524 tp_is_empty!13013)))

(declare-fun b!468880 () Bool)

(declare-fun e!274522 () Bool)

(declare-fun e!274521 () Bool)

(assert (=> b!468880 (= e!274522 (not e!274521))))

(declare-fun res!280286 () Bool)

(assert (=> b!468880 (=> res!280286 e!274521)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468880 (= res!280286 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18455 0))(
  ( (V!18456 (val!6551 Int)) )
))
(declare-datatypes ((tuple2!8596 0))(
  ( (tuple2!8597 (_1!4308 (_ BitVec 64)) (_2!4308 V!18455)) )
))
(declare-datatypes ((List!8716 0))(
  ( (Nil!8713) (Cons!8712 (h!9568 tuple2!8596) (t!14682 List!8716)) )
))
(declare-datatypes ((ListLongMap!7523 0))(
  ( (ListLongMap!7524 (toList!3777 List!8716)) )
))
(declare-fun lt!212358 () ListLongMap!7523)

(declare-fun lt!212359 () ListLongMap!7523)

(assert (=> b!468880 (= lt!212358 lt!212359)))

(declare-fun minValueBefore!38 () V!18455)

(declare-fun zeroValue!794 () V!18455)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13676 0))(
  ( (Unit!13677) )
))
(declare-fun lt!212360 () Unit!13676)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29759 0))(
  ( (array!29760 (arr!14302 (Array (_ BitVec 32) (_ BitVec 64))) (size!14654 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29759)

(declare-datatypes ((ValueCell!6163 0))(
  ( (ValueCellFull!6163 (v!8836 V!18455)) (EmptyCell!6163) )
))
(declare-datatypes ((array!29761 0))(
  ( (array!29762 (arr!14303 (Array (_ BitVec 32) ValueCell!6163)) (size!14655 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29761)

(declare-fun minValueAfter!38 () V!18455)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!136 (array!29759 array!29761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18455 V!18455 V!18455 V!18455 (_ BitVec 32) Int) Unit!13676)

(assert (=> b!468880 (= lt!212360 (lemmaNoChangeToArrayThenSameMapNoExtras!136 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1941 (array!29759 array!29761 (_ BitVec 32) (_ BitVec 32) V!18455 V!18455 (_ BitVec 32) Int) ListLongMap!7523)

(assert (=> b!468880 (= lt!212359 (getCurrentListMapNoExtraKeys!1941 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468880 (= lt!212358 (getCurrentListMapNoExtraKeys!1941 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21214 () Bool)

(declare-fun mapRes!21214 () Bool)

(assert (=> mapIsEmpty!21214 mapRes!21214))

(declare-fun b!468881 () Bool)

(declare-fun e!274519 () Bool)

(assert (=> b!468881 (= e!274519 (and e!274524 mapRes!21214))))

(declare-fun condMapEmpty!21214 () Bool)

(declare-fun mapDefault!21214 () ValueCell!6163)

