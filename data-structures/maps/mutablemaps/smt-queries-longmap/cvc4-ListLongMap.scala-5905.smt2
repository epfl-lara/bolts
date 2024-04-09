; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76404 () Bool)

(assert start!76404)

(declare-fun b!895872 () Bool)

(declare-fun b_free!15935 () Bool)

(declare-fun b_next!15935 () Bool)

(assert (=> b!895872 (= b_free!15935 (not b_next!15935))))

(declare-fun tp!55828 () Bool)

(declare-fun b_and!26245 () Bool)

(assert (=> b!895872 (= tp!55828 b_and!26245)))

(declare-fun tp_is_empty!18263 () Bool)

(declare-datatypes ((array!52522 0))(
  ( (array!52523 (arr!25248 (Array (_ BitVec 32) (_ BitVec 64))) (size!25699 (_ BitVec 32))) )
))
(declare-datatypes ((V!29315 0))(
  ( (V!29316 (val!9182 Int)) )
))
(declare-datatypes ((ValueCell!8650 0))(
  ( (ValueCellFull!8650 (v!11669 V!29315)) (EmptyCell!8650) )
))
(declare-datatypes ((array!52524 0))(
  ( (array!52525 (arr!25249 (Array (_ BitVec 32) ValueCell!8650)) (size!25700 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4316 0))(
  ( (LongMapFixedSize!4317 (defaultEntry!5370 Int) (mask!25982 (_ BitVec 32)) (extraKeys!5067 (_ BitVec 32)) (zeroValue!5171 V!29315) (minValue!5171 V!29315) (_size!2213 (_ BitVec 32)) (_keys!10089 array!52522) (_values!5358 array!52524) (_vacant!2213 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4316)

(declare-fun e!500695 () Bool)

(declare-fun e!500694 () Bool)

(declare-fun array_inv!19796 (array!52522) Bool)

(declare-fun array_inv!19797 (array!52524) Bool)

(assert (=> b!895872 (= e!500695 (and tp!55828 tp_is_empty!18263 (array_inv!19796 (_keys!10089 thiss!1181)) (array_inv!19797 (_values!5358 thiss!1181)) e!500694))))

(declare-fun b!895873 () Bool)

(declare-fun e!500698 () Bool)

(assert (=> b!895873 (= e!500698 tp_is_empty!18263)))

(declare-fun mapIsEmpty!29002 () Bool)

(declare-fun mapRes!29002 () Bool)

(assert (=> mapIsEmpty!29002 mapRes!29002))

(declare-fun res!605986 () Bool)

(declare-fun e!500693 () Bool)

(assert (=> start!76404 (=> (not res!605986) (not e!500693))))

(declare-fun valid!1656 (LongMapFixedSize!4316) Bool)

(assert (=> start!76404 (= res!605986 (valid!1656 thiss!1181))))

(assert (=> start!76404 e!500693))

(assert (=> start!76404 e!500695))

(assert (=> start!76404 true))

(declare-fun mapNonEmpty!29002 () Bool)

(declare-fun tp!55827 () Bool)

(assert (=> mapNonEmpty!29002 (= mapRes!29002 (and tp!55827 e!500698))))

(declare-fun mapValue!29002 () ValueCell!8650)

(declare-fun mapKey!29002 () (_ BitVec 32))

(declare-fun mapRest!29002 () (Array (_ BitVec 32) ValueCell!8650))

(assert (=> mapNonEmpty!29002 (= (arr!25249 (_values!5358 thiss!1181)) (store mapRest!29002 mapKey!29002 mapValue!29002))))

(declare-fun b!895874 () Bool)

(declare-fun res!605987 () Bool)

(assert (=> b!895874 (=> (not res!605987) (not e!500693))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895874 (= res!605987 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895875 () Bool)

(declare-fun e!500696 () Bool)

(assert (=> b!895875 (= e!500694 (and e!500696 mapRes!29002))))

(declare-fun condMapEmpty!29002 () Bool)

(declare-fun mapDefault!29002 () ValueCell!8650)

