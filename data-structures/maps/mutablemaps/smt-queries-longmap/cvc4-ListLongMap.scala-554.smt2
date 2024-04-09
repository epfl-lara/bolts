; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14896 () Bool)

(assert start!14896)

(declare-fun b!143320 () Bool)

(declare-fun b_free!3045 () Bool)

(declare-fun b_next!3045 () Bool)

(assert (=> b!143320 (= b_free!3045 (not b_next!3045))))

(declare-fun tp!11617 () Bool)

(declare-fun b_and!8957 () Bool)

(assert (=> b!143320 (= tp!11617 b_and!8957)))

(declare-fun b!143311 () Bool)

(declare-fun b_free!3047 () Bool)

(declare-fun b_next!3047 () Bool)

(assert (=> b!143311 (= b_free!3047 (not b_next!3047))))

(declare-fun tp!11618 () Bool)

(declare-fun b_and!8959 () Bool)

(assert (=> b!143311 (= tp!11618 b_and!8959)))

(declare-fun b!143309 () Bool)

(declare-fun e!93421 () Bool)

(declare-fun tp_is_empty!2939 () Bool)

(assert (=> b!143309 (= e!93421 tp_is_empty!2939)))

(declare-fun b!143310 () Bool)

(declare-fun e!93410 () Bool)

(declare-fun e!93411 () Bool)

(assert (=> b!143310 (= e!93410 e!93411)))

(declare-fun e!93420 () Bool)

(declare-datatypes ((V!3565 0))(
  ( (V!3566 (val!1514 Int)) )
))
(declare-datatypes ((array!4914 0))(
  ( (array!4915 (arr!2322 (Array (_ BitVec 32) (_ BitVec 64))) (size!2595 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1126 0))(
  ( (ValueCellFull!1126 (v!3297 V!3565)) (EmptyCell!1126) )
))
(declare-datatypes ((array!4916 0))(
  ( (array!4917 (arr!2323 (Array (_ BitVec 32) ValueCell!1126)) (size!2596 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1160 0))(
  ( (LongMapFixedSize!1161 (defaultEntry!2964 Int) (mask!7316 (_ BitVec 32)) (extraKeys!2715 (_ BitVec 32)) (zeroValue!2812 V!3565) (minValue!2812 V!3565) (_size!629 (_ BitVec 32)) (_keys!4727 array!4914) (_values!2947 array!4916) (_vacant!629 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1160)

(declare-fun e!93412 () Bool)

(declare-fun array_inv!1437 (array!4914) Bool)

(declare-fun array_inv!1438 (array!4916) Bool)

(assert (=> b!143311 (= e!93412 (and tp!11618 tp_is_empty!2939 (array_inv!1437 (_keys!4727 newMap!16)) (array_inv!1438 (_values!2947 newMap!16)) e!93420))))

(declare-fun b!143312 () Bool)

(declare-fun e!93409 () Bool)

(assert (=> b!143312 (= e!93409 tp_is_empty!2939)))

(declare-fun mapIsEmpty!4867 () Bool)

(declare-fun mapRes!4867 () Bool)

(assert (=> mapIsEmpty!4867 mapRes!4867))

(declare-fun b!143313 () Bool)

(declare-fun e!93413 () Bool)

(declare-fun e!93407 () Bool)

(assert (=> b!143313 (= e!93413 (not e!93407))))

(declare-fun res!68268 () Bool)

(assert (=> b!143313 (=> res!68268 e!93407)))

(declare-datatypes ((Cell!946 0))(
  ( (Cell!947 (v!3298 LongMapFixedSize!1160)) )
))
(declare-datatypes ((LongMap!946 0))(
  ( (LongMap!947 (underlying!484 Cell!946)) )
))
(declare-fun thiss!992 () LongMap!946)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!143313 (= res!68268 (or (bvsge (size!2595 (_keys!4727 (v!3298 (underlying!484 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2595 (_keys!4727 (v!3298 (underlying!484 thiss!992)))))))))

(declare-datatypes ((List!1769 0))(
  ( (Nil!1766) (Cons!1765 (h!2373 (_ BitVec 64)) (t!6394 List!1769)) )
))
(declare-fun arrayNoDuplicates!0 (array!4914 (_ BitVec 32) List!1769) Bool)

(assert (=> b!143313 (arrayNoDuplicates!0 (_keys!4727 (v!3298 (underlying!484 thiss!992))) from!355 Nil!1766)))

(declare-datatypes ((Unit!4552 0))(
  ( (Unit!4553) )
))
(declare-fun lt!75066 () Unit!4552)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4914 (_ BitVec 32) (_ BitVec 32)) Unit!4552)

(assert (=> b!143313 (= lt!75066 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4727 (v!3298 (underlying!484 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!143313 (arrayContainsKey!0 (_keys!4727 (v!3298 (underlying!484 thiss!992))) (select (arr!2322 (_keys!4727 (v!3298 (underlying!484 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!75067 () Unit!4552)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!146 (array!4914 array!4916 (_ BitVec 32) (_ BitVec 32) V!3565 V!3565 (_ BitVec 64) (_ BitVec 32) Int) Unit!4552)

(assert (=> b!143313 (= lt!75067 (lemmaListMapContainsThenArrayContainsFrom!146 (_keys!4727 (v!3298 (underlying!484 thiss!992))) (_values!2947 (v!3298 (underlying!484 thiss!992))) (mask!7316 (v!3298 (underlying!484 thiss!992))) (extraKeys!2715 (v!3298 (underlying!484 thiss!992))) (zeroValue!2812 (v!3298 (underlying!484 thiss!992))) (minValue!2812 (v!3298 (underlying!484 thiss!992))) (select (arr!2322 (_keys!4727 (v!3298 (underlying!484 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2964 (v!3298 (underlying!484 thiss!992)))))))

(declare-fun res!68271 () Bool)

(declare-fun e!93419 () Bool)

(assert (=> start!14896 (=> (not res!68271) (not e!93419))))

(declare-fun valid!559 (LongMap!946) Bool)

(assert (=> start!14896 (= res!68271 (valid!559 thiss!992))))

(assert (=> start!14896 e!93419))

(assert (=> start!14896 e!93410))

(assert (=> start!14896 true))

(assert (=> start!14896 e!93412))

(declare-fun b!143314 () Bool)

(declare-fun e!93408 () Bool)

(assert (=> b!143314 (= e!93408 tp_is_empty!2939)))

(declare-fun b!143315 () Bool)

(declare-fun res!68269 () Bool)

(assert (=> b!143315 (=> (not res!68269) (not e!93419))))

(assert (=> b!143315 (= res!68269 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7316 newMap!16)) (_size!629 (v!3298 (underlying!484 thiss!992)))))))

(declare-fun b!143316 () Bool)

(declare-fun e!93414 () Bool)

(declare-fun mapRes!4868 () Bool)

(assert (=> b!143316 (= e!93414 (and e!93409 mapRes!4868))))

(declare-fun condMapEmpty!4868 () Bool)

(declare-fun mapDefault!4867 () ValueCell!1126)

