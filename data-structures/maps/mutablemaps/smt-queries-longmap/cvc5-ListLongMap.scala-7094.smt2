; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90014 () Bool)

(assert start!90014)

(declare-fun b!1030395 () Bool)

(declare-fun b_free!20617 () Bool)

(declare-fun b_next!20617 () Bool)

(assert (=> b!1030395 (= b_free!20617 (not b_next!20617))))

(declare-fun tp!72919 () Bool)

(declare-fun b_and!33013 () Bool)

(assert (=> b!1030395 (= tp!72919 b_and!33013)))

(declare-fun b!1030387 () Bool)

(declare-fun res!689134 () Bool)

(declare-fun e!581898 () Bool)

(assert (=> b!1030387 (=> res!689134 e!581898)))

(declare-datatypes ((V!37323 0))(
  ( (V!37324 (val!12219 Int)) )
))
(declare-datatypes ((ValueCell!11465 0))(
  ( (ValueCellFull!11465 (v!14797 V!37323)) (EmptyCell!11465) )
))
(declare-datatypes ((Unit!33634 0))(
  ( (Unit!33635) )
))
(declare-datatypes ((array!64720 0))(
  ( (array!64721 (arr!31159 (Array (_ BitVec 32) (_ BitVec 64))) (size!31677 (_ BitVec 32))) )
))
(declare-datatypes ((array!64722 0))(
  ( (array!64723 (arr!31160 (Array (_ BitVec 32) ValueCell!11465)) (size!31678 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5524 0))(
  ( (LongMapFixedSize!5525 (defaultEntry!6134 Int) (mask!29907 (_ BitVec 32)) (extraKeys!5866 (_ BitVec 32)) (zeroValue!5970 V!37323) (minValue!5970 V!37323) (_size!2817 (_ BitVec 32)) (_keys!11302 array!64720) (_values!6157 array!64722) (_vacant!2817 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15688 0))(
  ( (tuple2!15689 (_1!7854 Unit!33634) (_2!7854 LongMapFixedSize!5524)) )
))
(declare-fun lt!454539 () tuple2!15688)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64720 (_ BitVec 32)) Bool)

(assert (=> b!1030387 (= res!689134 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11302 (_2!7854 lt!454539)) (mask!29907 (_2!7854 lt!454539)))))))

(declare-fun b!1030388 () Bool)

(declare-fun e!581899 () Bool)

(declare-fun tp_is_empty!24337 () Bool)

(assert (=> b!1030388 (= e!581899 tp_is_empty!24337)))

(declare-fun b!1030389 () Bool)

(declare-fun e!581894 () Bool)

(assert (=> b!1030389 (= e!581894 tp_is_empty!24337)))

(declare-fun b!1030390 () Bool)

(declare-fun res!689131 () Bool)

(declare-fun e!581900 () Bool)

(assert (=> b!1030390 (=> (not res!689131) (not e!581900))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030390 (= res!689131 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030391 () Bool)

(declare-fun e!581897 () Bool)

(declare-fun mapRes!37956 () Bool)

(assert (=> b!1030391 (= e!581897 (and e!581894 mapRes!37956))))

(declare-fun condMapEmpty!37956 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!5524)

(declare-fun mapDefault!37956 () ValueCell!11465)

