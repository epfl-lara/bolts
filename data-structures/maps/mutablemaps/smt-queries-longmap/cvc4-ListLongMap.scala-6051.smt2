; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78258 () Bool)

(assert start!78258)

(declare-fun b_free!16721 () Bool)

(declare-fun b_next!16721 () Bool)

(assert (=> start!78258 (= b_free!16721 (not b_next!16721))))

(declare-fun tp!58440 () Bool)

(declare-fun b_and!27315 () Bool)

(assert (=> start!78258 (= tp!58440 b_and!27315)))

(declare-fun b!912923 () Bool)

(declare-fun res!615960 () Bool)

(declare-fun e!512096 () Bool)

(assert (=> b!912923 (=> (not res!615960) (not e!512096))))

(declare-datatypes ((array!54280 0))(
  ( (array!54281 (arr!26090 (Array (_ BitVec 32) (_ BitVec 64))) (size!26550 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54280)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54280 (_ BitVec 32)) Bool)

(assert (=> b!912923 (= res!615960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912924 () Bool)

(declare-fun res!615956 () Bool)

(assert (=> b!912924 (=> (not res!615956) (not e!512096))))

(declare-datatypes ((List!18434 0))(
  ( (Nil!18431) (Cons!18430 (h!19576 (_ BitVec 64)) (t!26031 List!18434)) )
))
(declare-fun arrayNoDuplicates!0 (array!54280 (_ BitVec 32) List!18434) Bool)

(assert (=> b!912924 (= res!615956 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18431))))

(declare-fun b!912925 () Bool)

(declare-fun res!615959 () Bool)

(assert (=> b!912925 (=> (not res!615959) (not e!512096))))

(declare-datatypes ((V!30483 0))(
  ( (V!30484 (val!9620 Int)) )
))
(declare-datatypes ((ValueCell!9088 0))(
  ( (ValueCellFull!9088 (v!12131 V!30483)) (EmptyCell!9088) )
))
(declare-datatypes ((array!54282 0))(
  ( (array!54283 (arr!26091 (Array (_ BitVec 32) ValueCell!9088)) (size!26551 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54282)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30483)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30483)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12594 0))(
  ( (tuple2!12595 (_1!6307 (_ BitVec 64)) (_2!6307 V!30483)) )
))
(declare-datatypes ((List!18435 0))(
  ( (Nil!18432) (Cons!18431 (h!19577 tuple2!12594) (t!26032 List!18435)) )
))
(declare-datatypes ((ListLongMap!11305 0))(
  ( (ListLongMap!11306 (toList!5668 List!18435)) )
))
(declare-fun contains!4679 (ListLongMap!11305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2898 (array!54280 array!54282 (_ BitVec 32) (_ BitVec 32) V!30483 V!30483 (_ BitVec 32) Int) ListLongMap!11305)

(assert (=> b!912925 (= res!615959 (contains!4679 (getCurrentListMap!2898 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912926 () Bool)

(declare-fun e!512093 () Bool)

(declare-fun tp_is_empty!19139 () Bool)

(assert (=> b!912926 (= e!512093 tp_is_empty!19139)))

(declare-fun b!912927 () Bool)

(declare-fun res!615961 () Bool)

(assert (=> b!912927 (=> (not res!615961) (not e!512096))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912927 (= res!615961 (and (= (select (arr!26090 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912928 () Bool)

(declare-fun e!512092 () Bool)

(declare-fun e!512094 () Bool)

(declare-fun mapRes!30436 () Bool)

(assert (=> b!912928 (= e!512092 (and e!512094 mapRes!30436))))

(declare-fun condMapEmpty!30436 () Bool)

(declare-fun mapDefault!30436 () ValueCell!9088)

