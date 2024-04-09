; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75856 () Bool)

(assert start!75856)

(declare-fun b!891980 () Bool)

(declare-fun b_free!15799 () Bool)

(declare-fun b_next!15799 () Bool)

(assert (=> b!891980 (= b_free!15799 (not b_next!15799))))

(declare-fun tp!55367 () Bool)

(declare-fun b_and!26057 () Bool)

(assert (=> b!891980 (= tp!55367 b_and!26057)))

(declare-fun b!891973 () Bool)

(declare-fun e!497895 () Bool)

(assert (=> b!891973 (= e!497895 true)))

(declare-fun lt!402981 () Bool)

(declare-datatypes ((V!29135 0))(
  ( (V!29136 (val!9114 Int)) )
))
(declare-datatypes ((tuple2!12000 0))(
  ( (tuple2!12001 (_1!6010 (_ BitVec 64)) (_2!6010 V!29135)) )
))
(declare-datatypes ((List!17850 0))(
  ( (Nil!17847) (Cons!17846 (h!18977 tuple2!12000) (t!25157 List!17850)) )
))
(declare-datatypes ((ListLongMap!10711 0))(
  ( (ListLongMap!10712 (toList!5371 List!17850)) )
))
(declare-fun lt!402979 () ListLongMap!10711)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4348 (ListLongMap!10711 (_ BitVec 64)) Bool)

(assert (=> b!891973 (= lt!402981 (contains!4348 lt!402979 key!785))))

(declare-fun b!891974 () Bool)

(declare-fun res!604435 () Bool)

(declare-fun e!497896 () Bool)

(assert (=> b!891974 (=> (not res!604435) (not e!497896))))

