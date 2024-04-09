; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76802 () Bool)

(assert start!76802)

(declare-fun b!898090 () Bool)

(declare-fun b_free!16009 () Bool)

(declare-fun b_next!16009 () Bool)

(assert (=> b!898090 (= b_free!16009 (not b_next!16009))))

(declare-fun tp!56094 () Bool)

(declare-fun b_and!26319 () Bool)

(assert (=> b!898090 (= tp!56094 b_and!26319)))

(declare-fun b!898087 () Bool)

(declare-fun e!502365 () Bool)

(declare-fun e!502367 () Bool)

(assert (=> b!898087 (= e!502365 (not e!502367))))

(declare-fun res!607072 () Bool)

(assert (=> b!898087 (=> res!607072 e!502367)))

(declare-datatypes ((SeekEntryResult!8909 0))(
  ( (MissingZero!8909 (index!38006 (_ BitVec 32))) (Found!8909 (index!38007 (_ BitVec 32))) (Intermediate!8909 (undefined!9721 Bool) (index!38008 (_ BitVec 32)) (x!76531 (_ BitVec 32))) (Undefined!8909) (MissingVacant!8909 (index!38009 (_ BitVec 32))) )
))
(declare-fun lt!405399 () SeekEntryResult!8909)

(assert (=> b!898087 (= res!607072 (not (is-Found!8909 lt!405399)))))

(declare-fun e!502370 () Bool)

(assert (=> b!898087 e!502370))

(declare-fun res!607074 () Bool)

(assert (=> b!898087 (=> res!607074 e!502370)))

(assert (=> b!898087 (= res!607074 (not (is-Found!8909 lt!405399)))))

(declare-datatypes ((Unit!30499 0))(
  ( (Unit!30500) )
))
(declare-fun lt!405401 () Unit!30499)

(declare-datatypes ((array!52696 0))(
  ( (array!52697 (arr!25322 (Array (_ BitVec 32) (_ BitVec 64))) (size!25778 (_ BitVec 32))) )
))
(declare-datatypes ((V!29415 0))(
  ( (V!29416 (val!9219 Int)) )
))
(declare-datatypes ((ValueCell!8687 0))(
  ( (ValueCellFull!8687 (v!11706 V!29415)) (EmptyCell!8687) )
))
(declare-datatypes ((array!52698 0))(
  ( (array!52699 (arr!25323 (Array (_ BitVec 32) ValueCell!8687)) (size!25779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4390 0))(
  ( (LongMapFixedSize!4391 (defaultEntry!5407 Int) (mask!26124 (_ BitVec 32)) (extraKeys!5122 (_ BitVec 32)) (zeroValue!5226 V!29415) (minValue!5226 V!29415) (_size!2250 (_ BitVec 32)) (_keys!10176 array!52696) (_values!5413 array!52698) (_vacant!2250 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4390)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!94 (array!52696 array!52698 (_ BitVec 32) (_ BitVec 32) V!29415 V!29415 (_ BitVec 64)) Unit!30499)

(assert (=> b!898087 (= lt!405401 (lemmaSeekEntryGivesInRangeIndex!94 (_keys!10176 thiss!1181) (_values!5413 thiss!1181) (mask!26124 thiss!1181) (extraKeys!5122 thiss!1181) (zeroValue!5226 thiss!1181) (minValue!5226 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52696 (_ BitVec 32)) SeekEntryResult!8909)

(assert (=> b!898087 (= lt!405399 (seekEntry!0 key!785 (_keys!10176 thiss!1181) (mask!26124 thiss!1181)))))

(declare-fun b!898088 () Bool)

(declare-fun e!502371 () Bool)

(declare-fun tp_is_empty!18337 () Bool)

(assert (=> b!898088 (= e!502371 tp_is_empty!18337)))

(declare-fun b!898089 () Bool)

(declare-fun e!502366 () Bool)

(declare-fun e!502368 () Bool)

(declare-fun mapRes!29157 () Bool)

(assert (=> b!898089 (= e!502366 (and e!502368 mapRes!29157))))

(declare-fun condMapEmpty!29157 () Bool)

(declare-fun mapDefault!29157 () ValueCell!8687)

