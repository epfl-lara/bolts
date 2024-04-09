; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22004 () Bool)

(assert start!22004)

(declare-fun b!225853 () Bool)

(declare-fun b_free!6059 () Bool)

(declare-fun b_next!6059 () Bool)

(assert (=> b!225853 (= b_free!6059 (not b_next!6059))))

(declare-fun tp!21319 () Bool)

(declare-fun b_and!12975 () Bool)

(assert (=> b!225853 (= tp!21319 b_and!12975)))

(declare-fun b!225833 () Bool)

(declare-fun res!111174 () Bool)

(declare-fun e!146572 () Bool)

(assert (=> b!225833 (=> res!111174 e!146572)))

(declare-fun lt!113761 () Bool)

(assert (=> b!225833 (= res!111174 lt!113761)))

(declare-datatypes ((SeekEntryResult!885 0))(
  ( (MissingZero!885 (index!5710 (_ BitVec 32))) (Found!885 (index!5711 (_ BitVec 32))) (Intermediate!885 (undefined!1697 Bool) (index!5712 (_ BitVec 32)) (x!23209 (_ BitVec 32))) (Undefined!885) (MissingVacant!885 (index!5713 (_ BitVec 32))) )
))
(declare-fun lt!113766 () SeekEntryResult!885)

(declare-datatypes ((V!7541 0))(
  ( (V!7542 (val!3005 Int)) )
))
(declare-datatypes ((ValueCell!2617 0))(
  ( (ValueCellFull!2617 (v!5021 V!7541)) (EmptyCell!2617) )
))
(declare-datatypes ((array!11084 0))(
  ( (array!11085 (arr!5261 (Array (_ BitVec 32) ValueCell!2617)) (size!5594 (_ BitVec 32))) )
))
(declare-datatypes ((array!11086 0))(
  ( (array!11087 (arr!5262 (Array (_ BitVec 32) (_ BitVec 64))) (size!5595 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3134 0))(
  ( (LongMapFixedSize!3135 (defaultEntry!4226 Int) (mask!10072 (_ BitVec 32)) (extraKeys!3963 (_ BitVec 32)) (zeroValue!4067 V!7541) (minValue!4067 V!7541) (_size!1616 (_ BitVec 32)) (_keys!6280 array!11086) (_values!4209 array!11084) (_vacant!1616 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3134)

(declare-fun call!21010 () Bool)

(declare-fun c!37433 () Bool)

(declare-fun bm!21006 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21006 (= call!21010 (inRange!0 (ite c!37433 (index!5710 lt!113766) (index!5713 lt!113766)) (mask!10072 thiss!1504)))))

(declare-fun b!225834 () Bool)

(declare-datatypes ((Unit!6815 0))(
  ( (Unit!6816) )
))
(declare-fun e!146564 () Unit!6815)

(declare-fun Unit!6817 () Unit!6815)

(assert (=> b!225834 (= e!146564 Unit!6817)))

(declare-fun b!225835 () Bool)

(declare-fun e!146563 () Bool)

(declare-fun e!146575 () Bool)

(assert (=> b!225835 (= e!146563 e!146575)))

(declare-fun res!111179 () Bool)

(assert (=> b!225835 (=> (not res!111179) (not e!146575))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225835 (= res!111179 (or (= lt!113766 (MissingZero!885 index!297)) (= lt!113766 (MissingVacant!885 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11086 (_ BitVec 32)) SeekEntryResult!885)

(assert (=> b!225835 (= lt!113766 (seekEntryOrOpen!0 key!932 (_keys!6280 thiss!1504) (mask!10072 thiss!1504)))))

(declare-fun b!225836 () Bool)

(declare-fun e!146573 () Bool)

(declare-fun call!21009 () Bool)

(assert (=> b!225836 (= e!146573 (not call!21009))))

(declare-fun b!225837 () Bool)

(declare-fun e!146569 () Bool)

(declare-fun e!146561 () Bool)

(declare-fun mapRes!10051 () Bool)

(assert (=> b!225837 (= e!146569 (and e!146561 mapRes!10051))))

(declare-fun condMapEmpty!10051 () Bool)

(declare-fun mapDefault!10051 () ValueCell!2617)

