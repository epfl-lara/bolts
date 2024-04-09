; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21884 () Bool)

(assert start!21884)

(declare-fun b!220953 () Bool)

(declare-fun b_free!5939 () Bool)

(declare-fun b_next!5939 () Bool)

(assert (=> b!220953 (= b_free!5939 (not b_next!5939))))

(declare-fun tp!20959 () Bool)

(declare-fun b_and!12855 () Bool)

(assert (=> b!220953 (= tp!20959 b_and!12855)))

(declare-fun b!220940 () Bool)

(declare-fun res!108386 () Bool)

(declare-fun e!143637 () Bool)

(assert (=> b!220940 (=> (not res!108386) (not e!143637))))

(declare-fun call!20650 () Bool)

(assert (=> b!220940 (= res!108386 call!20650)))

(declare-fun e!143640 () Bool)

(assert (=> b!220940 (= e!143640 e!143637)))

(declare-fun b!220941 () Bool)

(declare-fun e!143633 () Bool)

(assert (=> b!220941 (= e!143633 false)))

(declare-fun lt!112327 () Bool)

(declare-datatypes ((V!7381 0))(
  ( (V!7382 (val!2945 Int)) )
))
(declare-datatypes ((ValueCell!2557 0))(
  ( (ValueCellFull!2557 (v!4961 V!7381)) (EmptyCell!2557) )
))
(declare-datatypes ((array!10844 0))(
  ( (array!10845 (arr!5141 (Array (_ BitVec 32) ValueCell!2557)) (size!5474 (_ BitVec 32))) )
))
(declare-datatypes ((array!10846 0))(
  ( (array!10847 (arr!5142 (Array (_ BitVec 32) (_ BitVec 64))) (size!5475 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3014 0))(
  ( (LongMapFixedSize!3015 (defaultEntry!4166 Int) (mask!9972 (_ BitVec 32)) (extraKeys!3903 (_ BitVec 32)) (zeroValue!4007 V!7381) (minValue!4007 V!7381) (_size!1556 (_ BitVec 32)) (_keys!6220 array!10846) (_values!4149 array!10844) (_vacant!1556 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3014)

(declare-datatypes ((List!3293 0))(
  ( (Nil!3290) (Cons!3289 (h!3937 (_ BitVec 64)) (t!8260 List!3293)) )
))
(declare-fun arrayNoDuplicates!0 (array!10846 (_ BitVec 32) List!3293) Bool)

(assert (=> b!220941 (= lt!112327 (arrayNoDuplicates!0 (_keys!6220 thiss!1504) #b00000000000000000000000000000000 Nil!3290))))

(declare-fun b!220942 () Bool)

(declare-fun e!143641 () Bool)

(declare-fun call!20649 () Bool)

(assert (=> b!220942 (= e!143641 (not call!20649))))

(declare-fun b!220943 () Bool)

(declare-fun res!108391 () Bool)

(assert (=> b!220943 (=> (not res!108391) (not e!143633))))

(assert (=> b!220943 (= res!108391 (and (= (size!5474 (_values!4149 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9972 thiss!1504))) (= (size!5475 (_keys!6220 thiss!1504)) (size!5474 (_values!4149 thiss!1504))) (bvsge (mask!9972 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3903 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3903 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220944 () Bool)

(declare-fun res!108390 () Bool)

(declare-datatypes ((SeekEntryResult!829 0))(
  ( (MissingZero!829 (index!5486 (_ BitVec 32))) (Found!829 (index!5487 (_ BitVec 32))) (Intermediate!829 (undefined!1641 Bool) (index!5488 (_ BitVec 32)) (x!22993 (_ BitVec 32))) (Undefined!829) (MissingVacant!829 (index!5489 (_ BitVec 32))) )
))
(declare-fun lt!112325 () SeekEntryResult!829)

(assert (=> b!220944 (= res!108390 (= (select (arr!5142 (_keys!6220 thiss!1504)) (index!5489 lt!112325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!220944 (=> (not res!108390) (not e!143641))))

(declare-fun b!220945 () Bool)

(declare-fun e!143639 () Bool)

(assert (=> b!220945 (= e!143639 e!143641)))

(declare-fun res!108380 () Bool)

(assert (=> b!220945 (= res!108380 call!20650)))

(assert (=> b!220945 (=> (not res!108380) (not e!143641))))

(declare-fun b!220946 () Bool)

(declare-fun res!108387 () Bool)

(assert (=> b!220946 (=> (not res!108387) (not e!143633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10846 (_ BitVec 32)) Bool)

(assert (=> b!220946 (= res!108387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6220 thiss!1504) (mask!9972 thiss!1504)))))

(declare-fun res!108383 () Bool)

(declare-fun e!143630 () Bool)

(assert (=> start!21884 (=> (not res!108383) (not e!143630))))

(declare-fun valid!1208 (LongMapFixedSize!3014) Bool)

(assert (=> start!21884 (= res!108383 (valid!1208 thiss!1504))))

(assert (=> start!21884 e!143630))

(declare-fun e!143638 () Bool)

(assert (=> start!21884 e!143638))

(assert (=> start!21884 true))

(declare-fun b!220947 () Bool)

(declare-datatypes ((Unit!6594 0))(
  ( (Unit!6595) )
))
(declare-fun e!143631 () Unit!6594)

(declare-fun lt!112326 () Unit!6594)

(assert (=> b!220947 (= e!143631 lt!112326)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!219 (array!10846 array!10844 (_ BitVec 32) (_ BitVec 32) V!7381 V!7381 (_ BitVec 64) Int) Unit!6594)

(assert (=> b!220947 (= lt!112326 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!219 (_keys!6220 thiss!1504) (_values!4149 thiss!1504) (mask!9972 thiss!1504) (extraKeys!3903 thiss!1504) (zeroValue!4007 thiss!1504) (minValue!4007 thiss!1504) key!932 (defaultEntry!4166 thiss!1504)))))

(declare-fun c!36740 () Bool)

(assert (=> b!220947 (= c!36740 (is-MissingZero!829 lt!112325))))

(assert (=> b!220947 e!143640))

(declare-fun b!220948 () Bool)

(declare-fun e!143635 () Bool)

(assert (=> b!220948 (= e!143630 e!143635)))

(declare-fun res!108389 () Bool)

(assert (=> b!220948 (=> (not res!108389) (not e!143635))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220948 (= res!108389 (or (= lt!112325 (MissingZero!829 index!297)) (= lt!112325 (MissingVacant!829 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10846 (_ BitVec 32)) SeekEntryResult!829)

(assert (=> b!220948 (= lt!112325 (seekEntryOrOpen!0 key!932 (_keys!6220 thiss!1504) (mask!9972 thiss!1504)))))

(declare-fun b!220949 () Bool)

(declare-fun e!143634 () Bool)

(declare-fun tp_is_empty!5801 () Bool)

(assert (=> b!220949 (= e!143634 tp_is_empty!5801)))

(declare-fun mapIsEmpty!9871 () Bool)

(declare-fun mapRes!9871 () Bool)

(assert (=> mapIsEmpty!9871 mapRes!9871))

(declare-fun bm!20646 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20646 (= call!20650 (inRange!0 (ite c!36740 (index!5486 lt!112325) (index!5489 lt!112325)) (mask!9972 thiss!1504)))))

(declare-fun b!220950 () Bool)

(declare-fun e!143636 () Bool)

(assert (=> b!220950 (= e!143636 tp_is_empty!5801)))

(declare-fun b!220951 () Bool)

(declare-fun c!36738 () Bool)

(assert (=> b!220951 (= c!36738 (is-MissingVacant!829 lt!112325))))

(assert (=> b!220951 (= e!143640 e!143639)))

(declare-fun b!220952 () Bool)

(assert (=> b!220952 (= e!143635 e!143633)))

(declare-fun res!108388 () Bool)

(assert (=> b!220952 (=> (not res!108388) (not e!143633))))

(assert (=> b!220952 (= res!108388 (inRange!0 index!297 (mask!9972 thiss!1504)))))

(declare-fun lt!112329 () Unit!6594)

(assert (=> b!220952 (= lt!112329 e!143631)))

(declare-fun c!36739 () Bool)

(declare-datatypes ((tuple2!4366 0))(
  ( (tuple2!4367 (_1!2193 (_ BitVec 64)) (_2!2193 V!7381)) )
))
(declare-datatypes ((List!3294 0))(
  ( (Nil!3291) (Cons!3290 (h!3938 tuple2!4366) (t!8261 List!3294)) )
))
(declare-datatypes ((ListLongMap!3293 0))(
  ( (ListLongMap!3294 (toList!1662 List!3294)) )
))
(declare-fun contains!1499 (ListLongMap!3293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1185 (array!10846 array!10844 (_ BitVec 32) (_ BitVec 32) V!7381 V!7381 (_ BitVec 32) Int) ListLongMap!3293)

(assert (=> b!220952 (= c!36739 (contains!1499 (getCurrentListMap!1185 (_keys!6220 thiss!1504) (_values!4149 thiss!1504) (mask!9972 thiss!1504) (extraKeys!3903 thiss!1504) (zeroValue!4007 thiss!1504) (minValue!4007 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4166 thiss!1504)) key!932))))

(declare-fun e!143632 () Bool)

(declare-fun array_inv!3393 (array!10846) Bool)

(declare-fun array_inv!3394 (array!10844) Bool)

(assert (=> b!220953 (= e!143638 (and tp!20959 tp_is_empty!5801 (array_inv!3393 (_keys!6220 thiss!1504)) (array_inv!3394 (_values!4149 thiss!1504)) e!143632))))

(declare-fun b!220954 () Bool)

(assert (=> b!220954 (= e!143639 (is-Undefined!829 lt!112325))))

(declare-fun bm!20647 () Bool)

(declare-fun arrayContainsKey!0 (array!10846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20647 (= call!20649 (arrayContainsKey!0 (_keys!6220 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220955 () Bool)

(declare-fun res!108384 () Bool)

(assert (=> b!220955 (=> (not res!108384) (not e!143633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220955 (= res!108384 (validMask!0 (mask!9972 thiss!1504)))))

(declare-fun b!220956 () Bool)

(assert (=> b!220956 (= e!143632 (and e!143634 mapRes!9871))))

(declare-fun condMapEmpty!9871 () Bool)

(declare-fun mapDefault!9871 () ValueCell!2557)

