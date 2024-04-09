; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42348 () Bool)

(assert start!42348)

(declare-fun b_free!11831 () Bool)

(declare-fun b_next!11831 () Bool)

(assert (=> start!42348 (= b_free!11831 (not b_next!11831))))

(declare-fun tp!41523 () Bool)

(declare-fun b_and!20295 () Bool)

(assert (=> start!42348 (= tp!41523 b_and!20295)))

(declare-fun b!472201 () Bool)

(declare-fun e!276884 () Bool)

(assert (=> b!472201 (= e!276884 true)))

(declare-datatypes ((V!18783 0))(
  ( (V!18784 (val!6674 Int)) )
))
(declare-fun minValueBefore!38 () V!18783)

(declare-fun zeroValue!794 () V!18783)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((tuple2!8776 0))(
  ( (tuple2!8777 (_1!4398 (_ BitVec 64)) (_2!4398 V!18783)) )
))
(declare-datatypes ((List!8892 0))(
  ( (Nil!8889) (Cons!8888 (h!9744 tuple2!8776) (t!14868 List!8892)) )
))
(declare-datatypes ((ListLongMap!7703 0))(
  ( (ListLongMap!7704 (toList!3867 List!8892)) )
))
(declare-fun lt!214287 () ListLongMap!7703)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30241 0))(
  ( (array!30242 (arr!14538 (Array (_ BitVec 32) (_ BitVec 64))) (size!14890 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30241)

(declare-datatypes ((ValueCell!6286 0))(
  ( (ValueCellFull!6286 (v!8961 V!18783)) (EmptyCell!6286) )
))
(declare-datatypes ((array!30243 0))(
  ( (array!30244 (arr!14539 (Array (_ BitVec 32) ValueCell!6286)) (size!14891 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30243)

(declare-fun getCurrentListMap!2215 (array!30241 array!30243 (_ BitVec 32) (_ BitVec 32) V!18783 V!18783 (_ BitVec 32) Int) ListLongMap!7703)

(assert (=> b!472201 (= lt!214287 (getCurrentListMap!2215 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472202 () Bool)

(declare-fun e!276883 () Bool)

(declare-fun e!276879 () Bool)

(declare-fun mapRes!21598 () Bool)

(assert (=> b!472202 (= e!276883 (and e!276879 mapRes!21598))))

(declare-fun condMapEmpty!21598 () Bool)

(declare-fun mapDefault!21598 () ValueCell!6286)

