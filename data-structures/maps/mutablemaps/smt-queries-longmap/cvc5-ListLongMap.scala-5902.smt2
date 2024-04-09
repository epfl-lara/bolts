; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76340 () Bool)

(assert start!76340)

(declare-fun b!895445 () Bool)

(declare-fun b_free!15913 () Bool)

(declare-fun b_next!15913 () Bool)

(assert (=> b!895445 (= b_free!15913 (not b_next!15913))))

(declare-fun tp!55752 () Bool)

(declare-fun b_and!26223 () Bool)

(assert (=> b!895445 (= tp!55752 b_and!26223)))

(declare-fun res!605787 () Bool)

(declare-fun e!500368 () Bool)

(assert (=> start!76340 (=> (not res!605787) (not e!500368))))

(declare-datatypes ((array!52472 0))(
  ( (array!52473 (arr!25226 (Array (_ BitVec 32) (_ BitVec 64))) (size!25677 (_ BitVec 32))) )
))
(declare-datatypes ((V!29287 0))(
  ( (V!29288 (val!9171 Int)) )
))
(declare-datatypes ((ValueCell!8639 0))(
  ( (ValueCellFull!8639 (v!11658 V!29287)) (EmptyCell!8639) )
))
(declare-datatypes ((array!52474 0))(
  ( (array!52475 (arr!25227 (Array (_ BitVec 32) ValueCell!8639)) (size!25678 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4294 0))(
  ( (LongMapFixedSize!4295 (defaultEntry!5359 Int) (mask!25956 (_ BitVec 32)) (extraKeys!5055 (_ BitVec 32)) (zeroValue!5159 V!29287) (minValue!5159 V!29287) (_size!2202 (_ BitVec 32)) (_keys!10072 array!52472) (_values!5346 array!52474) (_vacant!2202 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4294)

(declare-fun valid!1647 (LongMapFixedSize!4294) Bool)

(assert (=> start!76340 (= res!605787 (valid!1647 thiss!1181))))

(assert (=> start!76340 e!500368))

(declare-fun e!500365 () Bool)

(assert (=> start!76340 e!500365))

(assert (=> start!76340 true))

(declare-fun b!895438 () Bool)

(declare-fun e!500367 () Bool)

(declare-fun e!500364 () Bool)

(declare-fun mapRes!28960 () Bool)

(assert (=> b!895438 (= e!500367 (and e!500364 mapRes!28960))))

(declare-fun condMapEmpty!28960 () Bool)

(declare-fun mapDefault!28960 () ValueCell!8639)

