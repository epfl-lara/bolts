; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43468 () Bool)

(assert start!43468)

(declare-fun b_free!12239 () Bool)

(declare-fun b_next!12239 () Bool)

(assert (=> start!43468 (= b_free!12239 (not b_next!12239))))

(declare-fun tp!42999 () Bool)

(declare-fun b_and!21017 () Bool)

(assert (=> start!43468 (= tp!42999 b_and!21017)))

(declare-fun b!481222 () Bool)

(declare-fun e!283154 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481222 (= e!283154 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481223 () Bool)

(declare-fun e!283153 () Bool)

(declare-fun e!283151 () Bool)

(declare-fun mapRes!22336 () Bool)

(assert (=> b!481223 (= e!283153 (and e!283151 mapRes!22336))))

(declare-fun condMapEmpty!22336 () Bool)

(declare-datatypes ((V!19405 0))(
  ( (V!19406 (val!6923 Int)) )
))
(declare-datatypes ((ValueCell!6514 0))(
  ( (ValueCellFull!6514 (v!9212 V!19405)) (EmptyCell!6514) )
))
(declare-datatypes ((array!31141 0))(
  ( (array!31142 (arr!14970 (Array (_ BitVec 32) ValueCell!6514)) (size!15328 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31141)

(declare-fun mapDefault!22336 () ValueCell!6514)

