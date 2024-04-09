; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16816 () Bool)

(assert start!16816)

(declare-fun b!169270 () Bool)

(declare-fun b_free!4119 () Bool)

(declare-fun b_next!4119 () Bool)

(assert (=> b!169270 (= b_free!4119 (not b_next!4119))))

(declare-fun tp!14961 () Bool)

(declare-fun b_and!10551 () Bool)

(assert (=> b!169270 (= tp!14961 b_and!10551)))

(declare-fun b!169266 () Bool)

(declare-fun b_free!4121 () Bool)

(declare-fun b_next!4121 () Bool)

(assert (=> b!169266 (= b_free!4121 (not b_next!4121))))

(declare-fun tp!14964 () Bool)

(declare-fun b_and!10553 () Bool)

(assert (=> b!169266 (= tp!14964 b_and!10553)))

(declare-fun b!169258 () Bool)

(declare-fun res!80544 () Bool)

(declare-fun e!111508 () Bool)

(assert (=> b!169258 (=> (not res!80544) (not e!111508))))

(declare-datatypes ((V!4861 0))(
  ( (V!4862 (val!2000 Int)) )
))
(declare-datatypes ((ValueCell!1612 0))(
  ( (ValueCellFull!1612 (v!3861 V!4861)) (EmptyCell!1612) )
))
(declare-datatypes ((array!6918 0))(
  ( (array!6919 (arr!3294 (Array (_ BitVec 32) (_ BitVec 64))) (size!3582 (_ BitVec 32))) )
))
(declare-datatypes ((array!6920 0))(
  ( (array!6921 (arr!3295 (Array (_ BitVec 32) ValueCell!1612)) (size!3583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2132 0))(
  ( (LongMapFixedSize!2133 (defaultEntry!3508 Int) (mask!8289 (_ BitVec 32)) (extraKeys!3249 (_ BitVec 32)) (zeroValue!3351 V!4861) (minValue!3351 V!4861) (_size!1115 (_ BitVec 32)) (_keys!5333 array!6918) (_values!3491 array!6920) (_vacant!1115 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3204 0))(
  ( (tuple2!3205 (_1!1612 Bool) (_2!1612 LongMapFixedSize!2132)) )
))
(declare-fun lt!84906 () tuple2!3204)

(assert (=> b!169258 (= res!80544 (_1!1612 lt!84906))))

(declare-fun b!169259 () Bool)

(declare-fun e!111496 () Bool)

(declare-fun e!111501 () Bool)

(assert (=> b!169259 (= e!111496 e!111501)))

(declare-fun res!80541 () Bool)

(assert (=> b!169259 (=> (not res!80541) (not e!111501))))

(declare-datatypes ((SeekEntryResult!532 0))(
  ( (MissingZero!532 (index!4296 (_ BitVec 32))) (Found!532 (index!4297 (_ BitVec 32))) (Intermediate!532 (undefined!1344 Bool) (index!4298 (_ BitVec 32)) (x!18712 (_ BitVec 32))) (Undefined!532) (MissingVacant!532 (index!4299 (_ BitVec 32))) )
))
(declare-fun lt!84908 () SeekEntryResult!532)

(assert (=> b!169259 (= res!80541 (and (not (is-Undefined!532 lt!84908)) (not (is-MissingVacant!532 lt!84908)) (not (is-MissingZero!532 lt!84908)) (not (is-Found!532 lt!84908))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun thiss!1248 () LongMapFixedSize!2132)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6918 (_ BitVec 32)) SeekEntryResult!532)

(assert (=> b!169259 (= lt!84908 (seekEntryOrOpen!0 key!828 (_keys!5333 thiss!1248) (mask!8289 thiss!1248)))))

(declare-fun b!169260 () Bool)

(declare-fun e!111503 () Bool)

(declare-fun e!111500 () Bool)

(declare-fun mapRes!6603 () Bool)

(assert (=> b!169260 (= e!111503 (and e!111500 mapRes!6603))))

(declare-fun condMapEmpty!6602 () Bool)

(declare-fun err!59 () tuple2!3204)

(declare-fun mapDefault!6603 () ValueCell!1612)

