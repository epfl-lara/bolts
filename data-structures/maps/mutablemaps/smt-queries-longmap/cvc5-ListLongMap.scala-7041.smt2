; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89294 () Bool)

(assert start!89294)

(declare-fun b!1023443 () Bool)

(declare-fun b_free!20299 () Bool)

(declare-fun b_next!20299 () Bool)

(assert (=> b!1023443 (= b_free!20299 (not b_next!20299))))

(declare-fun tp!71933 () Bool)

(declare-fun b_and!32539 () Bool)

(assert (=> b!1023443 (= tp!71933 b_and!32539)))

(declare-fun b!1023437 () Bool)

(declare-fun e!576734 () Bool)

(declare-fun tp_is_empty!24019 () Bool)

(assert (=> b!1023437 (= e!576734 tp_is_empty!24019)))

(declare-fun b!1023438 () Bool)

(declare-fun res!685516 () Bool)

(declare-fun e!576736 () Bool)

(assert (=> b!1023438 (=> (not res!685516) (not e!576736))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023438 (= res!685516 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!685517 () Bool)

(assert (=> start!89294 (=> (not res!685517) (not e!576736))))

(declare-datatypes ((V!36899 0))(
  ( (V!36900 (val!12060 Int)) )
))
(declare-datatypes ((ValueCell!11306 0))(
  ( (ValueCellFull!11306 (v!14630 V!36899)) (EmptyCell!11306) )
))
(declare-datatypes ((array!64066 0))(
  ( (array!64067 (arr!30841 (Array (_ BitVec 32) (_ BitVec 64))) (size!31353 (_ BitVec 32))) )
))
(declare-datatypes ((array!64068 0))(
  ( (array!64069 (arr!30842 (Array (_ BitVec 32) ValueCell!11306)) (size!31354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5206 0))(
  ( (LongMapFixedSize!5207 (defaultEntry!5955 Int) (mask!29573 (_ BitVec 32)) (extraKeys!5687 (_ BitVec 32)) (zeroValue!5791 V!36899) (minValue!5791 V!36899) (_size!2658 (_ BitVec 32)) (_keys!11097 array!64066) (_values!5978 array!64068) (_vacant!2658 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5206)

(declare-fun valid!1940 (LongMapFixedSize!5206) Bool)

(assert (=> start!89294 (= res!685517 (valid!1940 thiss!1427))))

(assert (=> start!89294 e!576736))

(declare-fun e!576737 () Bool)

(assert (=> start!89294 e!576737))

(assert (=> start!89294 true))

(declare-fun b!1023439 () Bool)

(declare-fun e!576738 () Bool)

(declare-fun mapRes!37446 () Bool)

(assert (=> b!1023439 (= e!576738 (and e!576734 mapRes!37446))))

(declare-fun condMapEmpty!37446 () Bool)

(declare-fun mapDefault!37446 () ValueCell!11306)

