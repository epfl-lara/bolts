; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20998 () Bool)

(assert start!20998)

(declare-fun b_free!5557 () Bool)

(declare-fun b_next!5557 () Bool)

(assert (=> start!20998 (= b_free!5557 (not b_next!5557))))

(declare-fun tp!19724 () Bool)

(declare-fun b_and!12369 () Bool)

(assert (=> start!20998 (= tp!19724 b_and!12369)))

(declare-fun b!210844 () Bool)

(declare-fun e!137289 () Bool)

(declare-fun tp_is_empty!5419 () Bool)

(assert (=> b!210844 (= e!137289 tp_is_empty!5419)))

(declare-fun b!210845 () Bool)

(declare-fun res!102933 () Bool)

(declare-fun e!137287 () Bool)

(assert (=> b!210845 (=> (not res!102933) (not e!137287))))

(declare-datatypes ((array!10038 0))(
  ( (array!10039 (arr!4765 (Array (_ BitVec 32) (_ BitVec 64))) (size!5090 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10038)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6873 0))(
  ( (V!6874 (val!2754 Int)) )
))
(declare-datatypes ((ValueCell!2366 0))(
  ( (ValueCellFull!2366 (v!4736 V!6873)) (EmptyCell!2366) )
))
(declare-datatypes ((array!10040 0))(
  ( (array!10041 (arr!4766 (Array (_ BitVec 32) ValueCell!2366)) (size!5091 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10040)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!210845 (= res!102933 (and (= (size!5091 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5090 _keys!825) (size!5091 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210846 () Bool)

(declare-fun e!137290 () Bool)

(declare-fun e!137288 () Bool)

(declare-fun mapRes!9209 () Bool)

(assert (=> b!210846 (= e!137290 (and e!137288 mapRes!9209))))

(declare-fun condMapEmpty!9209 () Bool)

(declare-fun mapDefault!9209 () ValueCell!2366)

