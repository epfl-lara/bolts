; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90800 () Bool)

(assert start!90800)

(declare-fun b!1037654 () Bool)

(declare-fun b_free!20915 () Bool)

(declare-fun b_next!20915 () Bool)

(assert (=> b!1037654 (= b_free!20915 (not b_next!20915))))

(declare-fun tp!73897 () Bool)

(declare-fun b_and!33465 () Bool)

(assert (=> b!1037654 (= tp!73897 b_and!33465)))

(declare-fun tp_is_empty!24635 () Bool)

(declare-datatypes ((V!37719 0))(
  ( (V!37720 (val!12368 Int)) )
))
(declare-datatypes ((ValueCell!11614 0))(
  ( (ValueCellFull!11614 (v!14952 V!37719)) (EmptyCell!11614) )
))
(declare-datatypes ((array!65362 0))(
  ( (array!65363 (arr!31457 (Array (_ BitVec 32) (_ BitVec 64))) (size!31988 (_ BitVec 32))) )
))
(declare-datatypes ((array!65364 0))(
  ( (array!65365 (arr!31458 (Array (_ BitVec 32) ValueCell!11614)) (size!31989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5822 0))(
  ( (LongMapFixedSize!5823 (defaultEntry!6293 Int) (mask!30213 (_ BitVec 32)) (extraKeys!6021 (_ BitVec 32)) (zeroValue!6127 V!37719) (minValue!6127 V!37719) (_size!2966 (_ BitVec 32)) (_keys!11488 array!65362) (_values!6316 array!65364) (_vacant!2966 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5822)

(declare-fun e!587085 () Bool)

(declare-fun e!587081 () Bool)

(declare-fun array_inv!24161 (array!65362) Bool)

(declare-fun array_inv!24162 (array!65364) Bool)

(assert (=> b!1037654 (= e!587081 (and tp!73897 tp_is_empty!24635 (array_inv!24161 (_keys!11488 thiss!1427)) (array_inv!24162 (_values!6316 thiss!1427)) e!587085))))

(declare-fun res!692367 () Bool)

(declare-fun e!587082 () Bool)

(assert (=> start!90800 (=> (not res!692367) (not e!587082))))

(declare-fun valid!2146 (LongMapFixedSize!5822) Bool)

(assert (=> start!90800 (= res!692367 (valid!2146 thiss!1427))))

(assert (=> start!90800 e!587082))

(assert (=> start!90800 e!587081))

(assert (=> start!90800 true))

(declare-fun b!1037655 () Bool)

(declare-fun res!692370 () Bool)

(declare-fun e!587077 () Bool)

(assert (=> b!1037655 (=> res!692370 e!587077)))

(declare-datatypes ((List!22044 0))(
  ( (Nil!22041) (Cons!22040 (h!23243 (_ BitVec 64)) (t!31265 List!22044)) )
))
(declare-fun noDuplicate!1493 (List!22044) Bool)

(assert (=> b!1037655 (= res!692370 (not (noDuplicate!1493 Nil!22041)))))

(declare-fun mapIsEmpty!38487 () Bool)

(declare-fun mapRes!38487 () Bool)

(assert (=> mapIsEmpty!38487 mapRes!38487))

(declare-fun b!1037656 () Bool)

(declare-fun e!587084 () Bool)

(assert (=> b!1037656 (= e!587085 (and e!587084 mapRes!38487))))

(declare-fun condMapEmpty!38487 () Bool)

(declare-fun mapDefault!38487 () ValueCell!11614)

