; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13074 () Bool)

(assert start!13074)

(declare-fun b!114028 () Bool)

(declare-fun b_free!2601 () Bool)

(declare-fun b_next!2601 () Bool)

(assert (=> b!114028 (= b_free!2601 (not b_next!2601))))

(declare-fun tp!10163 () Bool)

(declare-fun b_and!7017 () Bool)

(assert (=> b!114028 (= tp!10163 b_and!7017)))

(declare-fun b!114032 () Bool)

(declare-fun b_free!2603 () Bool)

(declare-fun b_next!2603 () Bool)

(assert (=> b!114032 (= b_free!2603 (not b_next!2603))))

(declare-fun tp!10162 () Bool)

(declare-fun b_and!7019 () Bool)

(assert (=> b!114032 (= tp!10162 b_and!7019)))

(declare-fun b!114011 () Bool)

(declare-fun e!74104 () Bool)

(declare-fun e!74112 () Bool)

(assert (=> b!114011 (= e!74104 e!74112)))

(declare-fun res!56165 () Bool)

(declare-fun e!74111 () Bool)

(assert (=> start!13074 (=> (not res!56165) (not e!74111))))

(declare-datatypes ((V!3269 0))(
  ( (V!3270 (val!1403 Int)) )
))
(declare-datatypes ((array!4434 0))(
  ( (array!4435 (arr!2100 (Array (_ BitVec 32) (_ BitVec 64))) (size!2360 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1015 0))(
  ( (ValueCellFull!1015 (v!2972 V!3269)) (EmptyCell!1015) )
))
(declare-datatypes ((array!4436 0))(
  ( (array!4437 (arr!2101 (Array (_ BitVec 32) ValueCell!1015)) (size!2361 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!938 0))(
  ( (LongMapFixedSize!939 (defaultEntry!2675 Int) (mask!6865 (_ BitVec 32)) (extraKeys!2464 (_ BitVec 32)) (zeroValue!2542 V!3269) (minValue!2542 V!3269) (_size!518 (_ BitVec 32)) (_keys!4397 array!4434) (_values!2658 array!4436) (_vacant!518 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!738 0))(
  ( (Cell!739 (v!2973 LongMapFixedSize!938)) )
))
(declare-datatypes ((LongMap!738 0))(
  ( (LongMap!739 (underlying!380 Cell!738)) )
))
(declare-fun thiss!992 () LongMap!738)

(declare-fun valid!434 (LongMap!738) Bool)

(assert (=> start!13074 (= res!56165 (valid!434 thiss!992))))

(assert (=> start!13074 e!74111))

(declare-fun e!74108 () Bool)

(assert (=> start!13074 e!74108))

(assert (=> start!13074 true))

(declare-fun e!74109 () Bool)

(assert (=> start!13074 e!74109))

(declare-fun b!114012 () Bool)

(declare-fun res!56166 () Bool)

(assert (=> b!114012 (=> (not res!56166) (not e!74111))))

(declare-fun newMap!16 () LongMapFixedSize!938)

(assert (=> b!114012 (= res!56166 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6865 newMap!16)) (_size!518 (v!2973 (underlying!380 thiss!992)))))))

(declare-fun b!114013 () Bool)

(declare-fun e!74095 () Bool)

(declare-fun e!74098 () Bool)

(declare-fun mapRes!4080 () Bool)

(assert (=> b!114013 (= e!74095 (and e!74098 mapRes!4080))))

(declare-fun condMapEmpty!4079 () Bool)

(declare-fun mapDefault!4080 () ValueCell!1015)

