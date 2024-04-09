; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81892 () Bool)

(assert start!81892)

(declare-fun b_free!18359 () Bool)

(declare-fun b_next!18359 () Bool)

(assert (=> start!81892 (= b_free!18359 (not b_next!18359))))

(declare-fun tp!63778 () Bool)

(declare-fun b_and!29863 () Bool)

(assert (=> start!81892 (= tp!63778 b_and!29863)))

(declare-fun b!954574 () Bool)

(declare-fun e!537827 () Bool)

(declare-fun tp_is_empty!20903 () Bool)

(assert (=> b!954574 (= e!537827 tp_is_empty!20903)))

(declare-fun mapNonEmpty!33316 () Bool)

(declare-fun mapRes!33316 () Bool)

(declare-fun tp!63777 () Bool)

(declare-fun e!537830 () Bool)

(assert (=> mapNonEmpty!33316 (= mapRes!33316 (and tp!63777 e!537830))))

(declare-datatypes ((V!32853 0))(
  ( (V!32854 (val!10502 Int)) )
))
(declare-datatypes ((ValueCell!9970 0))(
  ( (ValueCellFull!9970 (v!13057 V!32853)) (EmptyCell!9970) )
))
(declare-datatypes ((array!57931 0))(
  ( (array!57932 (arr!27841 (Array (_ BitVec 32) ValueCell!9970)) (size!28321 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57931)

(declare-fun mapRest!33316 () (Array (_ BitVec 32) ValueCell!9970))

(declare-fun mapKey!33316 () (_ BitVec 32))

(declare-fun mapValue!33316 () ValueCell!9970)

(assert (=> mapNonEmpty!33316 (= (arr!27841 _values!1197) (store mapRest!33316 mapKey!33316 mapValue!33316))))

(declare-fun b!954575 () Bool)

(declare-fun res!639340 () Bool)

(declare-fun e!537831 () Bool)

(assert (=> b!954575 (=> (not res!639340) (not e!537831))))

(declare-datatypes ((array!57933 0))(
  ( (array!57934 (arr!27842 (Array (_ BitVec 32) (_ BitVec 64))) (size!28322 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57933)

(declare-datatypes ((List!19546 0))(
  ( (Nil!19543) (Cons!19542 (h!20704 (_ BitVec 64)) (t!27915 List!19546)) )
))
(declare-fun arrayNoDuplicates!0 (array!57933 (_ BitVec 32) List!19546) Bool)

(assert (=> b!954575 (= res!639340 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19543))))

(declare-fun b!954576 () Bool)

(declare-fun res!639343 () Bool)

(assert (=> b!954576 (=> (not res!639343) (not e!537831))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954576 (= res!639343 (and (= (size!28321 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28322 _keys!1441) (size!28321 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!639341 () Bool)

(assert (=> start!81892 (=> (not res!639341) (not e!537831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81892 (= res!639341 (validMask!0 mask!1823))))

(assert (=> start!81892 e!537831))

(assert (=> start!81892 true))

(assert (=> start!81892 tp_is_empty!20903))

(declare-fun array_inv!21559 (array!57933) Bool)

(assert (=> start!81892 (array_inv!21559 _keys!1441)))

(declare-fun e!537829 () Bool)

(declare-fun array_inv!21560 (array!57931) Bool)

(assert (=> start!81892 (and (array_inv!21560 _values!1197) e!537829)))

(assert (=> start!81892 tp!63778))

(declare-fun b!954577 () Bool)

(declare-fun res!639339 () Bool)

(assert (=> b!954577 (=> (not res!639339) (not e!537831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57933 (_ BitVec 32)) Bool)

(assert (=> b!954577 (= res!639339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954578 () Bool)

(assert (=> b!954578 (= e!537831 false)))

(declare-fun zeroValue!1139 () V!32853)

(declare-fun lt!429877 () Bool)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32853)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13730 0))(
  ( (tuple2!13731 (_1!6875 (_ BitVec 64)) (_2!6875 V!32853)) )
))
(declare-datatypes ((List!19547 0))(
  ( (Nil!19544) (Cons!19543 (h!20705 tuple2!13730) (t!27916 List!19547)) )
))
(declare-datatypes ((ListLongMap!12441 0))(
  ( (ListLongMap!12442 (toList!6236 List!19547)) )
))
(declare-fun contains!5286 (ListLongMap!12441 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3421 (array!57933 array!57931 (_ BitVec 32) (_ BitVec 32) V!32853 V!32853 (_ BitVec 32) Int) ListLongMap!12441)

(assert (=> b!954578 (= lt!429877 (contains!5286 (getCurrentListMap!3421 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27842 _keys!1441) i!735)))))

(declare-fun mapIsEmpty!33316 () Bool)

(assert (=> mapIsEmpty!33316 mapRes!33316))

(declare-fun b!954579 () Bool)

(assert (=> b!954579 (= e!537829 (and e!537827 mapRes!33316))))

(declare-fun condMapEmpty!33316 () Bool)

(declare-fun mapDefault!33316 () ValueCell!9970)

