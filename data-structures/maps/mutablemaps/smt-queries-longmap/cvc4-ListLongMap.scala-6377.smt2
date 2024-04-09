; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82030 () Bool)

(assert start!82030)

(declare-fun res!640396 () Bool)

(declare-fun e!538863 () Bool)

(assert (=> start!82030 (=> (not res!640396) (not e!538863))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82030 (= res!640396 (validMask!0 mask!1823))))

(assert (=> start!82030 e!538863))

(assert (=> start!82030 true))

(declare-datatypes ((V!33037 0))(
  ( (V!33038 (val!10571 Int)) )
))
(declare-datatypes ((ValueCell!10039 0))(
  ( (ValueCellFull!10039 (v!13126 V!33037)) (EmptyCell!10039) )
))
(declare-datatypes ((array!58201 0))(
  ( (array!58202 (arr!27976 (Array (_ BitVec 32) ValueCell!10039)) (size!28456 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58201)

(declare-fun e!538862 () Bool)

(declare-fun array_inv!21649 (array!58201) Bool)

(assert (=> start!82030 (and (array_inv!21649 _values!1197) e!538862)))

(declare-datatypes ((array!58203 0))(
  ( (array!58204 (arr!27977 (Array (_ BitVec 32) (_ BitVec 64))) (size!28457 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58203)

(declare-fun array_inv!21650 (array!58203) Bool)

(assert (=> start!82030 (array_inv!21650 _keys!1441)))

(declare-fun b!956251 () Bool)

(declare-fun res!640395 () Bool)

(assert (=> b!956251 (=> (not res!640395) (not e!538863))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956251 (= res!640395 (and (= (size!28456 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28457 _keys!1441) (size!28456 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956252 () Bool)

(declare-fun e!538865 () Bool)

(declare-fun tp_is_empty!21041 () Bool)

(assert (=> b!956252 (= e!538865 tp_is_empty!21041)))

(declare-fun b!956253 () Bool)

(declare-fun mapRes!33523 () Bool)

(assert (=> b!956253 (= e!538862 (and e!538865 mapRes!33523))))

(declare-fun condMapEmpty!33523 () Bool)

(declare-fun mapDefault!33523 () ValueCell!10039)

