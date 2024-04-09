; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2938 () Bool)

(assert start!2938)

(declare-fun b!16756 () Bool)

(declare-fun b_free!577 () Bool)

(declare-fun b_next!577 () Bool)

(assert (=> b!16756 (= b_free!577 (not b_next!577))))

(declare-fun tp!2918 () Bool)

(declare-fun b_and!1221 () Bool)

(assert (=> b!16756 (= tp!2918 b_and!1221)))

(declare-fun lt!4134 () Bool)

(declare-datatypes ((V!947 0))(
  ( (V!948 (val!447 Int)) )
))
(declare-datatypes ((ValueCell!221 0))(
  ( (ValueCellFull!221 (v!1394 V!947)) (EmptyCell!221) )
))
(declare-datatypes ((array!877 0))(
  ( (array!878 (arr!421 (Array (_ BitVec 32) ValueCell!221)) (size!510 (_ BitVec 32))) )
))
(declare-datatypes ((array!879 0))(
  ( (array!880 (arr!422 (Array (_ BitVec 32) (_ BitVec 64))) (size!511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!28 0))(
  ( (LongMapFixedSize!29 (defaultEntry!1624 Int) (mask!4532 (_ BitVec 32)) (extraKeys!1538 (_ BitVec 32)) (zeroValue!1561 V!947) (minValue!1561 V!947) (_size!45 (_ BitVec 32)) (_keys!3049 array!879) (_values!1622 array!877) (_vacant!45 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!28 0))(
  ( (Cell!29 (v!1395 LongMapFixedSize!28)) )
))
(declare-datatypes ((LongMap!28 0))(
  ( (LongMap!29 (underlying!25 Cell!28)) )
))
(declare-fun thiss!848 () LongMap!28)

(declare-fun valid!22 (LongMap!28) Bool)

(assert (=> start!2938 (= lt!4134 (valid!22 thiss!848))))

(assert (=> start!2938 false))

(declare-fun e!10399 () Bool)

(assert (=> start!2938 e!10399))

(declare-fun b!16752 () Bool)

(declare-fun e!10397 () Bool)

(assert (=> b!16752 (= e!10399 e!10397)))

(declare-fun mapIsEmpty!692 () Bool)

(declare-fun mapRes!692 () Bool)

(assert (=> mapIsEmpty!692 mapRes!692))

(declare-fun b!16753 () Bool)

(declare-fun e!10393 () Bool)

(declare-fun e!10395 () Bool)

(assert (=> b!16753 (= e!10393 (and e!10395 mapRes!692))))

(declare-fun condMapEmpty!692 () Bool)

(declare-fun mapDefault!692 () ValueCell!221)

