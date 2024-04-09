; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12528 () Bool)

(assert start!12528)

(declare-fun b!107583 () Bool)

(declare-fun b_free!2541 () Bool)

(declare-fun b_next!2541 () Bool)

(assert (=> b!107583 (= b_free!2541 (not b_next!2541))))

(declare-fun tp!9956 () Bool)

(declare-fun b_and!6645 () Bool)

(assert (=> b!107583 (= tp!9956 b_and!6645)))

(declare-fun b!107574 () Bool)

(declare-fun b_free!2543 () Bool)

(declare-fun b_next!2543 () Bool)

(assert (=> b!107574 (= b_free!2543 (not b_next!2543))))

(declare-fun tp!9954 () Bool)

(declare-fun b_and!6647 () Bool)

(assert (=> b!107574 (= tp!9954 b_and!6647)))

(declare-fun b!107565 () Bool)

(declare-fun e!70020 () Bool)

(declare-fun e!70011 () Bool)

(declare-fun mapRes!3961 () Bool)

(assert (=> b!107565 (= e!70020 (and e!70011 mapRes!3961))))

(declare-fun condMapEmpty!3962 () Bool)

(declare-datatypes ((V!3229 0))(
  ( (V!3230 (val!1388 Int)) )
))
(declare-datatypes ((array!4366 0))(
  ( (array!4367 (arr!2070 (Array (_ BitVec 32) (_ BitVec 64))) (size!2326 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1000 0))(
  ( (ValueCellFull!1000 (v!2909 V!3229)) (EmptyCell!1000) )
))
(declare-datatypes ((array!4368 0))(
  ( (array!4369 (arr!2071 (Array (_ BitVec 32) ValueCell!1000)) (size!2327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!908 0))(
  ( (LongMapFixedSize!909 (defaultEntry!2604 Int) (mask!6760 (_ BitVec 32)) (extraKeys!2405 (_ BitVec 32)) (zeroValue!2477 V!3229) (minValue!2477 V!3229) (_size!503 (_ BitVec 32)) (_keys!4314 array!4366) (_values!2587 array!4368) (_vacant!503 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!908)

(declare-fun mapDefault!3961 () ValueCell!1000)

