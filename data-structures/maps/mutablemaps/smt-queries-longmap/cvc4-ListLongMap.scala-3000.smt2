; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42330 () Bool)

(assert start!42330)

(declare-fun b_free!11813 () Bool)

(declare-fun b_next!11813 () Bool)

(assert (=> start!42330 (= b_free!11813 (not b_next!11813))))

(declare-fun tp!41470 () Bool)

(declare-fun b_and!20277 () Bool)

(assert (=> start!42330 (= tp!41470 b_and!20277)))

(declare-fun b!471985 () Bool)

(declare-fun res!282003 () Bool)

(declare-fun e!276719 () Bool)

(assert (=> b!471985 (=> (not res!282003) (not e!276719))))

(declare-datatypes ((array!30207 0))(
  ( (array!30208 (arr!14521 (Array (_ BitVec 32) (_ BitVec 64))) (size!14873 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30207)

(declare-datatypes ((List!8880 0))(
  ( (Nil!8877) (Cons!8876 (h!9732 (_ BitVec 64)) (t!14856 List!8880)) )
))
(declare-fun arrayNoDuplicates!0 (array!30207 (_ BitVec 32) List!8880) Bool)

(assert (=> b!471985 (= res!282003 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8877))))

(declare-fun b!471986 () Bool)

(declare-fun e!276718 () Bool)

(declare-fun tp_is_empty!13241 () Bool)

(assert (=> b!471986 (= e!276718 tp_is_empty!13241)))

(declare-fun mapNonEmpty!21571 () Bool)

(declare-fun mapRes!21571 () Bool)

(declare-fun tp!41469 () Bool)

(declare-fun e!276721 () Bool)

(assert (=> mapNonEmpty!21571 (= mapRes!21571 (and tp!41469 e!276721))))

(declare-datatypes ((V!18759 0))(
  ( (V!18760 (val!6665 Int)) )
))
(declare-datatypes ((ValueCell!6277 0))(
  ( (ValueCellFull!6277 (v!8952 V!18759)) (EmptyCell!6277) )
))
(declare-fun mapRest!21571 () (Array (_ BitVec 32) ValueCell!6277))

(declare-fun mapKey!21571 () (_ BitVec 32))

(declare-datatypes ((array!30209 0))(
  ( (array!30210 (arr!14522 (Array (_ BitVec 32) ValueCell!6277)) (size!14874 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30209)

(declare-fun mapValue!21571 () ValueCell!6277)

(assert (=> mapNonEmpty!21571 (= (arr!14522 _values!833) (store mapRest!21571 mapKey!21571 mapValue!21571))))

(declare-fun b!471987 () Bool)

(declare-fun res!282000 () Bool)

(assert (=> b!471987 (=> (not res!282000) (not e!276719))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30207 (_ BitVec 32)) Bool)

(assert (=> b!471987 (= res!282000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21571 () Bool)

(assert (=> mapIsEmpty!21571 mapRes!21571))

(declare-fun b!471988 () Bool)

(declare-fun e!276720 () Bool)

(assert (=> b!471988 (= e!276720 true)))

(declare-fun minValueBefore!38 () V!18759)

(declare-fun zeroValue!794 () V!18759)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((tuple2!8764 0))(
  ( (tuple2!8765 (_1!4392 (_ BitVec 64)) (_2!4392 V!18759)) )
))
(declare-datatypes ((List!8881 0))(
  ( (Nil!8878) (Cons!8877 (h!9733 tuple2!8764) (t!14857 List!8881)) )
))
(declare-datatypes ((ListLongMap!7691 0))(
  ( (ListLongMap!7692 (toList!3861 List!8881)) )
))
(declare-fun lt!214178 () ListLongMap!7691)

(declare-fun getCurrentListMap!2209 (array!30207 array!30209 (_ BitVec 32) (_ BitVec 32) V!18759 V!18759 (_ BitVec 32) Int) ListLongMap!7691)

(assert (=> b!471988 (= lt!214178 (getCurrentListMap!2209 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471990 () Bool)

(assert (=> b!471990 (= e!276721 tp_is_empty!13241)))

(declare-fun b!471991 () Bool)

(declare-fun e!276722 () Bool)

(assert (=> b!471991 (= e!276722 (and e!276718 mapRes!21571))))

(declare-fun condMapEmpty!21571 () Bool)

(declare-fun mapDefault!21571 () ValueCell!6277)

