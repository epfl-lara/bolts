; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7982 () Bool)

(assert start!7982)

(declare-fun b!49990 () Bool)

(declare-fun b_free!1519 () Bool)

(declare-fun b_next!1519 () Bool)

(assert (=> b!49990 (= b_free!1519 (not b_next!1519))))

(declare-fun tp!6601 () Bool)

(declare-fun b_and!2739 () Bool)

(assert (=> b!49990 (= tp!6601 b_and!2739)))

(declare-fun mapIsEmpty!2144 () Bool)

(declare-fun mapRes!2144 () Bool)

(assert (=> mapIsEmpty!2144 mapRes!2144))

(declare-fun b!49989 () Bool)

(declare-fun e!32227 () Bool)

(declare-fun e!32223 () Bool)

(assert (=> b!49989 (= e!32227 (and e!32223 mapRes!2144))))

(declare-fun condMapEmpty!2144 () Bool)

(declare-datatypes ((array!3254 0))(
  ( (array!3255 (arr!1556 (Array (_ BitVec 32) (_ BitVec 64))) (size!1778 (_ BitVec 32))) )
))
(declare-datatypes ((V!2545 0))(
  ( (V!2546 (val!1131 Int)) )
))
(declare-datatypes ((ValueCell!743 0))(
  ( (ValueCellFull!743 (v!2149 V!2545)) (EmptyCell!743) )
))
(declare-datatypes ((array!3256 0))(
  ( (array!3257 (arr!1557 (Array (_ BitVec 32) ValueCell!743)) (size!1779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!394 0))(
  ( (LongMapFixedSize!395 (defaultEntry!1911 Int) (mask!5691 (_ BitVec 32)) (extraKeys!1802 (_ BitVec 32)) (zeroValue!1829 V!2545) (minValue!1829 V!2545) (_size!246 (_ BitVec 32)) (_keys!3517 array!3254) (_values!1894 array!3256) (_vacant!246 (_ BitVec 32))) )
))
(declare-fun thiss!1134 () LongMapFixedSize!394)

(declare-fun mapDefault!2144 () ValueCell!743)

