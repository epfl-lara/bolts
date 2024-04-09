; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41566 () Bool)

(assert start!41566)

(declare-fun b_free!11225 () Bool)

(declare-fun b_next!11225 () Bool)

(assert (=> start!41566 (= b_free!11225 (not b_next!11225))))

(declare-fun tp!39672 () Bool)

(declare-fun b_and!19583 () Bool)

(assert (=> start!41566 (= tp!39672 b_and!19583)))

(declare-fun b!464014 () Bool)

(declare-fun res!277499 () Bool)

(declare-fun e!271028 () Bool)

(assert (=> b!464014 (=> (not res!277499) (not e!271028))))

(declare-datatypes ((array!29059 0))(
  ( (array!29060 (arr!13958 (Array (_ BitVec 32) (_ BitVec 64))) (size!14310 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29059)

(declare-datatypes ((List!8453 0))(
  ( (Nil!8450) (Cons!8449 (h!9305 (_ BitVec 64)) (t!14407 List!8453)) )
))
(declare-fun arrayNoDuplicates!0 (array!29059 (_ BitVec 32) List!8453) Bool)

(assert (=> b!464014 (= res!277499 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8450))))

(declare-fun mapNonEmpty!20656 () Bool)

(declare-fun mapRes!20656 () Bool)

(declare-fun tp!39673 () Bool)

(declare-fun e!271026 () Bool)

(assert (=> mapNonEmpty!20656 (= mapRes!20656 (and tp!39673 e!271026))))

(declare-datatypes ((V!17975 0))(
  ( (V!17976 (val!6371 Int)) )
))
(declare-datatypes ((ValueCell!5983 0))(
  ( (ValueCellFull!5983 (v!8654 V!17975)) (EmptyCell!5983) )
))
(declare-fun mapRest!20656 () (Array (_ BitVec 32) ValueCell!5983))

(declare-datatypes ((array!29061 0))(
  ( (array!29062 (arr!13959 (Array (_ BitVec 32) ValueCell!5983)) (size!14311 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29061)

(declare-fun mapValue!20656 () ValueCell!5983)

(declare-fun mapKey!20656 () (_ BitVec 32))

(assert (=> mapNonEmpty!20656 (= (arr!13959 _values!833) (store mapRest!20656 mapKey!20656 mapValue!20656))))

(declare-fun b!464015 () Bool)

(declare-fun e!271029 () Bool)

(declare-fun e!271030 () Bool)

(assert (=> b!464015 (= e!271029 (and e!271030 mapRes!20656))))

(declare-fun condMapEmpty!20656 () Bool)

(declare-fun mapDefault!20656 () ValueCell!5983)

