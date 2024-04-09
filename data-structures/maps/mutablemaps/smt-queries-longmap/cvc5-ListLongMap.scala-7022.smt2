; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89180 () Bool)

(assert start!89180)

(declare-fun b!1021990 () Bool)

(declare-fun b_free!20185 () Bool)

(declare-fun b_next!20185 () Bool)

(assert (=> b!1021990 (= b_free!20185 (not b_next!20185))))

(declare-fun tp!71591 () Bool)

(declare-fun b_and!32401 () Bool)

(assert (=> b!1021990 (= tp!71591 b_and!32401)))

(declare-fun b!1021982 () Bool)

(declare-fun e!575712 () Bool)

(declare-fun e!575711 () Bool)

(declare-fun mapRes!37275 () Bool)

(assert (=> b!1021982 (= e!575712 (and e!575711 mapRes!37275))))

(declare-fun condMapEmpty!37275 () Bool)

(declare-datatypes ((V!36747 0))(
  ( (V!36748 (val!12003 Int)) )
))
(declare-datatypes ((ValueCell!11249 0))(
  ( (ValueCellFull!11249 (v!14573 V!36747)) (EmptyCell!11249) )
))
(declare-datatypes ((array!63838 0))(
  ( (array!63839 (arr!30727 (Array (_ BitVec 32) (_ BitVec 64))) (size!31239 (_ BitVec 32))) )
))
(declare-datatypes ((array!63840 0))(
  ( (array!63841 (arr!30728 (Array (_ BitVec 32) ValueCell!11249)) (size!31240 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5092 0))(
  ( (LongMapFixedSize!5093 (defaultEntry!5898 Int) (mask!29478 (_ BitVec 32)) (extraKeys!5630 (_ BitVec 32)) (zeroValue!5734 V!36747) (minValue!5734 V!36747) (_size!2601 (_ BitVec 32)) (_keys!11040 array!63838) (_values!5921 array!63840) (_vacant!2601 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5092)

(declare-fun mapDefault!37275 () ValueCell!11249)

