; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20212 () Bool)

(assert start!20212)

(declare-fun b_free!4859 () Bool)

(declare-fun b_next!4859 () Bool)

(assert (=> start!20212 (= b_free!4859 (not b_next!4859))))

(declare-fun tp!17608 () Bool)

(declare-fun b_and!11623 () Bool)

(assert (=> start!20212 (= tp!17608 b_and!11623)))

(declare-fun b!198390 () Bool)

(declare-fun res!94084 () Bool)

(declare-fun e!130404 () Bool)

(assert (=> b!198390 (=> (not res!94084) (not e!130404))))

(declare-datatypes ((array!8678 0))(
  ( (array!8679 (arr!4089 (Array (_ BitVec 32) (_ BitVec 64))) (size!4414 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8678)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5933 0))(
  ( (V!5934 (val!2402 Int)) )
))
(declare-datatypes ((ValueCell!2014 0))(
  ( (ValueCellFull!2014 (v!4368 V!5933)) (EmptyCell!2014) )
))
(declare-datatypes ((array!8680 0))(
  ( (array!8681 (arr!4090 (Array (_ BitVec 32) ValueCell!2014)) (size!4415 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8680)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198390 (= res!94084 (and (= (size!4415 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4414 _keys!825) (size!4415 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198391 () Bool)

(declare-fun res!94082 () Bool)

(assert (=> b!198391 (=> (not res!94082) (not e!130404))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198391 (= res!94082 (validKeyInArray!0 k!843))))

(declare-fun b!198392 () Bool)

(declare-fun res!94083 () Bool)

(assert (=> b!198392 (=> (not res!94083) (not e!130404))))

(declare-datatypes ((List!2579 0))(
  ( (Nil!2576) (Cons!2575 (h!3217 (_ BitVec 64)) (t!7518 List!2579)) )
))
(declare-fun arrayNoDuplicates!0 (array!8678 (_ BitVec 32) List!2579) Bool)

(assert (=> b!198392 (= res!94083 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2576))))

(declare-fun b!198393 () Bool)

(declare-fun res!94079 () Bool)

(assert (=> b!198393 (=> (not res!94079) (not e!130404))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198393 (= res!94079 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4414 _keys!825))))))

(declare-fun mapIsEmpty!8141 () Bool)

(declare-fun mapRes!8141 () Bool)

(assert (=> mapIsEmpty!8141 mapRes!8141))

(declare-fun mapNonEmpty!8141 () Bool)

(declare-fun tp!17609 () Bool)

(declare-fun e!130405 () Bool)

(assert (=> mapNonEmpty!8141 (= mapRes!8141 (and tp!17609 e!130405))))

(declare-fun mapRest!8141 () (Array (_ BitVec 32) ValueCell!2014))

(declare-fun mapKey!8141 () (_ BitVec 32))

(declare-fun mapValue!8141 () ValueCell!2014)

(assert (=> mapNonEmpty!8141 (= (arr!4090 _values!649) (store mapRest!8141 mapKey!8141 mapValue!8141))))

(declare-fun b!198394 () Bool)

(declare-fun res!94081 () Bool)

(assert (=> b!198394 (=> (not res!94081) (not e!130404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8678 (_ BitVec 32)) Bool)

(assert (=> b!198394 (= res!94081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198395 () Bool)

(declare-fun res!94078 () Bool)

(assert (=> b!198395 (=> (not res!94078) (not e!130404))))

(assert (=> b!198395 (= res!94078 (= (select (arr!4089 _keys!825) i!601) k!843))))

(declare-fun b!198396 () Bool)

(declare-fun e!130403 () Bool)

(declare-fun tp_is_empty!4715 () Bool)

(assert (=> b!198396 (= e!130403 tp_is_empty!4715)))

(declare-fun b!198397 () Bool)

(declare-fun e!130401 () Bool)

(assert (=> b!198397 (= e!130401 (and e!130403 mapRes!8141))))

(declare-fun condMapEmpty!8141 () Bool)

(declare-fun mapDefault!8141 () ValueCell!2014)

