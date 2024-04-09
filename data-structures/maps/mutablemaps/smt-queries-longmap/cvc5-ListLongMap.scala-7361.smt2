; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93906 () Bool)

(assert start!93906)

(declare-fun b_free!21343 () Bool)

(declare-fun b_next!21343 () Bool)

(assert (=> start!93906 (= b_free!21343 (not b_next!21343))))

(declare-fun tp!75453 () Bool)

(declare-fun b_and!34075 () Bool)

(assert (=> start!93906 (= tp!75453 b_and!34075)))

(declare-fun b!1061613 () Bool)

(declare-fun res!709011 () Bool)

(declare-fun e!604621 () Bool)

(assert (=> b!1061613 (=> (not res!709011) (not e!604621))))

(declare-datatypes ((array!67288 0))(
  ( (array!67289 (arr!32348 (Array (_ BitVec 32) (_ BitVec 64))) (size!32885 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67288)

(declare-datatypes ((List!22671 0))(
  ( (Nil!22668) (Cons!22667 (h!23876 (_ BitVec 64)) (t!31987 List!22671)) )
))
(declare-fun arrayNoDuplicates!0 (array!67288 (_ BitVec 32) List!22671) Bool)

(assert (=> b!1061613 (= res!709011 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22668))))

(declare-fun b!1061614 () Bool)

(declare-fun e!604618 () Bool)

(declare-fun tp_is_empty!25153 () Bool)

(assert (=> b!1061614 (= e!604618 tp_is_empty!25153)))

(declare-fun b!1061615 () Bool)

(declare-fun e!604619 () Bool)

(declare-fun e!604620 () Bool)

(declare-fun mapRes!39400 () Bool)

(assert (=> b!1061615 (= e!604619 (and e!604620 mapRes!39400))))

(declare-fun condMapEmpty!39400 () Bool)

(declare-datatypes ((V!38673 0))(
  ( (V!38674 (val!12627 Int)) )
))
(declare-datatypes ((ValueCell!11873 0))(
  ( (ValueCellFull!11873 (v!15238 V!38673)) (EmptyCell!11873) )
))
(declare-datatypes ((array!67290 0))(
  ( (array!67291 (arr!32349 (Array (_ BitVec 32) ValueCell!11873)) (size!32886 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67290)

(declare-fun mapDefault!39400 () ValueCell!11873)

