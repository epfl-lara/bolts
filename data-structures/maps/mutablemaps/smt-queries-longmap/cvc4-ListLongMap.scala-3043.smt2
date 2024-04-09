; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42712 () Bool)

(assert start!42712)

(declare-fun b_free!12071 () Bool)

(declare-fun b_next!12071 () Bool)

(assert (=> start!42712 (= b_free!12071 (not b_next!12071))))

(declare-fun tp!42265 () Bool)

(declare-fun b_and!20613 () Bool)

(assert (=> start!42712 (= tp!42265 b_and!20613)))

(declare-fun b!476099 () Bool)

(declare-fun e!279642 () Bool)

(declare-fun tp_is_empty!13499 () Bool)

(assert (=> b!476099 (= e!279642 tp_is_empty!13499)))

(declare-fun b!476100 () Bool)

(declare-fun res!284299 () Bool)

(declare-fun e!279639 () Bool)

(assert (=> b!476100 (=> (not res!284299) (not e!279639))))

(declare-datatypes ((array!30711 0))(
  ( (array!30712 (arr!14766 (Array (_ BitVec 32) (_ BitVec 64))) (size!15118 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30711)

(declare-datatypes ((List!9068 0))(
  ( (Nil!9065) (Cons!9064 (h!9920 (_ BitVec 64)) (t!15058 List!9068)) )
))
(declare-fun arrayNoDuplicates!0 (array!30711 (_ BitVec 32) List!9068) Bool)

(assert (=> b!476100 (= res!284299 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9065))))

(declare-fun b!476101 () Bool)

(declare-fun res!284302 () Bool)

(assert (=> b!476101 (=> (not res!284302) (not e!279639))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!19103 0))(
  ( (V!19104 (val!6794 Int)) )
))
(declare-datatypes ((ValueCell!6406 0))(
  ( (ValueCellFull!6406 (v!9086 V!19103)) (EmptyCell!6406) )
))
(declare-datatypes ((array!30713 0))(
  ( (array!30714 (arr!14767 (Array (_ BitVec 32) ValueCell!6406)) (size!15119 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30713)

(assert (=> b!476101 (= res!284302 (and (= (size!15119 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15118 _keys!1025) (size!15119 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!476102 () Bool)

(declare-fun e!279641 () Bool)

(assert (=> b!476102 (= e!279641 tp_is_empty!13499)))

(declare-fun b!476103 () Bool)

(declare-fun res!284298 () Bool)

(assert (=> b!476103 (=> (not res!284298) (not e!279639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30711 (_ BitVec 32)) Bool)

(assert (=> b!476103 (= res!284298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21979 () Bool)

(declare-fun mapRes!21979 () Bool)

(declare-fun tp!42264 () Bool)

(assert (=> mapNonEmpty!21979 (= mapRes!21979 (and tp!42264 e!279641))))

(declare-fun mapKey!21979 () (_ BitVec 32))

(declare-fun mapValue!21979 () ValueCell!6406)

(declare-fun mapRest!21979 () (Array (_ BitVec 32) ValueCell!6406))

(assert (=> mapNonEmpty!21979 (= (arr!14767 _values!833) (store mapRest!21979 mapKey!21979 mapValue!21979))))

(declare-fun b!476104 () Bool)

(declare-fun e!279644 () Bool)

(assert (=> b!476104 (= e!279644 (and e!279642 mapRes!21979))))

(declare-fun condMapEmpty!21979 () Bool)

(declare-fun mapDefault!21979 () ValueCell!6406)

