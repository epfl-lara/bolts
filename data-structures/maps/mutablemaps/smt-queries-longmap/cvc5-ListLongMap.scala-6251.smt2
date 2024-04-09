; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80000 () Bool)

(assert start!80000)

(declare-fun b!939966 () Bool)

(declare-fun b_free!17827 () Bool)

(declare-fun b_next!17827 () Bool)

(assert (=> b!939966 (= b_free!17827 (not b_next!17827))))

(declare-fun tp!61956 () Bool)

(declare-fun b_and!29257 () Bool)

(assert (=> b!939966 (= tp!61956 b_and!29257)))

(declare-fun b!939964 () Bool)

(declare-fun e!528179 () Bool)

(declare-fun e!528178 () Bool)

(declare-fun mapRes!32293 () Bool)

(assert (=> b!939964 (= e!528179 (and e!528178 mapRes!32293))))

(declare-fun condMapEmpty!32293 () Bool)

(declare-datatypes ((V!32079 0))(
  ( (V!32080 (val!10218 Int)) )
))
(declare-datatypes ((ValueCell!9686 0))(
  ( (ValueCellFull!9686 (v!12749 V!32079)) (EmptyCell!9686) )
))
(declare-datatypes ((array!56640 0))(
  ( (array!56641 (arr!27251 (Array (_ BitVec 32) ValueCell!9686)) (size!27713 (_ BitVec 32))) )
))
(declare-datatypes ((array!56642 0))(
  ( (array!56643 (arr!27252 (Array (_ BitVec 32) (_ BitVec 64))) (size!27714 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4522 0))(
  ( (LongMapFixedSize!4523 (defaultEntry!5552 Int) (mask!27078 (_ BitVec 32)) (extraKeys!5284 (_ BitVec 32)) (zeroValue!5388 V!32079) (minValue!5388 V!32079) (_size!2316 (_ BitVec 32)) (_keys!10398 array!56642) (_values!5575 array!56640) (_vacant!2316 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4522)

(declare-fun mapDefault!32293 () ValueCell!9686)

