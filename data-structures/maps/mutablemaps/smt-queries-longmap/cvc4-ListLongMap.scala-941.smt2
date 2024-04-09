; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20758 () Bool)

(assert start!20758)

(declare-fun b_free!5405 () Bool)

(declare-fun b_next!5405 () Bool)

(assert (=> start!20758 (= b_free!5405 (not b_next!5405))))

(declare-fun tp!19247 () Bool)

(declare-fun b_and!12169 () Bool)

(assert (=> start!20758 (= tp!19247 b_and!12169)))

(declare-fun b!207642 () Bool)

(declare-fun res!100876 () Bool)

(declare-fun e!135534 () Bool)

(assert (=> b!207642 (=> (not res!100876) (not e!135534))))

(declare-datatypes ((array!9728 0))(
  ( (array!9729 (arr!4614 (Array (_ BitVec 32) (_ BitVec 64))) (size!4939 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9728)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207642 (= res!100876 (= (select (arr!4614 _keys!825) i!601) k!843))))

(declare-fun b!207643 () Bool)

(declare-fun res!100873 () Bool)

(assert (=> b!207643 (=> (not res!100873) (not e!135534))))

(declare-datatypes ((List!2972 0))(
  ( (Nil!2969) (Cons!2968 (h!3610 (_ BitVec 64)) (t!7911 List!2972)) )
))
(declare-fun arrayNoDuplicates!0 (array!9728 (_ BitVec 32) List!2972) Bool)

(assert (=> b!207643 (= res!100873 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2969))))

(declare-fun b!207644 () Bool)

(declare-fun e!135532 () Bool)

(declare-fun tp_is_empty!5261 () Bool)

(assert (=> b!207644 (= e!135532 tp_is_empty!5261)))

(declare-fun b!207645 () Bool)

(declare-fun e!135531 () Bool)

(declare-fun mapRes!8960 () Bool)

(assert (=> b!207645 (= e!135531 (and e!135532 mapRes!8960))))

(declare-fun condMapEmpty!8960 () Bool)

(declare-datatypes ((V!6661 0))(
  ( (V!6662 (val!2675 Int)) )
))
(declare-datatypes ((ValueCell!2287 0))(
  ( (ValueCellFull!2287 (v!4641 V!6661)) (EmptyCell!2287) )
))
(declare-datatypes ((array!9730 0))(
  ( (array!9731 (arr!4615 (Array (_ BitVec 32) ValueCell!2287)) (size!4940 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9730)

(declare-fun mapDefault!8960 () ValueCell!2287)

