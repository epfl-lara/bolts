; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81996 () Bool)

(assert start!81996)

(declare-fun res!640243 () Bool)

(declare-fun e!538610 () Bool)

(assert (=> start!81996 (=> (not res!640243) (not e!538610))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81996 (= res!640243 (validMask!0 mask!1823))))

(assert (=> start!81996 e!538610))

(assert (=> start!81996 true))

(declare-datatypes ((V!32993 0))(
  ( (V!32994 (val!10554 Int)) )
))
(declare-datatypes ((ValueCell!10022 0))(
  ( (ValueCellFull!10022 (v!13109 V!32993)) (EmptyCell!10022) )
))
(declare-datatypes ((array!58135 0))(
  ( (array!58136 (arr!27943 (Array (_ BitVec 32) ValueCell!10022)) (size!28423 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58135)

(declare-fun e!538608 () Bool)

(declare-fun array_inv!21629 (array!58135) Bool)

(assert (=> start!81996 (and (array_inv!21629 _values!1197) e!538608)))

(declare-datatypes ((array!58137 0))(
  ( (array!58138 (arr!27944 (Array (_ BitVec 32) (_ BitVec 64))) (size!28424 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58137)

(declare-fun array_inv!21630 (array!58137) Bool)

(assert (=> start!81996 (array_inv!21630 _keys!1441)))

(declare-fun mapIsEmpty!33472 () Bool)

(declare-fun mapRes!33472 () Bool)

(assert (=> mapIsEmpty!33472 mapRes!33472))

(declare-fun mapNonEmpty!33472 () Bool)

(declare-fun tp!64051 () Bool)

(declare-fun e!538607 () Bool)

(assert (=> mapNonEmpty!33472 (= mapRes!33472 (and tp!64051 e!538607))))

(declare-fun mapRest!33472 () (Array (_ BitVec 32) ValueCell!10022))

(declare-fun mapValue!33472 () ValueCell!10022)

(declare-fun mapKey!33472 () (_ BitVec 32))

(assert (=> mapNonEmpty!33472 (= (arr!27943 _values!1197) (store mapRest!33472 mapKey!33472 mapValue!33472))))

(declare-fun b!955945 () Bool)

(declare-fun tp_is_empty!21007 () Bool)

(assert (=> b!955945 (= e!538607 tp_is_empty!21007)))

(declare-fun b!955946 () Bool)

(declare-fun res!640242 () Bool)

(assert (=> b!955946 (=> (not res!640242) (not e!538610))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955946 (= res!640242 (and (= (size!28423 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28424 _keys!1441) (size!28423 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955947 () Bool)

(declare-fun e!538611 () Bool)

(assert (=> b!955947 (= e!538608 (and e!538611 mapRes!33472))))

(declare-fun condMapEmpty!33472 () Bool)

(declare-fun mapDefault!33472 () ValueCell!10022)

