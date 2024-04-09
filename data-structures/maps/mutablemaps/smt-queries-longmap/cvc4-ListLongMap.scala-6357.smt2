; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81910 () Bool)

(assert start!81910)

(declare-fun b_free!18377 () Bool)

(declare-fun b_next!18377 () Bool)

(assert (=> start!81910 (= b_free!18377 (not b_next!18377))))

(declare-fun tp!63831 () Bool)

(declare-fun b_and!29881 () Bool)

(assert (=> start!81910 (= tp!63831 b_and!29881)))

(declare-fun res!639505 () Bool)

(declare-fun e!537964 () Bool)

(assert (=> start!81910 (=> (not res!639505) (not e!537964))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81910 (= res!639505 (validMask!0 mask!1823))))

(assert (=> start!81910 e!537964))

(assert (=> start!81910 true))

(declare-fun tp_is_empty!20921 () Bool)

(assert (=> start!81910 tp_is_empty!20921))

(declare-datatypes ((array!57967 0))(
  ( (array!57968 (arr!27859 (Array (_ BitVec 32) (_ BitVec 64))) (size!28339 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57967)

(declare-fun array_inv!21571 (array!57967) Bool)

(assert (=> start!81910 (array_inv!21571 _keys!1441)))

(declare-datatypes ((V!32877 0))(
  ( (V!32878 (val!10511 Int)) )
))
(declare-datatypes ((ValueCell!9979 0))(
  ( (ValueCellFull!9979 (v!13066 V!32877)) (EmptyCell!9979) )
))
(declare-datatypes ((array!57969 0))(
  ( (array!57970 (arr!27860 (Array (_ BitVec 32) ValueCell!9979)) (size!28340 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57969)

(declare-fun e!537965 () Bool)

(declare-fun array_inv!21572 (array!57969) Bool)

(assert (=> start!81910 (and (array_inv!21572 _values!1197) e!537965)))

(assert (=> start!81910 tp!63831))

(declare-fun mapNonEmpty!33343 () Bool)

(declare-fun mapRes!33343 () Bool)

(declare-fun tp!63832 () Bool)

(declare-fun e!537963 () Bool)

(assert (=> mapNonEmpty!33343 (= mapRes!33343 (and tp!63832 e!537963))))

(declare-fun mapRest!33343 () (Array (_ BitVec 32) ValueCell!9979))

(declare-fun mapKey!33343 () (_ BitVec 32))

(declare-fun mapValue!33343 () ValueCell!9979)

(assert (=> mapNonEmpty!33343 (= (arr!27860 _values!1197) (store mapRest!33343 mapKey!33343 mapValue!33343))))

(declare-fun b!954817 () Bool)

(declare-fun e!537962 () Bool)

(assert (=> b!954817 (= e!537965 (and e!537962 mapRes!33343))))

(declare-fun condMapEmpty!33343 () Bool)

(declare-fun mapDefault!33343 () ValueCell!9979)

