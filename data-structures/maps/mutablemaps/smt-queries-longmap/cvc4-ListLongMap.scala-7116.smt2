; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90238 () Bool)

(assert start!90238)

(declare-fun b!1032817 () Bool)

(declare-fun b_free!20753 () Bool)

(declare-fun b_next!20753 () Bool)

(assert (=> b!1032817 (= b_free!20753 (not b_next!20753))))

(declare-fun tp!73346 () Bool)

(declare-fun b_and!33239 () Bool)

(assert (=> b!1032817 (= tp!73346 b_and!33239)))

(declare-fun mapIsEmpty!38178 () Bool)

(declare-fun mapRes!38178 () Bool)

(assert (=> mapIsEmpty!38178 mapRes!38178))

(declare-fun b!1032814 () Bool)

(declare-fun e!583705 () Bool)

(declare-fun tp_is_empty!24473 () Bool)

(assert (=> b!1032814 (= e!583705 tp_is_empty!24473)))

(declare-fun b!1032815 () Bool)

(declare-fun e!583700 () Bool)

(assert (=> b!1032815 (= e!583700 tp_is_empty!24473)))

(declare-fun b!1032816 () Bool)

(declare-fun res!690296 () Bool)

(declare-fun e!583701 () Bool)

(assert (=> b!1032816 (=> (not res!690296) (not e!583701))))

(declare-datatypes ((V!37503 0))(
  ( (V!37504 (val!12287 Int)) )
))
(declare-datatypes ((ValueCell!11533 0))(
  ( (ValueCellFull!11533 (v!14865 V!37503)) (EmptyCell!11533) )
))
(declare-datatypes ((array!65002 0))(
  ( (array!65003 (arr!31295 (Array (_ BitVec 32) (_ BitVec 64))) (size!31816 (_ BitVec 32))) )
))
(declare-datatypes ((array!65004 0))(
  ( (array!65005 (arr!31296 (Array (_ BitVec 32) ValueCell!11533)) (size!31817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5660 0))(
  ( (LongMapFixedSize!5661 (defaultEntry!6204 Int) (mask!30032 (_ BitVec 32)) (extraKeys!5936 (_ BitVec 32)) (zeroValue!6040 V!37503) (minValue!6040 V!37503) (_size!2885 (_ BitVec 32)) (_keys!11377 array!65002) (_values!6227 array!65004) (_vacant!2885 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5660)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032816 (= res!690296 (validMask!0 (mask!30032 thiss!1427)))))

(declare-fun e!583702 () Bool)

(declare-fun e!583703 () Bool)

(declare-fun array_inv!24055 (array!65002) Bool)

(declare-fun array_inv!24056 (array!65004) Bool)

(assert (=> b!1032817 (= e!583703 (and tp!73346 tp_is_empty!24473 (array_inv!24055 (_keys!11377 thiss!1427)) (array_inv!24056 (_values!6227 thiss!1427)) e!583702))))

(declare-fun res!690295 () Bool)

(assert (=> start!90238 (=> (not res!690295) (not e!583701))))

(declare-fun valid!2091 (LongMapFixedSize!5660) Bool)

(assert (=> start!90238 (= res!690295 (valid!2091 thiss!1427))))

(assert (=> start!90238 e!583701))

(assert (=> start!90238 e!583703))

(assert (=> start!90238 true))

(declare-fun b!1032818 () Bool)

(declare-fun res!690297 () Bool)

(assert (=> b!1032818 (=> (not res!690297) (not e!583701))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032818 (= res!690297 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032819 () Bool)

(assert (=> b!1032819 (= e!583702 (and e!583700 mapRes!38178))))

(declare-fun condMapEmpty!38178 () Bool)

(declare-fun mapDefault!38178 () ValueCell!11533)

