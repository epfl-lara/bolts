; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42354 () Bool)

(assert start!42354)

(declare-fun b_free!11837 () Bool)

(declare-fun b_next!11837 () Bool)

(assert (=> start!42354 (= b_free!11837 (not b_next!11837))))

(declare-fun tp!41541 () Bool)

(declare-fun b_and!20301 () Bool)

(assert (=> start!42354 (= tp!41541 b_and!20301)))

(declare-fun b!472273 () Bool)

(declare-fun e!276934 () Bool)

(declare-fun e!276937 () Bool)

(declare-fun mapRes!21607 () Bool)

(assert (=> b!472273 (= e!276934 (and e!276937 mapRes!21607))))

(declare-fun condMapEmpty!21607 () Bool)

(declare-datatypes ((V!18791 0))(
  ( (V!18792 (val!6677 Int)) )
))
(declare-datatypes ((ValueCell!6289 0))(
  ( (ValueCellFull!6289 (v!8964 V!18791)) (EmptyCell!6289) )
))
(declare-datatypes ((array!30253 0))(
  ( (array!30254 (arr!14544 (Array (_ BitVec 32) ValueCell!6289)) (size!14896 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30253)

(declare-fun mapDefault!21607 () ValueCell!6289)

