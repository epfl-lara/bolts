; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82008 () Bool)

(assert start!82008)

(declare-fun b!956053 () Bool)

(declare-fun e!538697 () Bool)

(declare-fun tp_is_empty!21019 () Bool)

(assert (=> b!956053 (= e!538697 tp_is_empty!21019)))

(declare-fun mapIsEmpty!33490 () Bool)

(declare-fun mapRes!33490 () Bool)

(assert (=> mapIsEmpty!33490 mapRes!33490))

(declare-fun res!640295 () Bool)

(declare-fun e!538700 () Bool)

(assert (=> start!82008 (=> (not res!640295) (not e!538700))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82008 (= res!640295 (validMask!0 mask!1823))))

(assert (=> start!82008 e!538700))

(assert (=> start!82008 true))

(declare-datatypes ((V!33009 0))(
  ( (V!33010 (val!10560 Int)) )
))
(declare-datatypes ((ValueCell!10028 0))(
  ( (ValueCellFull!10028 (v!13115 V!33009)) (EmptyCell!10028) )
))
(declare-datatypes ((array!58159 0))(
  ( (array!58160 (arr!27955 (Array (_ BitVec 32) ValueCell!10028)) (size!28435 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58159)

(declare-fun e!538698 () Bool)

(declare-fun array_inv!21639 (array!58159) Bool)

(assert (=> start!82008 (and (array_inv!21639 _values!1197) e!538698)))

(declare-datatypes ((array!58161 0))(
  ( (array!58162 (arr!27956 (Array (_ BitVec 32) (_ BitVec 64))) (size!28436 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58161)

(declare-fun array_inv!21640 (array!58161) Bool)

(assert (=> start!82008 (array_inv!21640 _keys!1441)))

(declare-fun mapNonEmpty!33490 () Bool)

(declare-fun tp!64069 () Bool)

(declare-fun e!538699 () Bool)

(assert (=> mapNonEmpty!33490 (= mapRes!33490 (and tp!64069 e!538699))))

(declare-fun mapRest!33490 () (Array (_ BitVec 32) ValueCell!10028))

(declare-fun mapValue!33490 () ValueCell!10028)

(declare-fun mapKey!33490 () (_ BitVec 32))

(assert (=> mapNonEmpty!33490 (= (arr!27955 _values!1197) (store mapRest!33490 mapKey!33490 mapValue!33490))))

(declare-fun b!956054 () Bool)

(assert (=> b!956054 (= e!538699 tp_is_empty!21019)))

(declare-fun b!956055 () Bool)

(declare-fun res!640297 () Bool)

(assert (=> b!956055 (=> (not res!640297) (not e!538700))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956055 (= res!640297 (and (= (size!28435 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28436 _keys!1441) (size!28435 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956056 () Bool)

(assert (=> b!956056 (= e!538698 (and e!538697 mapRes!33490))))

(declare-fun condMapEmpty!33490 () Bool)

(declare-fun mapDefault!33490 () ValueCell!10028)

