; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89466 () Bool)

(assert start!89466)

(declare-fun b!1025401 () Bool)

(declare-fun b_free!20429 () Bool)

(declare-fun b_next!20429 () Bool)

(assert (=> b!1025401 (= b_free!20429 (not b_next!20429))))

(declare-fun tp!72334 () Bool)

(declare-fun b_and!32693 () Bool)

(assert (=> b!1025401 (= tp!72334 b_and!32693)))

(declare-fun res!686598 () Bool)

(declare-fun e!578216 () Bool)

(assert (=> start!89466 (=> (not res!686598) (not e!578216))))

(declare-datatypes ((V!37071 0))(
  ( (V!37072 (val!12125 Int)) )
))
(declare-datatypes ((ValueCell!11371 0))(
  ( (ValueCellFull!11371 (v!14695 V!37071)) (EmptyCell!11371) )
))
(declare-datatypes ((array!64332 0))(
  ( (array!64333 (arr!30971 (Array (_ BitVec 32) (_ BitVec 64))) (size!31485 (_ BitVec 32))) )
))
(declare-datatypes ((array!64334 0))(
  ( (array!64335 (arr!30972 (Array (_ BitVec 32) ValueCell!11371)) (size!31486 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5336 0))(
  ( (LongMapFixedSize!5337 (defaultEntry!6020 Int) (mask!29685 (_ BitVec 32)) (extraKeys!5752 (_ BitVec 32)) (zeroValue!5856 V!37071) (minValue!5856 V!37071) (_size!2723 (_ BitVec 32)) (_keys!11164 array!64332) (_values!6043 array!64334) (_vacant!2723 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5336)

(declare-fun valid!1982 (LongMapFixedSize!5336) Bool)

(assert (=> start!89466 (= res!686598 (valid!1982 thiss!1427))))

(assert (=> start!89466 e!578216))

(declare-fun e!578214 () Bool)

(assert (=> start!89466 e!578214))

(assert (=> start!89466 true))

(declare-fun b!1025398 () Bool)

(declare-fun e!578209 () Bool)

(declare-fun e!578212 () Bool)

(declare-fun mapRes!37652 () Bool)

(assert (=> b!1025398 (= e!578209 (and e!578212 mapRes!37652))))

(declare-fun condMapEmpty!37652 () Bool)

(declare-fun mapDefault!37652 () ValueCell!11371)

