; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91768 () Bool)

(assert start!91768)

(declare-fun b!1043954 () Bool)

(declare-fun b_free!21109 () Bool)

(declare-fun b_next!21109 () Bool)

(assert (=> b!1043954 (= b_free!21109 (not b_next!21109))))

(declare-fun tp!74571 () Bool)

(declare-fun b_and!33683 () Bool)

(assert (=> b!1043954 (= tp!74571 b_and!33683)))

(declare-fun res!695477 () Bool)

(declare-fun e!591618 () Bool)

(assert (=> start!91768 (=> (not res!695477) (not e!591618))))

(declare-datatypes ((V!37979 0))(
  ( (V!37980 (val!12465 Int)) )
))
(declare-datatypes ((ValueCell!11711 0))(
  ( (ValueCellFull!11711 (v!15057 V!37979)) (EmptyCell!11711) )
))
(declare-datatypes ((array!65808 0))(
  ( (array!65809 (arr!31651 (Array (_ BitVec 32) (_ BitVec 64))) (size!32187 (_ BitVec 32))) )
))
(declare-datatypes ((array!65810 0))(
  ( (array!65811 (arr!31652 (Array (_ BitVec 32) ValueCell!11711)) (size!32188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6016 0))(
  ( (LongMapFixedSize!6017 (defaultEntry!6394 Int) (mask!30490 (_ BitVec 32)) (extraKeys!6122 (_ BitVec 32)) (zeroValue!6228 V!37979) (minValue!6228 V!37979) (_size!3063 (_ BitVec 32)) (_keys!11653 array!65808) (_values!6417 array!65810) (_vacant!3063 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6016)

(declare-fun valid!2212 (LongMapFixedSize!6016) Bool)

(assert (=> start!91768 (= res!695477 (valid!2212 thiss!1427))))

(assert (=> start!91768 e!591618))

(declare-fun e!591616 () Bool)

(assert (=> start!91768 e!591616))

(assert (=> start!91768 true))

(declare-fun b!1043947 () Bool)

(declare-fun e!591617 () Bool)

(declare-fun e!591614 () Bool)

(declare-fun mapRes!38870 () Bool)

(assert (=> b!1043947 (= e!591617 (and e!591614 mapRes!38870))))

(declare-fun condMapEmpty!38870 () Bool)

(declare-fun mapDefault!38870 () ValueCell!11711)

