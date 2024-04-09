; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80922 () Bool)

(assert start!80922)

(declare-fun b!947728 () Bool)

(declare-fun b_free!18191 () Bool)

(declare-fun b_next!18191 () Bool)

(assert (=> b!947728 (= b_free!18191 (not b_next!18191))))

(declare-fun tp!63142 () Bool)

(declare-fun b_and!29633 () Bool)

(assert (=> b!947728 (= tp!63142 b_and!29633)))

(declare-fun b!947725 () Bool)

(declare-fun e!533517 () Bool)

(declare-fun e!533515 () Bool)

(declare-fun mapRes!32932 () Bool)

(assert (=> b!947725 (= e!533517 (and e!533515 mapRes!32932))))

(declare-fun condMapEmpty!32932 () Bool)

(declare-datatypes ((V!32563 0))(
  ( (V!32564 (val!10400 Int)) )
))
(declare-datatypes ((ValueCell!9868 0))(
  ( (ValueCellFull!9868 (v!12935 V!32563)) (EmptyCell!9868) )
))
(declare-datatypes ((array!57422 0))(
  ( (array!57423 (arr!27615 (Array (_ BitVec 32) ValueCell!9868)) (size!28089 (_ BitVec 32))) )
))
(declare-datatypes ((array!57424 0))(
  ( (array!57425 (arr!27616 (Array (_ BitVec 32) (_ BitVec 64))) (size!28090 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4886 0))(
  ( (LongMapFixedSize!4887 (defaultEntry!5742 Int) (mask!27483 (_ BitVec 32)) (extraKeys!5474 (_ BitVec 32)) (zeroValue!5578 V!32563) (minValue!5578 V!32563) (_size!2498 (_ BitVec 32)) (_keys!10652 array!57424) (_values!5765 array!57422) (_vacant!2498 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4886)

(declare-fun mapDefault!32932 () ValueCell!9868)