(assert (=> b!891974 (= res!604435 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891975 () Bool)

(declare-fun e!497899 () Bool)

(assert (=> b!891975 (= e!497896 (not e!497899))))

(declare-fun res!604437 () Bool)

(assert (=> b!891975 (=> res!604437 e!497899)))

(declare-datatypes ((SeekEntryResult!8832 0))(
  ( (MissingZero!8832 (index!37698 (_ BitVec 32))) (Found!8832 (index!37699 (_ BitVec 32))) (Intermediate!8832 (undefined!9644 Bool) (index!37700 (_ BitVec 32)) (x!75801 (_ BitVec 32))) (Undefined!8832) (MissingVacant!8832 (index!37701 (_ BitVec 32))) )
))
(declare-fun lt!402976 () SeekEntryResult!8832)

(assert (=> b!891975 (= res!604437 (not (is-Found!8832 lt!402976)))))

(declare-fun e!497898 () Bool)

(assert (=> b!891975 e!497898))

(declare-fun res!604436 () Bool)

(assert (=> b!891975 (=> res!604436 e!497898)))

(assert (=> b!891975 (= res!604436 (not (is-Found!8832 lt!402976)))))

(declare-datatypes ((Unit!30347 0))(
  ( (Unit!30348) )
))
(declare-fun lt!402978 () Unit!30347)

(declare-datatypes ((array!52220 0))(
  ( (array!52221 (arr!25112 (Array (_ BitVec 32) (_ BitVec 64))) (size!25557 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8582 0))(
  ( (ValueCellFull!8582 (v!11586 V!29135)) (EmptyCell!8582) )
))
(declare-datatypes ((array!52222 0))(
  ( (array!52223 (arr!25113 (Array (_ BitVec 32) ValueCell!8582)) (size!25558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4180 0))(
  ( (LongMapFixedSize!4181 (defaultEntry!5287 Int) (mask!25787 (_ BitVec 32)) (extraKeys!4981 (_ BitVec 32)) (zeroValue!5085 V!29135) (minValue!5085 V!29135) (_size!2145 (_ BitVec 32)) (_keys!9966 array!52220) (_values!5272 array!52222) (_vacant!2145 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4180)

(declare-fun lemmaSeekEntryGivesInRangeIndex!49 (array!52220 array!52222 (_ BitVec 32) (_ BitVec 32) V!29135 V!29135 (_ BitVec 64)) Unit!30347)

(assert (=> b!891975 (= lt!402978 (lemmaSeekEntryGivesInRangeIndex!49 (_keys!9966 thiss!1181) (_values!5272 thiss!1181) (mask!25787 thiss!1181) (extraKeys!4981 thiss!1181) (zeroValue!5085 thiss!1181) (minValue!5085 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52220 (_ BitVec 32)) SeekEntryResult!8832)

(assert (=> b!891975 (= lt!402976 (seekEntry!0 key!785 (_keys!9966 thiss!1181) (mask!25787 thiss!1181)))))

(declare-fun b!891977 () Bool)

(declare-fun e!497900 () Bool)

(declare-fun tp_is_empty!18127 () Bool)

(assert (=> b!891977 (= e!497900 tp_is_empty!18127)))

(declare-fun b!891978 () Bool)

(declare-fun res!604439 () Bool)

(assert (=> b!891978 (=> res!604439 e!497895)))

(declare-datatypes ((List!17851 0))(
  ( (Nil!17848) (Cons!17847 (h!18978 (_ BitVec 64)) (t!25158 List!17851)) )
))
(declare-fun arrayNoDuplicates!0 (array!52220 (_ BitVec 32) List!17851) Bool)

(assert (=> b!891978 (= res!604439 (not (arrayNoDuplicates!0 (_keys!9966 thiss!1181) #b00000000000000000000000000000000 Nil!17848)))))

(declare-fun b!891979 () Bool)

(declare-fun res!604438 () Bool)

(assert (=> b!891979 (=> res!604438 e!497895)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52220 (_ BitVec 32)) Bool)

(assert (=> b!891979 (= res!604438 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9966 thiss!1181) (mask!25787 thiss!1181))))))

(declare-fun e!497897 () Bool)

(declare-fun e!497893 () Bool)

(declare-fun array_inv!19700 (array!52220) Bool)

(declare-fun array_inv!19701 (array!52222) Bool)

(assert (=> b!891980 (= e!497893 (and tp!55367 tp_is_empty!18127 (array_inv!19700 (_keys!9966 thiss!1181)) (array_inv!19701 (_values!5272 thiss!1181)) e!497897))))

(declare-fun mapNonEmpty!28745 () Bool)

(declare-fun mapRes!28745 () Bool)

(declare-fun tp!55366 () Bool)

(declare-fun e!497894 () Bool)

(assert (=> mapNonEmpty!28745 (= mapRes!28745 (and tp!55366 e!497894))))

(declare-fun mapRest!28745 () (Array (_ BitVec 32) ValueCell!8582))

(declare-fun mapValue!28745 () ValueCell!8582)

(declare-fun mapKey!28745 () (_ BitVec 32))

(assert (=> mapNonEmpty!28745 (= (arr!25113 (_values!5272 thiss!1181)) (store mapRest!28745 mapKey!28745 mapValue!28745))))

(declare-fun b!891981 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891981 (= e!497898 (inRange!0 (index!37699 lt!402976) (mask!25787 thiss!1181)))))

(declare-fun mapIsEmpty!28745 () Bool)

(assert (=> mapIsEmpty!28745 mapRes!28745))

(declare-fun b!891982 () Bool)

(declare-fun res!604440 () Bool)

(assert (=> b!891982 (=> res!604440 e!497895)))

(assert (=> b!891982 (= res!604440 (or (not (= (size!25558 (_values!5272 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25787 thiss!1181)))) (not (= (size!25557 (_keys!9966 thiss!1181)) (size!25558 (_values!5272 thiss!1181)))) (bvslt (mask!25787 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4981 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4981 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891983 () Bool)

(assert (=> b!891983 (= e!497897 (and e!497900 mapRes!28745))))

(declare-fun condMapEmpty!28745 () Bool)

(declare-fun mapDefault!28745 () ValueCell!8582)

