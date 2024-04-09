; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40122 () Bool)

(assert start!40122)

(declare-fun b_free!10381 () Bool)

(declare-fun b_next!10381 () Bool)

(assert (=> start!40122 (= b_free!10381 (not b_next!10381))))

(declare-fun tp!36671 () Bool)

(declare-fun b_and!18367 () Bool)

(assert (=> start!40122 (= tp!36671 b_and!18367)))

(declare-fun b!438305 () Bool)

(declare-fun e!258539 () Bool)

(declare-fun tp_is_empty!11533 () Bool)

(assert (=> b!438305 (= e!258539 tp_is_empty!11533)))

(declare-fun b!438306 () Bool)

(declare-fun res!258876 () Bool)

(declare-fun e!258538 () Bool)

(assert (=> b!438306 (=> (not res!258876) (not e!258538))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438306 (= res!258876 (validKeyInArray!0 k!794))))

(declare-fun b!438307 () Bool)

(declare-fun e!258535 () Bool)

(declare-fun e!258541 () Bool)

(declare-fun mapRes!18921 () Bool)

(assert (=> b!438307 (= e!258535 (and e!258541 mapRes!18921))))

(declare-fun condMapEmpty!18921 () Bool)

(declare-datatypes ((V!16483 0))(
  ( (V!16484 (val!5811 Int)) )
))
(declare-datatypes ((ValueCell!5423 0))(
  ( (ValueCellFull!5423 (v!8054 V!16483)) (EmptyCell!5423) )
))
(declare-datatypes ((array!26861 0))(
  ( (array!26862 (arr!12877 (Array (_ BitVec 32) ValueCell!5423)) (size!13229 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26861)

(declare-fun mapDefault!18921 () ValueCell!5423)

