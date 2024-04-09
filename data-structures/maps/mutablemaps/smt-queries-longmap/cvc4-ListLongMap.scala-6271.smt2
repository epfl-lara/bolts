; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80266 () Bool)

(assert start!80266)

(declare-fun b!942363 () Bool)

(declare-fun b_free!17951 () Bool)

(declare-fun b_next!17951 () Bool)

(assert (=> b!942363 (= b_free!17951 (not b_next!17951))))

(declare-fun tp!62356 () Bool)

(declare-fun b_and!29381 () Bool)

(assert (=> b!942363 (= tp!62356 b_and!29381)))

(declare-fun b!942362 () Bool)

(declare-fun e!529883 () Bool)

(declare-fun tp_is_empty!20459 () Bool)

(assert (=> b!942362 (= e!529883 tp_is_empty!20459)))

(declare-fun e!529879 () Bool)

(declare-datatypes ((V!32243 0))(
  ( (V!32244 (val!10280 Int)) )
))
(declare-datatypes ((ValueCell!9748 0))(
  ( (ValueCellFull!9748 (v!12811 V!32243)) (EmptyCell!9748) )
))
(declare-datatypes ((array!56904 0))(
  ( (array!56905 (arr!27375 (Array (_ BitVec 32) ValueCell!9748)) (size!27841 (_ BitVec 32))) )
))
(declare-datatypes ((array!56906 0))(
  ( (array!56907 (arr!27376 (Array (_ BitVec 32) (_ BitVec 64))) (size!27842 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4646 0))(
  ( (LongMapFixedSize!4647 (defaultEntry!5614 Int) (mask!27214 (_ BitVec 32)) (extraKeys!5346 (_ BitVec 32)) (zeroValue!5450 V!32243) (minValue!5450 V!32243) (_size!2378 (_ BitVec 32)) (_keys!10482 array!56906) (_values!5637 array!56904) (_vacant!2378 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4646)

(declare-fun e!529881 () Bool)

(declare-fun array_inv!21226 (array!56906) Bool)

(declare-fun array_inv!21227 (array!56904) Bool)

(assert (=> b!942363 (= e!529879 (and tp!62356 tp_is_empty!20459 (array_inv!21226 (_keys!10482 thiss!1141)) (array_inv!21227 (_values!5637 thiss!1141)) e!529881))))

(declare-fun res!633365 () Bool)

(declare-fun e!529880 () Bool)

(assert (=> start!80266 (=> (not res!633365) (not e!529880))))

(declare-fun valid!1760 (LongMapFixedSize!4646) Bool)

(assert (=> start!80266 (= res!633365 (valid!1760 thiss!1141))))

(assert (=> start!80266 e!529880))

(assert (=> start!80266 e!529879))

(assert (=> start!80266 true))

(declare-fun b!942364 () Bool)

(declare-fun res!633369 () Bool)

(assert (=> b!942364 (=> (not res!633369) (not e!529880))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9025 0))(
  ( (MissingZero!9025 (index!38470 (_ BitVec 32))) (Found!9025 (index!38471 (_ BitVec 32))) (Intermediate!9025 (undefined!9837 Bool) (index!38472 (_ BitVec 32)) (x!80907 (_ BitVec 32))) (Undefined!9025) (MissingVacant!9025 (index!38473 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56906 (_ BitVec 32)) SeekEntryResult!9025)

(assert (=> b!942364 (= res!633369 (not (is-Found!9025 (seekEntry!0 key!756 (_keys!10482 thiss!1141) (mask!27214 thiss!1141)))))))

(declare-fun b!942365 () Bool)

(declare-fun res!633363 () Bool)

(assert (=> b!942365 (=> (not res!633363) (not e!529880))))

(assert (=> b!942365 (= res!633363 (and (= (size!27841 (_values!5637 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27214 thiss!1141))) (= (size!27842 (_keys!10482 thiss!1141)) (size!27841 (_values!5637 thiss!1141))) (bvsge (mask!27214 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5346 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5346 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942366 () Bool)

(declare-fun res!633368 () Bool)

(assert (=> b!942366 (=> (not res!633368) (not e!529880))))

(declare-datatypes ((List!19349 0))(
  ( (Nil!19346) (Cons!19345 (h!20495 (_ BitVec 64)) (t!27672 List!19349)) )
))
(declare-fun arrayNoDuplicates!0 (array!56906 (_ BitVec 32) List!19349) Bool)

(assert (=> b!942366 (= res!633368 (arrayNoDuplicates!0 (_keys!10482 thiss!1141) #b00000000000000000000000000000000 Nil!19346))))

(declare-fun b!942367 () Bool)

(assert (=> b!942367 (= e!529880 (bvsgt #b00000000000000000000000000000000 (size!27842 (_keys!10482 thiss!1141))))))

(declare-fun b!942368 () Bool)

(declare-fun res!633364 () Bool)

(assert (=> b!942368 (=> (not res!633364) (not e!529880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56906 (_ BitVec 32)) Bool)

(assert (=> b!942368 (= res!633364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10482 thiss!1141) (mask!27214 thiss!1141)))))

(declare-fun b!942369 () Bool)

(declare-fun res!633367 () Bool)

(assert (=> b!942369 (=> (not res!633367) (not e!529880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942369 (= res!633367 (validMask!0 (mask!27214 thiss!1141)))))

(declare-fun b!942370 () Bool)

(declare-fun e!529882 () Bool)

(assert (=> b!942370 (= e!529882 tp_is_empty!20459)))

(declare-fun b!942371 () Bool)

(declare-fun res!633366 () Bool)

(assert (=> b!942371 (=> (not res!633366) (not e!529880))))

(assert (=> b!942371 (= res!633366 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32507 () Bool)

(declare-fun mapRes!32507 () Bool)

(assert (=> mapIsEmpty!32507 mapRes!32507))

(declare-fun b!942372 () Bool)

(assert (=> b!942372 (= e!529881 (and e!529883 mapRes!32507))))

(declare-fun condMapEmpty!32507 () Bool)

(declare-fun mapDefault!32507 () ValueCell!9748)

