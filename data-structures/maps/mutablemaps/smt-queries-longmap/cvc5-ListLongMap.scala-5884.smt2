; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75862 () Bool)

(assert start!75862)

(declare-fun b!892091 () Bool)

(declare-fun b_free!15805 () Bool)

(declare-fun b_next!15805 () Bool)

(assert (=> b!892091 (= b_free!15805 (not b_next!15805))))

(declare-fun tp!55384 () Bool)

(declare-fun b_and!26063 () Bool)

(assert (=> b!892091 (= tp!55384 b_and!26063)))

(declare-fun b!892081 () Bool)

(declare-fun res!604508 () Bool)

(declare-fun e!497976 () Bool)

(assert (=> b!892081 (=> (not res!604508) (not e!497976))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892081 (= res!604508 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892083 () Bool)

(declare-fun res!604511 () Bool)

(declare-fun e!497973 () Bool)

(assert (=> b!892083 (=> res!604511 e!497973)))

(declare-datatypes ((array!52232 0))(
  ( (array!52233 (arr!25118 (Array (_ BitVec 32) (_ BitVec 64))) (size!25563 (_ BitVec 32))) )
))
(declare-datatypes ((V!29143 0))(
  ( (V!29144 (val!9117 Int)) )
))
(declare-datatypes ((ValueCell!8585 0))(
  ( (ValueCellFull!8585 (v!11589 V!29143)) (EmptyCell!8585) )
))
(declare-datatypes ((array!52234 0))(
  ( (array!52235 (arr!25119 (Array (_ BitVec 32) ValueCell!8585)) (size!25564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4186 0))(
  ( (LongMapFixedSize!4187 (defaultEntry!5290 Int) (mask!25792 (_ BitVec 32)) (extraKeys!4984 (_ BitVec 32)) (zeroValue!5088 V!29143) (minValue!5088 V!29143) (_size!2148 (_ BitVec 32)) (_keys!9969 array!52232) (_values!5275 array!52234) (_vacant!2148 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4186)

(assert (=> b!892083 (= res!604511 (or (not (= (size!25564 (_values!5275 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25792 thiss!1181)))) (not (= (size!25563 (_keys!9969 thiss!1181)) (size!25564 (_values!5275 thiss!1181)))) (bvslt (mask!25792 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4984 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4984 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!892084 () Bool)

(declare-fun e!497974 () Bool)

(declare-datatypes ((SeekEntryResult!8835 0))(
  ( (MissingZero!8835 (index!37710 (_ BitVec 32))) (Found!8835 (index!37711 (_ BitVec 32))) (Intermediate!8835 (undefined!9647 Bool) (index!37712 (_ BitVec 32)) (x!75812 (_ BitVec 32))) (Undefined!8835) (MissingVacant!8835 (index!37713 (_ BitVec 32))) )
))
(declare-fun lt!403032 () SeekEntryResult!8835)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892084 (= e!497974 (inRange!0 (index!37711 lt!403032) (mask!25792 thiss!1181)))))

(declare-fun b!892085 () Bool)

(declare-fun e!497979 () Bool)

(declare-fun tp_is_empty!18133 () Bool)

(assert (=> b!892085 (= e!497979 tp_is_empty!18133)))

(declare-fun b!892086 () Bool)

(assert (=> b!892086 (= e!497973 true)))

(declare-fun lt!403031 () Bool)

(declare-datatypes ((tuple2!12006 0))(
  ( (tuple2!12007 (_1!6013 (_ BitVec 64)) (_2!6013 V!29143)) )
))
(declare-datatypes ((List!17856 0))(
  ( (Nil!17853) (Cons!17852 (h!18983 tuple2!12006) (t!25163 List!17856)) )
))
(declare-datatypes ((ListLongMap!10717 0))(
  ( (ListLongMap!10718 (toList!5374 List!17856)) )
))
(declare-fun lt!403033 () ListLongMap!10717)

(declare-fun contains!4351 (ListLongMap!10717 (_ BitVec 64)) Bool)

(assert (=> b!892086 (= lt!403031 (contains!4351 lt!403033 key!785))))

(declare-fun b!892087 () Bool)

(declare-fun res!604506 () Bool)

(assert (=> b!892087 (=> res!604506 e!497973)))

(declare-datatypes ((List!17857 0))(
  ( (Nil!17854) (Cons!17853 (h!18984 (_ BitVec 64)) (t!25164 List!17857)) )
))
(declare-fun arrayNoDuplicates!0 (array!52232 (_ BitVec 32) List!17857) Bool)

(assert (=> b!892087 (= res!604506 (not (arrayNoDuplicates!0 (_keys!9969 thiss!1181) #b00000000000000000000000000000000 Nil!17854)))))

(declare-fun b!892088 () Bool)

(declare-fun e!497981 () Bool)

(declare-fun mapRes!28754 () Bool)

(assert (=> b!892088 (= e!497981 (and e!497979 mapRes!28754))))

(declare-fun condMapEmpty!28754 () Bool)

(declare-fun mapDefault!28754 () ValueCell!8585)

