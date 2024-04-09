; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8348 () Bool)

(assert start!8348)

(declare-fun b!55199 () Bool)

(declare-fun b_free!1837 () Bool)

(declare-fun b_next!1837 () Bool)

(assert (=> b!55199 (= b_free!1837 (not b_next!1837))))

(declare-fun tp!7611 () Bool)

(declare-fun b_and!3225 () Bool)

(assert (=> b!55199 (= tp!7611 b_and!3225)))

(declare-fun b!55203 () Bool)

(declare-fun b_free!1839 () Bool)

(declare-fun b_next!1839 () Bool)

(assert (=> b!55203 (= b_free!1839 (not b_next!1839))))

(declare-fun tp!7613 () Bool)

(declare-fun b_and!3227 () Bool)

(assert (=> b!55203 (= tp!7613 b_and!3227)))

(declare-fun b!55196 () Bool)

(declare-fun e!36230 () Bool)

(declare-fun e!36228 () Bool)

(assert (=> b!55196 (= e!36230 (not e!36228))))

(declare-fun res!31110 () Bool)

(assert (=> b!55196 (=> res!31110 e!36228)))

(declare-datatypes ((V!2761 0))(
  ( (V!2762 (val!1212 Int)) )
))
(declare-datatypes ((array!3592 0))(
  ( (array!3593 (arr!1718 (Array (_ BitVec 32) (_ BitVec 64))) (size!1947 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!824 0))(
  ( (ValueCellFull!824 (v!2306 V!2761)) (EmptyCell!824) )
))
(declare-datatypes ((array!3594 0))(
  ( (array!3595 (arr!1719 (Array (_ BitVec 32) ValueCell!824)) (size!1948 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!556 0))(
  ( (LongMapFixedSize!557 (defaultEntry!1992 Int) (mask!5847 (_ BitVec 32)) (extraKeys!1883 (_ BitVec 32)) (zeroValue!1910 V!2761) (minValue!1910 V!2761) (_size!327 (_ BitVec 32)) (_keys!3612 array!3592) (_values!1975 array!3594) (_vacant!327 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!366 0))(
  ( (Cell!367 (v!2307 LongMapFixedSize!556)) )
))
(declare-datatypes ((LongMap!366 0))(
  ( (LongMap!367 (underlying!194 Cell!366)) )
))
(declare-fun thiss!992 () LongMap!366)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!55196 (= res!31110 (or (bvsge (size!1947 (_keys!3612 (v!2307 (underlying!194 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1947 (_keys!3612 (v!2307 (underlying!194 thiss!992))))) (bvsgt from!355 (size!1947 (_keys!3612 (v!2307 (underlying!194 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55196 (arrayContainsKey!0 (_keys!3612 (v!2307 (underlying!194 thiss!992))) (select (arr!1718 (_keys!3612 (v!2307 (underlying!194 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1442 0))(
  ( (Unit!1443) )
))
(declare-fun lt!21860 () Unit!1442)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!10 (array!3592 array!3594 (_ BitVec 32) (_ BitVec 32) V!2761 V!2761 (_ BitVec 64) (_ BitVec 32) Int) Unit!1442)

(assert (=> b!55196 (= lt!21860 (lemmaListMapContainsThenArrayContainsFrom!10 (_keys!3612 (v!2307 (underlying!194 thiss!992))) (_values!1975 (v!2307 (underlying!194 thiss!992))) (mask!5847 (v!2307 (underlying!194 thiss!992))) (extraKeys!1883 (v!2307 (underlying!194 thiss!992))) (zeroValue!1910 (v!2307 (underlying!194 thiss!992))) (minValue!1910 (v!2307 (underlying!194 thiss!992))) (select (arr!1718 (_keys!3612 (v!2307 (underlying!194 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1992 (v!2307 (underlying!194 thiss!992)))))))

(declare-fun b!55197 () Bool)

(declare-fun e!36223 () Bool)

(declare-fun tp_is_empty!2335 () Bool)

(assert (=> b!55197 (= e!36223 tp_is_empty!2335)))

(declare-fun b!55198 () Bool)

(declare-fun e!36231 () Bool)

(declare-fun e!36221 () Bool)

(declare-fun mapRes!2676 () Bool)

(assert (=> b!55198 (= e!36231 (and e!36221 mapRes!2676))))

(declare-fun condMapEmpty!2675 () Bool)

(declare-fun mapDefault!2675 () ValueCell!824)

