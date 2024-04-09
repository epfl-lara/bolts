; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77370 () Bool)

(assert start!77370)

(declare-fun b!901900 () Bool)

(declare-fun b_free!16091 () Bool)

(declare-fun b_next!16091 () Bool)

(assert (=> b!901900 (= b_free!16091 (not b_next!16091))))

(declare-fun tp!56380 () Bool)

(declare-fun b_and!26473 () Bool)

(assert (=> b!901900 (= tp!56380 b_and!26473)))

(declare-fun res!608868 () Bool)

(declare-fun e!505041 () Bool)

(assert (=> start!77370 (=> (not res!608868) (not e!505041))))

(declare-datatypes ((array!52884 0))(
  ( (array!52885 (arr!25404 (Array (_ BitVec 32) (_ BitVec 64))) (size!25864 (_ BitVec 32))) )
))
(declare-datatypes ((V!29523 0))(
  ( (V!29524 (val!9260 Int)) )
))
(declare-datatypes ((ValueCell!8728 0))(
  ( (ValueCellFull!8728 (v!11763 V!29523)) (EmptyCell!8728) )
))
(declare-datatypes ((array!52886 0))(
  ( (array!52887 (arr!25405 (Array (_ BitVec 32) ValueCell!8728)) (size!25865 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4472 0))(
  ( (LongMapFixedSize!4473 (defaultEntry!5482 Int) (mask!26295 (_ BitVec 32)) (extraKeys!5213 (_ BitVec 32)) (zeroValue!5317 V!29523) (minValue!5317 V!29523) (_size!2291 (_ BitVec 32)) (_keys!10295 array!52884) (_values!5504 array!52886) (_vacant!2291 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4472)

(declare-fun valid!1700 (LongMapFixedSize!4472) Bool)

(assert (=> start!77370 (= res!608868 (valid!1700 thiss!1181))))

(assert (=> start!77370 e!505041))

(declare-fun e!505037 () Bool)

(assert (=> start!77370 e!505037))

(assert (=> start!77370 true))

(declare-fun b!901893 () Bool)

(declare-fun e!505043 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun dynLambda!1321 (Int (_ BitVec 64)) V!29523)

(declare-datatypes ((Option!477 0))(
  ( (Some!476 (v!11764 V!29523)) (None!475) )
))
(declare-fun get!13387 (Option!477) V!29523)

(declare-datatypes ((tuple2!12104 0))(
  ( (tuple2!12105 (_1!6062 (_ BitVec 64)) (_2!6062 V!29523)) )
))
(declare-datatypes ((List!17959 0))(
  ( (Nil!17956) (Cons!17955 (h!19101 tuple2!12104) (t!25350 List!17959)) )
))
(declare-fun getValueByKey!471 (List!17959 (_ BitVec 64)) Option!477)

(declare-datatypes ((ListLongMap!10815 0))(
  ( (ListLongMap!10816 (toList!5423 List!17959)) )
))
(declare-fun map!12305 (LongMapFixedSize!4472) ListLongMap!10815)

(assert (=> b!901893 (= e!505043 (= (dynLambda!1321 (defaultEntry!5482 thiss!1181) key!785) (get!13387 (getValueByKey!471 (toList!5423 (map!12305 thiss!1181)) key!785))))))

(declare-fun b!901894 () Bool)

(assert (=> b!901894 (= e!505041 (not e!505043))))

(declare-fun res!608869 () Bool)

(assert (=> b!901894 (=> res!608869 e!505043)))

(declare-datatypes ((SeekEntryResult!8944 0))(
  ( (MissingZero!8944 (index!38146 (_ BitVec 32))) (Found!8944 (index!38147 (_ BitVec 32))) (Intermediate!8944 (undefined!9756 Bool) (index!38148 (_ BitVec 32)) (x!76840 (_ BitVec 32))) (Undefined!8944) (MissingVacant!8944 (index!38149 (_ BitVec 32))) )
))
(declare-fun lt!407718 () SeekEntryResult!8944)

(assert (=> b!901894 (= res!608869 (is-Found!8944 lt!407718))))

(declare-fun e!505044 () Bool)

(assert (=> b!901894 e!505044))

(declare-fun res!608871 () Bool)

(assert (=> b!901894 (=> res!608871 e!505044)))

(assert (=> b!901894 (= res!608871 (not (is-Found!8944 lt!407718)))))

(declare-datatypes ((Unit!30599 0))(
  ( (Unit!30600) )
))
(declare-fun lt!407719 () Unit!30599)

(declare-fun lemmaSeekEntryGivesInRangeIndex!120 (array!52884 array!52886 (_ BitVec 32) (_ BitVec 32) V!29523 V!29523 (_ BitVec 64)) Unit!30599)

(assert (=> b!901894 (= lt!407719 (lemmaSeekEntryGivesInRangeIndex!120 (_keys!10295 thiss!1181) (_values!5504 thiss!1181) (mask!26295 thiss!1181) (extraKeys!5213 thiss!1181) (zeroValue!5317 thiss!1181) (minValue!5317 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52884 (_ BitVec 32)) SeekEntryResult!8944)

(assert (=> b!901894 (= lt!407718 (seekEntry!0 key!785 (_keys!10295 thiss!1181) (mask!26295 thiss!1181)))))

(declare-fun b!901895 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901895 (= e!505044 (inRange!0 (index!38147 lt!407718) (mask!26295 thiss!1181)))))

(declare-fun b!901896 () Bool)

(declare-fun res!608872 () Bool)

(assert (=> b!901896 (=> (not res!608872) (not e!505041))))

(assert (=> b!901896 (= res!608872 (not (= key!785 (bvneg key!785))))))

(declare-fun b!901897 () Bool)

(declare-fun e!505042 () Bool)

(declare-fun tp_is_empty!18419 () Bool)

(assert (=> b!901897 (= e!505042 tp_is_empty!18419)))

(declare-fun b!901898 () Bool)

(declare-fun e!505038 () Bool)

(declare-fun mapRes!29320 () Bool)

(assert (=> b!901898 (= e!505038 (and e!505042 mapRes!29320))))

(declare-fun condMapEmpty!29320 () Bool)

(declare-fun mapDefault!29320 () ValueCell!8728)

