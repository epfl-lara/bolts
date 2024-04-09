; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107130 () Bool)

(assert start!107130)

(declare-fun b_free!27599 () Bool)

(declare-fun b_next!27599 () Bool)

(assert (=> start!107130 (= b_free!27599 (not b_next!27599))))

(declare-fun tp!97024 () Bool)

(declare-fun b_and!45641 () Bool)

(assert (=> start!107130 (= tp!97024 b_and!45641)))

(declare-fun mapNonEmpty!50755 () Bool)

(declare-fun mapRes!50755 () Bool)

(declare-fun tp!97025 () Bool)

(declare-fun e!723682 () Bool)

(assert (=> mapNonEmpty!50755 (= mapRes!50755 (and tp!97025 e!723682))))

(declare-datatypes ((V!48903 0))(
  ( (V!48904 (val!16466 Int)) )
))
(declare-datatypes ((ValueCell!15538 0))(
  ( (ValueCellFull!15538 (v!19101 V!48903)) (EmptyCell!15538) )
))
(declare-datatypes ((array!82801 0))(
  ( (array!82802 (arr!39933 (Array (_ BitVec 32) ValueCell!15538)) (size!40470 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82801)

(declare-fun mapKey!50755 () (_ BitVec 32))

(declare-fun mapRest!50755 () (Array (_ BitVec 32) ValueCell!15538))

(declare-fun mapValue!50755 () ValueCell!15538)

(assert (=> mapNonEmpty!50755 (= (arr!39933 _values!1134) (store mapRest!50755 mapKey!50755 mapValue!50755))))

(declare-fun b!1269625 () Bool)

(declare-fun res!845002 () Bool)

(declare-fun e!723680 () Bool)

(assert (=> b!1269625 (=> (not res!845002) (not e!723680))))

(declare-datatypes ((array!82803 0))(
  ( (array!82804 (arr!39934 (Array (_ BitVec 32) (_ BitVec 64))) (size!40471 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82803)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82803 (_ BitVec 32)) Bool)

(assert (=> b!1269625 (= res!845002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269626 () Bool)

(declare-fun tp_is_empty!32783 () Bool)

(assert (=> b!1269626 (= e!723682 tp_is_empty!32783)))

(declare-fun b!1269627 () Bool)

(declare-fun e!723681 () Bool)

(declare-fun e!723679 () Bool)

(assert (=> b!1269627 (= e!723681 (and e!723679 mapRes!50755))))

(declare-fun condMapEmpty!50755 () Bool)

(declare-fun mapDefault!50755 () ValueCell!15538)

