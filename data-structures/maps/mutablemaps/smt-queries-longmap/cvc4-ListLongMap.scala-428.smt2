; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7992 () Bool)

(assert start!7992)

(declare-fun b!50130 () Bool)

(declare-fun b_free!1533 () Bool)

(declare-fun b_next!1533 () Bool)

(assert (=> b!50130 (= b_free!1533 (not b_next!1533))))

(declare-fun tp!6649 () Bool)

(declare-fun b_and!2753 () Bool)

(assert (=> b!50130 (= tp!6649 b_and!2753)))

(declare-fun b!50135 () Bool)

(declare-fun b_free!1535 () Bool)

(declare-fun b_next!1535 () Bool)

(assert (=> b!50135 (= b_free!1535 (not b_next!1535))))

(declare-fun tp!6648 () Bool)

(declare-fun b_and!2755 () Bool)

(assert (=> b!50135 (= tp!6648 b_and!2755)))

(declare-fun b!50129 () Bool)

(declare-fun res!28909 () Bool)

(declare-fun e!32363 () Bool)

(assert (=> b!50129 (=> (not res!28909) (not e!32363))))

(declare-datatypes ((V!2557 0))(
  ( (V!2558 (val!1136 Int)) )
))
(declare-datatypes ((array!3274 0))(
  ( (array!3275 (arr!1566 (Array (_ BitVec 32) (_ BitVec 64))) (size!1788 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!748 0))(
  ( (ValueCellFull!748 (v!2156 V!2557)) (EmptyCell!748) )
))
(declare-datatypes ((array!3276 0))(
  ( (array!3277 (arr!1567 (Array (_ BitVec 32) ValueCell!748)) (size!1789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!404 0))(
  ( (LongMapFixedSize!405 (defaultEntry!1916 Int) (mask!5698 (_ BitVec 32)) (extraKeys!1807 (_ BitVec 32)) (zeroValue!1834 V!2557) (minValue!1834 V!2557) (_size!251 (_ BitVec 32)) (_keys!3522 array!3274) (_values!1899 array!3276) (_vacant!251 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!404)

(declare-fun valid!136 (LongMapFixedSize!404) Bool)

(assert (=> b!50129 (= res!28909 (valid!136 newMap!16))))

(declare-datatypes ((Cell!230 0))(
  ( (Cell!231 (v!2157 LongMapFixedSize!404)) )
))
(declare-datatypes ((LongMap!230 0))(
  ( (LongMap!231 (underlying!126 Cell!230)) )
))
(declare-fun thiss!992 () LongMap!230)

(declare-fun e!32362 () Bool)

(declare-fun e!32364 () Bool)

(declare-fun tp_is_empty!2183 () Bool)

(declare-fun array_inv!913 (array!3274) Bool)

(declare-fun array_inv!914 (array!3276) Bool)

(assert (=> b!50130 (= e!32362 (and tp!6649 tp_is_empty!2183 (array_inv!913 (_keys!3522 (v!2157 (underlying!126 thiss!992)))) (array_inv!914 (_values!1899 (v!2157 (underlying!126 thiss!992)))) e!32364))))

(declare-fun b!50131 () Bool)

(declare-fun res!28908 () Bool)

(assert (=> b!50131 (=> (not res!28908) (not e!32363))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50131 (= res!28908 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1788 (_keys!3522 (v!2157 (underlying!126 thiss!992)))))))))

(declare-fun b!50132 () Bool)

(declare-fun e!32374 () Bool)

(declare-fun e!32370 () Bool)

(declare-fun mapRes!2168 () Bool)

(assert (=> b!50132 (= e!32374 (and e!32370 mapRes!2168))))

(declare-fun condMapEmpty!2167 () Bool)

(declare-fun mapDefault!2168 () ValueCell!748)

