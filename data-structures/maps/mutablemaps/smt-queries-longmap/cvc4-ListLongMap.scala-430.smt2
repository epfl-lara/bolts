; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8064 () Bool)

(assert start!8064)

(declare-fun b!50692 () Bool)

(declare-fun b_free!1557 () Bool)

(declare-fun b_next!1557 () Bool)

(assert (=> b!50692 (= b_free!1557 (not b_next!1557))))

(declare-fun tp!6738 () Bool)

(declare-fun b_and!2777 () Bool)

(assert (=> b!50692 (= tp!6738 b_and!2777)))

(declare-fun b!50680 () Bool)

(declare-fun b_free!1559 () Bool)

(declare-fun b_next!1559 () Bool)

(assert (=> b!50680 (= b_free!1559 (not b_next!1559))))

(declare-fun tp!6737 () Bool)

(declare-fun b_and!2779 () Bool)

(assert (=> b!50680 (= tp!6737 b_and!2779)))

(declare-fun tp_is_empty!2195 () Bool)

(declare-fun e!32782 () Bool)

(declare-datatypes ((V!2573 0))(
  ( (V!2574 (val!1142 Int)) )
))
(declare-datatypes ((array!3302 0))(
  ( (array!3303 (arr!1578 (Array (_ BitVec 32) (_ BitVec 64))) (size!1802 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!754 0))(
  ( (ValueCellFull!754 (v!2168 V!2573)) (EmptyCell!754) )
))
(declare-datatypes ((array!3304 0))(
  ( (array!3305 (arr!1579 (Array (_ BitVec 32) ValueCell!754)) (size!1803 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!416 0))(
  ( (LongMapFixedSize!417 (defaultEntry!1922 Int) (mask!5714 (_ BitVec 32)) (extraKeys!1813 (_ BitVec 32)) (zeroValue!1840 V!2573) (minValue!1840 V!2573) (_size!257 (_ BitVec 32)) (_keys!3532 array!3302) (_values!1905 array!3304) (_vacant!257 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!416)

(declare-fun e!32780 () Bool)

(declare-fun array_inv!919 (array!3302) Bool)

(declare-fun array_inv!920 (array!3304) Bool)

(assert (=> b!50680 (= e!32780 (and tp!6737 tp_is_empty!2195 (array_inv!919 (_keys!3532 newMap!16)) (array_inv!920 (_values!1905 newMap!16)) e!32782))))

(declare-fun b!50681 () Bool)

(declare-fun e!32777 () Bool)

(declare-fun e!32788 () Bool)

(assert (=> b!50681 (= e!32777 e!32788)))

(declare-fun mapIsEmpty!2219 () Bool)

(declare-fun mapRes!2219 () Bool)

(assert (=> mapIsEmpty!2219 mapRes!2219))

(declare-fun b!50683 () Bool)

(declare-fun res!29129 () Bool)

(declare-fun e!32784 () Bool)

(assert (=> b!50683 (=> (not res!29129) (not e!32784))))

(declare-datatypes ((Cell!238 0))(
  ( (Cell!239 (v!2169 LongMapFixedSize!416)) )
))
(declare-datatypes ((LongMap!238 0))(
  ( (LongMap!239 (underlying!130 Cell!238)) )
))
(declare-fun thiss!992 () LongMap!238)

(assert (=> b!50683 (= res!29129 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5714 newMap!16)) (_size!257 (v!2169 (underlying!130 thiss!992)))))))

(declare-fun b!50684 () Bool)

(declare-fun res!29128 () Bool)

(assert (=> b!50684 (=> (not res!29128) (not e!32784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50684 (= res!29128 (validMask!0 (mask!5714 (v!2169 (underlying!130 thiss!992)))))))

(declare-fun b!50685 () Bool)

(declare-fun res!29131 () Bool)

(assert (=> b!50685 (=> (not res!29131) (not e!32784))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50685 (= res!29131 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1802 (_keys!3532 (v!2169 (underlying!130 thiss!992)))))))))

(declare-fun b!50686 () Bool)

(declare-fun e!32781 () Bool)

(assert (=> b!50686 (= e!32781 tp_is_empty!2195)))

(declare-fun mapNonEmpty!2219 () Bool)

(declare-fun tp!6736 () Bool)

(declare-fun e!32783 () Bool)

(assert (=> mapNonEmpty!2219 (= mapRes!2219 (and tp!6736 e!32783))))

(declare-fun mapValue!2220 () ValueCell!754)

(declare-fun mapKey!2220 () (_ BitVec 32))

(declare-fun mapRest!2220 () (Array (_ BitVec 32) ValueCell!754))

(assert (=> mapNonEmpty!2219 (= (arr!1579 (_values!1905 newMap!16)) (store mapRest!2220 mapKey!2220 mapValue!2220))))

(declare-fun b!50687 () Bool)

(declare-fun e!32776 () Bool)

(assert (=> b!50687 (= e!32788 e!32776)))

(declare-fun b!50688 () Bool)

(assert (=> b!50688 (= e!32784 (and (= (size!1803 (_values!1905 (v!2169 (underlying!130 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5714 (v!2169 (underlying!130 thiss!992))))) (not (= (size!1802 (_keys!3532 (v!2169 (underlying!130 thiss!992)))) (size!1803 (_values!1905 (v!2169 (underlying!130 thiss!992))))))))))

(declare-fun b!50689 () Bool)

(assert (=> b!50689 (= e!32782 (and e!32781 mapRes!2219))))

(declare-fun condMapEmpty!2219 () Bool)

(declare-fun mapDefault!2219 () ValueCell!754)

