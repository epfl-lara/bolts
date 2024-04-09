; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41452 () Bool)

(assert start!41452)

(declare-fun b_free!11123 () Bool)

(declare-fun b_next!11123 () Bool)

(assert (=> start!41452 (= b_free!11123 (not b_next!11123))))

(declare-fun tp!39363 () Bool)

(declare-fun b_and!19477 () Bool)

(assert (=> start!41452 (= tp!39363 b_and!19477)))

(declare-fun b!462870 () Bool)

(declare-fun e!270217 () Bool)

(declare-fun tp_is_empty!12551 () Bool)

(assert (=> b!462870 (= e!270217 tp_is_empty!12551)))

(declare-fun b!462871 () Bool)

(declare-fun res!276857 () Bool)

(declare-fun e!270215 () Bool)

(assert (=> b!462871 (=> (not res!276857) (not e!270215))))

(declare-datatypes ((array!28863 0))(
  ( (array!28864 (arr!13861 (Array (_ BitVec 32) (_ BitVec 64))) (size!14213 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28863)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28863 (_ BitVec 32)) Bool)

(assert (=> b!462871 (= res!276857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462872 () Bool)

(declare-fun e!270214 () Bool)

(assert (=> b!462872 (= e!270214 tp_is_empty!12551)))

(declare-fun b!462873 () Bool)

(declare-fun res!276860 () Bool)

(assert (=> b!462873 (=> (not res!276860) (not e!270215))))

(declare-datatypes ((List!8376 0))(
  ( (Nil!8373) (Cons!8372 (h!9228 (_ BitVec 64)) (t!14328 List!8376)) )
))
(declare-fun arrayNoDuplicates!0 (array!28863 (_ BitVec 32) List!8376) Bool)

(assert (=> b!462873 (= res!276860 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8373))))

(declare-fun b!462874 () Bool)

(assert (=> b!462874 (= e!270215 false)))

(declare-datatypes ((V!17839 0))(
  ( (V!17840 (val!6320 Int)) )
))
(declare-fun minValueBefore!38 () V!17839)

(declare-fun zeroValue!794 () V!17839)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((tuple2!8248 0))(
  ( (tuple2!8249 (_1!4134 (_ BitVec 64)) (_2!4134 V!17839)) )
))
(declare-datatypes ((List!8377 0))(
  ( (Nil!8374) (Cons!8373 (h!9229 tuple2!8248) (t!14329 List!8377)) )
))
(declare-datatypes ((ListLongMap!7175 0))(
  ( (ListLongMap!7176 (toList!3603 List!8377)) )
))
(declare-fun lt!209262 () ListLongMap!7175)

(declare-datatypes ((ValueCell!5932 0))(
  ( (ValueCellFull!5932 (v!8603 V!17839)) (EmptyCell!5932) )
))
(declare-datatypes ((array!28865 0))(
  ( (array!28866 (arr!13862 (Array (_ BitVec 32) ValueCell!5932)) (size!14214 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28865)

(declare-fun getCurrentListMapNoExtraKeys!1771 (array!28863 array!28865 (_ BitVec 32) (_ BitVec 32) V!17839 V!17839 (_ BitVec 32) Int) ListLongMap!7175)

(assert (=> b!462874 (= lt!209262 (getCurrentListMapNoExtraKeys!1771 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20500 () Bool)

(declare-fun mapRes!20500 () Bool)

(assert (=> mapIsEmpty!20500 mapRes!20500))

(declare-fun b!462875 () Bool)

(declare-fun e!270213 () Bool)

(assert (=> b!462875 (= e!270213 (and e!270217 mapRes!20500))))

(declare-fun condMapEmpty!20500 () Bool)

(declare-fun mapDefault!20500 () ValueCell!5932)

