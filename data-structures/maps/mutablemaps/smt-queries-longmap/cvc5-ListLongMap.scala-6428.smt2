; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82392 () Bool)

(assert start!82392)

(declare-fun b_free!18631 () Bool)

(declare-fun b_next!18631 () Bool)

(assert (=> start!82392 (= b_free!18631 (not b_next!18631))))

(declare-fun tp!64864 () Bool)

(declare-fun b_and!30137 () Bool)

(assert (=> start!82392 (= tp!64864 b_and!30137)))

(declare-fun b!960191 () Bool)

(declare-fun res!642847 () Bool)

(declare-fun e!541298 () Bool)

(assert (=> b!960191 (=> (not res!642847) (not e!541298))))

(declare-datatypes ((array!58789 0))(
  ( (array!58790 (arr!28264 (Array (_ BitVec 32) (_ BitVec 64))) (size!28744 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58789)

(declare-datatypes ((List!19775 0))(
  ( (Nil!19772) (Cons!19771 (h!20933 (_ BitVec 64)) (t!28146 List!19775)) )
))
(declare-fun arrayNoDuplicates!0 (array!58789 (_ BitVec 32) List!19775) Bool)

(assert (=> b!960191 (= res!642847 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19772))))

(declare-fun b!960192 () Bool)

(declare-fun e!541295 () Bool)

(declare-fun tp_is_empty!21343 () Bool)

(assert (=> b!960192 (= e!541295 tp_is_empty!21343)))

(declare-fun b!960193 () Bool)

(declare-fun e!541297 () Bool)

(declare-fun mapRes!33994 () Bool)

(assert (=> b!960193 (= e!541297 (and e!541295 mapRes!33994))))

(declare-fun condMapEmpty!33994 () Bool)

(declare-datatypes ((V!33441 0))(
  ( (V!33442 (val!10722 Int)) )
))
(declare-datatypes ((ValueCell!10190 0))(
  ( (ValueCellFull!10190 (v!13279 V!33441)) (EmptyCell!10190) )
))
(declare-datatypes ((array!58791 0))(
  ( (array!58792 (arr!28265 (Array (_ BitVec 32) ValueCell!10190)) (size!28745 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58791)

(declare-fun mapDefault!33994 () ValueCell!10190)

