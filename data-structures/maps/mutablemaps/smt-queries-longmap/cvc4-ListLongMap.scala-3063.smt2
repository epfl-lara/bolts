; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43232 () Bool)

(assert start!43232)

(declare-fun b!478807 () Bool)

(declare-fun e!281637 () Bool)

(declare-fun tp_is_empty!13613 () Bool)

(assert (=> b!478807 (= e!281637 tp_is_empty!13613)))

(declare-fun b!478808 () Bool)

(declare-fun res!285703 () Bool)

(declare-fun e!281639 () Bool)

(assert (=> b!478808 (=> (not res!285703) (not e!281639))))

(declare-datatypes ((array!30867 0))(
  ( (array!30868 (arr!14838 (Array (_ BitVec 32) (_ BitVec 64))) (size!15196 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30867)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30867 (_ BitVec 32)) Bool)

(assert (=> b!478808 (= res!285703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478809 () Bool)

(assert (=> b!478809 (= e!281639 false)))

(declare-fun lt!217766 () Bool)

(declare-datatypes ((List!9107 0))(
  ( (Nil!9104) (Cons!9103 (h!9959 (_ BitVec 64)) (t!15321 List!9107)) )
))
(declare-fun arrayNoDuplicates!0 (array!30867 (_ BitVec 32) List!9107) Bool)

(assert (=> b!478809 (= lt!217766 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9104))))

(declare-fun b!478810 () Bool)

(declare-fun e!281638 () Bool)

(assert (=> b!478810 (= e!281638 tp_is_empty!13613)))

(declare-fun mapNonEmpty!22114 () Bool)

(declare-fun mapRes!22114 () Bool)

(declare-fun tp!42589 () Bool)

(assert (=> mapNonEmpty!22114 (= mapRes!22114 (and tp!42589 e!281638))))

(declare-fun mapKey!22114 () (_ BitVec 32))

(declare-datatypes ((V!19221 0))(
  ( (V!19222 (val!6854 Int)) )
))
(declare-datatypes ((ValueCell!6445 0))(
  ( (ValueCellFull!6445 (v!9139 V!19221)) (EmptyCell!6445) )
))
(declare-fun mapRest!22114 () (Array (_ BitVec 32) ValueCell!6445))

(declare-datatypes ((array!30869 0))(
  ( (array!30870 (arr!14839 (Array (_ BitVec 32) ValueCell!6445)) (size!15197 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30869)

(declare-fun mapValue!22114 () ValueCell!6445)

(assert (=> mapNonEmpty!22114 (= (arr!14839 _values!1516) (store mapRest!22114 mapKey!22114 mapValue!22114))))

(declare-fun b!478812 () Bool)

(declare-fun e!281640 () Bool)

(assert (=> b!478812 (= e!281640 (and e!281637 mapRes!22114))))

(declare-fun condMapEmpty!22114 () Bool)

(declare-fun mapDefault!22114 () ValueCell!6445)

