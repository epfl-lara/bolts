; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105814 () Bool)

(assert start!105814)

(declare-fun b_free!27341 () Bool)

(declare-fun b_next!27341 () Bool)

(assert (=> start!105814 (= b_free!27341 (not b_next!27341))))

(declare-fun tp!95552 () Bool)

(declare-fun b_and!45247 () Bool)

(assert (=> start!105814 (= tp!95552 b_and!45247)))

(declare-fun e!716883 () Bool)

(declare-datatypes ((V!48355 0))(
  ( (V!48356 (val!16184 Int)) )
))
(declare-datatypes ((tuple2!21086 0))(
  ( (tuple2!21087 (_1!10553 (_ BitVec 64)) (_2!10553 V!48355)) )
))
(declare-fun lt!570587 () tuple2!21086)

(declare-datatypes ((List!28311 0))(
  ( (Nil!28308) (Cons!28307 (h!29516 tuple2!21086) (t!41815 List!28311)) )
))
(declare-datatypes ((ListLongMap!18971 0))(
  ( (ListLongMap!18972 (toList!9501 List!28311)) )
))
(declare-fun lt!570588 () ListLongMap!18971)

(declare-fun b!1259914 () Bool)

(declare-fun lt!570585 () ListLongMap!18971)

(declare-fun +!4198 (ListLongMap!18971 tuple2!21086) ListLongMap!18971)

(assert (=> b!1259914 (= e!716883 (= lt!570585 (+!4198 lt!570588 lt!570587)))))

(declare-fun res!839746 () Bool)

(declare-fun e!716882 () Bool)

(assert (=> start!105814 (=> (not res!839746) (not e!716882))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105814 (= res!839746 (validMask!0 mask!1466))))

(assert (=> start!105814 e!716882))

(assert (=> start!105814 true))

(assert (=> start!105814 tp!95552))

(declare-fun tp_is_empty!32243 () Bool)

(assert (=> start!105814 tp_is_empty!32243))

(declare-datatypes ((array!82097 0))(
  ( (array!82098 (arr!39598 (Array (_ BitVec 32) (_ BitVec 64))) (size!40135 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82097)

(declare-fun array_inv!30099 (array!82097) Bool)

(assert (=> start!105814 (array_inv!30099 _keys!1118)))

(declare-datatypes ((ValueCell!15358 0))(
  ( (ValueCellFull!15358 (v!18887 V!48355)) (EmptyCell!15358) )
))
(declare-datatypes ((array!82099 0))(
  ( (array!82100 (arr!39599 (Array (_ BitVec 32) ValueCell!15358)) (size!40136 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82099)

(declare-fun e!716877 () Bool)

(declare-fun array_inv!30100 (array!82099) Bool)

(assert (=> start!105814 (and (array_inv!30100 _values!914) e!716877)))

(declare-fun b!1259915 () Bool)

(declare-fun e!716881 () Bool)

(declare-fun mapRes!50164 () Bool)

(assert (=> b!1259915 (= e!716877 (and e!716881 mapRes!50164))))

(declare-fun condMapEmpty!50164 () Bool)

(declare-fun mapDefault!50164 () ValueCell!15358)

