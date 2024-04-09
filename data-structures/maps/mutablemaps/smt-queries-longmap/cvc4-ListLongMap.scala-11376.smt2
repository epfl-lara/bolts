; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132214 () Bool)

(assert start!132214)

(declare-fun b_free!31877 () Bool)

(declare-fun b_next!31877 () Bool)

(assert (=> start!132214 (= b_free!31877 (not b_next!31877))))

(declare-fun tp!111886 () Bool)

(declare-fun b_and!51313 () Bool)

(assert (=> start!132214 (= tp!111886 b_and!51313)))

(declare-fun b!1550590 () Bool)

(declare-fun e!863179 () Bool)

(declare-fun tp_is_empty!38153 () Bool)

(assert (=> b!1550590 (= e!863179 tp_is_empty!38153)))

(declare-fun b!1550591 () Bool)

(declare-fun e!863176 () Bool)

(declare-fun e!863178 () Bool)

(declare-fun mapRes!58936 () Bool)

(assert (=> b!1550591 (= e!863176 (and e!863178 mapRes!58936))))

(declare-fun condMapEmpty!58936 () Bool)

(declare-datatypes ((V!59313 0))(
  ( (V!59314 (val!19154 Int)) )
))
(declare-datatypes ((ValueCell!18166 0))(
  ( (ValueCellFull!18166 (v!21953 V!59313)) (EmptyCell!18166) )
))
(declare-datatypes ((array!103465 0))(
  ( (array!103466 (arr!49929 (Array (_ BitVec 32) ValueCell!18166)) (size!50480 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103465)

(declare-fun mapDefault!58936 () ValueCell!18166)

