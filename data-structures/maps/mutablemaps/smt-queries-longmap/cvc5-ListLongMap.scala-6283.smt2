; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80404 () Bool)

(assert start!80404)

(declare-fun b!943821 () Bool)

(declare-fun b_free!18019 () Bool)

(declare-fun b_next!18019 () Bool)

(assert (=> b!943821 (= b_free!18019 (not b_next!18019))))

(declare-fun tp!62567 () Bool)

(declare-fun b_and!29455 () Bool)

(assert (=> b!943821 (= tp!62567 b_and!29455)))

(declare-fun b!943815 () Bool)

(declare-fun e!530727 () Bool)

(declare-fun e!530725 () Bool)

(declare-fun mapRes!32616 () Bool)

(assert (=> b!943815 (= e!530727 (and e!530725 mapRes!32616))))

(declare-fun condMapEmpty!32616 () Bool)

(declare-datatypes ((V!32335 0))(
  ( (V!32336 (val!10314 Int)) )
))
(declare-datatypes ((ValueCell!9782 0))(
  ( (ValueCellFull!9782 (v!12846 V!32335)) (EmptyCell!9782) )
))
(declare-datatypes ((array!57044 0))(
  ( (array!57045 (arr!27443 (Array (_ BitVec 32) ValueCell!9782)) (size!27910 (_ BitVec 32))) )
))
(declare-datatypes ((array!57046 0))(
  ( (array!57047 (arr!27444 (Array (_ BitVec 32) (_ BitVec 64))) (size!27911 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4714 0))(
  ( (LongMapFixedSize!4715 (defaultEntry!5652 Int) (mask!27285 (_ BitVec 32)) (extraKeys!5384 (_ BitVec 32)) (zeroValue!5488 V!32335) (minValue!5488 V!32335) (_size!2412 (_ BitVec 32)) (_keys!10526 array!57046) (_values!5675 array!57044) (_vacant!2412 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4714)

(declare-fun mapDefault!32616 () ValueCell!9782)

