; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81852 () Bool)

(assert start!81852)

(declare-fun b_free!18319 () Bool)

(declare-fun b_next!18319 () Bool)

(assert (=> start!81852 (= b_free!18319 (not b_next!18319))))

(declare-fun tp!63658 () Bool)

(declare-fun b_and!29823 () Bool)

(assert (=> start!81852 (= tp!63658 b_and!29823)))

(declare-fun b!954034 () Bool)

(declare-fun e!537530 () Bool)

(declare-fun tp_is_empty!20863 () Bool)

(assert (=> b!954034 (= e!537530 tp_is_empty!20863)))

(declare-fun mapIsEmpty!33256 () Bool)

(declare-fun mapRes!33256 () Bool)

(assert (=> mapIsEmpty!33256 mapRes!33256))

(declare-fun b!954035 () Bool)

(declare-fun e!537527 () Bool)

(assert (=> b!954035 (= e!537527 tp_is_empty!20863)))

(declare-fun b!954036 () Bool)

(declare-fun res!638978 () Bool)

(declare-fun e!537531 () Bool)

(assert (=> b!954036 (=> (not res!638978) (not e!537531))))

(declare-datatypes ((array!57855 0))(
  ( (array!57856 (arr!27803 (Array (_ BitVec 32) (_ BitVec 64))) (size!28283 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57855)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57855 (_ BitVec 32)) Bool)

(assert (=> b!954036 (= res!638978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954037 () Bool)

(declare-fun res!638979 () Bool)

(assert (=> b!954037 (=> (not res!638979) (not e!537531))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954037 (= res!638979 (validKeyInArray!0 (select (arr!27803 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33256 () Bool)

(declare-fun tp!63657 () Bool)

(assert (=> mapNonEmpty!33256 (= mapRes!33256 (and tp!63657 e!537530))))

(declare-fun mapKey!33256 () (_ BitVec 32))

(declare-datatypes ((V!32801 0))(
  ( (V!32802 (val!10482 Int)) )
))
(declare-datatypes ((ValueCell!9950 0))(
  ( (ValueCellFull!9950 (v!13037 V!32801)) (EmptyCell!9950) )
))
(declare-fun mapValue!33256 () ValueCell!9950)

(declare-datatypes ((array!57857 0))(
  ( (array!57858 (arr!27804 (Array (_ BitVec 32) ValueCell!9950)) (size!28284 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57857)

(declare-fun mapRest!33256 () (Array (_ BitVec 32) ValueCell!9950))

(assert (=> mapNonEmpty!33256 (= (arr!27804 _values!1197) (store mapRest!33256 mapKey!33256 mapValue!33256))))

(declare-fun res!638982 () Bool)

(assert (=> start!81852 (=> (not res!638982) (not e!537531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81852 (= res!638982 (validMask!0 mask!1823))))

(assert (=> start!81852 e!537531))

(assert (=> start!81852 true))

(assert (=> start!81852 tp_is_empty!20863))

(declare-fun array_inv!21527 (array!57855) Bool)

(assert (=> start!81852 (array_inv!21527 _keys!1441)))

(declare-fun e!537529 () Bool)

(declare-fun array_inv!21528 (array!57857) Bool)

(assert (=> start!81852 (and (array_inv!21528 _values!1197) e!537529)))

(assert (=> start!81852 tp!63658))

(declare-fun b!954038 () Bool)

(assert (=> b!954038 (= e!537531 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32801)

(declare-fun lt!429817 () Bool)

(declare-fun minValue!1139 () V!32801)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13700 0))(
  ( (tuple2!13701 (_1!6860 (_ BitVec 64)) (_2!6860 V!32801)) )
))
(declare-datatypes ((List!19517 0))(
  ( (Nil!19514) (Cons!19513 (h!20675 tuple2!13700) (t!27886 List!19517)) )
))
(declare-datatypes ((ListLongMap!12411 0))(
  ( (ListLongMap!12412 (toList!6221 List!19517)) )
))
(declare-fun contains!5271 (ListLongMap!12411 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3406 (array!57855 array!57857 (_ BitVec 32) (_ BitVec 32) V!32801 V!32801 (_ BitVec 32) Int) ListLongMap!12411)

(assert (=> b!954038 (= lt!429817 (contains!5271 (getCurrentListMap!3406 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27803 _keys!1441) i!735)))))

(declare-fun b!954039 () Bool)

(declare-fun res!638981 () Bool)

(assert (=> b!954039 (=> (not res!638981) (not e!537531))))

(declare-datatypes ((List!19518 0))(
  ( (Nil!19515) (Cons!19514 (h!20676 (_ BitVec 64)) (t!27887 List!19518)) )
))
(declare-fun arrayNoDuplicates!0 (array!57855 (_ BitVec 32) List!19518) Bool)

(assert (=> b!954039 (= res!638981 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19515))))

(declare-fun b!954040 () Bool)

(declare-fun res!638983 () Bool)

(assert (=> b!954040 (=> (not res!638983) (not e!537531))))

(assert (=> b!954040 (= res!638983 (and (= (size!28284 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28283 _keys!1441) (size!28284 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954041 () Bool)

(assert (=> b!954041 (= e!537529 (and e!537527 mapRes!33256))))

(declare-fun condMapEmpty!33256 () Bool)

(declare-fun mapDefault!33256 () ValueCell!9950)

