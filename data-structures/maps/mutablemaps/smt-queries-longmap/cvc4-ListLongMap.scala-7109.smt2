; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90140 () Bool)

(assert start!90140)

(declare-fun b!1032179 () Bool)

(declare-fun b_free!20711 () Bool)

(declare-fun b_next!20711 () Bool)

(assert (=> b!1032179 (= b_free!20711 (not b_next!20711))))

(declare-fun tp!73205 () Bool)

(declare-fun b_and!33197 () Bool)

(assert (=> b!1032179 (= tp!73205 b_and!33197)))

(declare-fun b!1032174 () Bool)

(declare-fun e!583195 () Bool)

(declare-fun e!583190 () Bool)

(declare-fun mapRes!38100 () Bool)

(assert (=> b!1032174 (= e!583195 (and e!583190 mapRes!38100))))

(declare-fun condMapEmpty!38100 () Bool)

(declare-datatypes ((V!37447 0))(
  ( (V!37448 (val!12266 Int)) )
))
(declare-datatypes ((ValueCell!11512 0))(
  ( (ValueCellFull!11512 (v!14844 V!37447)) (EmptyCell!11512) )
))
(declare-datatypes ((array!64910 0))(
  ( (array!64911 (arr!31253 (Array (_ BitVec 32) (_ BitVec 64))) (size!31771 (_ BitVec 32))) )
))
(declare-datatypes ((array!64912 0))(
  ( (array!64913 (arr!31254 (Array (_ BitVec 32) ValueCell!11512)) (size!31772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5618 0))(
  ( (LongMapFixedSize!5619 (defaultEntry!6183 Int) (mask!29990 (_ BitVec 32)) (extraKeys!5915 (_ BitVec 32)) (zeroValue!6019 V!37447) (minValue!6019 V!37447) (_size!2864 (_ BitVec 32)) (_keys!11353 array!64910) (_values!6206 array!64912) (_vacant!2864 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5618)

(declare-fun mapDefault!38100 () ValueCell!11512)

