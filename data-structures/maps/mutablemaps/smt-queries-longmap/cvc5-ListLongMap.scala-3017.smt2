; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42444 () Bool)

(assert start!42444)

(declare-fun b_free!11911 () Bool)

(declare-fun b_next!11911 () Bool)

(assert (=> start!42444 (= b_free!11911 (not b_next!11911))))

(declare-fun tp!41766 () Bool)

(declare-fun b_and!20385 () Bool)

(assert (=> start!42444 (= tp!41766 b_and!20385)))

(declare-fun mapIsEmpty!21721 () Bool)

(declare-fun mapRes!21721 () Bool)

(assert (=> mapIsEmpty!21721 mapRes!21721))

(declare-fun b!473309 () Bool)

(declare-fun e!277696 () Bool)

(declare-fun e!277697 () Bool)

(assert (=> b!473309 (= e!277696 (and e!277697 mapRes!21721))))

(declare-fun condMapEmpty!21721 () Bool)

(declare-datatypes ((V!18891 0))(
  ( (V!18892 (val!6714 Int)) )
))
(declare-datatypes ((ValueCell!6326 0))(
  ( (ValueCellFull!6326 (v!9001 V!18891)) (EmptyCell!6326) )
))
(declare-datatypes ((array!30399 0))(
  ( (array!30400 (arr!14616 (Array (_ BitVec 32) ValueCell!6326)) (size!14968 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30399)

(declare-fun mapDefault!21721 () ValueCell!6326)

