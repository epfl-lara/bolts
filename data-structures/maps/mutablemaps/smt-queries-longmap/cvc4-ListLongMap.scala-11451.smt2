; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133540 () Bool)

(assert start!133540)

(declare-fun b!1560611 () Bool)

(declare-fun e!869716 () Bool)

(declare-fun e!869715 () Bool)

(declare-fun mapRes!59262 () Bool)

(assert (=> b!1560611 (= e!869716 (and e!869715 mapRes!59262))))

(declare-fun condMapEmpty!59262 () Bool)

(declare-datatypes ((V!59661 0))(
  ( (V!59662 (val!19379 Int)) )
))
(declare-datatypes ((ValueCell!18265 0))(
  ( (ValueCellFull!18265 (v!22128 V!59661)) (EmptyCell!18265) )
))
(declare-datatypes ((array!103855 0))(
  ( (array!103856 (arr!50115 (Array (_ BitVec 32) ValueCell!18265)) (size!50666 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103855)

(declare-fun mapDefault!59262 () ValueCell!18265)

